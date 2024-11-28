set_property SRC_FILE_INFO {cfile:c:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.gen/sources_1/ip/PLL100to108/PLL100to108.xdc rfile:../SnakeGame.gen/sources_1/ip/PLL100to108/PLL100to108.xdc id:1 order:EARLY scoped_inst:Inst_PLL/inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/constrs_1/new/Nexys-4-DDR-Master.xdc rfile:../SnakeGame.srcs/constrs_1/new/Nexys-4-DDR-Master.xdc id:2} [current_design]
current_instance Inst_PLL/inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
current_instance
set_property src_info {type:XDC file:2 line:172 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B12   IOSTANDARD LVCMOS33 } [get_ports { VSync }]; #IO_L3N_T0_DQS_AD1N_15 Sch=vga_vs
