transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../SnakeGame.gen/sources_1/ip/PLL100to108" -l xpm -l xil_defaultlib \
"C:/Users/juans/OneDrive/Documentos/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  -incr \
"C:/Users/juans/OneDrive/Documentos/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../SnakeGame.gen/sources_1/ip/PLL100to108/PLL100to108_sim_netlist.vhdl" \
"../../../SnakeGame.srcs/sources_1/new/Clock_Converter.vhd" \
"../../../SnakeGame.srcs/sources_1/new/Types.vhd" \
"../../../SnakeGame.srcs/sources_1/new/GAME_Move.vhd" \
"../../../SnakeGame.srcs/sources_1/new/VGA_Draw.vhd" \
"../../../SnakeGame.srcs/sources_1/new/VGA_Sync.vhd" \
"../../../SnakeGame.srcs/sources_1/new/TOP_Test.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

