set_property SRC_FILE_INFO {cfile:c:/Users/mariu/Downloads/SnakeGame/SnakeGame.gen/sources_1/ip/PLL100to108/PLL100to108.xdc rfile:../SnakeGame.gen/sources_1/ip/PLL100to108/PLL100to108.xdc id:1 order:EARLY scoped_inst:Inst_Clock_Manager/Inst_PLL/inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/mariu/Downloads/SnakeGame/SnakeGame.srcs/constrs_1/imports/new/Nexys-4-DDR-Master.xdc rfile:../SnakeGame.srcs/constrs_1/imports/new/Nexys-4-DDR-Master.xdc id:2} [current_design]
current_instance Inst_Clock_Manager/Inst_PLL/inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
current_instance
set_property src_info {type:XDC file:2 line:86 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { button_up }]; #IO_L4N_T0_D05_14 Sch=btnu
set_property src_info {type:XDC file:2 line:87 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { button_left }]; #IO_L12P_T1_MRCC_14 Sch=btnl
set_property src_info {type:XDC file:2 line:88 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { button_right }]; #IO_L10N_T1_D15_14 Sch=btnr
set_property src_info {type:XDC file:2 line:89 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { button_down }]; #IO_L9N_T1_DQS_D13_14 Sch=btnd
