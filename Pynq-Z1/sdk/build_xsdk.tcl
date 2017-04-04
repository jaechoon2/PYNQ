# This script called from xsdk -batch will generate a SDK workspace here
#   Additionally, will build a hw project and bsp



if {$argc > 0} {
	 set hdf_file [lindex  $argv 0 ]
} else {
	 set hdf_file ./base.hdf
}
if {$argc > 1} {
	 set repo_paths [lrange  $argv 1 end ]
}

puts hdf_file=$hdf_file
sdk setws .
if {![file exists "hw_def"]} {
    sdk createhw -name hw_def -hwspec $hdf_file
}

repo -set $repo_paths
if {![file exists "bsp_pmod"]} {
    sdk createbsp -name bsp_pmod -hwproject hw_def -proc iop1_mb -os standalone
}
if {![file exists "bsp_arduino"]} {
    sdk createbsp -name bsp_arduino -hwproject hw_def -proc iop3_mb -os standalone
}

#sdk build all

puts "To use SDK, from this folder execute"
puts "    xsdk -workspace ."

exit
