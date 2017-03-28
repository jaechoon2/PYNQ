## Switches
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports {sws_2bits_tri_i[0]}]
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports {sws_2bits_tri_i[1]}]

## Buttons
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports {btns_4bits_tri_i[0]}]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports {btns_4bits_tri_i[1]}]
set_property -dict {PACKAGE_PIN L20 IOSTANDARD LVCMOS33} [get_ports {btns_4bits_tri_i[2]}]
set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS33} [get_ports {btns_4bits_tri_i[3]}]

## LEDs
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports {leds_4bits_tri_o[0]}]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports {leds_4bits_tri_o[1]}]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports {leds_4bits_tri_o[2]}]
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports {leds_4bits_tri_o[3]}]

## RGBLEDs
set_property -dict {PACKAGE_PIN L15 IOSTANDARD LVCMOS33} [get_ports {rgbleds_6bits_tri_o[0]}]
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports {rgbleds_6bits_tri_o[1]}]
set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports {rgbleds_6bits_tri_o[2]}]
set_property -dict {PACKAGE_PIN G14 IOSTANDARD LVCMOS33} [get_ports {rgbleds_6bits_tri_o[3]}]
set_property -dict {PACKAGE_PIN L14 IOSTANDARD LVCMOS33} [get_ports {rgbleds_6bits_tri_o[4]}]
set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS33} [get_ports {rgbleds_6bits_tri_o[5]}]

## Audio signals
## MIC
set_property -dict {PACKAGE_PIN F17 IOSTANDARD LVCMOS33} [get_ports {pdm_m_clk[0]}]
set_property -dict {PACKAGE_PIN G18 IOSTANDARD LVCMOS33} [get_ports pdm_m_data_i]
## Mono Audio out
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports {pwm_audio_o[0]}]
set_property -dict {PACKAGE_PIN T17 IOSTANDARD LVCMOS33} [get_ports {pdm_audio_shutdown[0]}]

# HDMI Signals
create_clock -period 8.334 -waveform {0.000 4.167} [get_ports hdmi_in_clk_p]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_ports hdmi_in_clk_p]

#set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { hdmi_rx_cec }]; #IO_L19N_T3_VREF_35 Sch=hdmi_rx_cec
# Following pins are for HDMI RX on Rev B board
set_property -dict {PACKAGE_PIN P19 IOSTANDARD TMDS_33} [get_ports hdmi_in_clk_n]
set_property -dict {PACKAGE_PIN N18 IOSTANDARD TMDS_33} [get_ports hdmi_in_clk_p]
set_property -dict {PACKAGE_PIN W20 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_n[0]}]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_p[0]}]
set_property -dict {PACKAGE_PIN U20 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_n[1]}]
set_property -dict {PACKAGE_PIN T20 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_p[1]}]
set_property -dict {PACKAGE_PIN P20 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_n[2]}]
set_property -dict {PACKAGE_PIN N20 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_p[2]}]
set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports {hdmi_in_hpd[0]}]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports hdmi_in_ddc_scl_io]
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports hdmi_in_ddc_sda_io]

# Following pins are for HDMI RX on Rev A board
#set_property -dict {PACKAGE_PIN L17 IOSTANDARD TMDS_33} [get_ports hdmi_in_clk_n]
#set_property -dict {PACKAGE_PIN L16 IOSTANDARD TMDS_33} [get_ports hdmi_in_clk_p]
#set_property -dict {PACKAGE_PIN K18 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_n[0]}]
#set_property -dict {PACKAGE_PIN K17 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_p[0]}]
#set_property -dict {PACKAGE_PIN J19 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_n[1]}]
#set_property -dict {PACKAGE_PIN K19 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_p[1]}]
#set_property -dict {PACKAGE_PIN H18 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_n[2]}]
#set_property -dict {PACKAGE_PIN J18 IOSTANDARD TMDS_33} [get_ports {hdmi_in_data_p[2]}]
#set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports {hdmi_in_hpd[0]}]
#set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS33} [get_ports hdmi_in_ddc_scl_io]
#set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports hdmi_in_ddc_sda_io]

#set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_cec }]; #IO_L13N_T2_MRCC_35 Sch=hdmi_tx_cec
# Following pins are for HDMI TX on Rev B board
set_property -dict {PACKAGE_PIN L17 IOSTANDARD TMDS_33} [get_ports hdmi_out_clk_n]
set_property -dict {PACKAGE_PIN L16 IOSTANDARD TMDS_33} [get_ports hdmi_out_clk_p]
set_property -dict {PACKAGE_PIN K18 IOSTANDARD TMDS_33} [get_ports {hdmi_out_data_n[0]}]
set_property -dict {PACKAGE_PIN K17 IOSTANDARD TMDS_33} [get_ports {hdmi_out_data_p[0]}]
set_property -dict {PACKAGE_PIN J19 IOSTANDARD TMDS_33} [get_ports {hdmi_out_data_n[1]}]
set_property -dict {PACKAGE_PIN K19 IOSTANDARD TMDS_33} [get_ports {hdmi_out_data_p[1]}]
set_property -dict {PACKAGE_PIN H18 IOSTANDARD TMDS_33} [get_ports {hdmi_out_data_n[2]}]
set_property -dict {PACKAGE_PIN J18 IOSTANDARD TMDS_33} [get_ports {hdmi_out_data_p[2]}]
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports {hdmi_out_hpd[0]}]
set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS33} [get_ports hdmi_out_ddc_scl_io]
set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports hdmi_out_ddc_sda_io]

# Following pins are for HDMI TX on Rev A board
#set_property -dict {PACKAGE_PIN P19 IOSTANDARD TMDS_33} [get_ports hdmi_out_clk_n]
#set_property -dict {PACKAGE_PIN N18 IOSTANDARD TMDS_33} [get_ports hdmi_out_clk_p]
#set_property -dict {PACKAGE_PIN W20 IOSTANDARD TMDS_33} [get_ports {hdmi_out_data_n[0]}]
#set_property -dict {PACKAGE_PIN V20 IOSTANDARD TMDS_33} [get_ports {hdmi_out_data_p[0]}]
#set_property -dict {PACKAGE_PIN U20 IOSTANDARD TMDS_33} [get_ports {hdmi_out_data_n[1]}]
#set_property -dict {PACKAGE_PIN T20 IOSTANDARD TMDS_33} [get_ports {hdmi_out_data_p[1]}]
#set_property -dict {PACKAGE_PIN P20 IOSTANDARD TMDS_33} [get_ports {hdmi_out_data_n[2]}]
#set_property -dict {PACKAGE_PIN N20 IOSTANDARD TMDS_33} [get_ports {hdmi_out_data_p[2]}]
#set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports {hdmi_out_hpd[0]}]
#set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports hdmi_out_ddc_scl_io]
#set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports hdmi_out_ddc_sda_io]

## pmod Header JA
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports {pmodJA[1]}]
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports {pmodJA[0]}]
set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33} [get_ports {pmodJA[3]}]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports {pmodJA[2]}]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports {pmodJA[5]}]
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {pmodJA[4]}]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports {pmodJA[7]}]
set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {pmodJA[6]}]
set_property PULLUP true [get_ports {pmodJA[2]}]
set_property PULLUP true [get_ports {pmodJA[3]}]
set_property PULLUP true [get_ports {pmodJA[6]}]
set_property PULLUP true [get_ports {pmodJA[7]}]

## pmod Header JB
set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33} [get_ports {pmodJB[1]}]
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {pmodJB[0]}]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports {pmodJB[3]}]
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS33} [get_ports {pmodJB[2]}]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {pmodJB[5]}]
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports {pmodJB[4]}]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports {pmodJB[7]}]
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports {pmodJB[6]}]
set_property PULLUP true [get_ports {pmodJB[2]}]
set_property PULLUP true [get_ports {pmodJB[3]}]
set_property PULLUP true [get_ports {pmodJB[6]}]
set_property PULLUP true [get_ports {pmodJB[7]}]

## Arduino shield digital io
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_d1_d0_tri_io[0]}]
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_d1_d0_tri_io[1]}]
set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_d13_d2_tri_io[0]}]
set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_d13_d2_tri_io[1]}]
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_d13_d2_tri_io[2]}]
set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_d13_d2_tri_io[3]}]
set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_d13_d2_tri_io[4]}]
set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_d13_d2_tri_io[5]}]
set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_d13_d2_tri_io[6]}]
set_property -dict {PACKAGE_PIN V18 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_d13_d2_tri_io[7]}]
set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_d13_d2_tri_io[8]}]
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_d13_d2_tri_io[9]}]
set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_d13_d2_tri_io[10]}]
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_d13_d2_tri_io[11]}]
## Arduino shield dedicated I2C
set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS33} [get_ports iic_sw_shield_scl_io]
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports iic_sw_shield_sda_io]
## Arduino shield dedicated SPI
set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports spi_sw_shield_io1_io]
set_property -dict {PACKAGE_PIN T12 IOSTANDARD LVCMOS33} [get_ports spi_sw_shield_io0_io]
set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS33} [get_ports spi_sw_shield_sck_io]
set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS33} [get_ports spi_sw_shield_ss_io]
## Arduino Analog Channels 0 to 5
set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports Vaux1_v_n]
set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS33} [get_ports Vaux1_v_p]
set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS33} [get_ports Vaux9_v_n]
set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS33} [get_ports Vaux9_v_p]
set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS33} [get_ports Vaux6_v_n]
set_property -dict {PACKAGE_PIN K14 IOSTANDARD LVCMOS33} [get_ports Vaux6_v_p]
set_property -dict {PACKAGE_PIN J16 IOSTANDARD LVCMOS33} [get_ports Vaux15_v_n]
set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVCMOS33} [get_ports Vaux15_v_p]
set_property -dict {PACKAGE_PIN H20 IOSTANDARD LVCMOS33} [get_ports Vaux5_v_n]
set_property -dict {PACKAGE_PIN J20 IOSTANDARD LVCMOS33} [get_ports Vaux5_v_p]
set_property -dict {PACKAGE_PIN G20 IOSTANDARD LVCMOS33} [get_ports Vaux13_v_n]
set_property -dict {PACKAGE_PIN G19 IOSTANDARD LVCMOS33} [get_ports Vaux13_v_p]

## a5..a0 as digital io for gpio_shield_sw_a5_a0_tri_io[5:0]
set_property -dict {PACKAGE_PIN U10 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_a5_a0_tri_io[5]}]
set_property -dict {PACKAGE_PIN T5 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_a5_a0_tri_io[4]}]
set_property -dict {PACKAGE_PIN V11 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_a5_a0_tri_io[3]}]
set_property -dict {PACKAGE_PIN W11 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_a5_a0_tri_io[2]}]
set_property -dict {PACKAGE_PIN Y12 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_a5_a0_tri_io[1]}]
set_property -dict {PACKAGE_PIN Y11 IOSTANDARD LVCMOS33} [get_ports {gpio_shield_sw_a5_a0_tri_io[0]}]
## Arduino shield shared I2C related pullup
set_property PULLUP true [get_ports {gpio_shield_sw_a5_a0_tri_io[5]}]
set_property PULLUP true [get_ports {gpio_shield_sw_a5_a0_tri_io[4]}]

## ChipKit GPIO signals top inner header pins
set_property -dict {PACKAGE_PIN U5 IOSTANDARD LVCMOS33} [get_ports {ck_gpio_tri_io[0]}]
set_property -dict {PACKAGE_PIN V5 IOSTANDARD LVCMOS33} [get_ports {ck_gpio_tri_io[1]}]
set_property -dict {PACKAGE_PIN V6 IOSTANDARD LVCMOS33} [get_ports {ck_gpio_tri_io[2]}]
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports {ck_gpio_tri_io[3]}]
set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVCMOS33} [get_ports {ck_gpio_tri_io[4]}]
set_property -dict {PACKAGE_PIN U8 IOSTANDARD LVCMOS33} [get_ports {ck_gpio_tri_io[5]}]
set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVCMOS33} [get_ports {ck_gpio_tri_io[6]}]
set_property -dict {PACKAGE_PIN V10 IOSTANDARD LVCMOS33} [get_ports {ck_gpio_tri_io[7]}]
set_property -dict {PACKAGE_PIN W10 IOSTANDARD LVCMOS33} [get_ports {ck_gpio_tri_io[8]}]
set_property -dict {PACKAGE_PIN W6 IOSTANDARD LVCMOS33} [get_ports {ck_gpio_tri_io[9]}]
set_property -dict {PACKAGE_PIN Y6 IOSTANDARD LVCMOS33} [get_ports {ck_gpio_tri_io[10]}]
set_property -dict {PACKAGE_PIN Y7 IOSTANDARD LVCMOS33} [get_ports {ck_gpio_tri_io[11]}]
set_property -dict {PACKAGE_PIN W8 IOSTANDARD LVCMOS33} [get_ports {ck_gpio_tri_io[12]}]
set_property -dict {PACKAGE_PIN Y8 IOSTANDARD LVCMOS33} [get_ports {ck_gpio_tri_io[13]}]
set_property -dict {PACKAGE_PIN W9 IOSTANDARD LVCMOS33} [get_ports {ck_gpio_tri_io[14]}]
set_property -dict {PACKAGE_PIN Y9 IOSTANDARD LVCMOS33} [get_ports {ck_gpio_tri_io[15]}]

## ChipKit analog differential signals bottom inner header pins
set_property -dict {PACKAGE_PIN F19 IOSTANDARD LVCMOS33} [get_ports Vaux12_v_p]
set_property -dict {PACKAGE_PIN F20 IOSTANDARD LVCMOS33} [get_ports Vaux12_v_n]
set_property -dict {PACKAGE_PIN C20 IOSTANDARD LVCMOS33} [get_ports Vaux0_v_p]
set_property -dict {PACKAGE_PIN B20 IOSTANDARD LVCMOS33} [get_ports Vaux0_v_n]
set_property -dict {PACKAGE_PIN B19 IOSTANDARD LVCMOS33} [get_ports Vaux8_v_p]
set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS33} [get_ports Vaux8_v_n]





create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 1 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list system_i/processing_system7_0/inst/FCLK_CLK3]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 2 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {system_i/S02_AXI_1_BRESP[0]} {system_i/S02_AXI_1_BRESP[1]}]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 1 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property port_width 1 [get_debug_ports u_ila_1/clk]
connect_debug_port u_ila_1/clk [get_nets [list system_i/clk_wiz_0/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
set_property port_width 3 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list {system_i/S00_AXI_2_AWPROT[0]} {system_i/S00_AXI_2_AWPROT[1]} {system_i/S00_AXI_2_AWPROT[2]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe1]
set_property port_width 4 [get_debug_ports u_ila_1/probe1]
connect_debug_port u_ila_1/probe1 [get_nets [list {system_i/axi_interconnect_0_M01_AXI_WSTRB[0]} {system_i/axi_interconnect_0_M01_AXI_WSTRB[1]} {system_i/axi_interconnect_0_M01_AXI_WSTRB[2]} {system_i/axi_interconnect_0_M01_AXI_WSTRB[3]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe2]
set_property port_width 32 [get_debug_ports u_ila_1/probe2]
connect_debug_port u_ila_1/probe2 [get_nets [list {system_i/axi_interconnect_0_M01_AXI_WDATA[0]} {system_i/axi_interconnect_0_M01_AXI_WDATA[1]} {system_i/axi_interconnect_0_M01_AXI_WDATA[2]} {system_i/axi_interconnect_0_M01_AXI_WDATA[3]} {system_i/axi_interconnect_0_M01_AXI_WDATA[4]} {system_i/axi_interconnect_0_M01_AXI_WDATA[5]} {system_i/axi_interconnect_0_M01_AXI_WDATA[6]} {system_i/axi_interconnect_0_M01_AXI_WDATA[7]} {system_i/axi_interconnect_0_M01_AXI_WDATA[8]} {system_i/axi_interconnect_0_M01_AXI_WDATA[9]} {system_i/axi_interconnect_0_M01_AXI_WDATA[10]} {system_i/axi_interconnect_0_M01_AXI_WDATA[11]} {system_i/axi_interconnect_0_M01_AXI_WDATA[12]} {system_i/axi_interconnect_0_M01_AXI_WDATA[13]} {system_i/axi_interconnect_0_M01_AXI_WDATA[14]} {system_i/axi_interconnect_0_M01_AXI_WDATA[15]} {system_i/axi_interconnect_0_M01_AXI_WDATA[16]} {system_i/axi_interconnect_0_M01_AXI_WDATA[17]} {system_i/axi_interconnect_0_M01_AXI_WDATA[18]} {system_i/axi_interconnect_0_M01_AXI_WDATA[19]} {system_i/axi_interconnect_0_M01_AXI_WDATA[20]} {system_i/axi_interconnect_0_M01_AXI_WDATA[21]} {system_i/axi_interconnect_0_M01_AXI_WDATA[22]} {system_i/axi_interconnect_0_M01_AXI_WDATA[23]} {system_i/axi_interconnect_0_M01_AXI_WDATA[24]} {system_i/axi_interconnect_0_M01_AXI_WDATA[25]} {system_i/axi_interconnect_0_M01_AXI_WDATA[26]} {system_i/axi_interconnect_0_M01_AXI_WDATA[27]} {system_i/axi_interconnect_0_M01_AXI_WDATA[28]} {system_i/axi_interconnect_0_M01_AXI_WDATA[29]} {system_i/axi_interconnect_0_M01_AXI_WDATA[30]} {system_i/axi_interconnect_0_M01_AXI_WDATA[31]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe3]
set_property port_width 2 [get_debug_ports u_ila_1/probe3]
connect_debug_port u_ila_1/probe3 [get_nets [list {system_i/axi_interconnect_0_M01_AXI_RRESP[0]} {system_i/axi_interconnect_0_M01_AXI_RRESP[1]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe4]
set_property port_width 32 [get_debug_ports u_ila_1/probe4]
connect_debug_port u_ila_1/probe4 [get_nets [list {system_i/axi_interconnect_0_M01_AXI_RDATA[0]} {system_i/axi_interconnect_0_M01_AXI_RDATA[1]} {system_i/axi_interconnect_0_M01_AXI_RDATA[2]} {system_i/axi_interconnect_0_M01_AXI_RDATA[3]} {system_i/axi_interconnect_0_M01_AXI_RDATA[4]} {system_i/axi_interconnect_0_M01_AXI_RDATA[5]} {system_i/axi_interconnect_0_M01_AXI_RDATA[6]} {system_i/axi_interconnect_0_M01_AXI_RDATA[7]} {system_i/axi_interconnect_0_M01_AXI_RDATA[8]} {system_i/axi_interconnect_0_M01_AXI_RDATA[9]} {system_i/axi_interconnect_0_M01_AXI_RDATA[10]} {system_i/axi_interconnect_0_M01_AXI_RDATA[11]} {system_i/axi_interconnect_0_M01_AXI_RDATA[12]} {system_i/axi_interconnect_0_M01_AXI_RDATA[13]} {system_i/axi_interconnect_0_M01_AXI_RDATA[14]} {system_i/axi_interconnect_0_M01_AXI_RDATA[15]} {system_i/axi_interconnect_0_M01_AXI_RDATA[16]} {system_i/axi_interconnect_0_M01_AXI_RDATA[17]} {system_i/axi_interconnect_0_M01_AXI_RDATA[18]} {system_i/axi_interconnect_0_M01_AXI_RDATA[19]} {system_i/axi_interconnect_0_M01_AXI_RDATA[20]} {system_i/axi_interconnect_0_M01_AXI_RDATA[21]} {system_i/axi_interconnect_0_M01_AXI_RDATA[22]} {system_i/axi_interconnect_0_M01_AXI_RDATA[23]} {system_i/axi_interconnect_0_M01_AXI_RDATA[24]} {system_i/axi_interconnect_0_M01_AXI_RDATA[25]} {system_i/axi_interconnect_0_M01_AXI_RDATA[26]} {system_i/axi_interconnect_0_M01_AXI_RDATA[27]} {system_i/axi_interconnect_0_M01_AXI_RDATA[28]} {system_i/axi_interconnect_0_M01_AXI_RDATA[29]} {system_i/axi_interconnect_0_M01_AXI_RDATA[30]} {system_i/axi_interconnect_0_M01_AXI_RDATA[31]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe5]
set_property port_width 2 [get_debug_ports u_ila_1/probe5]
connect_debug_port u_ila_1/probe5 [get_nets [list {system_i/axi_interconnect_0_M01_AXI_BRESP[0]} {system_i/axi_interconnect_0_M01_AXI_BRESP[1]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe6]
set_property port_width 3 [get_debug_ports u_ila_1/probe6]
connect_debug_port u_ila_1/probe6 [get_nets [list {system_i/axi_interconnect_0_M01_AXI_AWPROT[0]} {system_i/axi_interconnect_0_M01_AXI_AWPROT[1]} {system_i/axi_interconnect_0_M01_AXI_AWPROT[2]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe7]
set_property port_width 32 [get_debug_ports u_ila_1/probe7]
connect_debug_port u_ila_1/probe7 [get_nets [list {system_i/axi_interconnect_0_M01_AXI_AWADDR[0]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[1]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[2]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[3]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[4]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[5]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[6]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[7]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[8]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[9]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[10]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[11]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[12]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[13]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[14]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[15]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[16]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[17]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[18]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[19]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[20]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[21]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[22]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[23]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[24]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[25]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[26]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[27]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[28]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[29]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[30]} {system_i/axi_interconnect_0_M01_AXI_AWADDR[31]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe8]
set_property port_width 3 [get_debug_ports u_ila_1/probe8]
connect_debug_port u_ila_1/probe8 [get_nets [list {system_i/axi_interconnect_0_M01_AXI_ARPROT[0]} {system_i/axi_interconnect_0_M01_AXI_ARPROT[1]} {system_i/axi_interconnect_0_M01_AXI_ARPROT[2]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe9]
set_property port_width 32 [get_debug_ports u_ila_1/probe9]
connect_debug_port u_ila_1/probe9 [get_nets [list {system_i/axi_interconnect_0_M01_AXI_ARADDR[0]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[1]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[2]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[3]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[4]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[5]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[6]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[7]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[8]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[9]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[10]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[11]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[12]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[13]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[14]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[15]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[16]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[17]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[18]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[19]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[20]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[21]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[22]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[23]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[24]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[25]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[26]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[27]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[28]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[29]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[30]} {system_i/axi_interconnect_0_M01_AXI_ARADDR[31]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe10]
set_property port_width 4 [get_debug_ports u_ila_1/probe10]
connect_debug_port u_ila_1/probe10 [get_nets [list {system_i/S02_AXI_1_WSTRB[0]} {system_i/S02_AXI_1_WSTRB[1]} {system_i/S02_AXI_1_WSTRB[2]} {system_i/S02_AXI_1_WSTRB[3]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe11]
set_property port_width 32 [get_debug_ports u_ila_1/probe11]
connect_debug_port u_ila_1/probe11 [get_nets [list {system_i/S02_AXI_1_WDATA[0]} {system_i/S02_AXI_1_WDATA[1]} {system_i/S02_AXI_1_WDATA[2]} {system_i/S02_AXI_1_WDATA[3]} {system_i/S02_AXI_1_WDATA[4]} {system_i/S02_AXI_1_WDATA[5]} {system_i/S02_AXI_1_WDATA[6]} {system_i/S02_AXI_1_WDATA[7]} {system_i/S02_AXI_1_WDATA[8]} {system_i/S02_AXI_1_WDATA[9]} {system_i/S02_AXI_1_WDATA[10]} {system_i/S02_AXI_1_WDATA[11]} {system_i/S02_AXI_1_WDATA[12]} {system_i/S02_AXI_1_WDATA[13]} {system_i/S02_AXI_1_WDATA[14]} {system_i/S02_AXI_1_WDATA[15]} {system_i/S02_AXI_1_WDATA[16]} {system_i/S02_AXI_1_WDATA[17]} {system_i/S02_AXI_1_WDATA[18]} {system_i/S02_AXI_1_WDATA[19]} {system_i/S02_AXI_1_WDATA[20]} {system_i/S02_AXI_1_WDATA[21]} {system_i/S02_AXI_1_WDATA[22]} {system_i/S02_AXI_1_WDATA[23]} {system_i/S02_AXI_1_WDATA[24]} {system_i/S02_AXI_1_WDATA[25]} {system_i/S02_AXI_1_WDATA[26]} {system_i/S02_AXI_1_WDATA[27]} {system_i/S02_AXI_1_WDATA[28]} {system_i/S02_AXI_1_WDATA[29]} {system_i/S02_AXI_1_WDATA[30]} {system_i/S02_AXI_1_WDATA[31]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe12]
set_property port_width 2 [get_debug_ports u_ila_1/probe12]
connect_debug_port u_ila_1/probe12 [get_nets [list {system_i/S02_AXI_1_RRESP[0]} {system_i/S02_AXI_1_RRESP[1]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe13]
set_property port_width 32 [get_debug_ports u_ila_1/probe13]
connect_debug_port u_ila_1/probe13 [get_nets [list {system_i/S02_AXI_1_RDATA[0]} {system_i/S02_AXI_1_RDATA[1]} {system_i/S02_AXI_1_RDATA[2]} {system_i/S02_AXI_1_RDATA[3]} {system_i/S02_AXI_1_RDATA[4]} {system_i/S02_AXI_1_RDATA[5]} {system_i/S02_AXI_1_RDATA[6]} {system_i/S02_AXI_1_RDATA[7]} {system_i/S02_AXI_1_RDATA[8]} {system_i/S02_AXI_1_RDATA[9]} {system_i/S02_AXI_1_RDATA[10]} {system_i/S02_AXI_1_RDATA[11]} {system_i/S02_AXI_1_RDATA[12]} {system_i/S02_AXI_1_RDATA[13]} {system_i/S02_AXI_1_RDATA[14]} {system_i/S02_AXI_1_RDATA[15]} {system_i/S02_AXI_1_RDATA[16]} {system_i/S02_AXI_1_RDATA[17]} {system_i/S02_AXI_1_RDATA[18]} {system_i/S02_AXI_1_RDATA[19]} {system_i/S02_AXI_1_RDATA[20]} {system_i/S02_AXI_1_RDATA[21]} {system_i/S02_AXI_1_RDATA[22]} {system_i/S02_AXI_1_RDATA[23]} {system_i/S02_AXI_1_RDATA[24]} {system_i/S02_AXI_1_RDATA[25]} {system_i/S02_AXI_1_RDATA[26]} {system_i/S02_AXI_1_RDATA[27]} {system_i/S02_AXI_1_RDATA[28]} {system_i/S02_AXI_1_RDATA[29]} {system_i/S02_AXI_1_RDATA[30]} {system_i/S02_AXI_1_RDATA[31]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe14]
set_property port_width 3 [get_debug_ports u_ila_1/probe14]
connect_debug_port u_ila_1/probe14 [get_nets [list {system_i/S02_AXI_1_AWPROT[0]} {system_i/S02_AXI_1_AWPROT[1]} {system_i/S02_AXI_1_AWPROT[2]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe15]
set_property port_width 32 [get_debug_ports u_ila_1/probe15]
connect_debug_port u_ila_1/probe15 [get_nets [list {system_i/S02_AXI_1_AWADDR[0]} {system_i/S02_AXI_1_AWADDR[1]} {system_i/S02_AXI_1_AWADDR[2]} {system_i/S02_AXI_1_AWADDR[3]} {system_i/S02_AXI_1_AWADDR[4]} {system_i/S02_AXI_1_AWADDR[5]} {system_i/S02_AXI_1_AWADDR[6]} {system_i/S02_AXI_1_AWADDR[7]} {system_i/S02_AXI_1_AWADDR[8]} {system_i/S02_AXI_1_AWADDR[9]} {system_i/S02_AXI_1_AWADDR[10]} {system_i/S02_AXI_1_AWADDR[11]} {system_i/S02_AXI_1_AWADDR[12]} {system_i/S02_AXI_1_AWADDR[13]} {system_i/S02_AXI_1_AWADDR[14]} {system_i/S02_AXI_1_AWADDR[15]} {system_i/S02_AXI_1_AWADDR[16]} {system_i/S02_AXI_1_AWADDR[17]} {system_i/S02_AXI_1_AWADDR[18]} {system_i/S02_AXI_1_AWADDR[19]} {system_i/S02_AXI_1_AWADDR[20]} {system_i/S02_AXI_1_AWADDR[21]} {system_i/S02_AXI_1_AWADDR[22]} {system_i/S02_AXI_1_AWADDR[23]} {system_i/S02_AXI_1_AWADDR[24]} {system_i/S02_AXI_1_AWADDR[25]} {system_i/S02_AXI_1_AWADDR[26]} {system_i/S02_AXI_1_AWADDR[27]} {system_i/S02_AXI_1_AWADDR[28]} {system_i/S02_AXI_1_AWADDR[29]} {system_i/S02_AXI_1_AWADDR[30]} {system_i/S02_AXI_1_AWADDR[31]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe16]
set_property port_width 4 [get_debug_ports u_ila_1/probe16]
connect_debug_port u_ila_1/probe16 [get_nets [list {system_i/S01_AXI_2_WSTRB[0]} {system_i/S01_AXI_2_WSTRB[1]} {system_i/S01_AXI_2_WSTRB[2]} {system_i/S01_AXI_2_WSTRB[3]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe17]
set_property port_width 32 [get_debug_ports u_ila_1/probe17]
connect_debug_port u_ila_1/probe17 [get_nets [list {system_i/S01_AXI_2_WDATA[0]} {system_i/S01_AXI_2_WDATA[1]} {system_i/S01_AXI_2_WDATA[2]} {system_i/S01_AXI_2_WDATA[3]} {system_i/S01_AXI_2_WDATA[4]} {system_i/S01_AXI_2_WDATA[5]} {system_i/S01_AXI_2_WDATA[6]} {system_i/S01_AXI_2_WDATA[7]} {system_i/S01_AXI_2_WDATA[8]} {system_i/S01_AXI_2_WDATA[9]} {system_i/S01_AXI_2_WDATA[10]} {system_i/S01_AXI_2_WDATA[11]} {system_i/S01_AXI_2_WDATA[12]} {system_i/S01_AXI_2_WDATA[13]} {system_i/S01_AXI_2_WDATA[14]} {system_i/S01_AXI_2_WDATA[15]} {system_i/S01_AXI_2_WDATA[16]} {system_i/S01_AXI_2_WDATA[17]} {system_i/S01_AXI_2_WDATA[18]} {system_i/S01_AXI_2_WDATA[19]} {system_i/S01_AXI_2_WDATA[20]} {system_i/S01_AXI_2_WDATA[21]} {system_i/S01_AXI_2_WDATA[22]} {system_i/S01_AXI_2_WDATA[23]} {system_i/S01_AXI_2_WDATA[24]} {system_i/S01_AXI_2_WDATA[25]} {system_i/S01_AXI_2_WDATA[26]} {system_i/S01_AXI_2_WDATA[27]} {system_i/S01_AXI_2_WDATA[28]} {system_i/S01_AXI_2_WDATA[29]} {system_i/S01_AXI_2_WDATA[30]} {system_i/S01_AXI_2_WDATA[31]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe18]
set_property port_width 3 [get_debug_ports u_ila_1/probe18]
connect_debug_port u_ila_1/probe18 [get_nets [list {system_i/S01_AXI_2_AWPROT[0]} {system_i/S01_AXI_2_AWPROT[1]} {system_i/S01_AXI_2_AWPROT[2]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe19]
set_property port_width 32 [get_debug_ports u_ila_1/probe19]
connect_debug_port u_ila_1/probe19 [get_nets [list {system_i/S01_AXI_2_AWADDR[0]} {system_i/S01_AXI_2_AWADDR[1]} {system_i/S01_AXI_2_AWADDR[2]} {system_i/S01_AXI_2_AWADDR[3]} {system_i/S01_AXI_2_AWADDR[4]} {system_i/S01_AXI_2_AWADDR[5]} {system_i/S01_AXI_2_AWADDR[6]} {system_i/S01_AXI_2_AWADDR[7]} {system_i/S01_AXI_2_AWADDR[8]} {system_i/S01_AXI_2_AWADDR[9]} {system_i/S01_AXI_2_AWADDR[10]} {system_i/S01_AXI_2_AWADDR[11]} {system_i/S01_AXI_2_AWADDR[12]} {system_i/S01_AXI_2_AWADDR[13]} {system_i/S01_AXI_2_AWADDR[14]} {system_i/S01_AXI_2_AWADDR[15]} {system_i/S01_AXI_2_AWADDR[16]} {system_i/S01_AXI_2_AWADDR[17]} {system_i/S01_AXI_2_AWADDR[18]} {system_i/S01_AXI_2_AWADDR[19]} {system_i/S01_AXI_2_AWADDR[20]} {system_i/S01_AXI_2_AWADDR[21]} {system_i/S01_AXI_2_AWADDR[22]} {system_i/S01_AXI_2_AWADDR[23]} {system_i/S01_AXI_2_AWADDR[24]} {system_i/S01_AXI_2_AWADDR[25]} {system_i/S01_AXI_2_AWADDR[26]} {system_i/S01_AXI_2_AWADDR[27]} {system_i/S01_AXI_2_AWADDR[28]} {system_i/S01_AXI_2_AWADDR[29]} {system_i/S01_AXI_2_AWADDR[30]} {system_i/S01_AXI_2_AWADDR[31]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe20]
set_property port_width 1 [get_debug_ports u_ila_1/probe20]
connect_debug_port u_ila_1/probe20 [get_nets [list system_i/axi_interconnect_0_M01_AXI_ARREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe21]
set_property port_width 1 [get_debug_ports u_ila_1/probe21]
connect_debug_port u_ila_1/probe21 [get_nets [list system_i/axi_interconnect_0_M01_AXI_ARVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe22]
set_property port_width 1 [get_debug_ports u_ila_1/probe22]
connect_debug_port u_ila_1/probe22 [get_nets [list system_i/axi_interconnect_0_M01_AXI_AWREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe23]
set_property port_width 1 [get_debug_ports u_ila_1/probe23]
connect_debug_port u_ila_1/probe23 [get_nets [list system_i/axi_interconnect_0_M01_AXI_AWVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe24]
set_property port_width 1 [get_debug_ports u_ila_1/probe24]
connect_debug_port u_ila_1/probe24 [get_nets [list system_i/axi_interconnect_0_M01_AXI_BREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe25]
set_property port_width 1 [get_debug_ports u_ila_1/probe25]
connect_debug_port u_ila_1/probe25 [get_nets [list system_i/axi_interconnect_0_M01_AXI_BVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe26]
set_property port_width 1 [get_debug_ports u_ila_1/probe26]
connect_debug_port u_ila_1/probe26 [get_nets [list system_i/axi_interconnect_0_M01_AXI_RREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe27]
set_property port_width 1 [get_debug_ports u_ila_1/probe27]
connect_debug_port u_ila_1/probe27 [get_nets [list system_i/axi_interconnect_0_M01_AXI_RVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe28]
set_property port_width 1 [get_debug_ports u_ila_1/probe28]
connect_debug_port u_ila_1/probe28 [get_nets [list system_i/axi_interconnect_0_M01_AXI_WREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe29]
set_property port_width 1 [get_debug_ports u_ila_1/probe29]
connect_debug_port u_ila_1/probe29 [get_nets [list system_i/axi_interconnect_0_M01_AXI_WVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe30]
set_property port_width 1 [get_debug_ports u_ila_1/probe30]
connect_debug_port u_ila_1/probe30 [get_nets [list system_i/iop1/rst_clk_wiz_1_100M_bus_struct_reset]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe31]
set_property port_width 1 [get_debug_ports u_ila_1/probe31]
connect_debug_port u_ila_1/probe31 [get_nets [list system_i/iop1/rst_clk_wiz_1_100M_interconnect_aresetn]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe32]
set_property port_width 1 [get_debug_ports u_ila_1/probe32]
connect_debug_port u_ila_1/probe32 [get_nets [list system_i/iop1/rst_clk_wiz_1_100M_mb_reset]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe33]
set_property port_width 1 [get_debug_ports u_ila_1/probe33]
connect_debug_port u_ila_1/probe33 [get_nets [list system_i/iop1/rst_clk_wiz_1_100M_peripheral_aresetn]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe34]
set_property port_width 1 [get_debug_ports u_ila_1/probe34]
connect_debug_port u_ila_1/probe34 [get_nets [list system_i/S00_AXI_2_ARREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe35]
set_property port_width 1 [get_debug_ports u_ila_1/probe35]
connect_debug_port u_ila_1/probe35 [get_nets [list system_i/S00_AXI_2_ARVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe36]
set_property port_width 1 [get_debug_ports u_ila_1/probe36]
connect_debug_port u_ila_1/probe36 [get_nets [list system_i/S00_AXI_2_AWREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe37]
set_property port_width 1 [get_debug_ports u_ila_1/probe37]
connect_debug_port u_ila_1/probe37 [get_nets [list system_i/S00_AXI_2_AWVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe38]
set_property port_width 1 [get_debug_ports u_ila_1/probe38]
connect_debug_port u_ila_1/probe38 [get_nets [list system_i/S00_AXI_2_BREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe39]
set_property port_width 1 [get_debug_ports u_ila_1/probe39]
connect_debug_port u_ila_1/probe39 [get_nets [list system_i/S00_AXI_2_BVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe40]
set_property port_width 1 [get_debug_ports u_ila_1/probe40]
connect_debug_port u_ila_1/probe40 [get_nets [list system_i/S00_AXI_2_RREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe41]
set_property port_width 1 [get_debug_ports u_ila_1/probe41]
connect_debug_port u_ila_1/probe41 [get_nets [list system_i/S00_AXI_2_RVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe42]
set_property port_width 1 [get_debug_ports u_ila_1/probe42]
connect_debug_port u_ila_1/probe42 [get_nets [list system_i/S00_AXI_2_WREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe43]
set_property port_width 1 [get_debug_ports u_ila_1/probe43]
connect_debug_port u_ila_1/probe43 [get_nets [list system_i/S00_AXI_2_WVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe44]
set_property port_width 1 [get_debug_ports u_ila_1/probe44]
connect_debug_port u_ila_1/probe44 [get_nets [list system_i/S01_AXI_2_ARREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe45]
set_property port_width 1 [get_debug_ports u_ila_1/probe45]
connect_debug_port u_ila_1/probe45 [get_nets [list system_i/S01_AXI_2_ARVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe46]
set_property port_width 1 [get_debug_ports u_ila_1/probe46]
connect_debug_port u_ila_1/probe46 [get_nets [list system_i/S01_AXI_2_AWREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe47]
set_property port_width 1 [get_debug_ports u_ila_1/probe47]
connect_debug_port u_ila_1/probe47 [get_nets [list system_i/S01_AXI_2_AWVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe48]
set_property port_width 1 [get_debug_ports u_ila_1/probe48]
connect_debug_port u_ila_1/probe48 [get_nets [list system_i/S01_AXI_2_BREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe49]
set_property port_width 1 [get_debug_ports u_ila_1/probe49]
connect_debug_port u_ila_1/probe49 [get_nets [list system_i/S01_AXI_2_BVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe50]
set_property port_width 1 [get_debug_ports u_ila_1/probe50]
connect_debug_port u_ila_1/probe50 [get_nets [list system_i/S01_AXI_2_RREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe51]
set_property port_width 1 [get_debug_ports u_ila_1/probe51]
connect_debug_port u_ila_1/probe51 [get_nets [list system_i/S01_AXI_2_RVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe52]
set_property port_width 1 [get_debug_ports u_ila_1/probe52]
connect_debug_port u_ila_1/probe52 [get_nets [list system_i/S01_AXI_2_WREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe53]
set_property port_width 1 [get_debug_ports u_ila_1/probe53]
connect_debug_port u_ila_1/probe53 [get_nets [list system_i/S01_AXI_2_WVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe54]
set_property port_width 1 [get_debug_ports u_ila_1/probe54]
connect_debug_port u_ila_1/probe54 [get_nets [list system_i/S02_AXI_1_ARREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe55]
set_property port_width 1 [get_debug_ports u_ila_1/probe55]
connect_debug_port u_ila_1/probe55 [get_nets [list system_i/S02_AXI_1_ARVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe56]
set_property port_width 1 [get_debug_ports u_ila_1/probe56]
connect_debug_port u_ila_1/probe56 [get_nets [list system_i/S02_AXI_1_AWREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe57]
set_property port_width 1 [get_debug_ports u_ila_1/probe57]
connect_debug_port u_ila_1/probe57 [get_nets [list system_i/S02_AXI_1_AWVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe58]
set_property port_width 1 [get_debug_ports u_ila_1/probe58]
connect_debug_port u_ila_1/probe58 [get_nets [list system_i/S02_AXI_1_BREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe59]
set_property port_width 1 [get_debug_ports u_ila_1/probe59]
connect_debug_port u_ila_1/probe59 [get_nets [list system_i/S02_AXI_1_BVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe60]
set_property port_width 1 [get_debug_ports u_ila_1/probe60]
connect_debug_port u_ila_1/probe60 [get_nets [list system_i/S02_AXI_1_RREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe61]
set_property port_width 1 [get_debug_ports u_ila_1/probe61]
connect_debug_port u_ila_1/probe61 [get_nets [list system_i/S02_AXI_1_RVALID]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe62]
set_property port_width 1 [get_debug_ports u_ila_1/probe62]
connect_debug_port u_ila_1/probe62 [get_nets [list system_i/S02_AXI_1_WREADY]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe63]
set_property port_width 1 [get_debug_ports u_ila_1/probe63]
connect_debug_port u_ila_1/probe63 [get_nets [list system_i/S02_AXI_1_WVALID]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_clk_out1]
