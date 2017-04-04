

set system_name [file tail [pwd]]
puts $system_name
set bd_tcl $system_name.tcl

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project $system_name $system_name -part xc7z020clg400-1
}

set ip_paths [list ../ip \
						. ]

set_property  ip_repo_paths  $ip_paths [current_project]
update_ip_catalog

source $bd_tcl

# Additional steps to get to bitstream
# generate toplevel wrapper files
make_wrapper -files [get_files ./$system_name/$system_name.srcs/sources_1/bd/system/system.bd] -top

add_files -norecurse ./$system_name/$system_name.srcs/sources_1/bd/system/hdl/system_wrapper.v
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
add_files -fileset constrs_1 -norecurse ./src/constraints/top.xdc

# replace top wrapper with custom top.v
add_files -norecurse ./src/top.v
update_compile_order -fileset sources_1
set_property top top [current_fileset]
update_compile_order -fileset sources_1


# call implement
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1

# This hwardware definition file will be used for microblaze projects
file mkdir ./$system_name/$system_name.sdk
write_hwdef -force  -file ./$system_name/$system_name.sdk/$system_name.hdf
file copy -force ./$system_name/$system_name.sdk/$system_name.hdf ../../sdk/


# move and rename bitstream to final location
file copy -force ./$system_name/$system_name.runs/impl_1/top.bit ../../bitstream/$system_name.bit
#write tcl to final location as well
write_bd_tcl -force ../../bitstream/$system_name.tcl
