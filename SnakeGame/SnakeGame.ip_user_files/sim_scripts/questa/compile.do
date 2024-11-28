vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../SnakeGame.gen/sources_1/ip/PLL100to108" \
"C:/Users/juans/OneDrive/Documentos/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93  \
"C:/Users/juans/OneDrive/Documentos/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../SnakeGame.gen/sources_1/ip/PLL100to108/PLL100to108_sim_netlist.vhdl" \
"../../../SnakeGame.srcs/sources_1/new/Clock_Converter.vhd" \
"../../../SnakeGame.srcs/sources_1/new/Types.vhd" \
"../../../SnakeGame.srcs/sources_1/new/GAME_Move.vhd" \
"../../../SnakeGame.srcs/sources_1/new/VGA_Draw.vhd" \
"../../../SnakeGame.srcs/sources_1/new/VGA_Sync.vhd" \
"../../../SnakeGame.srcs/sources_1/new/TOP_Test.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

