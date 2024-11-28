// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 28 12:08:54 2024
// Host        : LAPTOP-GEPADMVF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/juans/OneDrive/Escritorio/Universidad/Cuarto/Sistemas
//               Electrnicos
//               Digitales/TRABAJO/VHDL-SnakeGame/SnakeGame/SnakeGame.gen/sources_1/ip/PLL100to108/PLL100to108_stub.v}
// Design      : PLL100to108
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module PLL100to108(clk_out1, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_in1" */
/* synthesis syn_force_seq_prim="clk_out1" */;
  output clk_out1 /* synthesis syn_isclock = 1 */;
  input clk_in1;
endmodule