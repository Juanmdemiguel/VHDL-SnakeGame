// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Dec 13 08:44:49 2024
// Host        : DESKTOP-1V0CU1G running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.sim/sim_1/impl/timing/xsim/tb_Main_Game_time_impl.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module BUTTONS_Sync
   (sig_buttons,
    \FSM_onehot_cur_state_reg[0] ,
    LEDs_OBUF,
    clk_temp,
    \FSM_onehot_cur_state_reg[0]_0 ,
    mode,
    button_up_IBUF,
    button_down_IBUF,
    button_right_IBUF,
    button_left_IBUF,
    button_center_IBUF);
  output [2:0]sig_buttons;
  output \FSM_onehot_cur_state_reg[0] ;
  output [4:0]LEDs_OBUF;
  input clk_temp;
  input \FSM_onehot_cur_state_reg[0]_0 ;
  input [0:0]mode;
  input button_up_IBUF;
  input button_down_IBUF;
  input button_right_IBUF;
  input button_left_IBUF;
  input button_center_IBUF;

  wire \FSM_onehot_cur_state_reg[0] ;
  wire \FSM_onehot_cur_state_reg[0]_0 ;
  wire [4:0]LEDs_OBUF;
  wire button_center_IBUF;
  wire button_down_IBUF;
  wire button_left_IBUF;
  wire button_right_IBUF;
  wire button_up_IBUF;
  wire clk_temp;
  wire [0:0]mode;
  wire [2:0]sig_buttons;
  wire [1:0]\sreg[0]_0 ;
  wire \sreg_reg[1][0]_srl2_n_0 ;
  wire \sreg_reg[1][1]_srl2_n_0 ;
  wire \sreg_reg[1][2]_srl2_i_1_n_0 ;
  wire \sreg_reg[1][2]_srl2_n_0 ;

  LUT5 #(
    .INIT(32'hAAAAAACA)) 
    \FSM_onehot_cur_state[0]_i_1 
       (.I0(\FSM_onehot_cur_state_reg[0]_0 ),
        .I1(mode),
        .I2(sig_buttons[2]),
        .I3(sig_buttons[0]),
        .I4(sig_buttons[1]),
        .O(\FSM_onehot_cur_state_reg[0] ));
  LUT3 #(
    .INIT(8'h04)) 
    \LEDs_OBUF[0]_inst_i_1 
       (.I0(sig_buttons[0]),
        .I1(sig_buttons[2]),
        .I2(sig_buttons[1]),
        .O(LEDs_OBUF[0]));
  LUT3 #(
    .INIT(8'h08)) 
    \LEDs_OBUF[1]_inst_i_1 
       (.I0(sig_buttons[1]),
        .I1(sig_buttons[0]),
        .I2(sig_buttons[2]),
        .O(LEDs_OBUF[1]));
  LUT3 #(
    .INIT(8'h04)) 
    \LEDs_OBUF[2]_inst_i_1 
       (.I0(sig_buttons[0]),
        .I1(sig_buttons[1]),
        .I2(sig_buttons[2]),
        .O(LEDs_OBUF[2]));
  LUT3 #(
    .INIT(8'h04)) 
    \LEDs_OBUF[3]_inst_i_1 
       (.I0(sig_buttons[2]),
        .I1(sig_buttons[0]),
        .I2(sig_buttons[1]),
        .O(LEDs_OBUF[3]));
  LUT3 #(
    .INIT(8'h01)) 
    \LEDs_OBUF[4]_inst_i_1 
       (.I0(sig_buttons[2]),
        .I1(sig_buttons[0]),
        .I2(sig_buttons[1]),
        .O(LEDs_OBUF[4]));
  FDRE #(
    .INIT(1'b0)) 
    \button_output_reg[0] 
       (.C(clk_temp),
        .CE(1'b1),
        .D(\sreg_reg[1][0]_srl2_n_0 ),
        .Q(sig_buttons[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_output_reg[1] 
       (.C(clk_temp),
        .CE(1'b1),
        .D(\sreg_reg[1][1]_srl2_n_0 ),
        .Q(sig_buttons[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_output_reg[2] 
       (.C(clk_temp),
        .CE(1'b1),
        .D(\sreg_reg[1][2]_srl2_n_0 ),
        .Q(sig_buttons[2]),
        .R(1'b0));
  (* srl_bus_name = "\\Inst_Buttons_Sync/sreg_reg[1] " *) 
  (* srl_name = "\\Inst_Buttons_Sync/sreg_reg[1][0]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \sreg_reg[1][0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_temp),
        .D(\sreg[0]_0 [0]),
        .Q(\sreg_reg[1][0]_srl2_n_0 ));
  LUT5 #(
    .INIT(32'h50505551)) 
    \sreg_reg[1][0]_srl2_i_1 
       (.I0(button_up_IBUF),
        .I1(button_center_IBUF),
        .I2(button_down_IBUF),
        .I3(button_right_IBUF),
        .I4(button_left_IBUF),
        .O(\sreg[0]_0 [0]));
  (* srl_bus_name = "\\Inst_Buttons_Sync/sreg_reg[1] " *) 
  (* srl_name = "\\Inst_Buttons_Sync/sreg_reg[1][1]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \sreg_reg[1][1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_temp),
        .D(\sreg[0]_0 [1]),
        .Q(\sreg_reg[1][1]_srl2_n_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \sreg_reg[1][1]_srl2_i_1 
       (.I0(button_left_IBUF),
        .I1(button_right_IBUF),
        .I2(button_up_IBUF),
        .I3(button_down_IBUF),
        .O(\sreg[0]_0 [1]));
  (* srl_bus_name = "\\Inst_Buttons_Sync/sreg_reg[1] " *) 
  (* srl_name = "\\Inst_Buttons_Sync/sreg_reg[1][2]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \sreg_reg[1][2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_temp),
        .D(\sreg_reg[1][2]_srl2_i_1_n_0 ),
        .Q(\sreg_reg[1][2]_srl2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \sreg_reg[1][2]_srl2_i_1 
       (.I0(button_up_IBUF),
        .I1(button_down_IBUF),
        .I2(button_right_IBUF),
        .I3(button_left_IBUF),
        .O(\sreg_reg[1][2]_srl2_i_1_n_0 ));
endmodule

module Clock_Converter
   (clk_temp,
    clk_CV);
  output clk_temp;
  input clk_CV;

  wire clk_CV;
  wire clk_temp;
  wire clk_temp_0;
  wire clk_temp_i_1_n_0;
  wire [19:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__1_n_0;
  wire counter0_carry__2_n_0;
  wire counter0_carry_n_0;
  wire \counter[19]_i_2_n_0 ;
  wire \counter[19]_i_3_n_0 ;
  wire \counter[19]_i_4_n_0 ;
  wire \counter[19]_i_5_n_0 ;
  wire [19:0]p_1_in;
  wire [2:0]NLW_counter0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__3_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    clk_temp_i_1
       (.I0(clk_temp_0),
        .I1(clk_temp),
        .O(clk_temp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_temp_reg
       (.C(clk_CV),
        .CE(1'b1),
        .D(clk_temp_i_1_n_0),
        .Q(clk_temp),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,NLW_counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S(counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,NLW_counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S(counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,NLW_counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[12:9]),
        .S(counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,NLW_counter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[16:13]),
        .S(counter[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO(NLW_counter0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__3_O_UNCONNECTED[3],p_1_in[19:17]}),
        .S({1'b0,counter[19:17]}));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \counter[19]_i_1 
       (.I0(\counter[19]_i_2_n_0 ),
        .I1(counter[14]),
        .I2(counter[3]),
        .I3(counter[10]),
        .I4(counter[7]),
        .I5(\counter[19]_i_3_n_0 ),
        .O(clk_temp_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[19]_i_2 
       (.I0(counter[9]),
        .I1(counter[6]),
        .I2(counter[2]),
        .I3(counter[17]),
        .O(\counter[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \counter[19]_i_3 
       (.I0(counter[1]),
        .I1(counter[4]),
        .I2(counter[16]),
        .I3(counter[12]),
        .I4(\counter[19]_i_4_n_0 ),
        .I5(\counter[19]_i_5_n_0 ),
        .O(\counter[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \counter[19]_i_4 
       (.I0(counter[19]),
        .I1(counter[11]),
        .I2(counter[13]),
        .I3(counter[15]),
        .O(\counter[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \counter[19]_i_5 
       (.I0(counter[18]),
        .I1(counter[0]),
        .I2(counter[5]),
        .I3(counter[8]),
        .O(\counter[19]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(counter[0]),
        .R(clk_temp_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(counter[10]),
        .R(clk_temp_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(counter[11]),
        .R(clk_temp_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(counter[12]),
        .R(clk_temp_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(counter[13]),
        .R(clk_temp_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(counter[14]),
        .R(clk_temp_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(counter[15]),
        .R(clk_temp_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(counter[16]),
        .R(clk_temp_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(counter[17]),
        .R(clk_temp_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(counter[18]),
        .R(clk_temp_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(counter[19]),
        .R(clk_temp_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(counter[1]),
        .R(clk_temp_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(counter[2]),
        .R(clk_temp_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(counter[3]),
        .R(clk_temp_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(counter[4]),
        .R(clk_temp_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(counter[5]),
        .R(clk_temp_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(counter[6]),
        .R(clk_temp_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(counter[7]),
        .R(clk_temp_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(counter[8]),
        .R(clk_temp_0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(counter[9]),
        .R(clk_temp_0));
endmodule

module Clock_distributor
   (clk_CV,
    clk);
  output clk_CV;
  input clk;

  wire clk;
  wire clk_CV;

  (* box_type = "PRIMITIVE" *) 
  BUFG bufg_inst
       (.I(clk),
        .O(clk_CV));
endmodule

module Main_Game
   (mode,
    \FSM_onehot_cur_state_reg[0]_0 ,
    typeDraw,
    LED_OBUF,
    clk_CV,
    \FSM_onehot_cur_state_reg[0]_1 ,
    sig_buttons);
  output [1:0]mode;
  output \FSM_onehot_cur_state_reg[0]_0 ;
  output typeDraw;
  output [2:0]LED_OBUF;
  input clk_CV;
  input \FSM_onehot_cur_state_reg[0]_1 ;
  input [2:0]sig_buttons;

  wire \FSM_onehot_cur_state[1]_i_1_n_0 ;
  wire \FSM_onehot_cur_state[2]_i_1_n_0 ;
  wire \FSM_onehot_cur_state_reg[0]_0 ;
  wire \FSM_onehot_cur_state_reg[0]_1 ;
  wire [2:0]LED_OBUF;
  wire clk_CV;
  wire [1:0]mode;
  wire [2:0]sig_buttons;
  wire typeDraw;

  LUT6 #(
    .INIT(64'hFFFFFFBF000000A0)) 
    \FSM_onehot_cur_state[1]_i_1 
       (.I0(\FSM_onehot_cur_state_reg[0]_0 ),
        .I1(mode[1]),
        .I2(sig_buttons[2]),
        .I3(sig_buttons[0]),
        .I4(sig_buttons[1]),
        .I5(mode[0]),
        .O(\FSM_onehot_cur_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0A8F0)) 
    \FSM_onehot_cur_state[2]_i_1 
       (.I0(mode[0]),
        .I1(\FSM_onehot_cur_state_reg[0]_0 ),
        .I2(mode[1]),
        .I3(sig_buttons[2]),
        .I4(sig_buttons[0]),
        .I5(sig_buttons[1]),
        .O(\FSM_onehot_cur_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s0_start:001,s1_game:010,s2_go:100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_cur_state_reg[0] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(\FSM_onehot_cur_state_reg[0]_1 ),
        .Q(\FSM_onehot_cur_state_reg[0]_0 ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s0_start:001,s1_game:010,s2_go:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[1] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(\FSM_onehot_cur_state[1]_i_1_n_0 ),
        .Q(mode[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s0_start:001,s1_game:010,s2_go:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[2] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(\FSM_onehot_cur_state[2]_i_1_n_0 ),
        .Q(mode[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \LED_OBUF[0]_inst_i_1 
       (.I0(mode[1]),
        .I1(mode[0]),
        .O(LED_OBUF[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \LED_OBUF[1]_inst_i_1 
       (.I0(mode[0]),
        .I1(mode[1]),
        .O(LED_OBUF[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \LED_OBUF[2]_inst_i_1 
       (.I0(mode[1]),
        .I1(mode[0]),
        .O(LED_OBUF[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \rout_reg[3]_i_2 
       (.I0(mode[1]),
        .I1(mode[0]),
        .O(typeDraw));
endmodule

module PLL100to108
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  (* IBUF_LOW_PWR *) wire clk_in1;
  wire clk_out1;

  PLL100to108_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1));
endmodule

module PLL100to108_clk_wiz
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire clk_out1_PLL100to108;
  wire clkfbout_PLL100to108;
  wire clkfbout_buf_PLL100to108;
  wire NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_plle2_adv_inst_DRDY_UNCONNECTED;
  wire NLW_plle2_adv_inst_LOCKED_UNCONNECTED;
  wire [15:0]NLW_plle2_adv_inst_DO_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_PLL100to108),
        .O(clkfbout_buf_PLL100to108));
  (* box_type = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_PLL100to108),
        .O(clk_out1));
  (* OPT_MODIFIED = "MLO" *) 
  (* box_type = "PRIMITIVE" *) 
  PLLE2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT(54),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE(10),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(5),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .STARTUP_WAIT("FALSE")) 
    plle2_adv_inst
       (.CLKFBIN(clkfbout_buf_PLL100to108),
        .CLKFBOUT(clkfbout_PLL100to108),
        .CLKIN1(clk_in1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKOUT0(clk_out1_PLL100to108),
        .CLKOUT1(NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT2(NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT3(NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT4(NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_plle2_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_plle2_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_plle2_adv_inst_LOCKED_UNCONNECTED),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

module Scaled_String
   (\start[1][0] ,
    \start[0][0] ,
    \gameover[8][0] ,
    \gameover[6][0] ,
    \gameover[5][0] ,
    \gameover[3][0] ,
    \gameover[2][0] ,
    \gameover[1][0] ,
    \gameover[0][0] ,
    \char_scaled_reg[60][0] ,
    \char_scaled_reg[60][0]_0 ,
    \char_scaled_reg[60][0]_1 ,
    \char_scaled_reg[60][0]_2 ,
    \char_scaled_reg[60][5] ,
    \char_scaled_reg[25][5] ,
    \char_scaled_reg[60][25] ,
    \char_scaled_reg[60][0]_3 ,
    \char_scaled_reg[60][25]_0 ,
    \char_scaled_reg[25][5]_0 ,
    \char_scaled_reg[25][10] ,
    \char_scaled_reg[60][0]_4 ,
    \char_scaled_reg[15][25] ,
    \char_scaled_reg[60][0]_5 ,
    \char_scaled_reg[0][59] ,
    \char_scaled_reg[60][25]_1 ,
    \char_scaled_reg[0][59]_0 ,
    \char_scaled_reg[60][5]_0 ,
    \char_scaled_reg[0][59]_1 ,
    clk_CV,
    \rout_reg[3]_i_84 ,
    \rout_reg[3]_i_84_0 ,
    \rout_reg[3]_i_57 ,
    \rout_reg[3]_i_57_0 ,
    \rout_reg[3]_i_57_1 ,
    \rout_reg[3]_i_83 ,
    O);
  output [0:0]\start[1][0] ;
  output [0:0]\start[0][0] ;
  output [0:0]\gameover[8][0] ;
  output [0:0]\gameover[6][0] ;
  output [0:0]\gameover[5][0] ;
  output [0:0]\gameover[3][0] ;
  output [0:0]\gameover[2][0] ;
  output [0:0]\gameover[1][0] ;
  output [0:0]\gameover[0][0] ;
  output \char_scaled_reg[60][0] ;
  output \char_scaled_reg[60][0]_0 ;
  output \char_scaled_reg[60][0]_1 ;
  output \char_scaled_reg[60][0]_2 ;
  output \char_scaled_reg[60][5] ;
  output \char_scaled_reg[25][5] ;
  output \char_scaled_reg[60][25] ;
  output \char_scaled_reg[60][0]_3 ;
  output \char_scaled_reg[60][25]_0 ;
  output \char_scaled_reg[25][5]_0 ;
  output \char_scaled_reg[25][10] ;
  output \char_scaled_reg[60][0]_4 ;
  output \char_scaled_reg[15][25] ;
  output \char_scaled_reg[60][0]_5 ;
  output \char_scaled_reg[0][59] ;
  output \char_scaled_reg[60][25]_1 ;
  output \char_scaled_reg[0][59]_0 ;
  output \char_scaled_reg[60][5]_0 ;
  output \char_scaled_reg[0][59]_1 ;
  input clk_CV;
  input \rout_reg[3]_i_84 ;
  input \rout_reg[3]_i_84_0 ;
  input \rout_reg[3]_i_57 ;
  input \rout_reg[3]_i_57_0 ;
  input \rout_reg[3]_i_57_1 ;
  input \rout_reg[3]_i_83 ;
  input [0:0]O;

  wire [0:0]O;
  wire \char_scaled_reg[0][59] ;
  wire \char_scaled_reg[0][59]_0 ;
  wire \char_scaled_reg[0][59]_1 ;
  wire \char_scaled_reg[15][25] ;
  wire \char_scaled_reg[25][10] ;
  wire \char_scaled_reg[25][5] ;
  wire \char_scaled_reg[25][5]_0 ;
  wire \char_scaled_reg[60][0] ;
  wire \char_scaled_reg[60][0]_0 ;
  wire \char_scaled_reg[60][0]_1 ;
  wire \char_scaled_reg[60][0]_2 ;
  wire \char_scaled_reg[60][0]_3 ;
  wire \char_scaled_reg[60][0]_4 ;
  wire \char_scaled_reg[60][0]_5 ;
  wire \char_scaled_reg[60][25] ;
  wire \char_scaled_reg[60][25]_0 ;
  wire \char_scaled_reg[60][25]_1 ;
  wire \char_scaled_reg[60][5] ;
  wire \char_scaled_reg[60][5]_0 ;
  wire clk_CV;
  wire [0:0]\gameover[0][0] ;
  wire [0:0]\gameover[1][0] ;
  wire [0:0]\gameover[2][0] ;
  wire [0:0]\gameover[3][0] ;
  wire [0:0]\gameover[5][0] ;
  wire [0:0]\gameover[6][0] ;
  wire [0:0]\gameover[8][0] ;
  wire \rout_reg[3]_i_57 ;
  wire \rout_reg[3]_i_57_0 ;
  wire \rout_reg[3]_i_57_1 ;
  wire \rout_reg[3]_i_83 ;
  wire \rout_reg[3]_i_84 ;
  wire \rout_reg[3]_i_84_0 ;
  wire \scaling[3].Inst_Scaler_n_1 ;
  wire \scaling[3].Inst_Scaler_n_2 ;
  wire \scaling[3].Inst_Scaler_n_3 ;
  wire \scaling[3].Inst_Scaler_n_4 ;
  wire \scaling[3].Inst_Scaler_n_5 ;
  wire \scaling[3].Inst_Scaler_n_6 ;
  wire \scaling[3].Inst_Scaler_n_7 ;
  wire \scaling[3].Inst_Scaler_n_8 ;
  wire \scaling[3].Inst_Scaler_n_9 ;
  wire [0:0]\start[0][0] ;
  wire [0:0]\start[1][0] ;

  Scaler \scaling[0].Inst_Scaler 
       (.\char_scaled_reg[0][59]_0 (\gameover[1][0] ),
        .\char_scaled_reg[0][59]_1 (\char_scaled_reg[0][59] ),
        .\char_scaled_reg[0][59]_2 (\char_scaled_reg[0][59]_0 ),
        .\char_scaled_reg[0][59]_3 (\char_scaled_reg[0][59]_1 ),
        .\char_scaled_reg[0][59]_4 (\scaling[3].Inst_Scaler_n_5 ),
        .clk_CV(clk_CV),
        .\rout_reg[3]_i_400 (\gameover[2][0] ),
        .\rout_reg[3]_i_400_0 (\gameover[3][0] ),
        .\rout_reg[3]_i_57 (\rout_reg[3]_i_57_0 ),
        .\rout_reg[3]_i_57_0 (\rout_reg[3]_i_57 ),
        .\rout_reg[3]_i_57_1 (\gameover[8][0] ),
        .\rout_reg[3]_i_57_2 (\start[0][0] ),
        .\rout_reg[3]_i_57_3 (\rout_reg[3]_i_57_1 ));
  Scaler_0 \scaling[1].Inst_Scaler 
       (.\char_scaled_reg[25][10]_0 (\gameover[3][0] ),
        .\char_scaled_reg[25][10]_1 (\char_scaled_reg[25][10] ),
        .\char_scaled_reg[25][10]_2 (\scaling[3].Inst_Scaler_n_3 ),
        .clk_CV(clk_CV),
        .\rout_reg[3]_i_369 (\rout_reg[3]_i_57_0 ),
        .\rout_reg[3]_i_369_0 (\gameover[1][0] ),
        .\rout_reg[3]_i_369_1 (\rout_reg[3]_i_57_1 ),
        .\rout_reg[3]_i_369_2 (\gameover[5][0] ),
        .\rout_reg[3]_i_369_3 (\rout_reg[3]_i_57 ));
  Scaler_1 \scaling[2].Inst_Scaler 
       (.\char_scaled_reg[60][25]_0 (\gameover[0][0] ),
        .\char_scaled_reg[60][25]_1 (\char_scaled_reg[60][25] ),
        .\char_scaled_reg[60][25]_2 (\char_scaled_reg[60][25]_1 ),
        .\char_scaled_reg[60][25]_3 (\scaling[3].Inst_Scaler_n_6 ),
        .clk_CV(clk_CV),
        .\rout_reg[3]_i_179 (\rout_reg[3]_i_57_0 ),
        .\rout_reg[3]_i_179_0 (\gameover[6][0] ),
        .\rout_reg[3]_i_179_1 (\rout_reg[3]_i_57_1 ),
        .\rout_reg[3]_i_179_2 (\gameover[2][0] ),
        .\rout_reg[3]_i_573 (\rout_reg[3]_i_57 ));
  Scaler_2 \scaling[3].Inst_Scaler 
       (.\char_scaled_reg[0][59] (\gameover[1][0] ),
        .\char_scaled_reg[15][25] (\start[1][0] ),
        .\char_scaled_reg[25][10] (\gameover[3][0] ),
        .\char_scaled_reg[25][5] (\gameover[5][0] ),
        .\char_scaled_reg[30][0]_0 (\gameover[2][0] ),
        .\char_scaled_reg[30][0]_1 (\scaling[3].Inst_Scaler_n_9 ),
        .\char_scaled_reg[60][0] (\gameover[8][0] ),
        .\char_scaled_reg[60][30] (\gameover[6][0] ),
        .\char_scaled_reg[60][5] (\start[0][0] ),
        .clk_CV(clk_CV),
        .en_reg_0(\scaling[3].Inst_Scaler_n_1 ),
        .en_reg_1(\scaling[3].Inst_Scaler_n_2 ),
        .en_reg_2(\scaling[3].Inst_Scaler_n_3 ),
        .en_reg_3(\scaling[3].Inst_Scaler_n_4 ),
        .en_reg_4(\scaling[3].Inst_Scaler_n_5 ),
        .en_reg_5(\scaling[3].Inst_Scaler_n_6 ),
        .en_reg_6(\scaling[3].Inst_Scaler_n_7 ),
        .en_reg_7(\scaling[3].Inst_Scaler_n_8 ),
        .\gameover[0][0] (\gameover[0][0] ),
        .\rout_reg[3]_i_196 (\rout_reg[3]_i_57_1 ),
        .\rout_reg[3]_i_196_0 (\rout_reg[3]_i_57_0 ));
  Scaler_3 \scaling[4].Inst_Scaler 
       (.\char_scaled_reg[25][5]_0 (\gameover[5][0] ),
        .\char_scaled_reg[25][5]_1 (\char_scaled_reg[25][5]_0 ),
        .\char_scaled_reg[25][5]_2 (\char_scaled_reg[25][5] ),
        .\char_scaled_reg[25][5]_3 (\scaling[3].Inst_Scaler_n_4 ),
        .\char_scaled_reg[60][25] (\char_scaled_reg[60][25]_0 ),
        .clk_CV(clk_CV),
        .\gameover[0][0] (\gameover[0][0] ),
        .\rout_reg[3]_i_178 (\rout_reg[3]_i_57 ),
        .\rout_reg[3]_i_178_0 (\rout_reg[3]_i_57_0 ),
        .\rout_reg[3]_i_178_1 (\gameover[6][0] ),
        .\rout_reg[3]_i_178_2 (\rout_reg[3]_i_57_1 ),
        .\rout_reg[3]_i_381 (\gameover[1][0] ),
        .\rout_reg[3]_i_381_0 (\gameover[3][0] ));
  Scaler_4 \scaling[5].Inst_Scaler 
       (.\char_scaled_reg[60][0]_0 (\gameover[8][0] ),
        .\char_scaled_reg[60][0]_1 (\char_scaled_reg[60][0] ),
        .\char_scaled_reg[60][0]_2 (\char_scaled_reg[60][0]_0 ),
        .\char_scaled_reg[60][0]_3 (\char_scaled_reg[60][0]_1 ),
        .\char_scaled_reg[60][0]_4 (\char_scaled_reg[60][0]_2 ),
        .\char_scaled_reg[60][0]_5 (\char_scaled_reg[60][0]_3 ),
        .\char_scaled_reg[60][0]_6 (\char_scaled_reg[60][0]_4 ),
        .\char_scaled_reg[60][0]_7 (\char_scaled_reg[60][0]_5 ),
        .\char_scaled_reg[60][0]_8 (\scaling[3].Inst_Scaler_n_1 ),
        .clk_CV(clk_CV),
        .\rout_reg[3]_i_187 (\char_scaled_reg[25][5] ),
        .\rout_reg[3]_i_187_0 (\char_scaled_reg[60][25] ),
        .\rout_reg[3]_i_217 (\rout_reg[3]_i_57 ),
        .\rout_reg[3]_i_217_0 (\start[0][0] ),
        .\rout_reg[3]_i_217_1 (\rout_reg[3]_i_57_0 ),
        .\rout_reg[3]_i_217_2 (\gameover[1][0] ),
        .\rout_reg[3]_i_217_3 (\rout_reg[3]_i_57_1 ),
        .\rout_reg[3]_i_265 (\start[1][0] ),
        .\rout_reg[3]_i_83 (\rout_reg[3]_i_83 ),
        .\rout_reg[3]_i_83_0 (\gameover[3][0] ),
        .\rout_reg[3]_i_83_1 (\scaling[3].Inst_Scaler_n_9 ),
        .\rout_reg[3]_i_84 (\rout_reg[3]_i_84 ),
        .\rout_reg[3]_i_84_0 (\rout_reg[3]_i_84_0 ));
  Scaler_5 \scaling[6].Inst_Scaler 
       (.\char_scaled_reg[60][5]_0 (\start[0][0] ),
        .\char_scaled_reg[60][5]_1 (\char_scaled_reg[60][5] ),
        .\char_scaled_reg[60][5]_2 (\char_scaled_reg[60][5]_0 ),
        .\char_scaled_reg[60][5]_3 (\scaling[3].Inst_Scaler_n_8 ),
        .clk_CV(clk_CV),
        .\rout_reg[3]_i_234 (\rout_reg[3]_i_57_0 ),
        .\rout_reg[3]_i_234_0 (\gameover[1][0] ),
        .\rout_reg[3]_i_234_1 (\rout_reg[3]_i_57_1 ),
        .\rout_reg[3]_i_452 (\rout_reg[3]_i_57 ));
  Scaler_6 \scaling[7].Inst_Scaler 
       (.O(O),
        .\char_scaled_reg[15][25]_0 (\start[1][0] ),
        .\char_scaled_reg[15][25]_1 (\char_scaled_reg[15][25] ),
        .\char_scaled_reg[15][25]_2 (\scaling[3].Inst_Scaler_n_7 ),
        .clk_CV(clk_CV),
        .\rout_reg[3]_i_120 (\char_scaled_reg[60][0]_4 ),
        .\rout_reg[3]_i_120_0 (\rout_reg[3]_i_57_0 ),
        .\rout_reg[3]_i_120_1 (\rout_reg[3]_i_57_1 ),
        .\rout_reg[3]_i_272_0 (\rout_reg[3]_i_57 ),
        .\rout_reg[3]_i_272_1 (\start[0][0] ));
  Scaler_7 \scaling[8].Inst_Scaler 
       (.\char_scaled_reg[60][30]_0 (\gameover[6][0] ),
        .\char_scaled_reg[60][30]_1 (\scaling[3].Inst_Scaler_n_2 ),
        .clk_CV(clk_CV));
endmodule

module Scaler
   (\char_scaled_reg[0][59]_0 ,
    \char_scaled_reg[0][59]_1 ,
    \char_scaled_reg[0][59]_2 ,
    \char_scaled_reg[0][59]_3 ,
    \char_scaled_reg[0][59]_4 ,
    clk_CV,
    \rout_reg[3]_i_400 ,
    \rout_reg[3]_i_57 ,
    \rout_reg[3]_i_400_0 ,
    \rout_reg[3]_i_57_0 ,
    \rout_reg[3]_i_57_1 ,
    \rout_reg[3]_i_57_2 ,
    \rout_reg[3]_i_57_3 );
  output \char_scaled_reg[0][59]_0 ;
  output \char_scaled_reg[0][59]_1 ;
  output \char_scaled_reg[0][59]_2 ;
  output \char_scaled_reg[0][59]_3 ;
  input \char_scaled_reg[0][59]_4 ;
  input clk_CV;
  input \rout_reg[3]_i_400 ;
  input \rout_reg[3]_i_57 ;
  input \rout_reg[3]_i_400_0 ;
  input \rout_reg[3]_i_57_0 ;
  input \rout_reg[3]_i_57_1 ;
  input \rout_reg[3]_i_57_2 ;
  input \rout_reg[3]_i_57_3 ;

  wire \char_scaled_reg[0][59]_0 ;
  wire \char_scaled_reg[0][59]_1 ;
  wire \char_scaled_reg[0][59]_2 ;
  wire \char_scaled_reg[0][59]_3 ;
  wire \char_scaled_reg[0][59]_4 ;
  wire clk_CV;
  wire \rout_reg[3]_i_400 ;
  wire \rout_reg[3]_i_400_0 ;
  wire \rout_reg[3]_i_57 ;
  wire \rout_reg[3]_i_57_0 ;
  wire \rout_reg[3]_i_57_1 ;
  wire \rout_reg[3]_i_57_2 ;
  wire \rout_reg[3]_i_57_3 ;

  FDRE #(
    .INIT(1'b0)) 
    \char_scaled_reg[0][59] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(\char_scaled_reg[0][59]_4 ),
        .Q(\char_scaled_reg[0][59]_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h505FF3F3)) 
    \rout_reg[3]_i_571 
       (.I0(\char_scaled_reg[0][59]_0 ),
        .I1(\rout_reg[3]_i_400 ),
        .I2(\rout_reg[3]_i_57 ),
        .I3(\rout_reg[3]_i_400_0 ),
        .I4(\rout_reg[3]_i_57_0 ),
        .O(\char_scaled_reg[0][59]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rout_reg[3]_i_589 
       (.I0(\char_scaled_reg[0][59]_0 ),
        .I1(\rout_reg[3]_i_57_0 ),
        .O(\char_scaled_reg[0][59]_3 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \rout_reg[3]_i_89 
       (.I0(\char_scaled_reg[0][59]_0 ),
        .I1(\rout_reg[3]_i_57_0 ),
        .I2(\rout_reg[3]_i_57_1 ),
        .I3(\rout_reg[3]_i_57 ),
        .I4(\rout_reg[3]_i_57_2 ),
        .I5(\rout_reg[3]_i_57_3 ),
        .O(\char_scaled_reg[0][59]_2 ));
endmodule

(* ORIG_REF_NAME = "Scaler" *) 
module Scaler_0
   (\char_scaled_reg[25][10]_0 ,
    \char_scaled_reg[25][10]_1 ,
    \char_scaled_reg[25][10]_2 ,
    clk_CV,
    \rout_reg[3]_i_369 ,
    \rout_reg[3]_i_369_0 ,
    \rout_reg[3]_i_369_1 ,
    \rout_reg[3]_i_369_2 ,
    \rout_reg[3]_i_369_3 );
  output \char_scaled_reg[25][10]_0 ;
  output \char_scaled_reg[25][10]_1 ;
  input \char_scaled_reg[25][10]_2 ;
  input clk_CV;
  input \rout_reg[3]_i_369 ;
  input \rout_reg[3]_i_369_0 ;
  input \rout_reg[3]_i_369_1 ;
  input \rout_reg[3]_i_369_2 ;
  input \rout_reg[3]_i_369_3 ;

  wire \char_scaled_reg[25][10]_0 ;
  wire \char_scaled_reg[25][10]_1 ;
  wire \char_scaled_reg[25][10]_2 ;
  wire clk_CV;
  wire \rout_reg[3]_i_369 ;
  wire \rout_reg[3]_i_369_0 ;
  wire \rout_reg[3]_i_369_1 ;
  wire \rout_reg[3]_i_369_2 ;
  wire \rout_reg[3]_i_369_3 ;

  FDRE #(
    .INIT(1'b0)) 
    \char_scaled_reg[25][10] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(\char_scaled_reg[25][10]_2 ),
        .Q(\char_scaled_reg[25][10]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \rout_reg[3]_i_548 
       (.I0(\char_scaled_reg[25][10]_0 ),
        .I1(\rout_reg[3]_i_369 ),
        .I2(\rout_reg[3]_i_369_0 ),
        .I3(\rout_reg[3]_i_369_1 ),
        .I4(\rout_reg[3]_i_369_2 ),
        .I5(\rout_reg[3]_i_369_3 ),
        .O(\char_scaled_reg[25][10]_1 ));
endmodule

(* ORIG_REF_NAME = "Scaler" *) 
module Scaler_1
   (\char_scaled_reg[60][25]_0 ,
    \char_scaled_reg[60][25]_1 ,
    \char_scaled_reg[60][25]_2 ,
    \char_scaled_reg[60][25]_3 ,
    clk_CV,
    \rout_reg[3]_i_179 ,
    \rout_reg[3]_i_179_0 ,
    \rout_reg[3]_i_179_1 ,
    \rout_reg[3]_i_179_2 ,
    \rout_reg[3]_i_573 );
  output \char_scaled_reg[60][25]_0 ;
  output \char_scaled_reg[60][25]_1 ;
  output \char_scaled_reg[60][25]_2 ;
  input \char_scaled_reg[60][25]_3 ;
  input clk_CV;
  input \rout_reg[3]_i_179 ;
  input \rout_reg[3]_i_179_0 ;
  input \rout_reg[3]_i_179_1 ;
  input \rout_reg[3]_i_179_2 ;
  input \rout_reg[3]_i_573 ;

  wire \char_scaled_reg[60][25]_0 ;
  wire \char_scaled_reg[60][25]_1 ;
  wire \char_scaled_reg[60][25]_2 ;
  wire \char_scaled_reg[60][25]_3 ;
  wire clk_CV;
  wire \rout_reg[3]_i_179 ;
  wire \rout_reg[3]_i_179_0 ;
  wire \rout_reg[3]_i_179_1 ;
  wire \rout_reg[3]_i_179_2 ;
  wire \rout_reg[3]_i_573 ;

  FDRE #(
    .INIT(1'b0)) 
    \char_scaled_reg[60][25] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(\char_scaled_reg[60][25]_3 ),
        .Q(\char_scaled_reg[60][25]_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rout_reg[3]_i_407 
       (.I0(\char_scaled_reg[60][25]_0 ),
        .I1(\rout_reg[3]_i_179 ),
        .I2(\rout_reg[3]_i_179_0 ),
        .I3(\rout_reg[3]_i_179_1 ),
        .I4(\rout_reg[3]_i_179_2 ),
        .O(\char_scaled_reg[60][25]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rout_reg[3]_i_712 
       (.I0(\char_scaled_reg[60][25]_0 ),
        .I1(\rout_reg[3]_i_573 ),
        .O(\char_scaled_reg[60][25]_2 ));
endmodule

(* ORIG_REF_NAME = "Scaler" *) 
module Scaler_2
   (\char_scaled_reg[30][0]_0 ,
    en_reg_0,
    en_reg_1,
    en_reg_2,
    en_reg_3,
    en_reg_4,
    en_reg_5,
    en_reg_6,
    en_reg_7,
    \char_scaled_reg[30][0]_1 ,
    clk_CV,
    \char_scaled_reg[60][0] ,
    \char_scaled_reg[60][30] ,
    \char_scaled_reg[25][10] ,
    \char_scaled_reg[25][5] ,
    \char_scaled_reg[0][59] ,
    \gameover[0][0] ,
    \char_scaled_reg[15][25] ,
    \char_scaled_reg[60][5] ,
    \rout_reg[3]_i_196 ,
    \rout_reg[3]_i_196_0 );
  output \char_scaled_reg[30][0]_0 ;
  output en_reg_0;
  output en_reg_1;
  output en_reg_2;
  output en_reg_3;
  output en_reg_4;
  output en_reg_5;
  output en_reg_6;
  output en_reg_7;
  output \char_scaled_reg[30][0]_1 ;
  input clk_CV;
  input \char_scaled_reg[60][0] ;
  input \char_scaled_reg[60][30] ;
  input \char_scaled_reg[25][10] ;
  input \char_scaled_reg[25][5] ;
  input \char_scaled_reg[0][59] ;
  input [0:0]\gameover[0][0] ;
  input \char_scaled_reg[15][25] ;
  input \char_scaled_reg[60][5] ;
  input \rout_reg[3]_i_196 ;
  input \rout_reg[3]_i_196_0 ;

  wire \char_scaled[30][0]_i_1_n_0 ;
  wire \char_scaled_reg[0][59] ;
  wire \char_scaled_reg[15][25] ;
  wire \char_scaled_reg[25][10] ;
  wire \char_scaled_reg[25][5] ;
  wire \char_scaled_reg[30][0]_0 ;
  wire \char_scaled_reg[30][0]_1 ;
  wire \char_scaled_reg[60][0] ;
  wire \char_scaled_reg[60][30] ;
  wire \char_scaled_reg[60][5] ;
  wire clk_CV;
  wire en_reg_0;
  wire en_reg_1;
  wire en_reg_2;
  wire en_reg_3;
  wire en_reg_4;
  wire en_reg_5;
  wire en_reg_6;
  wire en_reg_7;
  wire en_reg_n_0;
  wire [0:0]\gameover[0][0] ;
  wire \rout_reg[3]_i_196 ;
  wire \rout_reg[3]_i_196_0 ;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \char_scaled[0][59]_i_1 
       (.I0(en_reg_n_0),
        .I1(\char_scaled_reg[0][59] ),
        .O(en_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \char_scaled[15][25]_i_1 
       (.I0(en_reg_n_0),
        .I1(\char_scaled_reg[15][25] ),
        .O(en_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \char_scaled[25][10]_i_1 
       (.I0(en_reg_n_0),
        .I1(\char_scaled_reg[25][10] ),
        .O(en_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \char_scaled[25][5]_i_1 
       (.I0(en_reg_n_0),
        .I1(\char_scaled_reg[25][5] ),
        .O(en_reg_3));
  LUT2 #(
    .INIT(4'hE)) 
    \char_scaled[30][0]_i_1 
       (.I0(en_reg_n_0),
        .I1(\char_scaled_reg[30][0]_0 ),
        .O(\char_scaled[30][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \char_scaled[60][0]_i_1 
       (.I0(en_reg_n_0),
        .I1(\char_scaled_reg[60][0] ),
        .O(en_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \char_scaled[60][25]_i_1 
       (.I0(en_reg_n_0),
        .I1(\gameover[0][0] ),
        .O(en_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \char_scaled[60][30]_i_1 
       (.I0(en_reg_n_0),
        .I1(\char_scaled_reg[60][30] ),
        .O(en_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \char_scaled[60][5]_i_1 
       (.I0(en_reg_n_0),
        .I1(\char_scaled_reg[60][5] ),
        .O(en_reg_7));
  FDRE #(
    .INIT(1'b0)) 
    \char_scaled_reg[30][0] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(\char_scaled[30][0]_i_1_n_0 ),
        .Q(\char_scaled_reg[30][0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    en_reg
       (.C(clk_CV),
        .CE(1'b1),
        .D(1'b0),
        .Q(en_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E2)) 
    \rout_reg[3]_i_444 
       (.I0(\char_scaled_reg[30][0]_0 ),
        .I1(\rout_reg[3]_i_196 ),
        .I2(\char_scaled_reg[60][30] ),
        .I3(\rout_reg[3]_i_196_0 ),
        .O(\char_scaled_reg[30][0]_1 ));
endmodule

(* ORIG_REF_NAME = "Scaler" *) 
module Scaler_3
   (\char_scaled_reg[25][5]_0 ,
    \char_scaled_reg[60][25] ,
    \char_scaled_reg[25][5]_1 ,
    \char_scaled_reg[25][5]_2 ,
    \char_scaled_reg[25][5]_3 ,
    clk_CV,
    \rout_reg[3]_i_178 ,
    \gameover[0][0] ,
    \rout_reg[3]_i_178_0 ,
    \rout_reg[3]_i_178_1 ,
    \rout_reg[3]_i_178_2 ,
    \rout_reg[3]_i_381 ,
    \rout_reg[3]_i_381_0 );
  output \char_scaled_reg[25][5]_0 ;
  output \char_scaled_reg[60][25] ;
  output \char_scaled_reg[25][5]_1 ;
  output \char_scaled_reg[25][5]_2 ;
  input \char_scaled_reg[25][5]_3 ;
  input clk_CV;
  input \rout_reg[3]_i_178 ;
  input [0:0]\gameover[0][0] ;
  input \rout_reg[3]_i_178_0 ;
  input \rout_reg[3]_i_178_1 ;
  input \rout_reg[3]_i_178_2 ;
  input \rout_reg[3]_i_381 ;
  input \rout_reg[3]_i_381_0 ;

  wire \char_scaled_reg[25][5]_0 ;
  wire \char_scaled_reg[25][5]_1 ;
  wire \char_scaled_reg[25][5]_2 ;
  wire \char_scaled_reg[25][5]_3 ;
  wire \char_scaled_reg[60][25] ;
  wire clk_CV;
  wire [0:0]\gameover[0][0] ;
  wire \rout_reg[3]_i_178 ;
  wire \rout_reg[3]_i_178_0 ;
  wire \rout_reg[3]_i_178_1 ;
  wire \rout_reg[3]_i_178_2 ;
  wire \rout_reg[3]_i_381 ;
  wire \rout_reg[3]_i_381_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \char_scaled_reg[25][5] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(\char_scaled_reg[25][5]_3 ),
        .Q(\char_scaled_reg[25][5]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88BB8888B888B888)) 
    \rout_reg[3]_i_403 
       (.I0(\char_scaled_reg[25][5]_1 ),
        .I1(\rout_reg[3]_i_178 ),
        .I2(\gameover[0][0] ),
        .I3(\rout_reg[3]_i_178_0 ),
        .I4(\rout_reg[3]_i_178_1 ),
        .I5(\rout_reg[3]_i_178_2 ),
        .O(\char_scaled_reg[60][25] ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \rout_reg[3]_i_408 
       (.I0(\char_scaled_reg[25][5]_0 ),
        .I1(\rout_reg[3]_i_178_2 ),
        .I2(\rout_reg[3]_i_178_0 ),
        .I3(\rout_reg[3]_i_381_0 ),
        .O(\char_scaled_reg[25][5]_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rout_reg[3]_i_531 
       (.I0(\char_scaled_reg[25][5]_0 ),
        .I1(\rout_reg[3]_i_178_2 ),
        .I2(\rout_reg[3]_i_381 ),
        .I3(\rout_reg[3]_i_178_0 ),
        .I4(\rout_reg[3]_i_381_0 ),
        .O(\char_scaled_reg[25][5]_2 ));
endmodule

(* ORIG_REF_NAME = "Scaler" *) 
module Scaler_4
   (\char_scaled_reg[60][0]_0 ,
    \char_scaled_reg[60][0]_1 ,
    \char_scaled_reg[60][0]_2 ,
    \char_scaled_reg[60][0]_3 ,
    \char_scaled_reg[60][0]_4 ,
    \char_scaled_reg[60][0]_5 ,
    \char_scaled_reg[60][0]_6 ,
    \char_scaled_reg[60][0]_7 ,
    \char_scaled_reg[60][0]_8 ,
    clk_CV,
    \rout_reg[3]_i_84 ,
    \rout_reg[3]_i_84_0 ,
    \rout_reg[3]_i_217 ,
    \rout_reg[3]_i_217_0 ,
    \rout_reg[3]_i_217_1 ,
    \rout_reg[3]_i_217_2 ,
    \rout_reg[3]_i_217_3 ,
    \rout_reg[3]_i_83 ,
    \rout_reg[3]_i_83_0 ,
    \rout_reg[3]_i_83_1 ,
    \rout_reg[3]_i_187 ,
    \rout_reg[3]_i_187_0 ,
    \rout_reg[3]_i_265 );
  output \char_scaled_reg[60][0]_0 ;
  output \char_scaled_reg[60][0]_1 ;
  output \char_scaled_reg[60][0]_2 ;
  output \char_scaled_reg[60][0]_3 ;
  output \char_scaled_reg[60][0]_4 ;
  output \char_scaled_reg[60][0]_5 ;
  output \char_scaled_reg[60][0]_6 ;
  output \char_scaled_reg[60][0]_7 ;
  input \char_scaled_reg[60][0]_8 ;
  input clk_CV;
  input \rout_reg[3]_i_84 ;
  input \rout_reg[3]_i_84_0 ;
  input \rout_reg[3]_i_217 ;
  input \rout_reg[3]_i_217_0 ;
  input \rout_reg[3]_i_217_1 ;
  input \rout_reg[3]_i_217_2 ;
  input \rout_reg[3]_i_217_3 ;
  input \rout_reg[3]_i_83 ;
  input \rout_reg[3]_i_83_0 ;
  input \rout_reg[3]_i_83_1 ;
  input \rout_reg[3]_i_187 ;
  input \rout_reg[3]_i_187_0 ;
  input \rout_reg[3]_i_265 ;

  wire \char_scaled_reg[60][0]_0 ;
  wire \char_scaled_reg[60][0]_1 ;
  wire \char_scaled_reg[60][0]_2 ;
  wire \char_scaled_reg[60][0]_3 ;
  wire \char_scaled_reg[60][0]_4 ;
  wire \char_scaled_reg[60][0]_5 ;
  wire \char_scaled_reg[60][0]_6 ;
  wire \char_scaled_reg[60][0]_7 ;
  wire \char_scaled_reg[60][0]_8 ;
  wire clk_CV;
  wire \rout_reg[3]_i_187 ;
  wire \rout_reg[3]_i_187_0 ;
  wire \rout_reg[3]_i_217 ;
  wire \rout_reg[3]_i_217_0 ;
  wire \rout_reg[3]_i_217_1 ;
  wire \rout_reg[3]_i_217_2 ;
  wire \rout_reg[3]_i_217_3 ;
  wire \rout_reg[3]_i_265 ;
  wire \rout_reg[3]_i_83 ;
  wire \rout_reg[3]_i_83_0 ;
  wire \rout_reg[3]_i_83_1 ;
  wire \rout_reg[3]_i_84 ;
  wire \rout_reg[3]_i_84_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \char_scaled_reg[60][0] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(\char_scaled_reg[60][0]_8 ),
        .Q(\char_scaled_reg[60][0]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \rout_reg[3]_i_196 
       (.I0(\char_scaled_reg[60][0]_0 ),
        .I1(\rout_reg[3]_i_83 ),
        .I2(\rout_reg[3]_i_83_0 ),
        .I3(\rout_reg[3]_i_217_1 ),
        .I4(\rout_reg[3]_i_217 ),
        .I5(\rout_reg[3]_i_83_1 ),
        .O(\char_scaled_reg[60][0]_3 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \rout_reg[3]_i_202 
       (.I0(\char_scaled_reg[60][0]_0 ),
        .I1(\rout_reg[3]_i_83 ),
        .I2(\rout_reg[3]_i_83_0 ),
        .I3(\rout_reg[3]_i_217_1 ),
        .I4(\rout_reg[3]_i_217 ),
        .I5(\rout_reg[3]_i_187_0 ),
        .O(\char_scaled_reg[60][0]_5 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rout_reg[3]_i_204 
       (.I0(\char_scaled_reg[60][0]_2 ),
        .I1(\rout_reg[3]_i_84 ),
        .I2(\char_scaled_reg[60][0]_3 ),
        .I3(\rout_reg[3]_i_84_0 ),
        .O(\char_scaled_reg[60][0]_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rout_reg[3]_i_333 
       (.I0(\char_scaled_reg[60][0]_0 ),
        .I1(\rout_reg[3]_i_83 ),
        .I2(\rout_reg[3]_i_187 ),
        .I3(\rout_reg[3]_i_217 ),
        .I4(\rout_reg[3]_i_187_0 ),
        .O(\char_scaled_reg[60][0]_2 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \rout_reg[3]_i_464 
       (.I0(\char_scaled_reg[60][0]_0 ),
        .I1(\rout_reg[3]_i_217 ),
        .I2(\rout_reg[3]_i_217_0 ),
        .I3(\rout_reg[3]_i_217_1 ),
        .I4(\rout_reg[3]_i_217_2 ),
        .I5(\rout_reg[3]_i_217_3 ),
        .O(\char_scaled_reg[60][0]_4 ));
  LUT6 #(
    .INIT(64'h33333333303F5F5F)) 
    \rout_reg[3]_i_475 
       (.I0(\char_scaled_reg[60][0]_0 ),
        .I1(\rout_reg[3]_i_265 ),
        .I2(\rout_reg[3]_i_217 ),
        .I3(\rout_reg[3]_i_217_0 ),
        .I4(\rout_reg[3]_i_217_1 ),
        .I5(\rout_reg[3]_i_217_3 ),
        .O(\char_scaled_reg[60][0]_7 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rout_reg[3]_i_479 
       (.I0(\char_scaled_reg[60][0]_0 ),
        .I1(\rout_reg[3]_i_217 ),
        .I2(\rout_reg[3]_i_217_2 ),
        .O(\char_scaled_reg[60][0]_6 ));
endmodule

(* ORIG_REF_NAME = "Scaler" *) 
module Scaler_5
   (\char_scaled_reg[60][5]_0 ,
    \char_scaled_reg[60][5]_1 ,
    \char_scaled_reg[60][5]_2 ,
    \char_scaled_reg[60][5]_3 ,
    clk_CV,
    \rout_reg[3]_i_234 ,
    \rout_reg[3]_i_234_0 ,
    \rout_reg[3]_i_234_1 ,
    \rout_reg[3]_i_452 );
  output \char_scaled_reg[60][5]_0 ;
  output \char_scaled_reg[60][5]_1 ;
  output \char_scaled_reg[60][5]_2 ;
  input \char_scaled_reg[60][5]_3 ;
  input clk_CV;
  input \rout_reg[3]_i_234 ;
  input \rout_reg[3]_i_234_0 ;
  input \rout_reg[3]_i_234_1 ;
  input \rout_reg[3]_i_452 ;

  wire \char_scaled_reg[60][5]_0 ;
  wire \char_scaled_reg[60][5]_1 ;
  wire \char_scaled_reg[60][5]_2 ;
  wire \char_scaled_reg[60][5]_3 ;
  wire clk_CV;
  wire \rout_reg[3]_i_234 ;
  wire \rout_reg[3]_i_234_0 ;
  wire \rout_reg[3]_i_234_1 ;
  wire \rout_reg[3]_i_452 ;

  FDRE #(
    .INIT(1'b0)) 
    \char_scaled_reg[60][5] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(\char_scaled_reg[60][5]_3 ),
        .Q(\char_scaled_reg[60][5]_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00B8)) 
    \rout_reg[3]_i_473 
       (.I0(\char_scaled_reg[60][5]_0 ),
        .I1(\rout_reg[3]_i_234 ),
        .I2(\rout_reg[3]_i_234_0 ),
        .I3(\rout_reg[3]_i_234_1 ),
        .O(\char_scaled_reg[60][5]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rout_reg[3]_i_588 
       (.I0(\char_scaled_reg[60][5]_0 ),
        .I1(\rout_reg[3]_i_452 ),
        .O(\char_scaled_reg[60][5]_2 ));
endmodule

(* ORIG_REF_NAME = "Scaler" *) 
module Scaler_6
   (\char_scaled_reg[15][25]_0 ,
    \char_scaled_reg[15][25]_1 ,
    \char_scaled_reg[15][25]_2 ,
    clk_CV,
    \rout_reg[3]_i_272_0 ,
    \rout_reg[3]_i_272_1 ,
    \rout_reg[3]_i_120 ,
    \rout_reg[3]_i_120_0 ,
    \rout_reg[3]_i_120_1 ,
    O);
  output \char_scaled_reg[15][25]_0 ;
  output \char_scaled_reg[15][25]_1 ;
  input \char_scaled_reg[15][25]_2 ;
  input clk_CV;
  input \rout_reg[3]_i_272_0 ;
  input \rout_reg[3]_i_272_1 ;
  input \rout_reg[3]_i_120 ;
  input \rout_reg[3]_i_120_0 ;
  input \rout_reg[3]_i_120_1 ;
  input [0:0]O;

  wire [0:0]O;
  wire \char_scaled_reg[15][25]_0 ;
  wire \char_scaled_reg[15][25]_1 ;
  wire \char_scaled_reg[15][25]_2 ;
  wire clk_CV;
  wire \rout_reg[3]_i_120 ;
  wire \rout_reg[3]_i_120_0 ;
  wire \rout_reg[3]_i_120_1 ;
  wire \rout_reg[3]_i_272_0 ;
  wire \rout_reg[3]_i_272_1 ;
  wire \rout_reg[3]_i_480_n_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \char_scaled_reg[15][25] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(\char_scaled_reg[15][25]_2 ),
        .Q(\char_scaled_reg[15][25]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \rout_reg[3]_i_272 
       (.I0(\rout_reg[3]_i_120 ),
        .I1(\rout_reg[3]_i_120_0 ),
        .I2(\rout_reg[3]_i_480_n_0 ),
        .I3(\rout_reg[3]_i_120_1 ),
        .I4(\char_scaled_reg[15][25]_0 ),
        .I5(O),
        .O(\char_scaled_reg[15][25]_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rout_reg[3]_i_480 
       (.I0(\char_scaled_reg[15][25]_0 ),
        .I1(\rout_reg[3]_i_272_0 ),
        .I2(\rout_reg[3]_i_272_1 ),
        .O(\rout_reg[3]_i_480_n_0 ));
endmodule

(* ORIG_REF_NAME = "Scaler" *) 
module Scaler_7
   (\char_scaled_reg[60][30]_0 ,
    \char_scaled_reg[60][30]_1 ,
    clk_CV);
  output \char_scaled_reg[60][30]_0 ;
  input \char_scaled_reg[60][30]_1 ;
  input clk_CV;

  wire \char_scaled_reg[60][30]_0 ;
  wire \char_scaled_reg[60][30]_1 ;
  wire clk_CV;

  FDRE #(
    .INIT(1'b0)) 
    \char_scaled_reg[60][30] 
       (.C(clk_CV),
        .CE(1'b1),
        .D(\char_scaled_reg[60][30]_1 ),
        .Q(\char_scaled_reg[60][30]_0 ),
        .R(1'b0));
endmodule

module VGA_Draw
   (Blue_OBUF,
    is_text_pixel,
    typeDraw,
    SyncEnable);
  output [0:0]Blue_OBUF;
  input is_text_pixel;
  input typeDraw;
  input SyncEnable;

  wire [0:0]Blue_OBUF;
  wire SyncEnable;
  wire is_text_pixel;
  wire typeDraw;

  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rout_reg[3] 
       (.CLR(SyncEnable),
        .D(is_text_pixel),
        .G(typeDraw),
        .GE(1'b1),
        .Q(Blue_OBUF));
endmodule

module VGA_Manager
   (HSync_OBUF,
    VSync_OBUF,
    Blue_OBUF,
    O,
    \row_reg[2] ,
    \col_reg[10] ,
    \col_reg[10]_0 ,
    \col_reg[10]_1 ,
    \col_reg[10]_2 ,
    \row_reg[2]_0 ,
    clk_out1,
    typeDraw,
    \rout_reg[3]_i_77 ,
    \gameover[8][0] ,
    \gameover[2][0] ,
    \rout_reg[3]_i_160 ,
    \rout_reg[3]_i_69 ,
    \rout_reg[3]_i_33 ,
    \rout_reg[3]_i_78 ,
    \rout_reg[3]_i_78_0 ,
    \rout_reg[3]_i_79 ,
    \gameover[6][0] ,
    \gameover[0][0] ,
    \rout_reg[3]_i_32 ,
    \gameover[3][0] ,
    \rout_reg[3]_i_177 ,
    \rout_reg[3]_i_164 ,
    \gameover[5][0] ,
    \rout_reg[3]_i_402 ,
    \gameover[1][0] ,
    \start[0][0] ,
    \start[1][0] ,
    \rout_reg[3]_i_211 ,
    LED_OBUF,
    mode,
    \rout_reg[3]_i_19 ,
    \rout_reg[3]_i_52 ,
    \rout_reg[3]_i_117 ,
    \rout_reg[3]_i_99 ,
    \rout_reg[3]_i_208 ,
    \rout_reg[3]_i_208_0 ,
    \rout_reg[3]_i_91 );
  output HSync_OBUF;
  output VSync_OBUF;
  output [0:0]Blue_OBUF;
  output [0:0]O;
  output \row_reg[2] ;
  output \col_reg[10] ;
  output \col_reg[10]_0 ;
  output \col_reg[10]_1 ;
  output \col_reg[10]_2 ;
  output \row_reg[2]_0 ;
  input clk_out1;
  input typeDraw;
  input \rout_reg[3]_i_77 ;
  input [0:0]\gameover[8][0] ;
  input [0:0]\gameover[2][0] ;
  input \rout_reg[3]_i_160 ;
  input \rout_reg[3]_i_69 ;
  input \rout_reg[3]_i_33 ;
  input \rout_reg[3]_i_78 ;
  input \rout_reg[3]_i_78_0 ;
  input \rout_reg[3]_i_79 ;
  input [0:0]\gameover[6][0] ;
  input [0:0]\gameover[0][0] ;
  input \rout_reg[3]_i_32 ;
  input [0:0]\gameover[3][0] ;
  input \rout_reg[3]_i_177 ;
  input \rout_reg[3]_i_164 ;
  input [0:0]\gameover[5][0] ;
  input \rout_reg[3]_i_402 ;
  input [0:0]\gameover[1][0] ;
  input [0:0]\start[0][0] ;
  input [0:0]\start[1][0] ;
  input \rout_reg[3]_i_211 ;
  input [0:0]LED_OBUF;
  input [1:0]mode;
  input \rout_reg[3]_i_19 ;
  input \rout_reg[3]_i_52 ;
  input \rout_reg[3]_i_117 ;
  input \rout_reg[3]_i_99 ;
  input \rout_reg[3]_i_208 ;
  input \rout_reg[3]_i_208_0 ;
  input \rout_reg[3]_i_91 ;

  wire [0:0]Blue_OBUF;
  wire HSync_OBUF;
  wire [0:0]LED_OBUF;
  wire [0:0]O;
  wire SyncEnable;
  wire VSync_OBUF;
  wire clk_out1;
  wire \col_reg[10] ;
  wire \col_reg[10]_0 ;
  wire \col_reg[10]_1 ;
  wire \col_reg[10]_2 ;
  wire [0:0]\gameover[0][0] ;
  wire [0:0]\gameover[1][0] ;
  wire [0:0]\gameover[2][0] ;
  wire [0:0]\gameover[3][0] ;
  wire [0:0]\gameover[5][0] ;
  wire [0:0]\gameover[6][0] ;
  wire [0:0]\gameover[8][0] ;
  wire is_text_pixel;
  wire [1:0]mode;
  wire \rout_reg[3]_i_117 ;
  wire \rout_reg[3]_i_160 ;
  wire \rout_reg[3]_i_164 ;
  wire \rout_reg[3]_i_177 ;
  wire \rout_reg[3]_i_19 ;
  wire \rout_reg[3]_i_208 ;
  wire \rout_reg[3]_i_208_0 ;
  wire \rout_reg[3]_i_211 ;
  wire \rout_reg[3]_i_32 ;
  wire \rout_reg[3]_i_33 ;
  wire \rout_reg[3]_i_402 ;
  wire \rout_reg[3]_i_52 ;
  wire \rout_reg[3]_i_69 ;
  wire \rout_reg[3]_i_77 ;
  wire \rout_reg[3]_i_78 ;
  wire \rout_reg[3]_i_78_0 ;
  wire \rout_reg[3]_i_79 ;
  wire \rout_reg[3]_i_91 ;
  wire \rout_reg[3]_i_99 ;
  wire \row_reg[2] ;
  wire \row_reg[2]_0 ;
  wire [0:0]\start[0][0] ;
  wire [0:0]\start[1][0] ;
  wire typeDraw;

  VGA_Draw Inst_VGA_Draw
       (.Blue_OBUF(Blue_OBUF),
        .SyncEnable(SyncEnable),
        .is_text_pixel(is_text_pixel),
        .typeDraw(typeDraw));
  VGA_Sync Inst_VGA_Sync
       (.HSync_OBUF(HSync_OBUF),
        .LED_OBUF(LED_OBUF),
        .O(O),
        .SyncEnable(SyncEnable),
        .VSync_OBUF(VSync_OBUF),
        .clk_out1(clk_out1),
        .\col_reg[10]_0 (\col_reg[10] ),
        .\col_reg[10]_1 (\col_reg[10]_0 ),
        .\col_reg[10]_2 (\col_reg[10]_1 ),
        .\col_reg[10]_3 (\col_reg[10]_2 ),
        .\gameover[0][0] (\gameover[0][0] ),
        .\gameover[1][0] (\gameover[1][0] ),
        .\gameover[2][0] (\gameover[2][0] ),
        .\gameover[3][0] (\gameover[3][0] ),
        .\gameover[5][0] (\gameover[5][0] ),
        .\gameover[6][0] (\gameover[6][0] ),
        .\gameover[8][0] (\gameover[8][0] ),
        .is_text_pixel(is_text_pixel),
        .mode(mode),
        .\rout_reg[3]_i_117_0 (\rout_reg[3]_i_117 ),
        .\rout_reg[3]_i_160_0 (\rout_reg[3]_i_160 ),
        .\rout_reg[3]_i_164_0 (\rout_reg[3]_i_164 ),
        .\rout_reg[3]_i_177_0 (\rout_reg[3]_i_177 ),
        .\rout_reg[3]_i_19_0 (\rout_reg[3]_i_19 ),
        .\rout_reg[3]_i_208_0 (\rout_reg[3]_i_208 ),
        .\rout_reg[3]_i_208_1 (\rout_reg[3]_i_208_0 ),
        .\rout_reg[3]_i_211_0 (\rout_reg[3]_i_211 ),
        .\rout_reg[3]_i_32_0 (\rout_reg[3]_i_32 ),
        .\rout_reg[3]_i_33_0 (\rout_reg[3]_i_33 ),
        .\rout_reg[3]_i_402_0 (\rout_reg[3]_i_402 ),
        .\rout_reg[3]_i_52_0 (\rout_reg[3]_i_52 ),
        .\rout_reg[3]_i_69_0 (\rout_reg[3]_i_69 ),
        .\rout_reg[3]_i_77_0 (\rout_reg[3]_i_77 ),
        .\rout_reg[3]_i_78_0 (\rout_reg[3]_i_78 ),
        .\rout_reg[3]_i_78_1 (\rout_reg[3]_i_78_0 ),
        .\rout_reg[3]_i_79_0 (\rout_reg[3]_i_79 ),
        .\rout_reg[3]_i_91_0 (\rout_reg[3]_i_91 ),
        .\rout_reg[3]_i_99_0 (\rout_reg[3]_i_99 ),
        .\row_reg[2]_0 (\row_reg[2] ),
        .\row_reg[2]_1 (\row_reg[2]_0 ),
        .\start[0][0] (\start[0][0] ),
        .\start[1][0] (\start[1][0] ));
endmodule

module VGA_Sync
   (SyncEnable,
    HSync_OBUF,
    VSync_OBUF,
    O,
    \row_reg[2]_0 ,
    \col_reg[10]_0 ,
    \col_reg[10]_1 ,
    \col_reg[10]_2 ,
    \col_reg[10]_3 ,
    \row_reg[2]_1 ,
    is_text_pixel,
    clk_out1,
    \rout_reg[3]_i_77_0 ,
    \gameover[8][0] ,
    \gameover[2][0] ,
    \rout_reg[3]_i_160_0 ,
    \rout_reg[3]_i_69_0 ,
    \rout_reg[3]_i_33_0 ,
    \rout_reg[3]_i_78_0 ,
    \rout_reg[3]_i_78_1 ,
    \rout_reg[3]_i_79_0 ,
    \gameover[6][0] ,
    \gameover[0][0] ,
    \rout_reg[3]_i_32_0 ,
    \gameover[3][0] ,
    \rout_reg[3]_i_177_0 ,
    \rout_reg[3]_i_164_0 ,
    \gameover[5][0] ,
    \rout_reg[3]_i_402_0 ,
    \gameover[1][0] ,
    \start[0][0] ,
    \start[1][0] ,
    \rout_reg[3]_i_211_0 ,
    LED_OBUF,
    mode,
    \rout_reg[3]_i_19_0 ,
    \rout_reg[3]_i_52_0 ,
    \rout_reg[3]_i_117_0 ,
    \rout_reg[3]_i_99_0 ,
    \rout_reg[3]_i_208_0 ,
    \rout_reg[3]_i_208_1 ,
    \rout_reg[3]_i_91_0 );
  output SyncEnable;
  output HSync_OBUF;
  output VSync_OBUF;
  output [0:0]O;
  output \row_reg[2]_0 ;
  output \col_reg[10]_0 ;
  output \col_reg[10]_1 ;
  output \col_reg[10]_2 ;
  output \col_reg[10]_3 ;
  output \row_reg[2]_1 ;
  output is_text_pixel;
  input clk_out1;
  input \rout_reg[3]_i_77_0 ;
  input [0:0]\gameover[8][0] ;
  input [0:0]\gameover[2][0] ;
  input \rout_reg[3]_i_160_0 ;
  input \rout_reg[3]_i_69_0 ;
  input \rout_reg[3]_i_33_0 ;
  input \rout_reg[3]_i_78_0 ;
  input \rout_reg[3]_i_78_1 ;
  input \rout_reg[3]_i_79_0 ;
  input [0:0]\gameover[6][0] ;
  input [0:0]\gameover[0][0] ;
  input \rout_reg[3]_i_32_0 ;
  input [0:0]\gameover[3][0] ;
  input \rout_reg[3]_i_177_0 ;
  input \rout_reg[3]_i_164_0 ;
  input [0:0]\gameover[5][0] ;
  input \rout_reg[3]_i_402_0 ;
  input [0:0]\gameover[1][0] ;
  input [0:0]\start[0][0] ;
  input [0:0]\start[1][0] ;
  input \rout_reg[3]_i_211_0 ;
  input [0:0]LED_OBUF;
  input [1:0]mode;
  input \rout_reg[3]_i_19_0 ;
  input \rout_reg[3]_i_52_0 ;
  input \rout_reg[3]_i_117_0 ;
  input \rout_reg[3]_i_99_0 ;
  input \rout_reg[3]_i_208_0 ;
  input \rout_reg[3]_i_208_1 ;
  input \rout_reg[3]_i_91_0 ;

  wire HSync_OBUF;
  wire [30:1]\Inst_VGA_Draw/START[0][0]4 ;
  wire [11:1]\Inst_VGA_Draw/is_text_pixel5 ;
  wire [10:0]\Inst_VGA_Draw/p_0_out ;
  wire [0:0]LED_OBUF;
  wire [0:0]O;
  wire SyncEnable;
  wire VSync_OBUF;
  wire clk_out1;
  wire [10:0]col_i;
  wire \col_reg[10]_0 ;
  wire \col_reg[10]_1 ;
  wire \col_reg[10]_2 ;
  wire \col_reg[10]_3 ;
  wire [0:0]\gameover[0][0] ;
  wire [0:0]\gameover[1][0] ;
  wire [0:0]\gameover[2][0] ;
  wire [0:0]\gameover[3][0] ;
  wire [0:0]\gameover[5][0] ;
  wire [0:0]\gameover[6][0] ;
  wire [0:0]\gameover[8][0] ;
  wire [10:0]h_count;
  wire \h_count_reg_n_0_[0] ;
  wire \h_count_reg_n_0_[10] ;
  wire \h_count_reg_n_0_[1] ;
  wire \h_count_reg_n_0_[2] ;
  wire \h_count_reg_n_0_[3] ;
  wire \h_count_reg_n_0_[4] ;
  wire \h_count_reg_n_0_[5] ;
  wire \h_count_reg_n_0_[6] ;
  wire \h_count_reg_n_0_[7] ;
  wire \h_count_reg_n_0_[8] ;
  wire \h_count_reg_n_0_[9] ;
  wire h_sync0;
  wire \i_/col[10]_i_2_n_0 ;
  wire \i_/col[10]_i_3_n_0 ;
  wire \i_/col[10]_i_4_n_0 ;
  wire \i_/col[7]_i_2_n_0 ;
  wire \i_/col[9]_i_2_n_0 ;
  wire \i_/col[9]_i_3_n_0 ;
  wire \i_/en_inv_i_1_n_0 ;
  wire \i_/en_inv_i_2_n_0 ;
  wire \i_/en_inv_i_3_n_0 ;
  wire \i_/en_inv_i_4_n_0 ;
  wire \i_/en_inv_i_5_n_0 ;
  wire \i_/en_inv_i_6_n_0 ;
  wire \i_/h_count[10]_i_2_n_0 ;
  wire \i_/h_count[10]_i_3_n_0 ;
  wire \i_/h_count[3]_i_1_n_0 ;
  wire \i_/h_count[4]_i_1_n_0 ;
  wire \i_/h_count[7]_i_1_n_0 ;
  wire \i_/h_count[7]_i_2_n_0 ;
  wire \i_/h_count[8]_i_2_n_0 ;
  wire \i_/h_count[9]_i_1_n_0 ;
  wire \i_/h_count[9]_i_2_n_0 ;
  wire \i_/h_sync_i_2_n_0 ;
  wire \i_/v_count[0]_i_1_n_0 ;
  wire \i_/v_count[10]_i_1_n_0 ;
  wire \i_/v_count[10]_i_2_n_0 ;
  wire \i_/v_count[10]_i_3_n_0 ;
  wire \i_/v_count[10]_i_4_n_0 ;
  wire \i_/v_count[10]_i_5_n_0 ;
  wire \i_/v_count[1]_i_1_n_0 ;
  wire \i_/v_count[3]_i_1_n_0 ;
  wire \i_/v_count[5]_i_1_n_0 ;
  wire \i_/v_count[5]_i_2_n_0 ;
  wire \i_/v_count[6]_i_1_n_0 ;
  wire \i_/v_count[7]_i_1_n_0 ;
  wire \i_/v_count[8]_i_1_n_0 ;
  wire \i_/v_count[9]_i_1_n_0 ;
  wire \i_/v_count[9]_i_3_n_0 ;
  wire is_text_pixel;
  wire [1:0]mode;
  wire p_0_in;
  wire \rout_reg[3]_i_1000_n_0 ;
  wire \rout_reg[3]_i_1001_n_0 ;
  wire \rout_reg[3]_i_1002_n_0 ;
  wire \rout_reg[3]_i_1003_n_0 ;
  wire \rout_reg[3]_i_1004_n_0 ;
  wire \rout_reg[3]_i_1005_n_0 ;
  wire \rout_reg[3]_i_1006_n_0 ;
  wire \rout_reg[3]_i_1007_n_0 ;
  wire \rout_reg[3]_i_1008_n_0 ;
  wire \rout_reg[3]_i_1009_n_0 ;
  wire \rout_reg[3]_i_100_n_0 ;
  wire \rout_reg[3]_i_1010_n_0 ;
  wire \rout_reg[3]_i_1011_n_0 ;
  wire \rout_reg[3]_i_1011_n_4 ;
  wire \rout_reg[3]_i_1011_n_5 ;
  wire \rout_reg[3]_i_1011_n_6 ;
  wire \rout_reg[3]_i_1011_n_7 ;
  wire \rout_reg[3]_i_1012_n_0 ;
  wire \rout_reg[3]_i_1013_n_0 ;
  wire \rout_reg[3]_i_1014_n_0 ;
  wire \rout_reg[3]_i_1015_n_0 ;
  wire \rout_reg[3]_i_1016_n_0 ;
  wire \rout_reg[3]_i_1017_n_0 ;
  wire \rout_reg[3]_i_1018_n_0 ;
  wire \rout_reg[3]_i_1019_n_0 ;
  wire \rout_reg[3]_i_101_n_0 ;
  wire \rout_reg[3]_i_1020_n_0 ;
  wire \rout_reg[3]_i_1021_n_0 ;
  wire \rout_reg[3]_i_1022_n_0 ;
  wire \rout_reg[3]_i_1023_n_0 ;
  wire \rout_reg[3]_i_1024_n_0 ;
  wire \rout_reg[3]_i_1025_n_0 ;
  wire \rout_reg[3]_i_1026_n_0 ;
  wire \rout_reg[3]_i_1027_n_0 ;
  wire \rout_reg[3]_i_1028_n_0 ;
  wire \rout_reg[3]_i_1029_n_0 ;
  wire \rout_reg[3]_i_102_n_0 ;
  wire \rout_reg[3]_i_1030_n_0 ;
  wire \rout_reg[3]_i_1031_n_0 ;
  wire \rout_reg[3]_i_1032_n_0 ;
  wire \rout_reg[3]_i_1033_n_0 ;
  wire \rout_reg[3]_i_1034_n_0 ;
  wire \rout_reg[3]_i_1035_n_0 ;
  wire \rout_reg[3]_i_1036_n_0 ;
  wire \rout_reg[3]_i_1037_n_0 ;
  wire \rout_reg[3]_i_1038_n_0 ;
  wire \rout_reg[3]_i_1039_n_0 ;
  wire \rout_reg[3]_i_103_n_0 ;
  wire \rout_reg[3]_i_1040_n_0 ;
  wire \rout_reg[3]_i_1041_n_0 ;
  wire \rout_reg[3]_i_1042_n_0 ;
  wire \rout_reg[3]_i_1043_n_0 ;
  wire \rout_reg[3]_i_1044_n_0 ;
  wire \rout_reg[3]_i_1045_n_0 ;
  wire \rout_reg[3]_i_1046_n_0 ;
  wire \rout_reg[3]_i_1047_n_0 ;
  wire \rout_reg[3]_i_1048_n_0 ;
  wire \rout_reg[3]_i_1049_n_0 ;
  wire \rout_reg[3]_i_104_n_0 ;
  wire \rout_reg[3]_i_1050_n_0 ;
  wire \rout_reg[3]_i_1051_n_0 ;
  wire \rout_reg[3]_i_1052_n_0 ;
  wire \rout_reg[3]_i_1052_n_4 ;
  wire \rout_reg[3]_i_1052_n_5 ;
  wire \rout_reg[3]_i_1052_n_6 ;
  wire \rout_reg[3]_i_1052_n_7 ;
  wire \rout_reg[3]_i_1053_n_0 ;
  wire \rout_reg[3]_i_1054_n_0 ;
  wire \rout_reg[3]_i_1055_n_0 ;
  wire \rout_reg[3]_i_1056_n_0 ;
  wire \rout_reg[3]_i_1057_n_0 ;
  wire \rout_reg[3]_i_1058_n_0 ;
  wire \rout_reg[3]_i_1059_n_0 ;
  wire \rout_reg[3]_i_105_n_0 ;
  wire \rout_reg[3]_i_1060_n_0 ;
  wire \rout_reg[3]_i_1061_n_0 ;
  wire \rout_reg[3]_i_1062_n_0 ;
  wire \rout_reg[3]_i_1062_n_4 ;
  wire \rout_reg[3]_i_1062_n_5 ;
  wire \rout_reg[3]_i_1062_n_6 ;
  wire \rout_reg[3]_i_1062_n_7 ;
  wire \rout_reg[3]_i_1063_n_0 ;
  wire \rout_reg[3]_i_1064_n_0 ;
  wire \rout_reg[3]_i_1065_n_0 ;
  wire \rout_reg[3]_i_1066_n_0 ;
  wire \rout_reg[3]_i_1067_n_0 ;
  wire \rout_reg[3]_i_1067_n_4 ;
  wire \rout_reg[3]_i_1067_n_5 ;
  wire \rout_reg[3]_i_1067_n_6 ;
  wire \rout_reg[3]_i_1067_n_7 ;
  wire \rout_reg[3]_i_1068_n_0 ;
  wire \rout_reg[3]_i_1069_n_0 ;
  wire \rout_reg[3]_i_106_n_0 ;
  wire \rout_reg[3]_i_1070_n_0 ;
  wire \rout_reg[3]_i_1071_n_0 ;
  wire \rout_reg[3]_i_1072_n_0 ;
  wire \rout_reg[3]_i_1073_n_0 ;
  wire \rout_reg[3]_i_1074_n_0 ;
  wire \rout_reg[3]_i_1075_n_0 ;
  wire \rout_reg[3]_i_1076_n_0 ;
  wire \rout_reg[3]_i_1076_n_4 ;
  wire \rout_reg[3]_i_1076_n_5 ;
  wire \rout_reg[3]_i_1076_n_6 ;
  wire \rout_reg[3]_i_1076_n_7 ;
  wire \rout_reg[3]_i_1077_n_0 ;
  wire \rout_reg[3]_i_1078_n_0 ;
  wire \rout_reg[3]_i_1079_n_0 ;
  wire \rout_reg[3]_i_107_n_0 ;
  wire \rout_reg[3]_i_1080_n_0 ;
  wire \rout_reg[3]_i_1081_n_0 ;
  wire \rout_reg[3]_i_1082_n_0 ;
  wire \rout_reg[3]_i_1083_n_0 ;
  wire \rout_reg[3]_i_1084_n_0 ;
  wire \rout_reg[3]_i_1085_n_0 ;
  wire \rout_reg[3]_i_1086_n_0 ;
  wire \rout_reg[3]_i_1087_n_0 ;
  wire \rout_reg[3]_i_1088_n_0 ;
  wire \rout_reg[3]_i_108_n_0 ;
  wire \rout_reg[3]_i_109_n_0 ;
  wire \rout_reg[3]_i_10_n_0 ;
  wire \rout_reg[3]_i_110_n_0 ;
  wire \rout_reg[3]_i_111_n_0 ;
  wire \rout_reg[3]_i_112_n_0 ;
  wire \rout_reg[3]_i_113_n_0 ;
  wire \rout_reg[3]_i_114_n_0 ;
  wire \rout_reg[3]_i_115_n_0 ;
  wire \rout_reg[3]_i_116_n_0 ;
  wire \rout_reg[3]_i_117_0 ;
  wire \rout_reg[3]_i_117_n_0 ;
  wire \rout_reg[3]_i_118_n_0 ;
  wire \rout_reg[3]_i_119_n_0 ;
  wire \rout_reg[3]_i_11_n_0 ;
  wire \rout_reg[3]_i_120_n_0 ;
  wire \rout_reg[3]_i_122_n_0 ;
  wire \rout_reg[3]_i_123_n_0 ;
  wire \rout_reg[3]_i_124_n_0 ;
  wire \rout_reg[3]_i_125_n_0 ;
  wire \rout_reg[3]_i_126_n_0 ;
  wire \rout_reg[3]_i_127_n_0 ;
  wire \rout_reg[3]_i_128_n_0 ;
  wire \rout_reg[3]_i_129_n_0 ;
  wire \rout_reg[3]_i_12_n_0 ;
  wire \rout_reg[3]_i_130_n_0 ;
  wire \rout_reg[3]_i_131_n_0 ;
  wire \rout_reg[3]_i_132_n_0 ;
  wire \rout_reg[3]_i_133_n_0 ;
  wire \rout_reg[3]_i_134_n_0 ;
  wire \rout_reg[3]_i_135_n_0 ;
  wire \rout_reg[3]_i_136_n_4 ;
  wire \rout_reg[3]_i_136_n_5 ;
  wire \rout_reg[3]_i_136_n_6 ;
  wire \rout_reg[3]_i_136_n_7 ;
  wire \rout_reg[3]_i_137_n_2 ;
  wire \rout_reg[3]_i_139_n_6 ;
  wire \rout_reg[3]_i_139_n_7 ;
  wire \rout_reg[3]_i_13_n_0 ;
  wire \rout_reg[3]_i_13_n_4 ;
  wire \rout_reg[3]_i_13_n_5 ;
  wire \rout_reg[3]_i_13_n_6 ;
  wire \rout_reg[3]_i_13_n_7 ;
  wire \rout_reg[3]_i_140_n_0 ;
  wire \rout_reg[3]_i_140_n_4 ;
  wire \rout_reg[3]_i_140_n_5 ;
  wire \rout_reg[3]_i_141_n_0 ;
  wire \rout_reg[3]_i_142_n_5 ;
  wire \rout_reg[3]_i_142_n_6 ;
  wire \rout_reg[3]_i_142_n_7 ;
  wire \rout_reg[3]_i_143_n_0 ;
  wire \rout_reg[3]_i_143_n_4 ;
  wire \rout_reg[3]_i_143_n_5 ;
  wire \rout_reg[3]_i_143_n_6 ;
  wire \rout_reg[3]_i_143_n_7 ;
  wire \rout_reg[3]_i_144_n_0 ;
  wire \rout_reg[3]_i_145_n_0 ;
  wire \rout_reg[3]_i_146_n_0 ;
  wire \rout_reg[3]_i_147_n_0 ;
  wire \rout_reg[3]_i_148_n_0 ;
  wire \rout_reg[3]_i_149_n_0 ;
  wire \rout_reg[3]_i_14_n_0 ;
  wire \rout_reg[3]_i_150_n_0 ;
  wire \rout_reg[3]_i_151_n_0 ;
  wire \rout_reg[3]_i_152_n_0 ;
  wire \rout_reg[3]_i_153_n_0 ;
  wire \rout_reg[3]_i_154_n_0 ;
  wire \rout_reg[3]_i_155_n_0 ;
  wire \rout_reg[3]_i_156_n_0 ;
  wire \rout_reg[3]_i_157_n_0 ;
  wire \rout_reg[3]_i_158_n_0 ;
  wire \rout_reg[3]_i_159_n_0 ;
  wire \rout_reg[3]_i_15_n_0 ;
  wire \rout_reg[3]_i_160_0 ;
  wire \rout_reg[3]_i_160_n_0 ;
  wire \rout_reg[3]_i_161_n_0 ;
  wire \rout_reg[3]_i_162_n_0 ;
  wire \rout_reg[3]_i_163_n_0 ;
  wire \rout_reg[3]_i_164_0 ;
  wire \rout_reg[3]_i_164_n_0 ;
  wire \rout_reg[3]_i_165_n_0 ;
  wire \rout_reg[3]_i_166_n_0 ;
  wire \rout_reg[3]_i_167_n_0 ;
  wire \rout_reg[3]_i_168_n_0 ;
  wire \rout_reg[3]_i_169_n_0 ;
  wire \rout_reg[3]_i_16_n_0 ;
  wire \rout_reg[3]_i_170_n_0 ;
  wire \rout_reg[3]_i_171_n_0 ;
  wire \rout_reg[3]_i_172_n_0 ;
  wire \rout_reg[3]_i_173_n_0 ;
  wire \rout_reg[3]_i_174_n_0 ;
  wire \rout_reg[3]_i_175_n_0 ;
  wire \rout_reg[3]_i_176_n_0 ;
  wire \rout_reg[3]_i_177_0 ;
  wire \rout_reg[3]_i_177_n_0 ;
  wire \rout_reg[3]_i_178_n_0 ;
  wire \rout_reg[3]_i_179_n_0 ;
  wire \rout_reg[3]_i_17_n_0 ;
  wire \rout_reg[3]_i_180_n_0 ;
  wire \rout_reg[3]_i_181_n_0 ;
  wire \rout_reg[3]_i_182_n_0 ;
  wire \rout_reg[3]_i_183_n_0 ;
  wire \rout_reg[3]_i_184_n_0 ;
  wire \rout_reg[3]_i_185_n_0 ;
  wire \rout_reg[3]_i_186_n_0 ;
  wire \rout_reg[3]_i_187_n_0 ;
  wire \rout_reg[3]_i_188_n_0 ;
  wire \rout_reg[3]_i_189_n_0 ;
  wire \rout_reg[3]_i_18_n_0 ;
  wire \rout_reg[3]_i_190_n_0 ;
  wire \rout_reg[3]_i_191_n_0 ;
  wire \rout_reg[3]_i_192_n_0 ;
  wire \rout_reg[3]_i_193_n_0 ;
  wire \rout_reg[3]_i_194_n_0 ;
  wire \rout_reg[3]_i_195_n_0 ;
  wire \rout_reg[3]_i_197_n_0 ;
  wire \rout_reg[3]_i_198_n_0 ;
  wire \rout_reg[3]_i_199_n_0 ;
  wire \rout_reg[3]_i_19_0 ;
  wire \rout_reg[3]_i_19_n_0 ;
  wire \rout_reg[3]_i_200_n_0 ;
  wire \rout_reg[3]_i_201_n_0 ;
  wire \rout_reg[3]_i_203_n_0 ;
  wire \rout_reg[3]_i_205_n_0 ;
  wire \rout_reg[3]_i_206_n_0 ;
  wire \rout_reg[3]_i_207_n_0 ;
  wire \rout_reg[3]_i_208_0 ;
  wire \rout_reg[3]_i_208_1 ;
  wire \rout_reg[3]_i_208_n_0 ;
  wire \rout_reg[3]_i_209_n_0 ;
  wire \rout_reg[3]_i_20_n_2 ;
  wire \rout_reg[3]_i_210_n_0 ;
  wire \rout_reg[3]_i_211_0 ;
  wire \rout_reg[3]_i_211_n_0 ;
  wire \rout_reg[3]_i_212_n_0 ;
  wire \rout_reg[3]_i_213_n_0 ;
  wire \rout_reg[3]_i_214_n_0 ;
  wire \rout_reg[3]_i_215_n_0 ;
  wire \rout_reg[3]_i_216_n_0 ;
  wire \rout_reg[3]_i_217_n_0 ;
  wire \rout_reg[3]_i_218_n_0 ;
  wire \rout_reg[3]_i_219_n_0 ;
  wire \rout_reg[3]_i_21_n_3 ;
  wire \rout_reg[3]_i_220_n_0 ;
  wire \rout_reg[3]_i_221_n_0 ;
  wire \rout_reg[3]_i_222_n_0 ;
  wire \rout_reg[3]_i_223_n_0 ;
  wire \rout_reg[3]_i_224_n_0 ;
  wire \rout_reg[3]_i_225_n_0 ;
  wire \rout_reg[3]_i_226_n_0 ;
  wire \rout_reg[3]_i_227_n_0 ;
  wire \rout_reg[3]_i_228_n_0 ;
  wire \rout_reg[3]_i_229_n_0 ;
  wire \rout_reg[3]_i_22_n_3 ;
  wire \rout_reg[3]_i_230_n_0 ;
  wire \rout_reg[3]_i_231_n_0 ;
  wire \rout_reg[3]_i_232_n_0 ;
  wire \rout_reg[3]_i_233_n_0 ;
  wire \rout_reg[3]_i_234_n_0 ;
  wire \rout_reg[3]_i_235_n_0 ;
  wire \rout_reg[3]_i_236_n_0 ;
  wire \rout_reg[3]_i_237_n_0 ;
  wire \rout_reg[3]_i_238_n_0 ;
  wire \rout_reg[3]_i_239_n_0 ;
  wire \rout_reg[3]_i_23_n_1 ;
  wire \rout_reg[3]_i_240_n_0 ;
  wire \rout_reg[3]_i_241_n_0 ;
  wire \rout_reg[3]_i_242_n_0 ;
  wire \rout_reg[3]_i_243_n_0 ;
  wire \rout_reg[3]_i_244_n_0 ;
  wire \rout_reg[3]_i_245_n_0 ;
  wire \rout_reg[3]_i_246_n_0 ;
  wire \rout_reg[3]_i_247_n_0 ;
  wire \rout_reg[3]_i_248_n_0 ;
  wire \rout_reg[3]_i_249_n_0 ;
  wire \rout_reg[3]_i_24_n_0 ;
  wire \rout_reg[3]_i_250_n_0 ;
  wire \rout_reg[3]_i_251_n_0 ;
  wire \rout_reg[3]_i_252_n_0 ;
  wire \rout_reg[3]_i_253_n_0 ;
  wire \rout_reg[3]_i_254_n_0 ;
  wire \rout_reg[3]_i_255_n_0 ;
  wire \rout_reg[3]_i_256_n_0 ;
  wire \rout_reg[3]_i_257_n_0 ;
  wire \rout_reg[3]_i_258_n_0 ;
  wire \rout_reg[3]_i_259_n_0 ;
  wire \rout_reg[3]_i_25_n_0 ;
  wire \rout_reg[3]_i_260_n_0 ;
  wire \rout_reg[3]_i_261_n_0 ;
  wire \rout_reg[3]_i_262_n_0 ;
  wire \rout_reg[3]_i_263_n_0 ;
  wire \rout_reg[3]_i_264_n_0 ;
  wire \rout_reg[3]_i_265_n_0 ;
  wire \rout_reg[3]_i_266_n_0 ;
  wire \rout_reg[3]_i_267_n_0 ;
  wire \rout_reg[3]_i_268_n_0 ;
  wire \rout_reg[3]_i_269_n_0 ;
  wire \rout_reg[3]_i_26_n_0 ;
  wire \rout_reg[3]_i_270_n_0 ;
  wire \rout_reg[3]_i_271_n_0 ;
  wire \rout_reg[3]_i_273_n_0 ;
  wire \rout_reg[3]_i_274_n_0 ;
  wire \rout_reg[3]_i_275_n_0 ;
  wire \rout_reg[3]_i_276_n_0 ;
  wire \rout_reg[3]_i_277_n_0 ;
  wire \rout_reg[3]_i_278_n_0 ;
  wire \rout_reg[3]_i_279_n_0 ;
  wire \rout_reg[3]_i_27_n_0 ;
  wire \rout_reg[3]_i_280_n_0 ;
  wire \rout_reg[3]_i_281_n_0 ;
  wire \rout_reg[3]_i_282_n_0 ;
  wire \rout_reg[3]_i_283_n_0 ;
  wire \rout_reg[3]_i_284_n_0 ;
  wire \rout_reg[3]_i_285_n_0 ;
  wire \rout_reg[3]_i_286_n_0 ;
  wire \rout_reg[3]_i_287_n_0 ;
  wire \rout_reg[3]_i_288_n_0 ;
  wire \rout_reg[3]_i_289_n_0 ;
  wire \rout_reg[3]_i_28_n_0 ;
  wire \rout_reg[3]_i_290_n_0 ;
  wire \rout_reg[3]_i_291_n_0 ;
  wire \rout_reg[3]_i_292_n_0 ;
  wire \rout_reg[3]_i_293_n_0 ;
  wire \rout_reg[3]_i_294_n_0 ;
  wire \rout_reg[3]_i_295_n_0 ;
  wire \rout_reg[3]_i_296_n_0 ;
  wire \rout_reg[3]_i_297_n_0 ;
  wire \rout_reg[3]_i_298_n_0 ;
  wire \rout_reg[3]_i_299_n_0 ;
  wire \rout_reg[3]_i_29_n_0 ;
  wire \rout_reg[3]_i_300_n_0 ;
  wire \rout_reg[3]_i_301_n_0 ;
  wire \rout_reg[3]_i_302_n_0 ;
  wire \rout_reg[3]_i_303_n_0 ;
  wire \rout_reg[3]_i_304_n_0 ;
  wire \rout_reg[3]_i_305_n_0 ;
  wire \rout_reg[3]_i_306_n_0 ;
  wire \rout_reg[3]_i_307_n_0 ;
  wire \rout_reg[3]_i_307_n_4 ;
  wire \rout_reg[3]_i_307_n_5 ;
  wire \rout_reg[3]_i_307_n_6 ;
  wire \rout_reg[3]_i_307_n_7 ;
  wire \rout_reg[3]_i_308_n_5 ;
  wire \rout_reg[3]_i_308_n_6 ;
  wire \rout_reg[3]_i_308_n_7 ;
  wire \rout_reg[3]_i_309_n_0 ;
  wire \rout_reg[3]_i_30_n_0 ;
  wire \rout_reg[3]_i_310_n_0 ;
  wire \rout_reg[3]_i_311_n_0 ;
  wire \rout_reg[3]_i_312_n_0 ;
  wire \rout_reg[3]_i_313_n_0 ;
  wire \rout_reg[3]_i_314_n_0 ;
  wire \rout_reg[3]_i_315_n_0 ;
  wire \rout_reg[3]_i_316_n_0 ;
  wire \rout_reg[3]_i_317_n_0 ;
  wire \rout_reg[3]_i_318_n_0 ;
  wire \rout_reg[3]_i_319_n_0 ;
  wire \rout_reg[3]_i_31_n_0 ;
  wire \rout_reg[3]_i_320_n_0 ;
  wire \rout_reg[3]_i_321_n_0 ;
  wire \rout_reg[3]_i_322_n_0 ;
  wire \rout_reg[3]_i_323_n_0 ;
  wire \rout_reg[3]_i_324_n_0 ;
  wire \rout_reg[3]_i_325_n_0 ;
  wire \rout_reg[3]_i_326_n_0 ;
  wire \rout_reg[3]_i_327_n_0 ;
  wire \rout_reg[3]_i_328_n_0 ;
  wire \rout_reg[3]_i_329_n_0 ;
  wire \rout_reg[3]_i_32_0 ;
  wire \rout_reg[3]_i_32_n_0 ;
  wire \rout_reg[3]_i_330_n_0 ;
  wire \rout_reg[3]_i_331_n_0 ;
  wire \rout_reg[3]_i_332_n_0 ;
  wire \rout_reg[3]_i_334_n_0 ;
  wire \rout_reg[3]_i_335_n_0 ;
  wire \rout_reg[3]_i_337_n_0 ;
  wire \rout_reg[3]_i_338_n_0 ;
  wire \rout_reg[3]_i_339_n_0 ;
  wire \rout_reg[3]_i_33_0 ;
  wire \rout_reg[3]_i_33_n_0 ;
  wire \rout_reg[3]_i_340_n_0 ;
  wire \rout_reg[3]_i_341_n_0 ;
  wire \rout_reg[3]_i_343_n_0 ;
  wire \rout_reg[3]_i_344_n_0 ;
  wire \rout_reg[3]_i_345_n_0 ;
  wire \rout_reg[3]_i_346_n_0 ;
  wire \rout_reg[3]_i_347_n_0 ;
  wire \rout_reg[3]_i_348_n_0 ;
  wire \rout_reg[3]_i_349_n_0 ;
  wire \rout_reg[3]_i_34_n_0 ;
  wire \rout_reg[3]_i_350_n_0 ;
  wire \rout_reg[3]_i_351_n_0 ;
  wire \rout_reg[3]_i_353_n_0 ;
  wire \rout_reg[3]_i_354_n_0 ;
  wire \rout_reg[3]_i_355_n_0 ;
  wire \rout_reg[3]_i_356_n_0 ;
  wire \rout_reg[3]_i_357_n_0 ;
  wire \rout_reg[3]_i_358_n_0 ;
  wire \rout_reg[3]_i_359_n_0 ;
  wire \rout_reg[3]_i_35_n_0 ;
  wire \rout_reg[3]_i_360_n_0 ;
  wire \rout_reg[3]_i_361_n_0 ;
  wire \rout_reg[3]_i_362_n_0 ;
  wire \rout_reg[3]_i_363_n_0 ;
  wire \rout_reg[3]_i_364_n_0 ;
  wire \rout_reg[3]_i_365_n_0 ;
  wire \rout_reg[3]_i_366_n_0 ;
  wire \rout_reg[3]_i_367_n_0 ;
  wire \rout_reg[3]_i_368_n_0 ;
  wire \rout_reg[3]_i_369_n_0 ;
  wire \rout_reg[3]_i_36_n_0 ;
  wire \rout_reg[3]_i_370_n_0 ;
  wire \rout_reg[3]_i_371_n_0 ;
  wire \rout_reg[3]_i_372_n_0 ;
  wire \rout_reg[3]_i_373_n_0 ;
  wire \rout_reg[3]_i_374_n_0 ;
  wire \rout_reg[3]_i_375_n_0 ;
  wire \rout_reg[3]_i_376_n_0 ;
  wire \rout_reg[3]_i_377_n_0 ;
  wire \rout_reg[3]_i_378_n_0 ;
  wire \rout_reg[3]_i_379_n_0 ;
  wire \rout_reg[3]_i_37_n_0 ;
  wire \rout_reg[3]_i_380_n_0 ;
  wire \rout_reg[3]_i_381_n_0 ;
  wire \rout_reg[3]_i_382_n_0 ;
  wire \rout_reg[3]_i_383_n_0 ;
  wire \rout_reg[3]_i_384_n_0 ;
  wire \rout_reg[3]_i_385_n_0 ;
  wire \rout_reg[3]_i_386_n_0 ;
  wire \rout_reg[3]_i_387_n_0 ;
  wire \rout_reg[3]_i_388_n_0 ;
  wire \rout_reg[3]_i_389_n_0 ;
  wire \rout_reg[3]_i_38_n_0 ;
  wire \rout_reg[3]_i_390_n_0 ;
  wire \rout_reg[3]_i_391_n_0 ;
  wire \rout_reg[3]_i_392_n_0 ;
  wire \rout_reg[3]_i_393_n_0 ;
  wire \rout_reg[3]_i_394_n_0 ;
  wire \rout_reg[3]_i_395_n_0 ;
  wire \rout_reg[3]_i_396_n_0 ;
  wire \rout_reg[3]_i_397_n_0 ;
  wire \rout_reg[3]_i_398_n_0 ;
  wire \rout_reg[3]_i_399_n_0 ;
  wire \rout_reg[3]_i_39_n_0 ;
  wire \rout_reg[3]_i_3_n_0 ;
  wire \rout_reg[3]_i_400_n_0 ;
  wire \rout_reg[3]_i_401_n_0 ;
  wire \rout_reg[3]_i_402_0 ;
  wire \rout_reg[3]_i_402_n_0 ;
  wire \rout_reg[3]_i_404_n_0 ;
  wire \rout_reg[3]_i_405_n_0 ;
  wire \rout_reg[3]_i_406_n_0 ;
  wire \rout_reg[3]_i_409_n_0 ;
  wire \rout_reg[3]_i_40_n_0 ;
  wire \rout_reg[3]_i_410_n_0 ;
  wire \rout_reg[3]_i_411_n_0 ;
  wire \rout_reg[3]_i_412_n_0 ;
  wire \rout_reg[3]_i_413_n_0 ;
  wire \rout_reg[3]_i_414_n_0 ;
  wire \rout_reg[3]_i_415_n_0 ;
  wire \rout_reg[3]_i_416_n_0 ;
  wire \rout_reg[3]_i_417_n_0 ;
  wire \rout_reg[3]_i_418_n_0 ;
  wire \rout_reg[3]_i_419_n_0 ;
  wire \rout_reg[3]_i_41_n_0 ;
  wire \rout_reg[3]_i_420_n_0 ;
  wire \rout_reg[3]_i_421_n_0 ;
  wire \rout_reg[3]_i_422_n_0 ;
  wire \rout_reg[3]_i_423_n_0 ;
  wire \rout_reg[3]_i_424_n_0 ;
  wire \rout_reg[3]_i_425_n_0 ;
  wire \rout_reg[3]_i_426_n_0 ;
  wire \rout_reg[3]_i_427_n_0 ;
  wire \rout_reg[3]_i_428_n_0 ;
  wire \rout_reg[3]_i_429_n_0 ;
  wire \rout_reg[3]_i_42_n_0 ;
  wire \rout_reg[3]_i_430_n_0 ;
  wire \rout_reg[3]_i_431_n_0 ;
  wire \rout_reg[3]_i_432_n_0 ;
  wire \rout_reg[3]_i_433_n_0 ;
  wire \rout_reg[3]_i_434_n_0 ;
  wire \rout_reg[3]_i_435_n_0 ;
  wire \rout_reg[3]_i_436_n_0 ;
  wire \rout_reg[3]_i_437_n_0 ;
  wire \rout_reg[3]_i_438_n_0 ;
  wire \rout_reg[3]_i_439_n_0 ;
  wire \rout_reg[3]_i_43_n_0 ;
  wire \rout_reg[3]_i_440_n_0 ;
  wire \rout_reg[3]_i_441_n_0 ;
  wire \rout_reg[3]_i_442_n_0 ;
  wire \rout_reg[3]_i_443_n_0 ;
  wire \rout_reg[3]_i_445_n_0 ;
  wire \rout_reg[3]_i_446_n_0 ;
  wire \rout_reg[3]_i_447_n_0 ;
  wire \rout_reg[3]_i_448_n_0 ;
  wire \rout_reg[3]_i_449_n_0 ;
  wire \rout_reg[3]_i_44_n_0 ;
  wire \rout_reg[3]_i_450_n_0 ;
  wire \rout_reg[3]_i_451_n_0 ;
  wire \rout_reg[3]_i_452_n_0 ;
  wire \rout_reg[3]_i_453_n_0 ;
  wire \rout_reg[3]_i_454_n_0 ;
  wire \rout_reg[3]_i_455_n_0 ;
  wire \rout_reg[3]_i_456_n_0 ;
  wire \rout_reg[3]_i_457_n_0 ;
  wire \rout_reg[3]_i_458_n_0 ;
  wire \rout_reg[3]_i_459_n_0 ;
  wire \rout_reg[3]_i_45_n_0 ;
  wire \rout_reg[3]_i_460_n_0 ;
  wire \rout_reg[3]_i_461_n_0 ;
  wire \rout_reg[3]_i_462_n_0 ;
  wire \rout_reg[3]_i_463_n_0 ;
  wire \rout_reg[3]_i_465_n_0 ;
  wire \rout_reg[3]_i_466_n_0 ;
  wire \rout_reg[3]_i_467_n_0 ;
  wire \rout_reg[3]_i_468_n_0 ;
  wire \rout_reg[3]_i_469_n_0 ;
  wire \rout_reg[3]_i_46_n_0 ;
  wire \rout_reg[3]_i_470_n_0 ;
  wire \rout_reg[3]_i_471_n_0 ;
  wire \rout_reg[3]_i_472_n_0 ;
  wire \rout_reg[3]_i_474_n_0 ;
  wire \rout_reg[3]_i_476_n_0 ;
  wire \rout_reg[3]_i_477_n_0 ;
  wire \rout_reg[3]_i_478_n_0 ;
  wire \rout_reg[3]_i_47_n_0 ;
  wire \rout_reg[3]_i_481_n_0 ;
  wire \rout_reg[3]_i_482_n_0 ;
  wire \rout_reg[3]_i_483_n_0 ;
  wire \rout_reg[3]_i_484_n_0 ;
  wire \rout_reg[3]_i_485_n_0 ;
  wire \rout_reg[3]_i_486_n_0 ;
  wire \rout_reg[3]_i_487_n_0 ;
  wire \rout_reg[3]_i_488_n_0 ;
  wire \rout_reg[3]_i_489_n_0 ;
  wire \rout_reg[3]_i_48_n_0 ;
  wire \rout_reg[3]_i_490_n_0 ;
  wire \rout_reg[3]_i_491_n_0 ;
  wire \rout_reg[3]_i_492_n_0 ;
  wire \rout_reg[3]_i_493_n_0 ;
  wire \rout_reg[3]_i_494_n_0 ;
  wire \rout_reg[3]_i_495_n_0 ;
  wire \rout_reg[3]_i_496_n_0 ;
  wire \rout_reg[3]_i_497_n_0 ;
  wire \rout_reg[3]_i_498_n_0 ;
  wire \rout_reg[3]_i_499_n_0 ;
  wire \rout_reg[3]_i_49_n_0 ;
  wire \rout_reg[3]_i_4_n_0 ;
  wire \rout_reg[3]_i_500_n_0 ;
  wire \rout_reg[3]_i_501_n_0 ;
  wire \rout_reg[3]_i_502_n_0 ;
  wire \rout_reg[3]_i_502_n_4 ;
  wire \rout_reg[3]_i_502_n_5 ;
  wire \rout_reg[3]_i_502_n_6 ;
  wire \rout_reg[3]_i_502_n_7 ;
  wire \rout_reg[3]_i_503_n_0 ;
  wire \rout_reg[3]_i_503_n_4 ;
  wire \rout_reg[3]_i_503_n_5 ;
  wire \rout_reg[3]_i_503_n_6 ;
  wire \rout_reg[3]_i_503_n_7 ;
  wire \rout_reg[3]_i_504_n_0 ;
  wire \rout_reg[3]_i_505_n_0 ;
  wire \rout_reg[3]_i_506_n_0 ;
  wire \rout_reg[3]_i_507_n_0 ;
  wire \rout_reg[3]_i_508_n_0 ;
  wire \rout_reg[3]_i_509_n_0 ;
  wire \rout_reg[3]_i_50_n_0 ;
  wire \rout_reg[3]_i_510_n_0 ;
  wire \rout_reg[3]_i_511_n_0 ;
  wire \rout_reg[3]_i_512_n_0 ;
  wire \rout_reg[3]_i_513_n_0 ;
  wire \rout_reg[3]_i_514_n_0 ;
  wire \rout_reg[3]_i_515_n_0 ;
  wire \rout_reg[3]_i_516_n_0 ;
  wire \rout_reg[3]_i_517_n_0 ;
  wire \rout_reg[3]_i_518_n_0 ;
  wire \rout_reg[3]_i_519_n_0 ;
  wire \rout_reg[3]_i_51_n_0 ;
  wire \rout_reg[3]_i_520_n_0 ;
  wire \rout_reg[3]_i_521_n_0 ;
  wire \rout_reg[3]_i_522_n_0 ;
  wire \rout_reg[3]_i_522_n_4 ;
  wire \rout_reg[3]_i_522_n_5 ;
  wire \rout_reg[3]_i_522_n_6 ;
  wire \rout_reg[3]_i_522_n_7 ;
  wire \rout_reg[3]_i_523_n_0 ;
  wire \rout_reg[3]_i_523_n_4 ;
  wire \rout_reg[3]_i_523_n_5 ;
  wire \rout_reg[3]_i_523_n_6 ;
  wire \rout_reg[3]_i_523_n_7 ;
  wire \rout_reg[3]_i_524_n_0 ;
  wire \rout_reg[3]_i_524_n_4 ;
  wire \rout_reg[3]_i_524_n_5 ;
  wire \rout_reg[3]_i_524_n_6 ;
  wire \rout_reg[3]_i_524_n_7 ;
  wire \rout_reg[3]_i_525_n_0 ;
  wire \rout_reg[3]_i_525_n_4 ;
  wire \rout_reg[3]_i_525_n_5 ;
  wire \rout_reg[3]_i_525_n_6 ;
  wire \rout_reg[3]_i_525_n_7 ;
  wire \rout_reg[3]_i_526_n_0 ;
  wire \rout_reg[3]_i_526_n_4 ;
  wire \rout_reg[3]_i_526_n_5 ;
  wire \rout_reg[3]_i_526_n_6 ;
  wire \rout_reg[3]_i_526_n_7 ;
  wire \rout_reg[3]_i_527_n_0 ;
  wire \rout_reg[3]_i_527_n_4 ;
  wire \rout_reg[3]_i_527_n_5 ;
  wire \rout_reg[3]_i_527_n_6 ;
  wire \rout_reg[3]_i_527_n_7 ;
  wire \rout_reg[3]_i_528_n_0 ;
  wire \rout_reg[3]_i_528_n_4 ;
  wire \rout_reg[3]_i_528_n_5 ;
  wire \rout_reg[3]_i_528_n_6 ;
  wire \rout_reg[3]_i_528_n_7 ;
  wire \rout_reg[3]_i_529_n_0 ;
  wire \rout_reg[3]_i_529_n_4 ;
  wire \rout_reg[3]_i_529_n_5 ;
  wire \rout_reg[3]_i_529_n_6 ;
  wire \rout_reg[3]_i_529_n_7 ;
  wire \rout_reg[3]_i_52_0 ;
  wire \rout_reg[3]_i_52_n_0 ;
  wire \rout_reg[3]_i_530_n_0 ;
  wire \rout_reg[3]_i_530_n_4 ;
  wire \rout_reg[3]_i_530_n_5 ;
  wire \rout_reg[3]_i_530_n_6 ;
  wire \rout_reg[3]_i_530_n_7 ;
  wire \rout_reg[3]_i_532_n_0 ;
  wire \rout_reg[3]_i_533_n_0 ;
  wire \rout_reg[3]_i_534_n_0 ;
  wire \rout_reg[3]_i_535_n_0 ;
  wire \rout_reg[3]_i_536_n_0 ;
  wire \rout_reg[3]_i_537_n_0 ;
  wire \rout_reg[3]_i_538_n_0 ;
  wire \rout_reg[3]_i_539_n_0 ;
  wire \rout_reg[3]_i_53_n_0 ;
  wire \rout_reg[3]_i_540_n_0 ;
  wire \rout_reg[3]_i_541_n_0 ;
  wire \rout_reg[3]_i_542_n_0 ;
  wire \rout_reg[3]_i_543_n_0 ;
  wire \rout_reg[3]_i_544_n_0 ;
  wire \rout_reg[3]_i_545_n_0 ;
  wire \rout_reg[3]_i_546_n_0 ;
  wire \rout_reg[3]_i_547_n_0 ;
  wire \rout_reg[3]_i_549_n_0 ;
  wire \rout_reg[3]_i_54_n_0 ;
  wire \rout_reg[3]_i_550_n_0 ;
  wire \rout_reg[3]_i_551_n_0 ;
  wire \rout_reg[3]_i_552_n_0 ;
  wire \rout_reg[3]_i_553_n_0 ;
  wire \rout_reg[3]_i_554_n_0 ;
  wire \rout_reg[3]_i_555_n_0 ;
  wire \rout_reg[3]_i_556_n_0 ;
  wire \rout_reg[3]_i_557_n_0 ;
  wire \rout_reg[3]_i_558_n_0 ;
  wire \rout_reg[3]_i_559_n_0 ;
  wire \rout_reg[3]_i_55_n_0 ;
  wire \rout_reg[3]_i_55_n_4 ;
  wire \rout_reg[3]_i_55_n_5 ;
  wire \rout_reg[3]_i_55_n_6 ;
  wire \rout_reg[3]_i_560_n_0 ;
  wire \rout_reg[3]_i_561_n_0 ;
  wire \rout_reg[3]_i_562_n_0 ;
  wire \rout_reg[3]_i_563_n_0 ;
  wire \rout_reg[3]_i_564_n_0 ;
  wire \rout_reg[3]_i_565_n_0 ;
  wire \rout_reg[3]_i_566_n_0 ;
  wire \rout_reg[3]_i_567_n_0 ;
  wire \rout_reg[3]_i_568_n_0 ;
  wire \rout_reg[3]_i_569_n_0 ;
  wire \rout_reg[3]_i_56_n_0 ;
  wire \rout_reg[3]_i_570_n_0 ;
  wire \rout_reg[3]_i_572_n_0 ;
  wire \rout_reg[3]_i_573_n_0 ;
  wire \rout_reg[3]_i_574_n_0 ;
  wire \rout_reg[3]_i_575_n_0 ;
  wire \rout_reg[3]_i_576_n_0 ;
  wire \rout_reg[3]_i_577_n_0 ;
  wire \rout_reg[3]_i_578_n_0 ;
  wire \rout_reg[3]_i_579_n_0 ;
  wire \rout_reg[3]_i_57_n_0 ;
  wire \rout_reg[3]_i_580_n_0 ;
  wire \rout_reg[3]_i_581_n_0 ;
  wire \rout_reg[3]_i_582_n_0 ;
  wire \rout_reg[3]_i_583_n_0 ;
  wire \rout_reg[3]_i_584_n_0 ;
  wire \rout_reg[3]_i_585_n_0 ;
  wire \rout_reg[3]_i_586_n_0 ;
  wire \rout_reg[3]_i_587_n_0 ;
  wire \rout_reg[3]_i_58_n_0 ;
  wire \rout_reg[3]_i_590_n_0 ;
  wire \rout_reg[3]_i_591_n_0 ;
  wire \rout_reg[3]_i_592_n_0 ;
  wire \rout_reg[3]_i_593_n_0 ;
  wire \rout_reg[3]_i_594_n_0 ;
  wire \rout_reg[3]_i_595_n_0 ;
  wire \rout_reg[3]_i_596_n_0 ;
  wire \rout_reg[3]_i_597_n_0 ;
  wire \rout_reg[3]_i_598_n_0 ;
  wire \rout_reg[3]_i_599_n_0 ;
  wire \rout_reg[3]_i_5_n_0 ;
  wire \rout_reg[3]_i_600_n_0 ;
  wire \rout_reg[3]_i_601_n_0 ;
  wire \rout_reg[3]_i_602_n_0 ;
  wire \rout_reg[3]_i_603_n_0 ;
  wire \rout_reg[3]_i_604_n_0 ;
  wire \rout_reg[3]_i_605_n_0 ;
  wire \rout_reg[3]_i_606_n_0 ;
  wire \rout_reg[3]_i_606_n_4 ;
  wire \rout_reg[3]_i_606_n_5 ;
  wire \rout_reg[3]_i_606_n_6 ;
  wire \rout_reg[3]_i_606_n_7 ;
  wire \rout_reg[3]_i_607_n_0 ;
  wire \rout_reg[3]_i_607_n_4 ;
  wire \rout_reg[3]_i_607_n_5 ;
  wire \rout_reg[3]_i_607_n_6 ;
  wire \rout_reg[3]_i_607_n_7 ;
  wire \rout_reg[3]_i_608_n_0 ;
  wire \rout_reg[3]_i_609_n_0 ;
  wire \rout_reg[3]_i_60_n_0 ;
  wire \rout_reg[3]_i_60_n_4 ;
  wire \rout_reg[3]_i_60_n_5 ;
  wire \rout_reg[3]_i_60_n_6 ;
  wire \rout_reg[3]_i_60_n_7 ;
  wire \rout_reg[3]_i_610_n_0 ;
  wire \rout_reg[3]_i_611_n_0 ;
  wire \rout_reg[3]_i_612_n_0 ;
  wire \rout_reg[3]_i_613_n_0 ;
  wire \rout_reg[3]_i_614_n_0 ;
  wire \rout_reg[3]_i_615_n_0 ;
  wire \rout_reg[3]_i_616_n_0 ;
  wire \rout_reg[3]_i_617_n_0 ;
  wire \rout_reg[3]_i_618_n_0 ;
  wire \rout_reg[3]_i_619_n_0 ;
  wire \rout_reg[3]_i_61_n_0 ;
  wire \rout_reg[3]_i_620_n_0 ;
  wire \rout_reg[3]_i_620_n_4 ;
  wire \rout_reg[3]_i_620_n_5 ;
  wire \rout_reg[3]_i_620_n_6 ;
  wire \rout_reg[3]_i_620_n_7 ;
  wire \rout_reg[3]_i_621_n_1 ;
  wire \rout_reg[3]_i_621_n_6 ;
  wire \rout_reg[3]_i_621_n_7 ;
  wire \rout_reg[3]_i_622_n_0 ;
  wire \rout_reg[3]_i_622_n_4 ;
  wire \rout_reg[3]_i_622_n_5 ;
  wire \rout_reg[3]_i_622_n_6 ;
  wire \rout_reg[3]_i_622_n_7 ;
  wire \rout_reg[3]_i_623_n_3 ;
  wire \rout_reg[3]_i_624_n_7 ;
  wire \rout_reg[3]_i_625_n_0 ;
  wire \rout_reg[3]_i_626_n_0 ;
  wire \rout_reg[3]_i_627_n_0 ;
  wire \rout_reg[3]_i_628_n_0 ;
  wire \rout_reg[3]_i_629_n_0 ;
  wire \rout_reg[3]_i_62_n_0 ;
  wire \rout_reg[3]_i_630_n_0 ;
  wire \rout_reg[3]_i_631_n_0 ;
  wire \rout_reg[3]_i_632_n_0 ;
  wire \rout_reg[3]_i_633_n_0 ;
  wire \rout_reg[3]_i_634_n_0 ;
  wire \rout_reg[3]_i_634_n_4 ;
  wire \rout_reg[3]_i_634_n_5 ;
  wire \rout_reg[3]_i_634_n_6 ;
  wire \rout_reg[3]_i_634_n_7 ;
  wire \rout_reg[3]_i_635_n_0 ;
  wire \rout_reg[3]_i_635_n_4 ;
  wire \rout_reg[3]_i_635_n_5 ;
  wire \rout_reg[3]_i_635_n_6 ;
  wire \rout_reg[3]_i_635_n_7 ;
  wire \rout_reg[3]_i_636_n_0 ;
  wire \rout_reg[3]_i_636_n_4 ;
  wire \rout_reg[3]_i_636_n_5 ;
  wire \rout_reg[3]_i_636_n_6 ;
  wire \rout_reg[3]_i_636_n_7 ;
  wire \rout_reg[3]_i_637_n_0 ;
  wire \rout_reg[3]_i_638_n_0 ;
  wire \rout_reg[3]_i_639_n_0 ;
  wire \rout_reg[3]_i_63_n_0 ;
  wire \rout_reg[3]_i_640_n_0 ;
  wire \rout_reg[3]_i_641_n_0 ;
  wire \rout_reg[3]_i_642_n_0 ;
  wire \rout_reg[3]_i_643_n_0 ;
  wire \rout_reg[3]_i_644_n_0 ;
  wire \rout_reg[3]_i_645_n_0 ;
  wire \rout_reg[3]_i_646_n_0 ;
  wire \rout_reg[3]_i_647_n_0 ;
  wire \rout_reg[3]_i_648_n_0 ;
  wire \rout_reg[3]_i_649_n_0 ;
  wire \rout_reg[3]_i_64_n_0 ;
  wire \rout_reg[3]_i_650_n_0 ;
  wire \rout_reg[3]_i_651_n_0 ;
  wire \rout_reg[3]_i_652_n_0 ;
  wire \rout_reg[3]_i_653_n_0 ;
  wire \rout_reg[3]_i_654_n_0 ;
  wire \rout_reg[3]_i_655_n_0 ;
  wire \rout_reg[3]_i_656_n_0 ;
  wire \rout_reg[3]_i_657_n_0 ;
  wire \rout_reg[3]_i_658_n_0 ;
  wire \rout_reg[3]_i_659_n_0 ;
  wire \rout_reg[3]_i_65_n_0 ;
  wire \rout_reg[3]_i_660_n_0 ;
  wire \rout_reg[3]_i_661_n_0 ;
  wire \rout_reg[3]_i_662_n_0 ;
  wire \rout_reg[3]_i_663_n_0 ;
  wire \rout_reg[3]_i_664_n_0 ;
  wire \rout_reg[3]_i_665_n_0 ;
  wire \rout_reg[3]_i_666_n_0 ;
  wire \rout_reg[3]_i_667_n_0 ;
  wire \rout_reg[3]_i_668_n_0 ;
  wire \rout_reg[3]_i_669_n_0 ;
  wire \rout_reg[3]_i_670_n_0 ;
  wire \rout_reg[3]_i_671_n_0 ;
  wire \rout_reg[3]_i_672_n_0 ;
  wire \rout_reg[3]_i_673_n_0 ;
  wire \rout_reg[3]_i_674_n_0 ;
  wire \rout_reg[3]_i_675_n_0 ;
  wire \rout_reg[3]_i_676_n_0 ;
  wire \rout_reg[3]_i_677_n_0 ;
  wire \rout_reg[3]_i_678_n_0 ;
  wire \rout_reg[3]_i_679_n_0 ;
  wire \rout_reg[3]_i_680_n_0 ;
  wire \rout_reg[3]_i_681_n_0 ;
  wire \rout_reg[3]_i_682_n_0 ;
  wire \rout_reg[3]_i_683_n_0 ;
  wire \rout_reg[3]_i_684_n_0 ;
  wire \rout_reg[3]_i_685_n_0 ;
  wire \rout_reg[3]_i_686_n_0 ;
  wire \rout_reg[3]_i_687_n_0 ;
  wire \rout_reg[3]_i_688_n_0 ;
  wire \rout_reg[3]_i_689_n_0 ;
  wire \rout_reg[3]_i_68_n_0 ;
  wire \rout_reg[3]_i_690_n_0 ;
  wire \rout_reg[3]_i_691_n_0 ;
  wire \rout_reg[3]_i_692_n_0 ;
  wire \rout_reg[3]_i_693_n_0 ;
  wire \rout_reg[3]_i_694_n_0 ;
  wire \rout_reg[3]_i_695_n_0 ;
  wire \rout_reg[3]_i_696_n_0 ;
  wire \rout_reg[3]_i_697_n_0 ;
  wire \rout_reg[3]_i_698_n_0 ;
  wire \rout_reg[3]_i_699_n_0 ;
  wire \rout_reg[3]_i_69_0 ;
  wire \rout_reg[3]_i_69_n_0 ;
  wire \rout_reg[3]_i_6_n_0 ;
  wire \rout_reg[3]_i_700_n_0 ;
  wire \rout_reg[3]_i_701_n_0 ;
  wire \rout_reg[3]_i_702_n_0 ;
  wire \rout_reg[3]_i_703_n_0 ;
  wire \rout_reg[3]_i_704_n_0 ;
  wire \rout_reg[3]_i_705_n_0 ;
  wire \rout_reg[3]_i_706_n_0 ;
  wire \rout_reg[3]_i_707_n_0 ;
  wire \rout_reg[3]_i_708_n_0 ;
  wire \rout_reg[3]_i_709_n_0 ;
  wire \rout_reg[3]_i_70_n_0 ;
  wire \rout_reg[3]_i_710_n_0 ;
  wire \rout_reg[3]_i_711_n_0 ;
  wire \rout_reg[3]_i_713_n_0 ;
  wire \rout_reg[3]_i_714_n_0 ;
  wire \rout_reg[3]_i_715_n_0 ;
  wire \rout_reg[3]_i_716_n_0 ;
  wire \rout_reg[3]_i_717_n_0 ;
  wire \rout_reg[3]_i_718_n_0 ;
  wire \rout_reg[3]_i_719_n_0 ;
  wire \rout_reg[3]_i_71_n_0 ;
  wire \rout_reg[3]_i_720_n_0 ;
  wire \rout_reg[3]_i_721_n_0 ;
  wire \rout_reg[3]_i_722_n_0 ;
  wire \rout_reg[3]_i_723_n_0 ;
  wire \rout_reg[3]_i_724_n_0 ;
  wire \rout_reg[3]_i_724_n_4 ;
  wire \rout_reg[3]_i_724_n_5 ;
  wire \rout_reg[3]_i_724_n_6 ;
  wire \rout_reg[3]_i_724_n_7 ;
  wire \rout_reg[3]_i_725_n_0 ;
  wire \rout_reg[3]_i_725_n_4 ;
  wire \rout_reg[3]_i_725_n_5 ;
  wire \rout_reg[3]_i_725_n_6 ;
  wire \rout_reg[3]_i_725_n_7 ;
  wire \rout_reg[3]_i_726_n_0 ;
  wire \rout_reg[3]_i_727_n_0 ;
  wire \rout_reg[3]_i_728_n_0 ;
  wire \rout_reg[3]_i_729_n_0 ;
  wire \rout_reg[3]_i_72_n_0 ;
  wire \rout_reg[3]_i_730_n_0 ;
  wire \rout_reg[3]_i_731_n_0 ;
  wire \rout_reg[3]_i_732_n_0 ;
  wire \rout_reg[3]_i_733_n_0 ;
  wire \rout_reg[3]_i_734_n_0 ;
  wire \rout_reg[3]_i_735_n_0 ;
  wire \rout_reg[3]_i_736_n_0 ;
  wire \rout_reg[3]_i_737_n_0 ;
  wire \rout_reg[3]_i_738_n_0 ;
  wire \rout_reg[3]_i_738_n_4 ;
  wire \rout_reg[3]_i_738_n_5 ;
  wire \rout_reg[3]_i_738_n_6 ;
  wire \rout_reg[3]_i_738_n_7 ;
  wire \rout_reg[3]_i_739_n_0 ;
  wire \rout_reg[3]_i_739_n_4 ;
  wire \rout_reg[3]_i_739_n_5 ;
  wire \rout_reg[3]_i_739_n_6 ;
  wire \rout_reg[3]_i_739_n_7 ;
  wire \rout_reg[3]_i_73_n_0 ;
  wire \rout_reg[3]_i_740_n_0 ;
  wire \rout_reg[3]_i_741_n_0 ;
  wire \rout_reg[3]_i_742_n_0 ;
  wire \rout_reg[3]_i_743_n_0 ;
  wire \rout_reg[3]_i_744_n_0 ;
  wire \rout_reg[3]_i_745_n_0 ;
  wire \rout_reg[3]_i_746_n_0 ;
  wire \rout_reg[3]_i_747_n_0 ;
  wire \rout_reg[3]_i_748_n_0 ;
  wire \rout_reg[3]_i_748_n_4 ;
  wire \rout_reg[3]_i_748_n_5 ;
  wire \rout_reg[3]_i_748_n_6 ;
  wire \rout_reg[3]_i_748_n_7 ;
  wire \rout_reg[3]_i_749_n_0 ;
  wire \rout_reg[3]_i_74_n_0 ;
  wire \rout_reg[3]_i_750_n_0 ;
  wire \rout_reg[3]_i_751_n_0 ;
  wire \rout_reg[3]_i_752_n_0 ;
  wire \rout_reg[3]_i_753_n_0 ;
  wire \rout_reg[3]_i_754_n_0 ;
  wire \rout_reg[3]_i_755_n_0 ;
  wire \rout_reg[3]_i_756_n_0 ;
  wire \rout_reg[3]_i_757_n_0 ;
  wire \rout_reg[3]_i_758_n_0 ;
  wire \rout_reg[3]_i_759_n_0 ;
  wire \rout_reg[3]_i_75_n_0 ;
  wire \rout_reg[3]_i_760_n_0 ;
  wire \rout_reg[3]_i_761_n_0 ;
  wire \rout_reg[3]_i_762_n_0 ;
  wire \rout_reg[3]_i_763_n_0 ;
  wire \rout_reg[3]_i_764_n_0 ;
  wire \rout_reg[3]_i_765_n_0 ;
  wire \rout_reg[3]_i_766_n_0 ;
  wire \rout_reg[3]_i_767_n_0 ;
  wire \rout_reg[3]_i_768_n_0 ;
  wire \rout_reg[3]_i_769_n_0 ;
  wire \rout_reg[3]_i_76_n_0 ;
  wire \rout_reg[3]_i_770_n_0 ;
  wire \rout_reg[3]_i_771_n_0 ;
  wire \rout_reg[3]_i_771_n_4 ;
  wire \rout_reg[3]_i_771_n_5 ;
  wire \rout_reg[3]_i_771_n_6 ;
  wire \rout_reg[3]_i_771_n_7 ;
  wire \rout_reg[3]_i_772_n_0 ;
  wire \rout_reg[3]_i_772_n_4 ;
  wire \rout_reg[3]_i_772_n_5 ;
  wire \rout_reg[3]_i_772_n_6 ;
  wire \rout_reg[3]_i_772_n_7 ;
  wire \rout_reg[3]_i_773_n_0 ;
  wire \rout_reg[3]_i_773_n_4 ;
  wire \rout_reg[3]_i_773_n_5 ;
  wire \rout_reg[3]_i_773_n_6 ;
  wire \rout_reg[3]_i_774_n_0 ;
  wire \rout_reg[3]_i_775_n_0 ;
  wire \rout_reg[3]_i_776_n_0 ;
  wire \rout_reg[3]_i_776_n_4 ;
  wire \rout_reg[3]_i_776_n_5 ;
  wire \rout_reg[3]_i_776_n_6 ;
  wire \rout_reg[3]_i_776_n_7 ;
  wire \rout_reg[3]_i_777_n_0 ;
  wire \rout_reg[3]_i_778_n_0 ;
  wire \rout_reg[3]_i_779_n_0 ;
  wire \rout_reg[3]_i_77_0 ;
  wire \rout_reg[3]_i_77_n_0 ;
  wire \rout_reg[3]_i_780_n_0 ;
  wire \rout_reg[3]_i_781_n_0 ;
  wire \rout_reg[3]_i_782_n_0 ;
  wire \rout_reg[3]_i_783_n_0 ;
  wire \rout_reg[3]_i_784_n_0 ;
  wire \rout_reg[3]_i_785_n_0 ;
  wire \rout_reg[3]_i_786_n_0 ;
  wire \rout_reg[3]_i_787_n_0 ;
  wire \rout_reg[3]_i_788_n_0 ;
  wire \rout_reg[3]_i_789_n_0 ;
  wire \rout_reg[3]_i_78_0 ;
  wire \rout_reg[3]_i_78_1 ;
  wire \rout_reg[3]_i_78_n_0 ;
  wire \rout_reg[3]_i_790_n_0 ;
  wire \rout_reg[3]_i_791_n_0 ;
  wire \rout_reg[3]_i_792_n_0 ;
  wire \rout_reg[3]_i_793_n_0 ;
  wire \rout_reg[3]_i_794_n_0 ;
  wire \rout_reg[3]_i_795_n_0 ;
  wire \rout_reg[3]_i_796_n_0 ;
  wire \rout_reg[3]_i_797_n_0 ;
  wire \rout_reg[3]_i_797_n_4 ;
  wire \rout_reg[3]_i_797_n_5 ;
  wire \rout_reg[3]_i_797_n_6 ;
  wire \rout_reg[3]_i_797_n_7 ;
  wire \rout_reg[3]_i_798_n_0 ;
  wire \rout_reg[3]_i_798_n_4 ;
  wire \rout_reg[3]_i_798_n_5 ;
  wire \rout_reg[3]_i_798_n_6 ;
  wire \rout_reg[3]_i_798_n_7 ;
  wire \rout_reg[3]_i_799_n_0 ;
  wire \rout_reg[3]_i_79_0 ;
  wire \rout_reg[3]_i_79_n_0 ;
  wire \rout_reg[3]_i_7_n_0 ;
  wire \rout_reg[3]_i_800_n_0 ;
  wire \rout_reg[3]_i_801_n_0 ;
  wire \rout_reg[3]_i_801_n_4 ;
  wire \rout_reg[3]_i_801_n_5 ;
  wire \rout_reg[3]_i_801_n_6 ;
  wire \rout_reg[3]_i_801_n_7 ;
  wire \rout_reg[3]_i_802_n_0 ;
  wire \rout_reg[3]_i_802_n_4 ;
  wire \rout_reg[3]_i_802_n_5 ;
  wire \rout_reg[3]_i_802_n_6 ;
  wire \rout_reg[3]_i_802_n_7 ;
  wire \rout_reg[3]_i_803_n_0 ;
  wire \rout_reg[3]_i_804_n_0 ;
  wire \rout_reg[3]_i_805_n_0 ;
  wire \rout_reg[3]_i_805_n_4 ;
  wire \rout_reg[3]_i_805_n_5 ;
  wire \rout_reg[3]_i_805_n_6 ;
  wire \rout_reg[3]_i_805_n_7 ;
  wire \rout_reg[3]_i_806_n_0 ;
  wire \rout_reg[3]_i_807_n_0 ;
  wire \rout_reg[3]_i_808_n_0 ;
  wire \rout_reg[3]_i_809_n_0 ;
  wire \rout_reg[3]_i_80_n_0 ;
  wire \rout_reg[3]_i_810_n_1 ;
  wire \rout_reg[3]_i_810_n_6 ;
  wire \rout_reg[3]_i_810_n_7 ;
  wire \rout_reg[3]_i_811_n_0 ;
  wire \rout_reg[3]_i_811_n_4 ;
  wire \rout_reg[3]_i_811_n_5 ;
  wire \rout_reg[3]_i_811_n_6 ;
  wire \rout_reg[3]_i_811_n_7 ;
  wire \rout_reg[3]_i_812_n_0 ;
  wire \rout_reg[3]_i_813_n_0 ;
  wire \rout_reg[3]_i_814_n_0 ;
  wire \rout_reg[3]_i_815_n_0 ;
  wire \rout_reg[3]_i_816_n_0 ;
  wire \rout_reg[3]_i_817_n_0 ;
  wire \rout_reg[3]_i_818_n_0 ;
  wire \rout_reg[3]_i_819_n_0 ;
  wire \rout_reg[3]_i_81_n_0 ;
  wire \rout_reg[3]_i_820_n_0 ;
  wire \rout_reg[3]_i_821_n_0 ;
  wire \rout_reg[3]_i_821_n_4 ;
  wire \rout_reg[3]_i_821_n_5 ;
  wire \rout_reg[3]_i_821_n_6 ;
  wire \rout_reg[3]_i_821_n_7 ;
  wire \rout_reg[3]_i_822_n_0 ;
  wire \rout_reg[3]_i_822_n_4 ;
  wire \rout_reg[3]_i_822_n_5 ;
  wire \rout_reg[3]_i_822_n_6 ;
  wire \rout_reg[3]_i_822_n_7 ;
  wire \rout_reg[3]_i_823_n_0 ;
  wire \rout_reg[3]_i_824_n_0 ;
  wire \rout_reg[3]_i_825_n_0 ;
  wire \rout_reg[3]_i_826_n_0 ;
  wire \rout_reg[3]_i_827_n_0 ;
  wire \rout_reg[3]_i_828_n_0 ;
  wire \rout_reg[3]_i_829_n_0 ;
  wire \rout_reg[3]_i_82_n_0 ;
  wire \rout_reg[3]_i_830_n_0 ;
  wire \rout_reg[3]_i_831_n_0 ;
  wire \rout_reg[3]_i_832_n_0 ;
  wire \rout_reg[3]_i_833_n_0 ;
  wire \rout_reg[3]_i_834_n_0 ;
  wire \rout_reg[3]_i_835_n_0 ;
  wire \rout_reg[3]_i_835_n_4 ;
  wire \rout_reg[3]_i_835_n_5 ;
  wire \rout_reg[3]_i_835_n_6 ;
  wire \rout_reg[3]_i_835_n_7 ;
  wire \rout_reg[3]_i_836_n_0 ;
  wire \rout_reg[3]_i_836_n_4 ;
  wire \rout_reg[3]_i_836_n_5 ;
  wire \rout_reg[3]_i_836_n_6 ;
  wire \rout_reg[3]_i_836_n_7 ;
  wire \rout_reg[3]_i_837_n_0 ;
  wire \rout_reg[3]_i_838_n_0 ;
  wire \rout_reg[3]_i_839_n_0 ;
  wire \rout_reg[3]_i_83_n_0 ;
  wire \rout_reg[3]_i_840_n_0 ;
  wire \rout_reg[3]_i_841_n_0 ;
  wire \rout_reg[3]_i_842_n_0 ;
  wire \rout_reg[3]_i_843_n_0 ;
  wire \rout_reg[3]_i_844_n_0 ;
  wire \rout_reg[3]_i_845_n_0 ;
  wire \rout_reg[3]_i_846_n_0 ;
  wire \rout_reg[3]_i_847_n_0 ;
  wire \rout_reg[3]_i_848_n_0 ;
  wire \rout_reg[3]_i_849_n_0 ;
  wire \rout_reg[3]_i_84_n_0 ;
  wire \rout_reg[3]_i_850_n_0 ;
  wire \rout_reg[3]_i_851_n_0 ;
  wire \rout_reg[3]_i_852_n_0 ;
  wire \rout_reg[3]_i_853_n_0 ;
  wire \rout_reg[3]_i_853_n_4 ;
  wire \rout_reg[3]_i_853_n_5 ;
  wire \rout_reg[3]_i_853_n_6 ;
  wire \rout_reg[3]_i_853_n_7 ;
  wire \rout_reg[3]_i_854_n_0 ;
  wire \rout_reg[3]_i_855_n_0 ;
  wire \rout_reg[3]_i_856_n_0 ;
  wire \rout_reg[3]_i_857_n_0 ;
  wire \rout_reg[3]_i_858_n_0 ;
  wire \rout_reg[3]_i_859_n_0 ;
  wire \rout_reg[3]_i_85_n_0 ;
  wire \rout_reg[3]_i_860_n_0 ;
  wire \rout_reg[3]_i_861_n_0 ;
  wire \rout_reg[3]_i_862_n_3 ;
  wire \rout_reg[3]_i_863_n_0 ;
  wire \rout_reg[3]_i_864_n_0 ;
  wire \rout_reg[3]_i_865_n_0 ;
  wire \rout_reg[3]_i_866_n_0 ;
  wire \rout_reg[3]_i_867_n_0 ;
  wire \rout_reg[3]_i_868_n_0 ;
  wire \rout_reg[3]_i_869_n_0 ;
  wire \rout_reg[3]_i_86_n_0 ;
  wire \rout_reg[3]_i_870_n_0 ;
  wire \rout_reg[3]_i_871_n_0 ;
  wire \rout_reg[3]_i_871_n_4 ;
  wire \rout_reg[3]_i_871_n_5 ;
  wire \rout_reg[3]_i_871_n_6 ;
  wire \rout_reg[3]_i_871_n_7 ;
  wire \rout_reg[3]_i_872_n_0 ;
  wire \rout_reg[3]_i_872_n_4 ;
  wire \rout_reg[3]_i_872_n_5 ;
  wire \rout_reg[3]_i_872_n_6 ;
  wire \rout_reg[3]_i_873_n_0 ;
  wire \rout_reg[3]_i_873_n_4 ;
  wire \rout_reg[3]_i_873_n_5 ;
  wire \rout_reg[3]_i_873_n_6 ;
  wire \rout_reg[3]_i_873_n_7 ;
  wire \rout_reg[3]_i_874_n_0 ;
  wire \rout_reg[3]_i_875_n_0 ;
  wire \rout_reg[3]_i_876_n_0 ;
  wire \rout_reg[3]_i_877_n_0 ;
  wire \rout_reg[3]_i_878_n_0 ;
  wire \rout_reg[3]_i_879_n_0 ;
  wire \rout_reg[3]_i_87_n_0 ;
  wire \rout_reg[3]_i_880_n_0 ;
  wire \rout_reg[3]_i_881_n_0 ;
  wire \rout_reg[3]_i_882_n_0 ;
  wire \rout_reg[3]_i_883_n_0 ;
  wire \rout_reg[3]_i_884_n_0 ;
  wire \rout_reg[3]_i_885_n_0 ;
  wire \rout_reg[3]_i_886_n_0 ;
  wire \rout_reg[3]_i_887_n_0 ;
  wire \rout_reg[3]_i_888_n_0 ;
  wire \rout_reg[3]_i_889_n_0 ;
  wire \rout_reg[3]_i_88_n_0 ;
  wire \rout_reg[3]_i_890_n_0 ;
  wire \rout_reg[3]_i_891_n_0 ;
  wire \rout_reg[3]_i_892_n_0 ;
  wire \rout_reg[3]_i_893_n_0 ;
  wire \rout_reg[3]_i_894_n_0 ;
  wire \rout_reg[3]_i_895_n_0 ;
  wire \rout_reg[3]_i_896_n_0 ;
  wire \rout_reg[3]_i_897_n_0 ;
  wire \rout_reg[3]_i_898_n_0 ;
  wire \rout_reg[3]_i_899_n_0 ;
  wire \rout_reg[3]_i_8_n_5 ;
  wire \rout_reg[3]_i_8_n_6 ;
  wire \rout_reg[3]_i_8_n_7 ;
  wire \rout_reg[3]_i_900_n_0 ;
  wire \rout_reg[3]_i_901_n_0 ;
  wire \rout_reg[3]_i_902_n_0 ;
  wire \rout_reg[3]_i_903_n_0 ;
  wire \rout_reg[3]_i_904_n_0 ;
  wire \rout_reg[3]_i_905_n_0 ;
  wire \rout_reg[3]_i_906_n_0 ;
  wire \rout_reg[3]_i_907_n_0 ;
  wire \rout_reg[3]_i_908_n_0 ;
  wire \rout_reg[3]_i_909_n_0 ;
  wire \rout_reg[3]_i_90_n_0 ;
  wire \rout_reg[3]_i_910_n_0 ;
  wire \rout_reg[3]_i_911_n_0 ;
  wire \rout_reg[3]_i_918_n_0 ;
  wire \rout_reg[3]_i_919_n_0 ;
  wire \rout_reg[3]_i_91_0 ;
  wire \rout_reg[3]_i_91_n_0 ;
  wire \rout_reg[3]_i_920_n_0 ;
  wire \rout_reg[3]_i_921_n_0 ;
  wire \rout_reg[3]_i_922_n_0 ;
  wire \rout_reg[3]_i_923_n_0 ;
  wire \rout_reg[3]_i_924_n_0 ;
  wire \rout_reg[3]_i_925_n_0 ;
  wire \rout_reg[3]_i_926_n_0 ;
  wire \rout_reg[3]_i_927_n_0 ;
  wire \rout_reg[3]_i_928_n_0 ;
  wire \rout_reg[3]_i_929_n_0 ;
  wire \rout_reg[3]_i_92_n_0 ;
  wire \rout_reg[3]_i_930_n_0 ;
  wire \rout_reg[3]_i_931_n_0 ;
  wire \rout_reg[3]_i_932_n_0 ;
  wire \rout_reg[3]_i_933_n_0 ;
  wire \rout_reg[3]_i_939_n_0 ;
  wire \rout_reg[3]_i_939_n_4 ;
  wire \rout_reg[3]_i_939_n_5 ;
  wire \rout_reg[3]_i_939_n_6 ;
  wire \rout_reg[3]_i_939_n_7 ;
  wire \rout_reg[3]_i_93_n_0 ;
  wire \rout_reg[3]_i_940_n_0 ;
  wire \rout_reg[3]_i_941_n_0 ;
  wire \rout_reg[3]_i_942_n_0 ;
  wire \rout_reg[3]_i_943_n_0 ;
  wire \rout_reg[3]_i_944_n_0 ;
  wire \rout_reg[3]_i_945_n_0 ;
  wire \rout_reg[3]_i_946_n_0 ;
  wire \rout_reg[3]_i_947_n_0 ;
  wire \rout_reg[3]_i_948_n_0 ;
  wire \rout_reg[3]_i_949_n_0 ;
  wire \rout_reg[3]_i_94_n_0 ;
  wire \rout_reg[3]_i_950_n_0 ;
  wire \rout_reg[3]_i_951_n_0 ;
  wire \rout_reg[3]_i_952_n_0 ;
  wire \rout_reg[3]_i_953_n_0 ;
  wire \rout_reg[3]_i_954_n_0 ;
  wire \rout_reg[3]_i_955_n_0 ;
  wire \rout_reg[3]_i_956_n_0 ;
  wire \rout_reg[3]_i_957_n_0 ;
  wire \rout_reg[3]_i_958_n_0 ;
  wire \rout_reg[3]_i_959_n_0 ;
  wire \rout_reg[3]_i_95_n_0 ;
  wire \rout_reg[3]_i_960_n_0 ;
  wire \rout_reg[3]_i_961_n_0 ;
  wire \rout_reg[3]_i_961_n_4 ;
  wire \rout_reg[3]_i_961_n_5 ;
  wire \rout_reg[3]_i_961_n_6 ;
  wire \rout_reg[3]_i_961_n_7 ;
  wire \rout_reg[3]_i_962_n_0 ;
  wire \rout_reg[3]_i_963_n_0 ;
  wire \rout_reg[3]_i_964_n_0 ;
  wire \rout_reg[3]_i_965_n_0 ;
  wire \rout_reg[3]_i_966_n_0 ;
  wire \rout_reg[3]_i_967_n_0 ;
  wire \rout_reg[3]_i_968_n_0 ;
  wire \rout_reg[3]_i_969_n_0 ;
  wire \rout_reg[3]_i_96_n_0 ;
  wire \rout_reg[3]_i_970_n_0 ;
  wire \rout_reg[3]_i_971_n_0 ;
  wire \rout_reg[3]_i_972_n_0 ;
  wire \rout_reg[3]_i_973_n_0 ;
  wire \rout_reg[3]_i_974_n_0 ;
  wire \rout_reg[3]_i_974_n_4 ;
  wire \rout_reg[3]_i_974_n_5 ;
  wire \rout_reg[3]_i_974_n_6 ;
  wire \rout_reg[3]_i_974_n_7 ;
  wire \rout_reg[3]_i_975_n_0 ;
  wire \rout_reg[3]_i_975_n_4 ;
  wire \rout_reg[3]_i_975_n_5 ;
  wire \rout_reg[3]_i_975_n_6 ;
  wire \rout_reg[3]_i_975_n_7 ;
  wire \rout_reg[3]_i_976_n_0 ;
  wire \rout_reg[3]_i_977_n_0 ;
  wire \rout_reg[3]_i_978_n_0 ;
  wire \rout_reg[3]_i_979_n_0 ;
  wire \rout_reg[3]_i_97_n_0 ;
  wire \rout_reg[3]_i_980_n_0 ;
  wire \rout_reg[3]_i_981_n_0 ;
  wire \rout_reg[3]_i_982_n_0 ;
  wire \rout_reg[3]_i_983_n_0 ;
  wire \rout_reg[3]_i_984_n_0 ;
  wire \rout_reg[3]_i_985_n_0 ;
  wire \rout_reg[3]_i_986_n_0 ;
  wire \rout_reg[3]_i_987_n_0 ;
  wire \rout_reg[3]_i_988_n_0 ;
  wire \rout_reg[3]_i_989_n_0 ;
  wire \rout_reg[3]_i_98_n_0 ;
  wire \rout_reg[3]_i_990_n_0 ;
  wire \rout_reg[3]_i_991_n_0 ;
  wire \rout_reg[3]_i_992_n_0 ;
  wire \rout_reg[3]_i_992_n_4 ;
  wire \rout_reg[3]_i_992_n_5 ;
  wire \rout_reg[3]_i_992_n_6 ;
  wire \rout_reg[3]_i_992_n_7 ;
  wire \rout_reg[3]_i_993_n_0 ;
  wire \rout_reg[3]_i_993_n_7 ;
  wire \rout_reg[3]_i_994_n_0 ;
  wire \rout_reg[3]_i_994_n_4 ;
  wire \rout_reg[3]_i_994_n_5 ;
  wire \rout_reg[3]_i_994_n_6 ;
  wire \rout_reg[3]_i_995_n_0 ;
  wire \rout_reg[3]_i_995_n_4 ;
  wire \rout_reg[3]_i_995_n_5 ;
  wire \rout_reg[3]_i_995_n_6 ;
  wire \rout_reg[3]_i_995_n_7 ;
  wire \rout_reg[3]_i_996_n_0 ;
  wire \rout_reg[3]_i_997_n_0 ;
  wire \rout_reg[3]_i_998_n_0 ;
  wire \rout_reg[3]_i_999_n_0 ;
  wire \rout_reg[3]_i_99_0 ;
  wire \rout_reg[3]_i_99_n_0 ;
  wire \rout_reg[3]_i_9_n_0 ;
  wire [10:0]row_i;
  wire \row_reg[2]_0 ;
  wire \row_reg[2]_1 ;
  wire [0:0]\start[0][0] ;
  wire [0:0]\start[1][0] ;
  wire \v_count[2]_i_1_n_0 ;
  wire \v_count[4]_i_1_n_0 ;
  wire \v_count[9]_i_2_n_0 ;
  wire \v_count_reg_n_0_[0] ;
  wire \v_count_reg_n_0_[10] ;
  wire \v_count_reg_n_0_[1] ;
  wire \v_count_reg_n_0_[2] ;
  wire \v_count_reg_n_0_[3] ;
  wire \v_count_reg_n_0_[4] ;
  wire \v_count_reg_n_0_[5] ;
  wire \v_count_reg_n_0_[6] ;
  wire \v_count_reg_n_0_[7] ;
  wire \v_count_reg_n_0_[8] ;
  wire \v_count_reg_n_0_[9] ;
  wire v_sync0;
  wire [2:0]\NLW_rout_reg[3]_i_1011_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_1051_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_1051_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_1052_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_1062_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_1067_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_1076_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_129_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_129_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_13_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_132_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_132_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_135_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_136_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_137_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_137_O_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_138_CO_UNCONNECTED ;
  wire [3:2]\NLW_rout_reg[3]_i_138_O_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_139_CO_UNCONNECTED ;
  wire [3:2]\NLW_rout_reg[3]_i_139_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_140_CO_UNCONNECTED ;
  wire [1:0]\NLW_rout_reg[3]_i_140_O_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_142_CO_UNCONNECTED ;
  wire [3:3]\NLW_rout_reg[3]_i_142_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_143_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_20_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_20_O_UNCONNECTED ;
  wire [3:1]\NLW_rout_reg[3]_i_21_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_21_O_UNCONNECTED ;
  wire [3:1]\NLW_rout_reg[3]_i_22_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_22_O_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_23_CO_UNCONNECTED ;
  wire [3:2]\NLW_rout_reg[3]_i_23_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_291_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_291_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_301_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_301_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_306_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_307_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_308_CO_UNCONNECTED ;
  wire [3:3]\NLW_rout_reg[3]_i_308_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_309_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_309_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_492_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_492_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_501_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_502_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_503_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_513_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_513_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_522_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_523_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_524_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_525_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_526_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_527_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_528_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_529_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_530_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_55_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_58_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_58_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_596_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_596_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_60_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_605_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_606_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_607_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_61_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_61_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_620_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_621_CO_UNCONNECTED ;
  wire [3:2]\NLW_rout_reg[3]_i_621_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_622_CO_UNCONNECTED ;
  wire [3:1]\NLW_rout_reg[3]_i_623_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_623_O_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_624_CO_UNCONNECTED ;
  wire [3:1]\NLW_rout_reg[3]_i_624_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_625_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_625_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_63_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_634_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_635_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_636_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_714_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_714_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_723_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_724_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_725_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_738_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_739_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_748_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_762_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_762_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_771_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_772_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_773_CO_UNCONNECTED ;
  wire [0:0]\NLW_rout_reg[3]_i_773_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_776_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_797_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_798_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_799_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_8_CO_UNCONNECTED ;
  wire [3:3]\NLW_rout_reg[3]_i_8_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_800_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_801_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_802_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_804_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_805_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_810_CO_UNCONNECTED ;
  wire [3:2]\NLW_rout_reg[3]_i_810_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_811_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_812_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_812_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_821_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_822_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_835_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_836_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_853_CO_UNCONNECTED ;
  wire [3:1]\NLW_rout_reg[3]_i_862_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_862_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_871_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_872_CO_UNCONNECTED ;
  wire [0:0]\NLW_rout_reg[3]_i_872_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_873_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_939_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_952_CO_UNCONNECTED ;
  wire [3:0]\NLW_rout_reg[3]_i_952_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_961_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_974_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_975_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_992_CO_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_993_CO_UNCONNECTED ;
  wire [3:1]\NLW_rout_reg[3]_i_993_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_994_CO_UNCONNECTED ;
  wire [0:0]\NLW_rout_reg[3]_i_994_O_UNCONNECTED ;
  wire [2:0]\NLW_rout_reg[3]_i_995_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \col_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(h_count[0]),
        .Q(col_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(h_count[10]),
        .Q(col_i[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(h_count[1]),
        .Q(col_i[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(h_count[2]),
        .Q(col_i[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(h_count[3]),
        .Q(col_i[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(h_count[4]),
        .Q(col_i[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(h_count[5]),
        .Q(col_i[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(h_count[6]),
        .Q(col_i[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(h_count[7]),
        .Q(col_i[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(h_count[8]),
        .Q(col_i[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(h_count[9]),
        .Q(col_i[9]),
        .R(1'b0));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    en_reg_inv
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/en_inv_i_1_n_0 ),
        .Q(SyncEnable),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(h_count[0]),
        .Q(\h_count_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/h_count[10]_i_2_n_0 ),
        .Q(\h_count_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(h_count[1]),
        .Q(\h_count_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(h_count[2]),
        .Q(\h_count_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/h_count[3]_i_1_n_0 ),
        .Q(\h_count_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/h_count[4]_i_1_n_0 ),
        .Q(\h_count_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(h_count[5]),
        .Q(\h_count_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(h_count[6]),
        .Q(\h_count_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/h_count[7]_i_1_n_0 ),
        .Q(\h_count_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(h_count[8]),
        .Q(\h_count_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/h_count[9]_i_1_n_0 ),
        .Q(\h_count_reg_n_0_[9] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    h_sync_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(1'b1),
        .Q(HSync_OBUF),
        .R(h_sync0));
  LUT6 #(
    .INIT(64'hF4FF0000F4FFFF00)) 
    \i_/col[10]_i_1 
       (.I0(\h_count_reg_n_0_[3] ),
        .I1(\i_/col[10]_i_2_n_0 ),
        .I2(\i_/col[10]_i_3_n_0 ),
        .I3(\h_count_reg_n_0_[9] ),
        .I4(\h_count_reg_n_0_[10] ),
        .I5(\i_/col[10]_i_4_n_0 ),
        .O(h_count[10]));
  LUT3 #(
    .INIT(8'hFE)) 
    \i_/col[10]_i_2 
       (.I0(\h_count_reg_n_0_[6] ),
        .I1(\h_count_reg_n_0_[5] ),
        .I2(\h_count_reg_n_0_[8] ),
        .O(\i_/col[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2AAAFFFF)) 
    \i_/col[10]_i_3 
       (.I0(\h_count_reg_n_0_[3] ),
        .I1(\h_count_reg_n_0_[6] ),
        .I2(\h_count_reg_n_0_[5] ),
        .I3(\h_count_reg_n_0_[8] ),
        .I4(\h_count_reg_n_0_[7] ),
        .I5(\i_/h_count[8]_i_2_n_0 ),
        .O(\i_/col[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \i_/col[10]_i_4 
       (.I0(\i_/h_count[8]_i_2_n_0 ),
        .I1(\h_count_reg_n_0_[7] ),
        .I2(\h_count_reg_n_0_[6] ),
        .I3(\h_count_reg_n_0_[5] ),
        .I4(\h_count_reg_n_0_[3] ),
        .I5(\h_count_reg_n_0_[8] ),
        .O(\i_/col[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF0000DF)) 
    \i_/col[3]_i_1 
       (.I0(\h_count_reg_n_0_[7] ),
        .I1(\i_/col[7]_i_2_n_0 ),
        .I2(\h_count_reg_n_0_[4] ),
        .I3(\i_/h_count[7]_i_2_n_0 ),
        .I4(\h_count_reg_n_0_[3] ),
        .O(h_count[3]));
  LUT5 #(
    .INIT(32'hFF0051AA)) 
    \i_/col[4]_i_1 
       (.I0(\h_count_reg_n_0_[3] ),
        .I1(\h_count_reg_n_0_[7] ),
        .I2(\i_/col[7]_i_2_n_0 ),
        .I3(\h_count_reg_n_0_[4] ),
        .I4(\i_/h_count[7]_i_2_n_0 ),
        .O(h_count[4]));
  LUT6 #(
    .INIT(64'hAFFFEEEE50000000)) 
    \i_/col[7]_i_1 
       (.I0(\i_/h_count[8]_i_2_n_0 ),
        .I1(\i_/col[7]_i_2_n_0 ),
        .I2(\h_count_reg_n_0_[5] ),
        .I3(\h_count_reg_n_0_[6] ),
        .I4(\h_count_reg_n_0_[3] ),
        .I5(\h_count_reg_n_0_[7] ),
        .O(h_count[7]));
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    \i_/col[7]_i_2 
       (.I0(\h_count_reg_n_0_[10] ),
        .I1(\h_count_reg_n_0_[6] ),
        .I2(\h_count_reg_n_0_[5] ),
        .I3(\h_count_reg_n_0_[8] ),
        .I4(\h_count_reg_n_0_[9] ),
        .O(\i_/col[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC3C8C8CCCCC8C8)) 
    \i_/col[9]_i_1 
       (.I0(\i_/col[9]_i_2_n_0 ),
        .I1(\h_count_reg_n_0_[9] ),
        .I2(\i_/h_count[9]_i_2_n_0 ),
        .I3(\i_/col[9]_i_3_n_0 ),
        .I4(\h_count_reg_n_0_[3] ),
        .I5(\h_count_reg_n_0_[8] ),
        .O(h_count[9]));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \i_/col[9]_i_2 
       (.I0(\h_count_reg_n_0_[8] ),
        .I1(\h_count_reg_n_0_[5] ),
        .I2(\h_count_reg_n_0_[6] ),
        .I3(\h_count_reg_n_0_[10] ),
        .O(\i_/col[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \i_/col[9]_i_3 
       (.I0(\h_count_reg_n_0_[5] ),
        .I1(\h_count_reg_n_0_[6] ),
        .O(\i_/col[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFF7)) 
    \i_/en_inv_i_1 
       (.I0(\v_count_reg_n_0_[5] ),
        .I1(\v_count_reg_n_0_[3] ),
        .I2(\i_/v_count[10]_i_5_n_0 ),
        .I3(\i_/v_count[10]_i_2_n_0 ),
        .I4(\v_count_reg_n_0_[1] ),
        .I5(\i_/en_inv_i_2_n_0 ),
        .O(\i_/en_inv_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFFAAAAABAA)) 
    \i_/en_inv_i_2 
       (.I0(\i_/en_inv_i_3_n_0 ),
        .I1(\i_/en_inv_i_4_n_0 ),
        .I2(\i_/col[10]_i_2_n_0 ),
        .I3(\i_/en_inv_i_5_n_0 ),
        .I4(\v_count_reg_n_0_[10] ),
        .I5(\i_/en_inv_i_6_n_0 ),
        .O(\i_/en_inv_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h11111111000000F0)) 
    \i_/en_inv_i_3 
       (.I0(\v_count[9]_i_2_n_0 ),
        .I1(\i_/v_count[10]_i_3_n_0 ),
        .I2(\i_/h_count[10]_i_3_n_0 ),
        .I3(\h_count_reg_n_0_[9] ),
        .I4(\h_count_reg_n_0_[8] ),
        .I5(\v_count_reg_n_0_[10] ),
        .O(\i_/en_inv_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \i_/en_inv_i_4 
       (.I0(\h_count_reg_n_0_[7] ),
        .I1(\h_count_reg_n_0_[2] ),
        .I2(\h_count_reg_n_0_[0] ),
        .I3(\h_count_reg_n_0_[1] ),
        .I4(\h_count_reg_n_0_[4] ),
        .I5(\h_count_reg_n_0_[3] ),
        .O(\i_/en_inv_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \i_/en_inv_i_5 
       (.I0(\v_count_reg_n_0_[3] ),
        .I1(\v_count_reg_n_0_[5] ),
        .I2(\v_count_reg_n_0_[0] ),
        .I3(\v_count_reg_n_0_[1] ),
        .I4(\i_/v_count[10]_i_3_n_0 ),
        .O(\i_/en_inv_i_5_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "181" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \i_/en_inv_i_6 
       (.I0(\h_count_reg_n_0_[9] ),
        .I1(\i_/h_count[10]_i_3_n_0 ),
        .I2(\h_count_reg_n_0_[8] ),
        .I3(\h_count_reg_n_0_[10] ),
        .O(\i_/en_inv_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \i_/h_count[0]_i_1 
       (.I0(\h_count_reg_n_0_[0] ),
        .O(h_count[0]));
  (* \PinAttr:I0:HOLD_DETOUR  = "181" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \i_/h_count[10]_i_2 
       (.I0(\h_count_reg_n_0_[10] ),
        .I1(\h_count_reg_n_0_[8] ),
        .I2(\i_/h_count[10]_i_3_n_0 ),
        .I3(\h_count_reg_n_0_[9] ),
        .O(\i_/h_count[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \i_/h_count[10]_i_3 
       (.I0(\h_count_reg_n_0_[3] ),
        .I1(\h_count_reg_n_0_[5] ),
        .I2(\h_count_reg_n_0_[6] ),
        .I3(\h_count_reg_n_0_[7] ),
        .I4(\i_/h_count[7]_i_2_n_0 ),
        .I5(\h_count_reg_n_0_[4] ),
        .O(\i_/h_count[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_/h_count[1]_i_1 
       (.I0(\h_count_reg_n_0_[0] ),
        .I1(\h_count_reg_n_0_[1] ),
        .O(h_count[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \i_/h_count[2]_i_1 
       (.I0(\h_count_reg_n_0_[1] ),
        .I1(\h_count_reg_n_0_[0] ),
        .I2(\h_count_reg_n_0_[2] ),
        .O(h_count[2]));
  (* \PinAttr:I0:HOLD_DETOUR  = "198" *) 
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \i_/h_count[3]_i_1 
       (.I0(\h_count_reg_n_0_[2] ),
        .I1(\h_count_reg_n_0_[0] ),
        .I2(\h_count_reg_n_0_[1] ),
        .I3(\h_count_reg_n_0_[3] ),
        .O(\i_/h_count[3]_i_1_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "198" *) 
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \i_/h_count[4]_i_1 
       (.I0(\h_count_reg_n_0_[3] ),
        .I1(\h_count_reg_n_0_[1] ),
        .I2(\h_count_reg_n_0_[0] ),
        .I3(\h_count_reg_n_0_[2] ),
        .I4(\h_count_reg_n_0_[4] ),
        .O(\i_/h_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \i_/h_count[5]_i_1 
       (.I0(\h_count_reg_n_0_[3] ),
        .I1(\h_count_reg_n_0_[2] ),
        .I2(\h_count_reg_n_0_[0] ),
        .I3(\h_count_reg_n_0_[1] ),
        .I4(\h_count_reg_n_0_[4] ),
        .I5(\h_count_reg_n_0_[5] ),
        .O(h_count[5]));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \i_/h_count[6]_i_1 
       (.I0(\h_count_reg_n_0_[5] ),
        .I1(\h_count_reg_n_0_[4] ),
        .I2(\i_/h_count[7]_i_2_n_0 ),
        .I3(\h_count_reg_n_0_[3] ),
        .I4(\h_count_reg_n_0_[6] ),
        .O(h_count[6]));
  LUT6 #(
    .INIT(64'hD2F0F0F0F0F0F0F0)) 
    \i_/h_count[7]_i_1 
       (.I0(\h_count_reg_n_0_[4] ),
        .I1(\i_/h_count[7]_i_2_n_0 ),
        .I2(\h_count_reg_n_0_[7] ),
        .I3(\h_count_reg_n_0_[6] ),
        .I4(\h_count_reg_n_0_[5] ),
        .I5(\h_count_reg_n_0_[3] ),
        .O(\i_/h_count[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \i_/h_count[7]_i_2 
       (.I0(\h_count_reg_n_0_[1] ),
        .I1(\h_count_reg_n_0_[0] ),
        .I2(\h_count_reg_n_0_[2] ),
        .O(\i_/h_count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \i_/h_count[8]_i_1 
       (.I0(\i_/h_count[8]_i_2_n_0 ),
        .I1(\h_count_reg_n_0_[7] ),
        .I2(\h_count_reg_n_0_[6] ),
        .I3(\h_count_reg_n_0_[5] ),
        .I4(\h_count_reg_n_0_[3] ),
        .I5(\h_count_reg_n_0_[8] ),
        .O(h_count[8]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \i_/h_count[8]_i_2 
       (.I0(\h_count_reg_n_0_[2] ),
        .I1(\h_count_reg_n_0_[0] ),
        .I2(\h_count_reg_n_0_[1] ),
        .I3(\h_count_reg_n_0_[4] ),
        .O(\i_/h_count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    \i_/h_count[9]_i_1 
       (.I0(\h_count_reg_n_0_[8] ),
        .I1(\h_count_reg_n_0_[3] ),
        .I2(\h_count_reg_n_0_[5] ),
        .I3(\h_count_reg_n_0_[6] ),
        .I4(\i_/h_count[9]_i_2_n_0 ),
        .I5(\h_count_reg_n_0_[9] ),
        .O(\i_/h_count[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \i_/h_count[9]_i_2 
       (.I0(\h_count_reg_n_0_[4] ),
        .I1(\h_count_reg_n_0_[1] ),
        .I2(\h_count_reg_n_0_[0] ),
        .I3(\h_count_reg_n_0_[2] ),
        .I4(\h_count_reg_n_0_[7] ),
        .O(\i_/h_count[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \i_/h_sync_i_1 
       (.I0(\i_/h_sync_i_2_n_0 ),
        .I1(\h_count_reg_n_0_[8] ),
        .I2(\h_count_reg_n_0_[9] ),
        .I3(\h_count_reg_n_0_[10] ),
        .O(h_sync0));
  LUT6 #(
    .INIT(64'hFCFCFEFC07070307)) 
    \i_/h_sync_i_2 
       (.I0(\h_count_reg_n_0_[4] ),
        .I1(\h_count_reg_n_0_[5] ),
        .I2(\h_count_reg_n_0_[6] ),
        .I3(\h_count_reg_n_0_[3] ),
        .I4(\i_/h_count[7]_i_2_n_0 ),
        .I5(\h_count_reg_n_0_[7] ),
        .O(\i_/h_sync_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_/v_count[0]_i_1 
       (.I0(p_0_in),
        .I1(\v_count_reg_n_0_[0] ),
        .O(\i_/v_count[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \i_/v_count[0]_i_2 
       (.I0(\i_/col[7]_i_2_n_0 ),
        .I1(\h_count_reg_n_0_[3] ),
        .I2(\h_count_reg_n_0_[4] ),
        .I3(\i_/h_count[7]_i_2_n_0 ),
        .I4(\h_count_reg_n_0_[7] ),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hCCCCCCC3CCCCCC88)) 
    \i_/v_count[10]_i_1 
       (.I0(\i_/v_count[10]_i_2_n_0 ),
        .I1(\v_count_reg_n_0_[10] ),
        .I2(\i_/v_count[10]_i_3_n_0 ),
        .I3(\i_/v_count[10]_i_4_n_0 ),
        .I4(\i_/v_count[10]_i_5_n_0 ),
        .I5(\v_count_reg_n_0_[1] ),
        .O(\i_/v_count[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \i_/v_count[10]_i_2 
       (.I0(\v_count_reg_n_0_[8] ),
        .I1(\v_count_reg_n_0_[9] ),
        .I2(\v_count_reg_n_0_[6] ),
        .I3(\v_count_reg_n_0_[7] ),
        .I4(\v_count_reg_n_0_[4] ),
        .I5(\v_count_reg_n_0_[2] ),
        .O(\i_/v_count[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \i_/v_count[10]_i_3 
       (.I0(\v_count_reg_n_0_[8] ),
        .I1(\v_count_reg_n_0_[6] ),
        .I2(\v_count_reg_n_0_[2] ),
        .I3(\v_count_reg_n_0_[4] ),
        .I4(\v_count_reg_n_0_[7] ),
        .I5(\v_count_reg_n_0_[9] ),
        .O(\i_/v_count[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \i_/v_count[10]_i_4 
       (.I0(\v_count_reg_n_0_[3] ),
        .I1(\v_count_reg_n_0_[5] ),
        .O(\i_/v_count[10]_i_4_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \i_/v_count[10]_i_5 
       (.I0(p_0_in),
        .I1(\v_count_reg_n_0_[0] ),
        .O(\i_/v_count[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA55155555)) 
    \i_/v_count[1]_i_1 
       (.I0(\i_/v_count[10]_i_5_n_0 ),
        .I1(\v_count_reg_n_0_[3] ),
        .I2(\v_count_reg_n_0_[5] ),
        .I3(\i_/v_count[10]_i_2_n_0 ),
        .I4(\v_count_reg_n_0_[10] ),
        .I5(\v_count_reg_n_0_[1] ),
        .O(\i_/v_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC3C88CCCC3CCC)) 
    \i_/v_count[3]_i_1 
       (.I0(\i_/v_count[5]_i_2_n_0 ),
        .I1(\v_count_reg_n_0_[3] ),
        .I2(\v_count_reg_n_0_[2] ),
        .I3(\v_count_reg_n_0_[1] ),
        .I4(\i_/v_count[10]_i_5_n_0 ),
        .I5(\v_count_reg_n_0_[5] ),
        .O(\i_/v_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCC3CCCCCC88CC)) 
    \i_/v_count[5]_i_1 
       (.I0(\i_/v_count[5]_i_2_n_0 ),
        .I1(\v_count_reg_n_0_[5] ),
        .I2(\i_/v_count[9]_i_3_n_0 ),
        .I3(\v_count_reg_n_0_[3] ),
        .I4(\i_/v_count[10]_i_5_n_0 ),
        .I5(\v_count_reg_n_0_[1] ),
        .O(\i_/v_count[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \i_/v_count[5]_i_2 
       (.I0(\i_/v_count[10]_i_2_n_0 ),
        .I1(\v_count_reg_n_0_[10] ),
        .O(\i_/v_count[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \i_/v_count[6]_i_1 
       (.I0(\v_count_reg_n_0_[2] ),
        .I1(\v_count_reg_n_0_[4] ),
        .I2(\v_count[9]_i_2_n_0 ),
        .I3(\v_count_reg_n_0_[6] ),
        .O(\i_/v_count[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \i_/v_count[7]_i_1 
       (.I0(\v_count_reg_n_0_[4] ),
        .I1(\v_count_reg_n_0_[2] ),
        .I2(\v_count_reg_n_0_[6] ),
        .I3(\v_count[9]_i_2_n_0 ),
        .I4(\v_count_reg_n_0_[7] ),
        .O(\i_/v_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    \i_/v_count[8]_i_1 
       (.I0(\v_count_reg_n_0_[6] ),
        .I1(\v_count_reg_n_0_[2] ),
        .I2(\v_count_reg_n_0_[4] ),
        .I3(\v_count_reg_n_0_[7] ),
        .I4(\v_count[9]_i_2_n_0 ),
        .I5(\v_count_reg_n_0_[8] ),
        .O(\i_/v_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF04000000)) 
    \i_/v_count[9]_i_1 
       (.I0(\v_count[9]_i_2_n_0 ),
        .I1(\v_count_reg_n_0_[7] ),
        .I2(\i_/v_count[9]_i_3_n_0 ),
        .I3(\v_count_reg_n_0_[6] ),
        .I4(\v_count_reg_n_0_[8] ),
        .I5(\v_count_reg_n_0_[9] ),
        .O(\i_/v_count[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \i_/v_count[9]_i_3 
       (.I0(\v_count_reg_n_0_[2] ),
        .I1(\v_count_reg_n_0_[4] ),
        .O(\i_/v_count[9]_i_3_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEAAB)) 
    \i_/v_sync_i_1 
       (.I0(\i_/v_count[5]_i_2_n_0 ),
        .I1(\v_count_reg_n_0_[1] ),
        .I2(p_0_in),
        .I3(\v_count_reg_n_0_[0] ),
        .I4(\v_count_reg_n_0_[5] ),
        .I5(\v_count_reg_n_0_[3] ),
        .O(v_sync0));
  LUT6 #(
    .INIT(64'h000000002222FFF2)) 
    \rout_reg[3]_i_1 
       (.I0(LED_OBUF),
        .I1(\rout_reg[3]_i_3_n_0 ),
        .I2(\rout_reg[3]_i_4_n_0 ),
        .I3(\rout_reg[3]_i_5_n_0 ),
        .I4(\rout_reg[3]_i_6_n_0 ),
        .I5(\rout_reg[3]_i_7_n_0 ),
        .O(is_text_pixel));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_10 
       (.I0(\rout_reg[3]_i_32_n_0 ),
        .I1(\rout_reg[3]_i_13_n_4 ),
        .I2(\rout_reg[3]_i_33_n_0 ),
        .O(\rout_reg[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2200220022F022FF)) 
    \rout_reg[3]_i_100 
       (.I0(\rout_reg[3]_i_236_n_0 ),
        .I1(\rout_reg[3]_i_237_n_0 ),
        .I2(\rout_reg[3]_i_221_n_0 ),
        .I3(O),
        .I4(\rout_reg[3]_i_238_n_0 ),
        .I5(\rout_reg[3]_i_110_n_0 ),
        .O(\rout_reg[3]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hFF1D3F11DD0C1D00)) 
    \rout_reg[3]_i_1000 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [2]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/is_text_pixel5 [2]),
        .I3(col_i[0]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [5]),
        .I5(\Inst_VGA_Draw/START[0][0]4 [5]),
        .O(\rout_reg[3]_i_1000_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A3CC3A5A53CC3)) 
    \rout_reg[3]_i_1001 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [2]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [2]),
        .I2(col_i[0]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [5]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/is_text_pixel5 [5]),
        .O(\rout_reg[3]_i_1001_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \rout_reg[3]_i_1002 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [3]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .I3(col_i[0]),
        .O(\rout_reg[3]_i_1002_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666699969)) 
    \rout_reg[3]_i_1003 
       (.I0(\rout_reg[3]_i_1000_n_0 ),
        .I1(\rout_reg[3]_i_1061_n_0 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [3]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .I5(\rout_reg[3]_i_894_n_0 ),
        .O(\rout_reg[3]_i_1003_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \rout_reg[3]_i_1004 
       (.I0(\rout_reg[3]_i_806_n_0 ),
        .I1(col_i[0]),
        .I2(\rout_reg[3]_i_792_n_0 ),
        .I3(\rout_reg[3]_i_894_n_0 ),
        .I4(\rout_reg[3]_i_807_n_0 ),
        .O(\rout_reg[3]_i_1004_n_0 ));
  LUT6 #(
    .INIT(64'h202ADFD5DFD5202A)) 
    \rout_reg[3]_i_1005 
       (.I0(col_i[0]),
        .I1(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [3]),
        .I4(\rout_reg[3]_i_807_n_0 ),
        .I5(\rout_reg[3]_i_894_n_0 ),
        .O(\rout_reg[3]_i_1005_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \rout_reg[3]_i_1006 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [3]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .I3(col_i[0]),
        .O(\rout_reg[3]_i_1006_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_1007 
       (.I0(\rout_reg[3]_i_645_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [22]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [17]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [19]),
        .O(\rout_reg[3]_i_1007_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_1008 
       (.I0(\rout_reg[3]_i_646_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [21]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [16]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [18]),
        .O(\rout_reg[3]_i_1008_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_1009 
       (.I0(\rout_reg[3]_i_647_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [20]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [15]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [17]),
        .O(\rout_reg[3]_i_1009_n_0 ));
  LUT6 #(
    .INIT(64'h0007FFFF00070000)) 
    \rout_reg[3]_i_101 
       (.I0(\rout_reg[3]_i_239_n_0 ),
        .I1(\rout_reg[3]_i_240_n_0 ),
        .I2(\rout_reg[3]_i_241_n_0 ),
        .I3(\rout_reg[3]_i_242_n_0 ),
        .I4(\rout_reg[3]_i_55_n_6 ),
        .I5(\rout_reg[3]_i_243_n_0 ),
        .O(\rout_reg[3]_i_101_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_1010 
       (.I0(\rout_reg[3]_i_648_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [19]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [14]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [16]),
        .O(\rout_reg[3]_i_1010_n_0 ));
  CARRY4 \rout_reg[3]_i_1011 
       (.CI(\rout_reg[3]_i_1062_n_0 ),
        .CO({\rout_reg[3]_i_1011_n_0 ,\NLW_rout_reg[3]_i_1011_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_677_n_0 ,\rout_reg[3]_i_678_n_0 ,\rout_reg[3]_i_679_n_0 ,\rout_reg[3]_i_680_n_0 }),
        .O({\rout_reg[3]_i_1011_n_4 ,\rout_reg[3]_i_1011_n_5 ,\rout_reg[3]_i_1011_n_6 ,\rout_reg[3]_i_1011_n_7 }),
        .S({\rout_reg[3]_i_1063_n_0 ,\rout_reg[3]_i_1064_n_0 ,\rout_reg[3]_i_1065_n_0 ,\rout_reg[3]_i_1066_n_0 }));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_1012 
       (.I0(\rout_reg[3]_i_653_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [13]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [15]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [11]),
        .O(\rout_reg[3]_i_1012_n_0 ));
  LUT6 #(
    .INIT(64'hA599A566A566A599)) 
    \rout_reg[3]_i_1013 
       (.I0(\rout_reg[3]_i_654_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [10]),
        .I2(\Inst_VGA_Draw/is_text_pixel5 [10]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [14]),
        .I5(\Inst_VGA_Draw/START[0][0]4 [12]),
        .O(\rout_reg[3]_i_1013_n_0 ));
  LUT6 #(
    .INIT(64'hA599A566A566A599)) 
    \rout_reg[3]_i_1014 
       (.I0(\rout_reg[3]_i_655_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [9]),
        .I2(\Inst_VGA_Draw/is_text_pixel5 [9]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [13]),
        .I5(\Inst_VGA_Draw/START[0][0]4 [11]),
        .O(\rout_reg[3]_i_1014_n_0 ));
  LUT6 #(
    .INIT(64'h59A9A65656A6A959)) 
    \rout_reg[3]_i_1015 
       (.I0(\rout_reg[3]_i_656_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [8]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [8]),
        .I4(\rout_reg[3]_i_803_n_0 ),
        .I5(\Inst_VGA_Draw/START[0][0]4 [12]),
        .O(\rout_reg[3]_i_1015_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \rout_reg[3]_i_1016 
       (.I0(\rout_reg[3]_i_961_n_5 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [7]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .O(\rout_reg[3]_i_1016_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \rout_reg[3]_i_1017 
       (.I0(\rout_reg[3]_i_961_n_6 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [6]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .O(\rout_reg[3]_i_1017_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \rout_reg[3]_i_1018 
       (.I0(\rout_reg[3]_i_961_n_7 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [5]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [5]),
        .O(\rout_reg[3]_i_1018_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \rout_reg[3]_i_1019 
       (.I0(\rout_reg[3]_i_140_n_5 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [4]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [4]),
        .O(\rout_reg[3]_i_1019_n_0 ));
  LUT6 #(
    .INIT(64'h00AEFFFF00AE0000)) 
    \rout_reg[3]_i_102 
       (.I0(\rout_reg[3]_i_244_n_0 ),
        .I1(\rout_reg[3]_i_245_n_0 ),
        .I2(\rout_reg[3]_i_227_n_0 ),
        .I3(\rout_reg[3]_i_246_n_0 ),
        .I4(\rout_reg[3]_i_55_n_6 ),
        .I5(\rout_reg[3]_i_247_n_0 ),
        .O(\rout_reg[3]_i_102_n_0 ));
  LUT6 #(
    .INIT(64'hB8FF47004700B8FF)) 
    \rout_reg[3]_i_1020 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [7]),
        .I3(\rout_reg[3]_i_961_n_5 ),
        .I4(\rout_reg[3]_i_961_n_4 ),
        .I5(\rout_reg[3]_i_809_n_0 ),
        .O(\rout_reg[3]_i_1020_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FF47FF4700B8)) 
    \rout_reg[3]_i_1021 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [6]),
        .I3(\rout_reg[3]_i_961_n_6 ),
        .I4(\rout_reg[3]_i_961_n_5 ),
        .I5(\rout_reg[3]_i_895_n_0 ),
        .O(\rout_reg[3]_i_1021_n_0 ));
  LUT6 #(
    .INIT(64'h4B444BBBB4BBB444)) 
    \rout_reg[3]_i_1022 
       (.I0(\rout_reg[3]_i_806_n_0 ),
        .I1(\rout_reg[3]_i_961_n_7 ),
        .I2(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [6]),
        .I5(\rout_reg[3]_i_961_n_6 ),
        .O(\rout_reg[3]_i_1022_n_0 ));
  LUT6 #(
    .INIT(64'h2D222DDDD2DDD222)) 
    \rout_reg[3]_i_1023 
       (.I0(\rout_reg[3]_i_807_n_0 ),
        .I1(\rout_reg[3]_i_140_n_5 ),
        .I2(\Inst_VGA_Draw/is_text_pixel5 [5]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [5]),
        .I5(\rout_reg[3]_i_961_n_7 ),
        .O(\rout_reg[3]_i_1023_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_1024 
       (.I0(\rout_reg[3]_i_143_n_5 ),
        .I1(\rout_reg[3]_i_143_n_7 ),
        .O(\rout_reg[3]_i_1024_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_1025 
       (.I0(\rout_reg[3]_i_143_n_6 ),
        .I1(\rout_reg[3]_i_140_n_4 ),
        .O(\rout_reg[3]_i_1025_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_1026 
       (.I0(\rout_reg[3]_i_143_n_7 ),
        .I1(\rout_reg[3]_i_140_n_5 ),
        .O(\rout_reg[3]_i_1026_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'h44D4)) 
    \rout_reg[3]_i_1027 
       (.I0(\rout_reg[3]_i_810_n_1 ),
        .I1(\rout_reg[3]_i_992_n_5 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [17]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_1027_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'h44D4)) 
    \rout_reg[3]_i_1028 
       (.I0(\rout_reg[3]_i_810_n_1 ),
        .I1(\rout_reg[3]_i_992_n_6 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [16]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_1028_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h44D4)) 
    \rout_reg[3]_i_1029 
       (.I0(\rout_reg[3]_i_810_n_1 ),
        .I1(\rout_reg[3]_i_992_n_7 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [15]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_1029_n_0 ));
  LUT5 #(
    .INIT(32'hF2FFFFFF)) 
    \rout_reg[3]_i_103 
       (.I0(\rout_reg[3]_i_248_n_0 ),
        .I1(O),
        .I2(\rout_reg[3]_i_55_n_5 ),
        .I3(\rout_reg[3]_i_55_n_6 ),
        .I4(\rout_reg[3]_i_249_n_0 ),
        .O(\rout_reg[3]_i_103_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h44D4)) 
    \rout_reg[3]_i_1030 
       (.I0(\rout_reg[3]_i_810_n_1 ),
        .I1(\rout_reg[3]_i_811_n_4 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [14]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_1030_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT5 #(
    .INIT(32'h66969969)) 
    \rout_reg[3]_i_1031 
       (.I0(\rout_reg[3]_i_810_n_1 ),
        .I1(\rout_reg[3]_i_992_n_4 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [18]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_1027_n_0 ),
        .O(\rout_reg[3]_i_1031_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT5 #(
    .INIT(32'h66969969)) 
    \rout_reg[3]_i_1032 
       (.I0(\rout_reg[3]_i_810_n_1 ),
        .I1(\rout_reg[3]_i_992_n_5 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [17]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_1028_n_0 ),
        .O(\rout_reg[3]_i_1032_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT5 #(
    .INIT(32'h66969969)) 
    \rout_reg[3]_i_1033 
       (.I0(\rout_reg[3]_i_810_n_1 ),
        .I1(\rout_reg[3]_i_992_n_6 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [16]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_1029_n_0 ),
        .O(\rout_reg[3]_i_1033_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT5 #(
    .INIT(32'h66969969)) 
    \rout_reg[3]_i_1034 
       (.I0(\rout_reg[3]_i_810_n_1 ),
        .I1(\rout_reg[3]_i_992_n_7 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [15]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_1030_n_0 ),
        .O(\rout_reg[3]_i_1034_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT5 #(
    .INIT(32'h4114BEEB)) 
    \rout_reg[3]_i_1035 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [23]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [21]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [19]),
        .I4(\rout_reg[3]_i_918_n_0 ),
        .O(\rout_reg[3]_i_1035_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT5 #(
    .INIT(32'h4114BEEB)) 
    \rout_reg[3]_i_1036 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [22]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [20]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [18]),
        .I4(\rout_reg[3]_i_919_n_0 ),
        .O(\rout_reg[3]_i_1036_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT5 #(
    .INIT(32'h4114BEEB)) 
    \rout_reg[3]_i_1037 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [21]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [19]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [17]),
        .I4(\rout_reg[3]_i_920_n_0 ),
        .O(\rout_reg[3]_i_1037_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT5 #(
    .INIT(32'h4114BEEB)) 
    \rout_reg[3]_i_1038 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [20]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [18]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [16]),
        .I4(\rout_reg[3]_i_921_n_0 ),
        .O(\rout_reg[3]_i_1038_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rout_reg[3]_i_1039 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_1039_n_0 ));
  LUT6 #(
    .INIT(64'h7F207F7FFFFFFFFF)) 
    \rout_reg[3]_i_104 
       (.I0(\rout_reg[3]_i_250_n_0 ),
        .I1(\rout_reg[3]_i_248_n_0 ),
        .I2(row_i[2]),
        .I3(\rout_reg[3]_i_110_n_0 ),
        .I4(\rout_reg[3]_i_221_n_0 ),
        .I5(O),
        .O(\rout_reg[3]_i_104_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rout_reg[3]_i_1040 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_1040_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \rout_reg[3]_i_1041 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [29]),
        .O(\rout_reg[3]_i_1041_n_0 ));
  LUT3 #(
    .INIT(8'h32)) 
    \rout_reg[3]_i_1042 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [29]),
        .O(\rout_reg[3]_i_1042_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \rout_reg[3]_i_1043 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [30]),
        .O(\rout_reg[3]_i_1043_n_0 ));
  LUT3 #(
    .INIT(8'hED)) 
    \rout_reg[3]_i_1044 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .O(\rout_reg[3]_i_1044_n_0 ));
  LUT4 #(
    .INIT(16'hFEF1)) 
    \rout_reg[3]_i_1045 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [29]),
        .O(\rout_reg[3]_i_1045_n_0 ));
  LUT5 #(
    .INIT(32'hFF1EFFE1)) 
    \rout_reg[3]_i_1046 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [28]),
        .O(\rout_reg[3]_i_1046_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666699969)) 
    \rout_reg[3]_i_1047 
       (.I0(\rout_reg[3]_i_1000_n_0 ),
        .I1(\rout_reg[3]_i_1061_n_0 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [3]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .I5(\rout_reg[3]_i_894_n_0 ),
        .O(\rout_reg[3]_i_1047_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \rout_reg[3]_i_1048 
       (.I0(\rout_reg[3]_i_806_n_0 ),
        .I1(col_i[0]),
        .I2(\rout_reg[3]_i_792_n_0 ),
        .I3(\rout_reg[3]_i_894_n_0 ),
        .I4(\rout_reg[3]_i_807_n_0 ),
        .O(\rout_reg[3]_i_1048_n_0 ));
  LUT6 #(
    .INIT(64'h202ADFD5DFD5202A)) 
    \rout_reg[3]_i_1049 
       (.I0(col_i[0]),
        .I1(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [3]),
        .I4(\rout_reg[3]_i_807_n_0 ),
        .I5(\rout_reg[3]_i_894_n_0 ),
        .O(\rout_reg[3]_i_1049_n_0 ));
  LUT6 #(
    .INIT(64'h02000202FFFFFFFF)) 
    \rout_reg[3]_i_105 
       (.I0(\rout_reg[3]_i_251_n_0 ),
        .I1(\rout_reg[3]_i_252_n_0 ),
        .I2(O),
        .I3(\rout_reg[3]_i_253_n_0 ),
        .I4(\rout_reg[3]_i_238_n_0 ),
        .I5(\rout_reg[3]_i_94_n_0 ),
        .O(\rout_reg[3]_i_105_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \rout_reg[3]_i_1050 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [3]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .I3(col_i[0]),
        .O(\rout_reg[3]_i_1050_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_1051 
       (.CI(1'b0),
        .CO({\rout_reg[3]_i_1051_n_0 ,\NLW_rout_reg[3]_i_1051_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_1067_n_4 ,\rout_reg[3]_i_1067_n_5 ,\rout_reg[3]_i_1067_n_6 ,\rout_reg[3]_i_1067_n_7 }),
        .O(\NLW_rout_reg[3]_i_1051_O_UNCONNECTED [3:0]),
        .S({\rout_reg[3]_i_1068_n_0 ,\rout_reg[3]_i_1069_n_0 ,\rout_reg[3]_i_1070_n_0 ,\rout_reg[3]_i_1071_n_0 }));
  CARRY4 \rout_reg[3]_i_1052 
       (.CI(\rout_reg[3]_i_1067_n_0 ),
        .CO({\rout_reg[3]_i_1052_n_0 ,\NLW_rout_reg[3]_i_1052_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_781_n_0 ,\rout_reg[3]_i_782_n_0 ,\rout_reg[3]_i_783_n_0 ,\rout_reg[3]_i_784_n_0 }),
        .O({\rout_reg[3]_i_1052_n_4 ,\rout_reg[3]_i_1052_n_5 ,\rout_reg[3]_i_1052_n_6 ,\rout_reg[3]_i_1052_n_7 }),
        .S({\rout_reg[3]_i_1072_n_0 ,\rout_reg[3]_i_1073_n_0 ,\rout_reg[3]_i_1074_n_0 ,\rout_reg[3]_i_1075_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_1053 
       (.I0(\rout_reg[3]_i_1052_n_4 ),
        .I1(\rout_reg[3]_i_1062_n_4 ),
        .O(\rout_reg[3]_i_1053_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_1054 
       (.I0(\rout_reg[3]_i_1052_n_5 ),
        .I1(\rout_reg[3]_i_1062_n_5 ),
        .O(\rout_reg[3]_i_1054_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_1055 
       (.I0(\rout_reg[3]_i_1052_n_6 ),
        .I1(\rout_reg[3]_i_1062_n_6 ),
        .O(\rout_reg[3]_i_1055_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_1056 
       (.I0(\rout_reg[3]_i_1052_n_7 ),
        .I1(\rout_reg[3]_i_1062_n_7 ),
        .O(\rout_reg[3]_i_1056_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_1057 
       (.I0(\rout_reg[3]_i_669_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [18]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [13]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [15]),
        .O(\rout_reg[3]_i_1057_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_1058 
       (.I0(\rout_reg[3]_i_670_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [17]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [12]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [14]),
        .O(\rout_reg[3]_i_1058_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_1059 
       (.I0(\rout_reg[3]_i_671_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [16]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [11]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [13]),
        .O(\rout_reg[3]_i_1059_n_0 ));
  LUT4 #(
    .INIT(16'h80AA)) 
    \rout_reg[3]_i_106 
       (.I0(\rout_reg[3]_i_55_n_5 ),
        .I1(\rout_reg[3]_i_217_n_0 ),
        .I2(\rout_reg[3]_i_55_n_6 ),
        .I3(\rout_reg[3]_i_254_n_0 ),
        .O(\rout_reg[3]_i_106_n_0 ));
  LUT6 #(
    .INIT(64'hA9A65956A6A95659)) 
    \rout_reg[3]_i_1060 
       (.I0(\rout_reg[3]_i_672_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [15]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [10]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [10]),
        .I5(\Inst_VGA_Draw/START[0][0]4 [12]),
        .O(\rout_reg[3]_i_1060_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rout_reg[3]_i_1061 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [6]),
        .O(\rout_reg[3]_i_1061_n_0 ));
  CARRY4 \rout_reg[3]_i_1062 
       (.CI(\rout_reg[3]_i_1076_n_0 ),
        .CO({\rout_reg[3]_i_1062_n_0 ,\NLW_rout_reg[3]_i_1062_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_789_n_0 ,\rout_reg[3]_i_790_n_0 ,\rout_reg[3]_i_791_n_0 ,\rout_reg[3]_i_792_n_0 }),
        .O({\rout_reg[3]_i_1062_n_4 ,\rout_reg[3]_i_1062_n_5 ,\rout_reg[3]_i_1062_n_6 ,\rout_reg[3]_i_1062_n_7 }),
        .S({\rout_reg[3]_i_1077_n_0 ,\rout_reg[3]_i_1078_n_0 ,\rout_reg[3]_i_1079_n_0 ,\rout_reg[3]_i_1080_n_0 }));
  LUT6 #(
    .INIT(64'h59A9A65656A6A959)) 
    \rout_reg[3]_i_1063 
       (.I0(\rout_reg[3]_i_677_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [7]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .I4(\rout_reg[3]_i_808_n_0 ),
        .I5(\Inst_VGA_Draw/START[0][0]4 [11]),
        .O(\rout_reg[3]_i_1063_n_0 ));
  LUT6 #(
    .INIT(64'hA95956A656A6A959)) 
    \rout_reg[3]_i_1064 
       (.I0(\rout_reg[3]_i_678_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [6]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .I4(\rout_reg[3]_i_809_n_0 ),
        .I5(\rout_reg[3]_i_803_n_0 ),
        .O(\rout_reg[3]_i_1064_n_0 ));
  LUT6 #(
    .INIT(64'hA95956A656A6A959)) 
    \rout_reg[3]_i_1065 
       (.I0(\rout_reg[3]_i_679_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [7]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .I4(\rout_reg[3]_i_808_n_0 ),
        .I5(\rout_reg[3]_i_806_n_0 ),
        .O(\rout_reg[3]_i_1065_n_0 ));
  LUT6 #(
    .INIT(64'hA95956A656A6A959)) 
    \rout_reg[3]_i_1066 
       (.I0(\rout_reg[3]_i_680_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [6]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .I4(\rout_reg[3]_i_809_n_0 ),
        .I5(\rout_reg[3]_i_807_n_0 ),
        .O(\rout_reg[3]_i_1066_n_0 ));
  CARRY4 \rout_reg[3]_i_1067 
       (.CI(\rout_reg[3]_i_993_n_0 ),
        .CO({\rout_reg[3]_i_1067_n_0 ,\NLW_rout_reg[3]_i_1067_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_878_n_0 ,\rout_reg[3]_i_879_n_0 ,\rout_reg[3]_i_880_n_0 ,\rout_reg[3]_i_881_n_0 }),
        .O({\rout_reg[3]_i_1067_n_4 ,\rout_reg[3]_i_1067_n_5 ,\rout_reg[3]_i_1067_n_6 ,\rout_reg[3]_i_1067_n_7 }),
        .S({\rout_reg[3]_i_1081_n_0 ,\rout_reg[3]_i_1082_n_0 ,\rout_reg[3]_i_1083_n_0 ,\rout_reg[3]_i_1084_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_1068 
       (.I0(\rout_reg[3]_i_1067_n_4 ),
        .I1(\rout_reg[3]_i_1076_n_4 ),
        .O(\rout_reg[3]_i_1068_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_1069 
       (.I0(\rout_reg[3]_i_1067_n_5 ),
        .I1(\rout_reg[3]_i_1076_n_5 ),
        .O(\rout_reg[3]_i_1069_n_0 ));
  LUT6 #(
    .INIT(64'h0015005500040000)) 
    \rout_reg[3]_i_107 
       (.I0(\rout_reg[3]_i_55_n_6 ),
        .I1(\rout_reg[3]_i_214_n_0 ),
        .I2(\rout_reg[3]_i_255_n_0 ),
        .I3(\rout_reg[3]_i_110_n_0 ),
        .I4(O),
        .I5(\rout_reg[3]_i_221_n_0 ),
        .O(\rout_reg[3]_i_107_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_1070 
       (.I0(\rout_reg[3]_i_1067_n_6 ),
        .I1(\rout_reg[3]_i_1076_n_6 ),
        .O(\rout_reg[3]_i_1070_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_1071 
       (.I0(\rout_reg[3]_i_1067_n_7 ),
        .I1(\rout_reg[3]_i_1076_n_7 ),
        .O(\rout_reg[3]_i_1071_n_0 ));
  LUT6 #(
    .INIT(64'hA9A65956A6A95659)) 
    \rout_reg[3]_i_1072 
       (.I0(\rout_reg[3]_i_781_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [14]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [9]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [9]),
        .I5(\Inst_VGA_Draw/START[0][0]4 [11]),
        .O(\rout_reg[3]_i_1072_n_0 ));
  LUT6 #(
    .INIT(64'h5956A9A6A6A95659)) 
    \rout_reg[3]_i_1073 
       (.I0(\rout_reg[3]_i_782_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [13]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [8]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [8]),
        .I5(\rout_reg[3]_i_803_n_0 ),
        .O(\rout_reg[3]_i_1073_n_0 ));
  LUT6 #(
    .INIT(64'h5956A9A6A6A95659)) 
    \rout_reg[3]_i_1074 
       (.I0(\rout_reg[3]_i_783_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [12]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [7]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .I5(\rout_reg[3]_i_808_n_0 ),
        .O(\rout_reg[3]_i_1074_n_0 ));
  LUT6 #(
    .INIT(64'h5956A9A6A6A95659)) 
    \rout_reg[3]_i_1075 
       (.I0(\rout_reg[3]_i_784_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [11]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [6]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .I5(\rout_reg[3]_i_809_n_0 ),
        .O(\rout_reg[3]_i_1075_n_0 ));
  CARRY4 \rout_reg[3]_i_1076 
       (.CI(1'b0),
        .CO({\rout_reg[3]_i_1076_n_0 ,\NLW_rout_reg[3]_i_1076_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_1085_n_0 ,col_i[0],1'b0,1'b1}),
        .O({\rout_reg[3]_i_1076_n_4 ,\rout_reg[3]_i_1076_n_5 ,\rout_reg[3]_i_1076_n_6 ,\rout_reg[3]_i_1076_n_7 }),
        .S({\rout_reg[3]_i_1086_n_0 ,\rout_reg[3]_i_1087_n_0 ,\rout_reg[3]_i_1088_n_0 ,col_i[0]}));
  LUT6 #(
    .INIT(64'h9669969696696969)) 
    \rout_reg[3]_i_1077 
       (.I0(\rout_reg[3]_i_789_n_0 ),
        .I1(\rout_reg[3]_i_806_n_0 ),
        .I2(\rout_reg[3]_i_895_n_0 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/START[0][0]4 [3]),
        .O(\rout_reg[3]_i_1077_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666699969)) 
    \rout_reg[3]_i_1078 
       (.I0(\rout_reg[3]_i_790_n_0 ),
        .I1(\rout_reg[3]_i_807_n_0 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [6]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .I5(\rout_reg[3]_i_792_n_0 ),
        .O(\rout_reg[3]_i_1078_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \rout_reg[3]_i_1079 
       (.I0(\rout_reg[3]_i_896_n_0 ),
        .I1(\rout_reg[3]_i_806_n_0 ),
        .I2(\rout_reg[3]_i_894_n_0 ),
        .I3(\rout_reg[3]_i_807_n_0 ),
        .I4(col_i[0]),
        .O(\rout_reg[3]_i_1079_n_0 ));
  LUT6 #(
    .INIT(64'h45FF45FFFFFF00FF)) 
    \rout_reg[3]_i_108 
       (.I0(\rout_reg[3]_i_256_n_0 ),
        .I1(\rout_reg[3]_i_257_n_0 ),
        .I2(\rout_reg[3]_i_245_n_0 ),
        .I3(\rout_reg[3]_i_55_n_6 ),
        .I4(\rout_reg[3]_i_258_n_0 ),
        .I5(O),
        .O(\rout_reg[3]_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A3CC3A5A53CC3)) 
    \rout_reg[3]_i_1080 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [4]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [4]),
        .I2(col_i[0]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [2]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/is_text_pixel5 [2]),
        .O(\rout_reg[3]_i_1080_n_0 ));
  LUT6 #(
    .INIT(64'h9696966969699669)) 
    \rout_reg[3]_i_1081 
       (.I0(\rout_reg[3]_i_878_n_0 ),
        .I1(\rout_reg[3]_i_803_n_0 ),
        .I2(\rout_reg[3]_i_806_n_0 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [7]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .O(\rout_reg[3]_i_1081_n_0 ));
  LUT6 #(
    .INIT(64'h9696966969699669)) 
    \rout_reg[3]_i_1082 
       (.I0(\rout_reg[3]_i_879_n_0 ),
        .I1(\rout_reg[3]_i_808_n_0 ),
        .I2(\rout_reg[3]_i_807_n_0 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [6]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .O(\rout_reg[3]_i_1082_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666699969)) 
    \rout_reg[3]_i_1083 
       (.I0(\rout_reg[3]_i_880_n_0 ),
        .I1(\rout_reg[3]_i_809_n_0 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [3]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .I5(\rout_reg[3]_i_806_n_0 ),
        .O(\rout_reg[3]_i_1083_n_0 ));
  LUT6 #(
    .INIT(64'h9A95656A656A9A95)) 
    \rout_reg[3]_i_1084 
       (.I0(\rout_reg[3]_i_881_n_0 ),
        .I1(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [7]),
        .I4(\rout_reg[3]_i_807_n_0 ),
        .I5(\rout_reg[3]_i_792_n_0 ),
        .O(\rout_reg[3]_i_1084_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rout_reg[3]_i_1085 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [1]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [1]),
        .O(\rout_reg[3]_i_1085_n_0 ));
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    \rout_reg[3]_i_1086 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [1]),
        .I1(\Inst_VGA_Draw/is_text_pixel5 [1]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [3]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .O(\rout_reg[3]_i_1086_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \rout_reg[3]_i_1087 
       (.I0(col_i[0]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [2]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [2]),
        .O(\rout_reg[3]_i_1087_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \rout_reg[3]_i_1088 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [1]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/is_text_pixel5 [1]),
        .O(\rout_reg[3]_i_1088_n_0 ));
  LUT5 #(
    .INIT(32'hE0E000E0)) 
    \rout_reg[3]_i_109 
       (.I0(\rout_reg[3]_i_259_n_0 ),
        .I1(\rout_reg[3]_i_231_n_0 ),
        .I2(\rout_reg[3]_i_55_n_5 ),
        .I3(\rout_reg[3]_i_260_n_0 ),
        .I4(\rout_reg[3]_i_261_n_0 ),
        .O(\rout_reg[3]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'h4444444454555454)) 
    \rout_reg[3]_i_11 
       (.I0(\rout_reg[3]_i_8_n_7 ),
        .I1(\rout_reg[3]_i_34_n_0 ),
        .I2(\rout_reg[3]_i_35_n_0 ),
        .I3(\rout_reg[3]_i_36_n_0 ),
        .I4(\rout_reg[3]_i_37_n_0 ),
        .I5(\rout_reg[3]_i_38_n_0 ),
        .O(\rout_reg[3]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA0040)) 
    \rout_reg[3]_i_110 
       (.I0(\col_reg[10]_1 ),
        .I1(\col_reg[10]_2 ),
        .I2(\start[0][0] ),
        .I3(\col_reg[10]_3 ),
        .I4(\start[1][0] ),
        .O(\rout_reg[3]_i_110_n_0 ));
  LUT6 #(
    .INIT(64'hFBF0FBFFFBF0FBF0)) 
    \rout_reg[3]_i_111 
       (.I0(\rout_reg[3]_i_262_n_0 ),
        .I1(\rout_reg[3]_i_119_n_0 ),
        .I2(\rout_reg[3]_i_55_n_4 ),
        .I3(\rout_reg[3]_i_55_n_5 ),
        .I4(\rout_reg[3]_i_55_n_6 ),
        .I5(\rout_reg[3]_i_263_n_0 ),
        .O(\rout_reg[3]_i_111_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \rout_reg[3]_i_112 
       (.I0(O),
        .I1(\rout_reg[3]_i_264_n_0 ),
        .I2(row_i[2]),
        .I3(\rout_reg[3]_i_265_n_0 ),
        .O(\rout_reg[3]_i_112_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00E2FFFF)) 
    \rout_reg[3]_i_113 
       (.I0(\rout_reg[3]_i_266_n_0 ),
        .I1(row_i[2]),
        .I2(\rout_reg[3]_i_110_n_0 ),
        .I3(O),
        .I4(\rout_reg[3]_i_55_n_6 ),
        .I5(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_113_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBBBAAAAAAAA)) 
    \rout_reg[3]_i_114 
       (.I0(\rout_reg[3]_i_55_n_5 ),
        .I1(O),
        .I2(row_i[2]),
        .I3(\rout_reg[3]_i_267_n_0 ),
        .I4(\rout_reg[3]_i_268_n_0 ),
        .I5(\rout_reg[3]_i_269_n_0 ),
        .O(\rout_reg[3]_i_114_n_0 ));
  LUT5 #(
    .INIT(32'h4540FFFF)) 
    \rout_reg[3]_i_115 
       (.I0(O),
        .I1(\rout_reg[3]_i_110_n_0 ),
        .I2(row_i[2]),
        .I3(\rout_reg[3]_i_267_n_0 ),
        .I4(\rout_reg[3]_i_55_n_6 ),
        .O(\rout_reg[3]_i_115_n_0 ));
  LUT6 #(
    .INIT(64'hE0E000E000E000E0)) 
    \rout_reg[3]_i_116 
       (.I0(\rout_reg[3]_i_270_n_0 ),
        .I1(\rout_reg[3]_i_231_n_0 ),
        .I2(\rout_reg[3]_i_55_n_5 ),
        .I3(\rout_reg[3]_i_260_n_0 ),
        .I4(\rout_reg[3]_i_271_n_0 ),
        .I5(\rout_reg[3]_i_52_0 ),
        .O(\rout_reg[3]_i_116_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D0D0DDD0DDDD)) 
    \rout_reg[3]_i_117 
       (.I0(\rout_reg[3]_i_94_n_0 ),
        .I1(\rout_reg[3]_i_263_n_0 ),
        .I2(\rout_reg[3]_i_273_n_0 ),
        .I3(\rout_reg[3]_i_265_n_0 ),
        .I4(row_i[2]),
        .I5(\rout_reg[3]_i_274_n_0 ),
        .O(\rout_reg[3]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h15150555FFFFFFFF)) 
    \rout_reg[3]_i_118 
       (.I0(\rout_reg[3]_i_275_n_0 ),
        .I1(\rout_reg[3]_i_276_n_0 ),
        .I2(O),
        .I3(\rout_reg[3]_i_110_n_0 ),
        .I4(\rout_reg[3]_i_238_n_0 ),
        .I5(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_118_n_0 ));
  LUT6 #(
    .INIT(64'hFF3FBFB3F333BFB3)) 
    \rout_reg[3]_i_119 
       (.I0(\rout_reg[3]_i_277_n_0 ),
        .I1(\rout_reg[3]_i_55_n_6 ),
        .I2(O),
        .I3(\rout_reg[3]_i_110_n_0 ),
        .I4(\rout_reg[3]_i_278_n_0 ),
        .I5(\rout_reg[3]_i_276_n_0 ),
        .O(\rout_reg[3]_i_119_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBFFFC88880030)) 
    \rout_reg[3]_i_12 
       (.I0(\rout_reg[3]_i_39_n_0 ),
        .I1(\rout_reg[3]_i_13_n_5 ),
        .I2(\rout_reg[3]_i_40_n_0 ),
        .I3(\rout_reg[3]_i_13_n_7 ),
        .I4(\rout_reg[3]_i_13_n_6 ),
        .I5(\rout_reg[3]_i_41_n_0 ),
        .O(\rout_reg[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFEEF000000000)) 
    \rout_reg[3]_i_120 
       (.I0(\rout_reg[3]_i_279_n_0 ),
        .I1(\rout_reg[3]_i_280_n_0 ),
        .I2(\rout_reg[3]_i_52_0 ),
        .I3(\rout_reg[3]_i_55_n_6 ),
        .I4(\rout_reg[3]_i_281_n_0 ),
        .I5(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_120_n_0 ));
  LUT5 #(
    .INIT(32'hCFC0AAAA)) 
    \rout_reg[3]_i_121 
       (.I0(\rout_reg[3]_i_142_n_6 ),
        .I1(\rout_reg[3]_i_136_n_5 ),
        .I2(\rout_reg[3]_i_141_n_0 ),
        .I3(\rout_reg[3]_i_143_n_7 ),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .O(\col_reg[10]_1 ));
  MUXF7 \rout_reg[3]_i_122 
       (.I0(\rout_reg[3]_i_282_n_0 ),
        .I1(\rout_reg[3]_i_283_n_0 ),
        .O(\rout_reg[3]_i_122_n_0 ),
        .S(\rout_reg[3]_i_55_n_5 ));
  LUT6 #(
    .INIT(64'hF1F1F1F10000FF00)) 
    \rout_reg[3]_i_123 
       (.I0(\rout_reg[3]_i_252_n_0 ),
        .I1(O),
        .I2(\rout_reg[3]_i_284_n_0 ),
        .I3(\rout_reg[3]_i_285_n_0 ),
        .I4(\rout_reg[3]_i_286_n_0 ),
        .I5(\rout_reg[3]_i_55_n_6 ),
        .O(\rout_reg[3]_i_123_n_0 ));
  LUT6 #(
    .INIT(64'h8B8800008BBBFFFF)) 
    \rout_reg[3]_i_124 
       (.I0(\rout_reg[3]_i_287_n_0 ),
        .I1(O),
        .I2(\rout_reg[3]_i_56_n_0 ),
        .I3(\rout_reg[3]_i_214_n_0 ),
        .I4(\rout_reg[3]_i_55_n_6 ),
        .I5(\rout_reg[3]_i_288_n_0 ),
        .O(\rout_reg[3]_i_124_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_125 
       (.I0(row_i[6]),
        .O(\rout_reg[3]_i_125_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_126 
       (.I0(row_i[5]),
        .O(\rout_reg[3]_i_126_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_127 
       (.I0(row_i[4]),
        .O(\rout_reg[3]_i_127_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \rout_reg[3]_i_128 
       (.I0(\rout_reg[3]_i_289_n_0 ),
        .I1(\rout_reg[3]_i_55_n_6 ),
        .I2(\rout_reg[3]_i_290_n_0 ),
        .I3(O),
        .I4(\rout_reg[3]_i_252_n_0 ),
        .I5(\rout_reg[3]_i_110_n_0 ),
        .O(\rout_reg[3]_i_128_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \rout_reg[3]_i_129 
       (.CI(\rout_reg[3]_i_291_n_0 ),
        .CO({\rout_reg[3]_i_129_n_0 ,\NLW_rout_reg[3]_i_129_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_rout_reg[3]_i_129_O_UNCONNECTED [3:0]),
        .S({\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 }));
  CARRY4 \rout_reg[3]_i_13 
       (.CI(1'b0),
        .CO({\rout_reg[3]_i_13_n_0 ,\NLW_rout_reg[3]_i_13_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({col_i[3],1'b0,col_i[1:0]}),
        .O({\rout_reg[3]_i_13_n_4 ,\rout_reg[3]_i_13_n_5 ,\rout_reg[3]_i_13_n_6 ,\rout_reg[3]_i_13_n_7 }),
        .S({\rout_reg[3]_i_42_n_0 ,col_i[2],\rout_reg[3]_i_43_n_0 ,\rout_reg[3]_i_44_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_130 
       (.I0(row_i[10]),
        .O(\rout_reg[3]_i_130_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_131 
       (.I0(row_i[9]),
        .O(\rout_reg[3]_i_131_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \rout_reg[3]_i_132 
       (.CI(1'b0),
        .CO({\rout_reg[3]_i_132_n_0 ,\NLW_rout_reg[3]_i_132_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_292_n_0 ,1'b0,1'b0,\rout_reg[3]_i_293_n_0 }),
        .O(\NLW_rout_reg[3]_i_132_O_UNCONNECTED [3:0]),
        .S({\rout_reg[3]_i_294_n_0 ,\rout_reg[3]_i_295_n_0 ,\rout_reg[3]_i_296_n_0 ,\rout_reg[3]_i_297_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    \rout_reg[3]_i_133 
       (.I0(\rout_reg[3]_i_21_n_3 ),
        .I1(\rout_reg[3]_i_60_n_4 ),
        .O(\rout_reg[3]_i_133_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rout_reg[3]_i_134 
       (.I0(\rout_reg[3]_i_60_n_5 ),
        .I1(\rout_reg[3]_i_60_n_6 ),
        .O(\rout_reg[3]_i_134_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 \rout_reg[3]_i_135 
       (.CI(1'b0),
        .CO({\rout_reg[3]_i_135_n_0 ,\NLW_rout_reg[3]_i_135_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,col_i[3:2],1'b0}),
        .O(\Inst_VGA_Draw/is_text_pixel5 [4:1]),
        .S({col_i[4],\rout_reg[3]_i_298_n_0 ,\rout_reg[3]_i_299_n_0 ,col_i[1]}));
  CARRY4 \rout_reg[3]_i_136 
       (.CI(1'b0),
        .CO(\NLW_rout_reg[3]_i_136_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rout_reg[3]_i_136_n_4 ,\rout_reg[3]_i_136_n_5 ,\rout_reg[3]_i_136_n_6 ,\rout_reg[3]_i_136_n_7 }),
        .S({\rout_reg[3]_i_143_n_6 ,\rout_reg[3]_i_143_n_7 ,\rout_reg[3]_i_140_n_4 ,\rout_reg[3]_i_300_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_137 
       (.CI(\rout_reg[3]_i_301_n_0 ),
        .CO({\NLW_rout_reg[3]_i_137_CO_UNCONNECTED [3:2],\rout_reg[3]_i_137_n_2 ,\NLW_rout_reg[3]_i_137_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\rout_reg[3]_i_302_n_0 ,\rout_reg[3]_i_303_n_0 }),
        .O(\NLW_rout_reg[3]_i_137_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\rout_reg[3]_i_304_n_0 ,\rout_reg[3]_i_305_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_138 
       (.CI(\rout_reg[3]_i_306_n_0 ),
        .CO(\NLW_rout_reg[3]_i_138_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rout_reg[3]_i_138_O_UNCONNECTED [3:2],\Inst_VGA_Draw/START[0][0]4 [30:29]}),
        .S({1'b0,1'b0,\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_139 
       (.CI(\rout_reg[3]_i_307_n_0 ),
        .CO(\NLW_rout_reg[3]_i_139_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rout_reg[3]_i_139_O_UNCONNECTED [3:2],\rout_reg[3]_i_139_n_6 ,\rout_reg[3]_i_139_n_7 }),
        .S({1'b0,1'b0,\rout_reg[3]_i_308_n_5 ,\rout_reg[3]_i_308_n_6 }));
  LUT5 #(
    .INIT(32'h0454FFFF)) 
    \rout_reg[3]_i_14 
       (.I0(\rout_reg[3]_i_13_n_4 ),
        .I1(\rout_reg[3]_i_36_n_0 ),
        .I2(\rout_reg[3]_i_13_n_5 ),
        .I3(\rout_reg[3]_i_40_n_0 ),
        .I4(\rout_reg[3]_i_8_n_7 ),
        .O(\rout_reg[3]_i_14_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_140 
       (.CI(\rout_reg[3]_i_309_n_0 ),
        .CO({\rout_reg[3]_i_140_n_0 ,\NLW_rout_reg[3]_i_140_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_310_n_0 ,\rout_reg[3]_i_311_n_0 ,\rout_reg[3]_i_312_n_0 ,\rout_reg[3]_i_313_n_0 }),
        .O({\rout_reg[3]_i_140_n_4 ,\rout_reg[3]_i_140_n_5 ,\NLW_rout_reg[3]_i_140_O_UNCONNECTED [1:0]}),
        .S({\rout_reg[3]_i_314_n_0 ,\rout_reg[3]_i_315_n_0 ,\rout_reg[3]_i_316_n_0 ,\rout_reg[3]_i_317_n_0 }));
  LUT4 #(
    .INIT(16'h0455)) 
    \rout_reg[3]_i_141 
       (.I0(\rout_reg[3]_i_137_n_2 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\rout_reg[3]_i_139_n_6 ),
        .O(\rout_reg[3]_i_141_n_0 ));
  CARRY4 \rout_reg[3]_i_142 
       (.CI(1'b0),
        .CO(\NLW_rout_reg[3]_i_142_CO_UNCONNECTED [3:0]),
        .CYINIT(\rout_reg[3]_i_318_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rout_reg[3]_i_142_O_UNCONNECTED [3],\rout_reg[3]_i_142_n_5 ,\rout_reg[3]_i_142_n_6 ,\rout_reg[3]_i_142_n_7 }),
        .S({1'b0,\rout_reg[3]_i_319_n_0 ,\rout_reg[3]_i_320_n_0 ,\rout_reg[3]_i_321_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_143 
       (.CI(\rout_reg[3]_i_140_n_0 ),
        .CO({\rout_reg[3]_i_143_n_0 ,\NLW_rout_reg[3]_i_143_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_322_n_0 ,\rout_reg[3]_i_323_n_0 ,\rout_reg[3]_i_324_n_0 ,\rout_reg[3]_i_325_n_0 }),
        .O({\rout_reg[3]_i_143_n_4 ,\rout_reg[3]_i_143_n_5 ,\rout_reg[3]_i_143_n_6 ,\rout_reg[3]_i_143_n_7 }),
        .S({\rout_reg[3]_i_326_n_0 ,\rout_reg[3]_i_327_n_0 ,\rout_reg[3]_i_328_n_0 ,\rout_reg[3]_i_329_n_0 }));
  LUT6 #(
    .INIT(64'hF000000080000000)) 
    \rout_reg[3]_i_144 
       (.I0(\rout_reg[3]_i_330_n_0 ),
        .I1(\rout_reg[3]_i_331_n_0 ),
        .I2(\col_reg[10]_1 ),
        .I3(\gameover[6][0] ),
        .I4(\rout_reg[3]_i_332_n_0 ),
        .I5(\rout_reg[3]_i_191_n_0 ),
        .O(\rout_reg[3]_i_144_n_0 ));
  LUT6 #(
    .INIT(64'h0888888888008000)) 
    \rout_reg[3]_i_145 
       (.I0(\rout_reg[3]_i_79_0 ),
        .I1(\rout_reg[3]_i_334_n_0 ),
        .I2(row_i[0]),
        .I3(row_i[2]),
        .I4(row_i[1]),
        .I5(O),
        .O(\rout_reg[3]_i_145_n_0 ));
  LUT5 #(
    .INIT(32'hFF707070)) 
    \rout_reg[3]_i_146 
       (.I0(row_i[2]),
        .I1(O),
        .I2(\rout_reg[3]_i_335_n_0 ),
        .I3(\rout_reg[3]_i_69_0 ),
        .I4(\row_reg[2]_0 ),
        .O(\rout_reg[3]_i_146_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F888888888)) 
    \rout_reg[3]_i_147 
       (.I0(\rout_reg[3]_i_337_n_0 ),
        .I1(\rout_reg[3]_i_192_n_0 ),
        .I2(\rout_reg[3]_i_338_n_0 ),
        .I3(\rout_reg[3]_i_339_n_0 ),
        .I4(\rout_reg[3]_i_340_n_0 ),
        .I5(\rout_reg[3]_i_341_n_0 ),
        .O(\rout_reg[3]_i_147_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF51004000)) 
    \rout_reg[3]_i_148 
       (.I0(\rout_reg[3]_i_55_n_4 ),
        .I1(\col_reg[10]_0 ),
        .I2(\gameover[8][0] ),
        .I3(\rout_reg[3]_i_343_n_0 ),
        .I4(\rout_reg[3]_i_344_n_0 ),
        .I5(\rout_reg[3]_i_200_n_0 ),
        .O(\rout_reg[3]_i_148_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFA8)) 
    \rout_reg[3]_i_149 
       (.I0(\rout_reg[3]_i_341_n_0 ),
        .I1(\rout_reg[3]_i_345_n_0 ),
        .I2(\rout_reg[3]_i_346_n_0 ),
        .I3(\rout_reg[3]_i_347_n_0 ),
        .I4(\rout_reg[3]_i_348_n_0 ),
        .I5(\rout_reg[3]_i_349_n_0 ),
        .O(\rout_reg[3]_i_149_n_0 ));
  LUT5 #(
    .INIT(32'h7020FFFF)) 
    \rout_reg[3]_i_15 
       (.I0(\rout_reg[3]_i_13_n_5 ),
        .I1(\rout_reg[3]_i_45_n_0 ),
        .I2(\rout_reg[3]_i_13_n_4 ),
        .I3(\rout_reg[3]_i_46_n_0 ),
        .I4(\rout_reg[3]_i_8_n_7 ),
        .O(\rout_reg[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAEAA)) 
    \rout_reg[3]_i_150 
       (.I0(\rout_reg[3]_i_350_n_0 ),
        .I1(\rout_reg[3]_i_351_n_0 ),
        .I2(\col_reg[10]_0 ),
        .I3(\row_reg[2]_1 ),
        .I4(\rout_reg[3]_i_353_n_0 ),
        .I5(\rout_reg[3]_i_354_n_0 ),
        .O(\rout_reg[3]_i_150_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \rout_reg[3]_i_151 
       (.I0(\rout_reg[3]_i_344_n_0 ),
        .I1(\rout_reg[3]_i_355_n_0 ),
        .I2(\gameover[8][0] ),
        .I3(\col_reg[10]_0 ),
        .I4(\rout_reg[3]_i_351_n_0 ),
        .I5(\rout_reg[3]_i_203_n_0 ),
        .O(\rout_reg[3]_i_151_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \rout_reg[3]_i_152 
       (.I0(\col_reg[10]_3 ),
        .I1(\gameover[3][0] ),
        .I2(\col_reg[10]_2 ),
        .I3(\rout_reg[3]_i_337_n_0 ),
        .O(\rout_reg[3]_i_152_n_0 ));
  LUT6 #(
    .INIT(64'hEECCEECCAA00EA00)) 
    \rout_reg[3]_i_153 
       (.I0(\rout_reg[3]_i_356_n_0 ),
        .I1(row_i[2]),
        .I2(row_i[1]),
        .I3(\rout_reg[3]_i_357_n_0 ),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .I5(\rout_reg[3]_i_358_n_0 ),
        .O(\rout_reg[3]_i_153_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBABABA)) 
    \rout_reg[3]_i_154 
       (.I0(\rout_reg[3]_i_359_n_0 ),
        .I1(\rout_reg[3]_i_360_n_0 ),
        .I2(\rout_reg[3]_i_361_n_0 ),
        .I3(\rout_reg[3]_i_362_n_0 ),
        .I4(\row_reg[2]_0 ),
        .I5(\rout_reg[3]_i_363_n_0 ),
        .O(\rout_reg[3]_i_154_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA020000)) 
    \rout_reg[3]_i_155 
       (.I0(\rout_reg[3]_i_335_n_0 ),
        .I1(row_i[0]),
        .I2(row_i[1]),
        .I3(\rout_reg[3]_i_222_n_0 ),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .I5(\rout_reg[3]_i_364_n_0 ),
        .O(\rout_reg[3]_i_155_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008880)) 
    \rout_reg[3]_i_156 
       (.I0(\rout_reg[3]_i_344_n_0 ),
        .I1(\rout_reg[3]_i_365_n_0 ),
        .I2(row_i[0]),
        .I3(row_i[1]),
        .I4(\rout_reg[3]_i_222_n_0 ),
        .I5(\rout_reg[3]_i_366_n_0 ),
        .O(\rout_reg[3]_i_156_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rout_reg[3]_i_157 
       (.I0(\rout_reg[3]_i_353_n_0 ),
        .I1(\rout_reg[3]_i_367_n_0 ),
        .I2(\rout_reg[3]_i_368_n_0 ),
        .I3(\rout_reg[3]_i_369_n_0 ),
        .I4(\rout_reg[3]_i_370_n_0 ),
        .I5(\rout_reg[3]_i_371_n_0 ),
        .O(\rout_reg[3]_i_157_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \rout_reg[3]_i_158 
       (.I0(\rout_reg[3]_i_372_n_0 ),
        .I1(\rout_reg[3]_i_373_n_0 ),
        .I2(\rout_reg[3]_i_374_n_0 ),
        .I3(\rout_reg[3]_i_375_n_0 ),
        .I4(\rout_reg[3]_i_376_n_0 ),
        .I5(\rout_reg[3]_i_377_n_0 ),
        .O(\rout_reg[3]_i_158_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rout_reg[3]_i_159 
       (.I0(\rout_reg[3]_i_151_n_0 ),
        .I1(\rout_reg[3]_i_378_n_0 ),
        .I2(\rout_reg[3]_i_354_n_0 ),
        .I3(\rout_reg[3]_i_379_n_0 ),
        .I4(\rout_reg[3]_i_347_n_0 ),
        .I5(\rout_reg[3]_i_380_n_0 ),
        .O(\rout_reg[3]_i_159_n_0 ));
  LUT6 #(
    .INIT(64'h300000553FFFFF55)) 
    \rout_reg[3]_i_16 
       (.I0(\rout_reg[3]_i_47_n_0 ),
        .I1(\rout_reg[3]_i_46_n_0 ),
        .I2(\rout_reg[3]_i_13_n_7 ),
        .I3(\rout_reg[3]_i_13_n_6 ),
        .I4(\rout_reg[3]_i_13_n_5 ),
        .I5(\rout_reg[3]_i_48_n_0 ),
        .O(\rout_reg[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rout_reg[3]_i_160 
       (.I0(\rout_reg[3]_i_363_n_0 ),
        .I1(\rout_reg[3]_i_381_n_0 ),
        .I2(\rout_reg[3]_i_382_n_0 ),
        .I3(\rout_reg[3]_i_359_n_0 ),
        .I4(\rout_reg[3]_i_153_n_0 ),
        .I5(\rout_reg[3]_i_152_n_0 ),
        .O(\rout_reg[3]_i_160_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    \rout_reg[3]_i_161 
       (.I0(\rout_reg[3]_i_354_n_0 ),
        .I1(\rout_reg[3]_i_378_n_0 ),
        .I2(\rout_reg[3]_i_364_n_0 ),
        .I3(\rout_reg[3]_i_55_n_5 ),
        .I4(\rout_reg[3]_i_170_n_0 ),
        .I5(\rout_reg[3]_i_335_n_0 ),
        .O(\rout_reg[3]_i_161_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rout_reg[3]_i_162 
       (.I0(\rout_reg[3]_i_366_n_0 ),
        .I1(\rout_reg[3]_i_383_n_0 ),
        .I2(\rout_reg[3]_i_377_n_0 ),
        .I3(\rout_reg[3]_i_384_n_0 ),
        .I4(\rout_reg[3]_i_373_n_0 ),
        .I5(\rout_reg[3]_i_372_n_0 ),
        .O(\rout_reg[3]_i_162_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rout_reg[3]_i_163 
       (.I0(\rout_reg[3]_i_172_n_0 ),
        .I1(\rout_reg[3]_i_373_n_0 ),
        .I2(\rout_reg[3]_i_384_n_0 ),
        .I3(\rout_reg[3]_i_377_n_0 ),
        .I4(\rout_reg[3]_i_367_n_0 ),
        .I5(\rout_reg[3]_i_385_n_0 ),
        .O(\rout_reg[3]_i_163_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \rout_reg[3]_i_164 
       (.I0(\rout_reg[3]_i_170_n_0 ),
        .I1(\rout_reg[3]_i_169_n_0 ),
        .I2(\rout_reg[3]_i_370_n_0 ),
        .I3(\rout_reg[3]_i_369_n_0 ),
        .I4(\rout_reg[3]_i_368_n_0 ),
        .I5(\rout_reg[3]_i_367_n_0 ),
        .O(\rout_reg[3]_i_164_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \rout_reg[3]_i_165 
       (.I0(\rout_reg[3]_i_172_n_0 ),
        .I1(\rout_reg[3]_i_373_n_0 ),
        .I2(\rout_reg[3]_i_374_n_0 ),
        .I3(\rout_reg[3]_i_375_n_0 ),
        .I4(\rout_reg[3]_i_376_n_0 ),
        .I5(\rout_reg[3]_i_377_n_0 ),
        .O(\rout_reg[3]_i_165_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rout_reg[3]_i_166 
       (.I0(\rout_reg[3]_i_386_n_0 ),
        .I1(\rout_reg[3]_i_387_n_0 ),
        .I2(\rout_reg[3]_i_388_n_0 ),
        .I3(\rout_reg[3]_i_364_n_0 ),
        .I4(\rout_reg[3]_i_389_n_0 ),
        .O(\rout_reg[3]_i_166_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \rout_reg[3]_i_167 
       (.I0(\rout_reg[3]_i_366_n_0 ),
        .I1(\rout_reg[3]_i_373_n_0 ),
        .I2(\rout_reg[3]_i_374_n_0 ),
        .I3(\rout_reg[3]_i_375_n_0 ),
        .I4(\rout_reg[3]_i_376_n_0 ),
        .I5(\rout_reg[3]_i_377_n_0 ),
        .O(\rout_reg[3]_i_167_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFEFEFEFEFE)) 
    \rout_reg[3]_i_168 
       (.I0(\rout_reg[3]_i_367_n_0 ),
        .I1(\rout_reg[3]_i_368_n_0 ),
        .I2(\rout_reg[3]_i_369_n_0 ),
        .I3(O),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .I5(\rout_reg[3]_i_390_n_0 ),
        .O(\rout_reg[3]_i_168_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \rout_reg[3]_i_169 
       (.I0(\rout_reg[3]_i_55_n_6 ),
        .I1(\gameover[8][0] ),
        .I2(\col_reg[10]_0 ),
        .I3(\rout_reg[3]_i_55_n_4 ),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_169_n_0 ));
  LUT6 #(
    .INIT(64'h404F4F4F40404040)) 
    \rout_reg[3]_i_17 
       (.I0(\rout_reg[3]_i_49_n_0 ),
        .I1(\rout_reg[3]_i_50_n_0 ),
        .I2(\rout_reg[3]_i_13_n_4 ),
        .I3(\rout_reg[3]_i_39_n_0 ),
        .I4(\rout_reg[3]_i_51_n_0 ),
        .I5(\rout_reg[3]_i_52_n_0 ),
        .O(\rout_reg[3]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h777F)) 
    \rout_reg[3]_i_170 
       (.I0(O),
        .I1(row_i[2]),
        .I2(row_i[1]),
        .I3(row_i[0]),
        .O(\rout_reg[3]_i_170_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEEEEEE)) 
    \rout_reg[3]_i_171 
       (.I0(\rout_reg[3]_i_377_n_0 ),
        .I1(\rout_reg[3]_i_376_n_0 ),
        .I2(\rout_reg[3]_i_222_n_0 ),
        .I3(row_i[1]),
        .I4(\rout_reg[3]_i_374_n_0 ),
        .I5(\rout_reg[3]_i_373_n_0 ),
        .O(\rout_reg[3]_i_171_n_0 ));
  LUT4 #(
    .INIT(16'h6E00)) 
    \rout_reg[3]_i_172 
       (.I0(O),
        .I1(row_i[2]),
        .I2(row_i[1]),
        .I3(\rout_reg[3]_i_361_n_0 ),
        .O(\rout_reg[3]_i_172_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rout_reg[3]_i_173 
       (.I0(\rout_reg[3]_i_349_n_0 ),
        .I1(\rout_reg[3]_i_348_n_0 ),
        .I2(\rout_reg[3]_i_347_n_0 ),
        .I3(\rout_reg[3]_i_380_n_0 ),
        .I4(\rout_reg[3]_i_391_n_0 ),
        .I5(\rout_reg[3]_i_392_n_0 ),
        .O(\rout_reg[3]_i_173_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \rout_reg[3]_i_174 
       (.I0(\rout_reg[3]_i_386_n_0 ),
        .I1(\rout_reg[3]_i_373_n_0 ),
        .I2(\rout_reg[3]_i_372_n_0 ),
        .I3(\rout_reg[3]_i_393_n_0 ),
        .I4(\rout_reg[3]_i_394_n_0 ),
        .I5(\rout_reg[3]_i_377_n_0 ),
        .O(\rout_reg[3]_i_174_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \rout_reg[3]_i_175 
       (.I0(\rout_reg[3]_i_153_n_0 ),
        .I1(\rout_reg[3]_i_376_n_0 ),
        .I2(\rout_reg[3]_i_395_n_0 ),
        .I3(\rout_reg[3]_i_355_n_0 ),
        .O(\rout_reg[3]_i_175_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rout_reg[3]_i_176 
       (.I0(\rout_reg[3]_i_377_n_0 ),
        .I1(\rout_reg[3]_i_396_n_0 ),
        .I2(\rout_reg[3]_i_386_n_0 ),
        .I3(\rout_reg[3]_i_397_n_0 ),
        .I4(\rout_reg[3]_i_398_n_0 ),
        .I5(\rout_reg[3]_i_379_n_0 ),
        .O(\rout_reg[3]_i_176_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rout_reg[3]_i_177 
       (.I0(\rout_reg[3]_i_184_n_0 ),
        .I1(\rout_reg[3]_i_399_n_0 ),
        .I2(\rout_reg[3]_i_400_n_0 ),
        .I3(\rout_reg[3]_i_401_n_0 ),
        .I4(\rout_reg[3]_i_186_n_0 ),
        .I5(\rout_reg[3]_i_402_n_0 ),
        .O(\rout_reg[3]_i_177_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF202020)) 
    \rout_reg[3]_i_178 
       (.I0(\row_reg[2]_0 ),
        .I1(\col_reg[10]_0 ),
        .I2(\rout_reg[3]_i_77_0 ),
        .I3(\rout_reg[3]_i_404_n_0 ),
        .I4(\rout_reg[3]_i_222_n_0 ),
        .I5(\rout_reg[3]_i_405_n_0 ),
        .O(\rout_reg[3]_i_178_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFEAEAAAAAAAA)) 
    \rout_reg[3]_i_179 
       (.I0(\rout_reg[3]_i_406_n_0 ),
        .I1(\rout_reg[3]_i_78_0 ),
        .I2(\col_reg[10]_3 ),
        .I3(\rout_reg[3]_i_78_1 ),
        .I4(\col_reg[10]_0 ),
        .I5(\rout_reg[3]_i_203_n_0 ),
        .O(\rout_reg[3]_i_179_n_0 ));
  LUT6 #(
    .INIT(64'h88888888CC0C000C)) 
    \rout_reg[3]_i_18 
       (.I0(\rout_reg[3]_i_53_n_0 ),
        .I1(\rout_reg[3]_i_13_n_4 ),
        .I2(\rout_reg[3]_i_54_n_0 ),
        .I3(\rout_reg[3]_i_55_n_4 ),
        .I4(\rout_reg[3]_i_56_n_0 ),
        .I5(\rout_reg[3]_i_51_n_0 ),
        .O(\rout_reg[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA808080)) 
    \rout_reg[3]_i_180 
       (.I0(\rout_reg[3]_i_409_n_0 ),
        .I1(\rout_reg[3]_i_410_n_0 ),
        .I2(\rout_reg[3]_i_411_n_0 ),
        .I3(\rout_reg[3]_i_412_n_0 ),
        .I4(\rout_reg[3]_i_413_n_0 ),
        .I5(\rout_reg[3]_i_414_n_0 ),
        .O(\rout_reg[3]_i_180_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \rout_reg[3]_i_181 
       (.I0(\row_reg[2]_0 ),
        .I1(\rout_reg[3]_i_415_n_0 ),
        .I2(\rout_reg[3]_i_416_n_0 ),
        .I3(\rout_reg[3]_i_417_n_0 ),
        .I4(\rout_reg[3]_i_222_n_0 ),
        .I5(\rout_reg[3]_i_418_n_0 ),
        .O(\rout_reg[3]_i_181_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEAEEEAEEEA)) 
    \rout_reg[3]_i_182 
       (.I0(\rout_reg[3]_i_419_n_0 ),
        .I1(\rout_reg[3]_i_341_n_0 ),
        .I2(\rout_reg[3]_i_420_n_0 ),
        .I3(\rout_reg[3]_i_338_n_0 ),
        .I4(\rout_reg[3]_i_192_n_0 ),
        .I5(\rout_reg[3]_i_337_n_0 ),
        .O(\rout_reg[3]_i_182_n_0 ));
  LUT6 #(
    .INIT(64'hAEFF0C0C0C0C0C0C)) 
    \rout_reg[3]_i_183 
       (.I0(\rout_reg[3]_i_393_n_0 ),
        .I1(\rout_reg[3]_i_421_n_0 ),
        .I2(row_i[1]),
        .I3(\rout_reg[3]_i_55_n_6 ),
        .I4(\rout_reg[3]_i_422_n_0 ),
        .I5(\rout_reg[3]_i_423_n_0 ),
        .O(\rout_reg[3]_i_183_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \rout_reg[3]_i_184 
       (.I0(\rout_reg[3]_i_424_n_0 ),
        .I1(\rout_reg[3]_i_425_n_0 ),
        .I2(\gameover[8][0] ),
        .I3(\col_reg[10]_0 ),
        .I4(\rout_reg[3]_i_426_n_0 ),
        .I5(\row_reg[2]_1 ),
        .O(\rout_reg[3]_i_184_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rout_reg[3]_i_185 
       (.I0(\rout_reg[3]_i_337_n_0 ),
        .I1(\rout_reg[3]_i_427_n_0 ),
        .I2(\rout_reg[3]_i_421_n_0 ),
        .I3(row_i[1]),
        .I4(\rout_reg[3]_i_365_n_0 ),
        .I5(\rout_reg[3]_i_423_n_0 ),
        .O(\rout_reg[3]_i_185_n_0 ));
  LUT6 #(
    .INIT(64'h0000E00000000000)) 
    \rout_reg[3]_i_186 
       (.I0(row_i[1]),
        .I1(row_i[0]),
        .I2(O),
        .I3(\rout_reg[3]_i_423_n_0 ),
        .I4(row_i[2]),
        .I5(\rout_reg[3]_i_330_n_0 ),
        .O(\rout_reg[3]_i_186_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEAEEEAEEEA)) 
    \rout_reg[3]_i_187 
       (.I0(\rout_reg[3]_i_401_n_0 ),
        .I1(\rout_reg[3]_i_341_n_0 ),
        .I2(\rout_reg[3]_i_428_n_0 ),
        .I3(\rout_reg[3]_i_346_n_0 ),
        .I4(\rout_reg[3]_i_203_n_0 ),
        .I5(\rout_reg[3]_i_79_0 ),
        .O(\rout_reg[3]_i_187_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rout_reg[3]_i_188 
       (.I0(\rout_reg[3]_i_429_n_0 ),
        .I1(\rout_reg[3]_i_198_n_0 ),
        .I2(\rout_reg[3]_i_430_n_0 ),
        .I3(\rout_reg[3]_i_195_n_0 ),
        .I4(\rout_reg[3]_i_431_n_0 ),
        .I5(\rout_reg[3]_i_432_n_0 ),
        .O(\rout_reg[3]_i_188_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0008)) 
    \rout_reg[3]_i_189 
       (.I0(\rout_reg[3]_i_394_n_0 ),
        .I1(\rout_reg[3]_i_55_n_5 ),
        .I2(\rout_reg[3]_i_222_n_0 ),
        .I3(\rout_reg[3]_i_433_n_0 ),
        .I4(\rout_reg[3]_i_434_n_0 ),
        .I5(\rout_reg[3]_i_435_n_0 ),
        .O(\rout_reg[3]_i_189_n_0 ));
  LUT6 #(
    .INIT(64'h4403440077FF77FC)) 
    \rout_reg[3]_i_19 
       (.I0(\rout_reg[3]_i_53_n_0 ),
        .I1(\rout_reg[3]_i_13_n_5 ),
        .I2(\rout_reg[3]_i_13_n_7 ),
        .I3(\rout_reg[3]_i_13_n_6 ),
        .I4(\rout_reg[3]_i_45_n_0 ),
        .I5(\rout_reg[3]_i_57_n_0 ),
        .O(\rout_reg[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rout_reg[3]_i_190 
       (.I0(\rout_reg[3]_i_436_n_0 ),
        .I1(\rout_reg[3]_i_437_n_0 ),
        .I2(\rout_reg[3]_i_195_n_0 ),
        .I3(\rout_reg[3]_i_438_n_0 ),
        .I4(\rout_reg[3]_i_405_n_0 ),
        .I5(\rout_reg[3]_i_439_n_0 ),
        .O(\rout_reg[3]_i_190_n_0 ));
  LUT5 #(
    .INIT(32'h0000202A)) 
    \rout_reg[3]_i_191 
       (.I0(\rout_reg[3]_i_343_n_0 ),
        .I1(\rout_reg[3]_i_440_n_0 ),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\rout_reg[3]_i_142_n_5 ),
        .I4(\rout_reg[3]_i_55_n_4 ),
        .O(\rout_reg[3]_i_191_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \rout_reg[3]_i_192 
       (.I0(\gameover[1][0] ),
        .I1(\col_reg[10]_2 ),
        .I2(\col_reg[10]_1 ),
        .I3(\col_reg[10]_3 ),
        .O(\rout_reg[3]_i_192_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000200020002)) 
    \rout_reg[3]_i_193 
       (.I0(\rout_reg[3]_i_335_n_0 ),
        .I1(O),
        .I2(row_i[1]),
        .I3(row_i[2]),
        .I4(\rout_reg[3]_i_69_0 ),
        .I5(\row_reg[2]_1 ),
        .O(\rout_reg[3]_i_193_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF1F000000)) 
    \rout_reg[3]_i_194 
       (.I0(row_i[2]),
        .I1(row_i[1]),
        .I2(O),
        .I3(\rout_reg[3]_i_334_n_0 ),
        .I4(\rout_reg[3]_i_32_0 ),
        .I5(\rout_reg[3]_i_441_n_0 ),
        .O(\rout_reg[3]_i_194_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \rout_reg[3]_i_195 
       (.I0(\rout_reg[3]_i_55_n_6 ),
        .I1(\rout_reg[3]_i_442_n_0 ),
        .I2(\rout_reg[3]_i_443_n_0 ),
        .I3(\rout_reg[3]_i_338_n_0 ),
        .I4(\rout_reg[3]_i_341_n_0 ),
        .O(\rout_reg[3]_i_195_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000DF)) 
    \rout_reg[3]_i_197 
       (.I0(row_i[0]),
        .I1(\rout_reg[3]_i_222_n_0 ),
        .I2(row_i[1]),
        .I3(\rout_reg[3]_i_55_n_6 ),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .I5(\rout_reg[3]_i_55_n_4 ),
        .O(\rout_reg[3]_i_197_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rout_reg[3]_i_198 
       (.I0(\rout_reg[3]_i_445_n_0 ),
        .I1(\rout_reg[3]_i_446_n_0 ),
        .I2(\rout_reg[3]_i_358_n_0 ),
        .I3(\rout_reg[3]_i_360_n_0 ),
        .I4(\rout_reg[3]_i_192_n_0 ),
        .I5(\rout_reg[3]_i_447_n_0 ),
        .O(\rout_reg[3]_i_198_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FFF8FFF0F8F8)) 
    \rout_reg[3]_i_199 
       (.I0(\rout_reg[3]_i_344_n_0 ),
        .I1(\rout_reg[3]_i_365_n_0 ),
        .I2(\rout_reg[3]_i_392_n_0 ),
        .I3(\rout_reg[3]_i_448_n_0 ),
        .I4(O),
        .I5(row_i[2]),
        .O(\rout_reg[3]_i_199_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \rout_reg[3]_i_20 
       (.CI(\rout_reg[3]_i_58_n_0 ),
        .CO({\NLW_rout_reg[3]_i_20_CO_UNCONNECTED [3:2],\rout_reg[3]_i_20_n_2 ,\NLW_rout_reg[3]_i_20_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\Inst_VGA_Draw/is_text_pixel5 [11],1'b0}),
        .O(\NLW_rout_reg[3]_i_20_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 }));
  LUT6 #(
    .INIT(64'hFFFFF888F000F000)) 
    \rout_reg[3]_i_200 
       (.I0(\rout_reg[3]_i_409_n_0 ),
        .I1(\col_reg[10]_3 ),
        .I2(\rout_reg[3]_i_394_n_0 ),
        .I3(\rout_reg[3]_i_170_n_0 ),
        .I4(\rout_reg[3]_i_449_n_0 ),
        .I5(\rout_reg[3]_i_337_n_0 ),
        .O(\rout_reg[3]_i_200_n_0 ));
  LUT5 #(
    .INIT(32'h13330000)) 
    \rout_reg[3]_i_201 
       (.I0(row_i[1]),
        .I1(O),
        .I2(row_i[2]),
        .I3(row_i[0]),
        .I4(\rout_reg[3]_i_335_n_0 ),
        .O(\rout_reg[3]_i_201_n_0 ));
  LUT5 #(
    .INIT(32'h05A80000)) 
    \rout_reg[3]_i_203 
       (.I0(row_i[2]),
        .I1(row_i[0]),
        .I2(row_i[1]),
        .I3(O),
        .I4(\rout_reg[3]_i_334_n_0 ),
        .O(\rout_reg[3]_i_203_n_0 ));
  LUT5 #(
    .INIT(32'hFFF7FFFF)) 
    \rout_reg[3]_i_205 
       (.I0(row_i[2]),
        .I1(\gameover[8][0] ),
        .I2(\col_reg[10]_1 ),
        .I3(\col_reg[10]_2 ),
        .I4(\col_reg[10]_3 ),
        .O(\rout_reg[3]_i_205_n_0 ));
  LUT5 #(
    .INIT(32'h00003808)) 
    \rout_reg[3]_i_206 
       (.I0(\gameover[8][0] ),
        .I1(\col_reg[10]_3 ),
        .I2(\col_reg[10]_2 ),
        .I3(\start[0][0] ),
        .I4(\col_reg[10]_1 ),
        .O(\rout_reg[3]_i_206_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004D09)) 
    \rout_reg[3]_i_207 
       (.I0(\rout_reg[3]_i_220_n_0 ),
        .I1(row_i[2]),
        .I2(\rout_reg[3]_i_253_n_0 ),
        .I3(\rout_reg[3]_i_450_n_0 ),
        .I4(\rout_reg[3]_i_451_n_0 ),
        .I5(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_207_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAEFAAEFAAAAAA)) 
    \rout_reg[3]_i_208 
       (.I0(\rout_reg[3]_i_452_n_0 ),
        .I1(\rout_reg[3]_i_453_n_0 ),
        .I2(\rout_reg[3]_i_454_n_0 ),
        .I3(\rout_reg[3]_i_55_n_6 ),
        .I4(\rout_reg[3]_i_455_n_0 ),
        .I5(\rout_reg[3]_i_456_n_0 ),
        .O(\rout_reg[3]_i_208_n_0 ));
  LUT5 #(
    .INIT(32'h000000D0)) 
    \rout_reg[3]_i_209 
       (.I0(O),
        .I1(\rout_reg[3]_i_278_n_0 ),
        .I2(\rout_reg[3]_i_266_n_0 ),
        .I3(\rout_reg[3]_i_55_n_6 ),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_209_n_0 ));
  CARRY4 \rout_reg[3]_i_21 
       (.CI(\rout_reg[3]_i_60_n_0 ),
        .CO({\NLW_rout_reg[3]_i_21_CO_UNCONNECTED [3:1],\rout_reg[3]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_rout_reg[3]_i_21_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT6 #(
    .INIT(64'h0003020200030003)) 
    \rout_reg[3]_i_210 
       (.I0(\rout_reg[3]_i_221_n_0 ),
        .I1(\rout_reg[3]_i_55_n_5 ),
        .I2(\rout_reg[3]_i_55_n_6 ),
        .I3(\rout_reg[3]_i_266_n_0 ),
        .I4(\rout_reg[3]_i_278_n_0 ),
        .I5(O),
        .O(\rout_reg[3]_i_210_n_0 ));
  LUT6 #(
    .INIT(64'h01FF01FFFFFF01FF)) 
    \rout_reg[3]_i_211 
       (.I0(\rout_reg[3]_i_457_n_0 ),
        .I1(\rout_reg[3]_i_458_n_0 ),
        .I2(\rout_reg[3]_i_455_n_0 ),
        .I3(\rout_reg[3]_i_55_n_6 ),
        .I4(\rout_reg[3]_i_459_n_0 ),
        .I5(\rout_reg[3]_i_460_n_0 ),
        .O(\rout_reg[3]_i_211_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAACFFFFFFFF)) 
    \rout_reg[3]_i_212 
       (.I0(\rout_reg[3]_i_450_n_0 ),
        .I1(\rout_reg[3]_i_98_n_0 ),
        .I2(\rout_reg[3]_i_222_n_0 ),
        .I3(\rout_reg[3]_i_220_n_0 ),
        .I4(\rout_reg[3]_i_55_n_6 ),
        .I5(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_212_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FF00FFF1FFFF)) 
    \rout_reg[3]_i_213 
       (.I0(row_i[2]),
        .I1(\rout_reg[3]_i_461_n_0 ),
        .I2(\rout_reg[3]_i_462_n_0 ),
        .I3(\rout_reg[3]_i_463_n_0 ),
        .I4(O),
        .I5(\rout_reg[3]_i_221_n_0 ),
        .O(\rout_reg[3]_i_213_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rout_reg[3]_i_214 
       (.I0(row_i[2]),
        .I1(row_i[1]),
        .O(\rout_reg[3]_i_214_n_0 ));
  LUT6 #(
    .INIT(64'h0BBBFBBBB0B0B0B0)) 
    \rout_reg[3]_i_215 
       (.I0(\rout_reg[3]_i_267_n_0 ),
        .I1(\rout_reg[3]_i_285_n_0 ),
        .I2(row_i[1]),
        .I3(row_i[0]),
        .I4(\rout_reg[3]_i_221_n_0 ),
        .I5(row_i[2]),
        .O(\rout_reg[3]_i_215_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAEEEEE)) 
    \rout_reg[3]_i_216 
       (.I0(O),
        .I1(\rout_reg[3]_i_266_n_0 ),
        .I2(row_i[1]),
        .I3(row_i[0]),
        .I4(row_i[2]),
        .I5(\rout_reg[3]_i_110_n_0 ),
        .O(\rout_reg[3]_i_216_n_0 ));
  LUT6 #(
    .INIT(64'h88C0C0C0C0C0C0C0)) 
    \rout_reg[3]_i_217 
       (.I0(\rout_reg[3]_i_91_0 ),
        .I1(O),
        .I2(\rout_reg[3]_i_19_0 ),
        .I3(row_i[0]),
        .I4(row_i[1]),
        .I5(row_i[2]),
        .O(\rout_reg[3]_i_217_n_0 ));
  LUT6 #(
    .INIT(64'h1105000511055505)) 
    \rout_reg[3]_i_218 
       (.I0(\rout_reg[3]_i_55_n_6 ),
        .I1(\rout_reg[3]_i_19_0 ),
        .I2(\rout_reg[3]_i_450_n_0 ),
        .I3(O),
        .I4(\rout_reg[3]_i_238_n_0 ),
        .I5(\rout_reg[3]_i_98_n_0 ),
        .O(\rout_reg[3]_i_218_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8FFF0FFF8FFF)) 
    \rout_reg[3]_i_219 
       (.I0(\rout_reg[3]_i_288_n_0 ),
        .I1(row_i[0]),
        .I2(O),
        .I3(row_i[2]),
        .I4(row_i[1]),
        .I5(\rout_reg[3]_i_450_n_0 ),
        .O(\rout_reg[3]_i_219_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \rout_reg[3]_i_22 
       (.CI(\rout_reg[3]_i_61_n_0 ),
        .CO({\NLW_rout_reg[3]_i_22_CO_UNCONNECTED [3:1],\rout_reg[3]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\rout_reg[3]_i_62_n_0 }),
        .O(\NLW_rout_reg[3]_i_22_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\rout_reg[3]_i_21_n_3 }));
  LUT2 #(
    .INIT(4'h1)) 
    \rout_reg[3]_i_220 
       (.I0(row_i[1]),
        .I1(row_i[0]),
        .O(\rout_reg[3]_i_220_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDF0FFFDFDFFFF)) 
    \rout_reg[3]_i_221 
       (.I0(\gameover[8][0] ),
        .I1(\col_reg[10]_1 ),
        .I2(\col_reg[10]_2 ),
        .I3(\gameover[1][0] ),
        .I4(\col_reg[10]_3 ),
        .I5(\rout_reg[3]_i_68_n_0 ),
        .O(\rout_reg[3]_i_221_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \rout_reg[3]_i_222 
       (.I0(row_i[2]),
        .I1(O),
        .O(\rout_reg[3]_i_222_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \rout_reg[3]_i_223 
       (.I0(\col_reg[10]_2 ),
        .I1(\col_reg[10]_3 ),
        .I2(\gameover[8][0] ),
        .I3(\col_reg[10]_1 ),
        .I4(\rout_reg[3]_i_267_n_0 ),
        .O(\rout_reg[3]_i_223_n_0 ));
  LUT5 #(
    .INIT(32'hFF700000)) 
    \rout_reg[3]_i_224 
       (.I0(row_i[1]),
        .I1(row_i[0]),
        .I2(\rout_reg[3]_i_252_n_0 ),
        .I3(\rout_reg[3]_i_267_n_0 ),
        .I4(row_i[2]),
        .O(\rout_reg[3]_i_224_n_0 ));
  LUT6 #(
    .INIT(64'h000000D0DDDD00D0)) 
    \rout_reg[3]_i_225 
       (.I0(\rout_reg[3]_i_68_n_0 ),
        .I1(\rout_reg[3]_i_465_n_0 ),
        .I2(\rout_reg[3]_i_466_n_0 ),
        .I3(\rout_reg[3]_i_467_n_0 ),
        .I4(\col_reg[10]_1 ),
        .I5(\start[1][0] ),
        .O(\rout_reg[3]_i_225_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \rout_reg[3]_i_226 
       (.I0(\col_reg[10]_2 ),
        .I1(\col_reg[10]_3 ),
        .I2(\gameover[8][0] ),
        .I3(\col_reg[10]_1 ),
        .I4(\rout_reg[3]_i_266_n_0 ),
        .O(\rout_reg[3]_i_226_n_0 ));
  LUT5 #(
    .INIT(32'h00AA00F3)) 
    \rout_reg[3]_i_227 
       (.I0(\rout_reg[3]_i_468_n_0 ),
        .I1(\rout_reg[3]_i_285_n_0 ),
        .I2(\rout_reg[3]_i_266_n_0 ),
        .I3(row_i[1]),
        .I4(row_i[0]),
        .O(\rout_reg[3]_i_227_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rout_reg[3]_i_228 
       (.I0(row_i[1]),
        .I1(\rout_reg[3]_i_469_n_0 ),
        .O(\rout_reg[3]_i_228_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0131FFFFFFFF)) 
    \rout_reg[3]_i_229 
       (.I0(\rout_reg[3]_i_267_n_0 ),
        .I1(O),
        .I2(row_i[2]),
        .I3(\rout_reg[3]_i_470_n_0 ),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .I5(\rout_reg[3]_i_55_n_6 ),
        .O(\rout_reg[3]_i_229_n_0 ));
  CARRY4 \rout_reg[3]_i_23 
       (.CI(\rout_reg[3]_i_63_n_0 ),
        .CO({\NLW_rout_reg[3]_i_23_CO_UNCONNECTED [3],\rout_reg[3]_i_23_n_1 ,\NLW_rout_reg[3]_i_23_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,col_i[10:9]}),
        .O({\NLW_rout_reg[3]_i_23_O_UNCONNECTED [3:2],\Inst_VGA_Draw/is_text_pixel5 [10:9]}),
        .S({1'b0,1'b1,\rout_reg[3]_i_64_n_0 ,\rout_reg[3]_i_65_n_0 }));
  LUT6 #(
    .INIT(64'h1147DD4755475547)) 
    \rout_reg[3]_i_230 
       (.I0(\rout_reg[3]_i_110_n_0 ),
        .I1(row_i[1]),
        .I2(\rout_reg[3]_i_471_n_0 ),
        .I3(row_i[2]),
        .I4(\rout_reg[3]_i_93_n_0 ),
        .I5(row_i[0]),
        .O(\rout_reg[3]_i_230_n_0 ));
  LUT5 #(
    .INIT(32'hE040FFFF)) 
    \rout_reg[3]_i_231 
       (.I0(\rout_reg[3]_i_278_n_0 ),
        .I1(\rout_reg[3]_i_472_n_0 ),
        .I2(O),
        .I3(\rout_reg[3]_i_93_n_0 ),
        .I4(\rout_reg[3]_i_55_n_6 ),
        .O(\rout_reg[3]_i_231_n_0 ));
  LUT5 #(
    .INIT(32'h0015FFFF)) 
    \rout_reg[3]_i_232 
       (.I0(\rout_reg[3]_i_52_0 ),
        .I1(\rout_reg[3]_i_471_n_0 ),
        .I2(O),
        .I3(\rout_reg[3]_i_55_n_6 ),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_232_n_0 ));
  LUT6 #(
    .INIT(64'hEFECEFEFEFECECEC)) 
    \rout_reg[3]_i_233 
       (.I0(\rout_reg[3]_i_19_0 ),
        .I1(\rout_reg[3]_i_55_n_6 ),
        .I2(O),
        .I3(\rout_reg[3]_i_450_n_0 ),
        .I4(\rout_reg[3]_i_271_n_0 ),
        .I5(\rout_reg[3]_i_98_n_0 ),
        .O(\rout_reg[3]_i_233_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF7777F7FFFFFF)) 
    \rout_reg[3]_i_234 
       (.I0(O),
        .I1(row_i[2]),
        .I2(\col_reg[10]_3 ),
        .I3(\rout_reg[3]_i_99_0 ),
        .I4(\rout_reg[3]_i_250_n_0 ),
        .I5(\rout_reg[3]_i_98_n_0 ),
        .O(\rout_reg[3]_i_234_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \rout_reg[3]_i_235 
       (.I0(O),
        .I1(\rout_reg[3]_i_19_0 ),
        .I2(\rout_reg[3]_i_55_n_6 ),
        .O(\rout_reg[3]_i_235_n_0 ));
  LUT6 #(
    .INIT(64'hAABAFFBAAABAAABA)) 
    \rout_reg[3]_i_236 
       (.I0(row_i[2]),
        .I1(\rout_reg[3]_i_110_n_0 ),
        .I2(\rout_reg[3]_i_221_n_0 ),
        .I3(row_i[1]),
        .I4(\rout_reg[3]_i_267_n_0 ),
        .I5(\rout_reg[3]_i_285_n_0 ),
        .O(\rout_reg[3]_i_236_n_0 ));
  LUT6 #(
    .INIT(64'h2AAA2AAA20002AAA)) 
    \rout_reg[3]_i_237 
       (.I0(row_i[2]),
        .I1(\rout_reg[3]_i_221_n_0 ),
        .I2(row_i[0]),
        .I3(row_i[1]),
        .I4(\rout_reg[3]_i_285_n_0 ),
        .I5(\rout_reg[3]_i_267_n_0 ),
        .O(\rout_reg[3]_i_237_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \rout_reg[3]_i_238 
       (.I0(row_i[2]),
        .I1(row_i[0]),
        .I2(row_i[1]),
        .O(\rout_reg[3]_i_238_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \rout_reg[3]_i_239 
       (.I0(\rout_reg[3]_i_93_n_0 ),
        .I1(row_i[0]),
        .I2(row_i[1]),
        .I3(\rout_reg[3]_i_469_n_0 ),
        .O(\rout_reg[3]_i_239_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rout_reg[3]_i_24 
       (.I0(col_i[4]),
        .I1(\col_reg[10]_3 ),
        .O(\rout_reg[3]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rout_reg[3]_i_240 
       (.I0(row_i[2]),
        .I1(O),
        .O(\rout_reg[3]_i_240_n_0 ));
  LUT5 #(
    .INIT(32'h11100010)) 
    \rout_reg[3]_i_241 
       (.I0(row_i[2]),
        .I1(O),
        .I2(\rout_reg[3]_i_471_n_0 ),
        .I3(row_i[1]),
        .I4(\rout_reg[3]_i_469_n_0 ),
        .O(\rout_reg[3]_i_241_n_0 ));
  LUT6 #(
    .INIT(64'hC088888888888888)) 
    \rout_reg[3]_i_242 
       (.I0(\rout_reg[3]_i_93_n_0 ),
        .I1(O),
        .I2(\rout_reg[3]_i_472_n_0 ),
        .I3(row_i[0]),
        .I4(row_i[1]),
        .I5(row_i[2]),
        .O(\rout_reg[3]_i_242_n_0 ));
  LUT6 #(
    .INIT(64'h111155551133550F)) 
    \rout_reg[3]_i_243 
       (.I0(\rout_reg[3]_i_52_0 ),
        .I1(\rout_reg[3]_i_471_n_0 ),
        .I2(\rout_reg[3]_i_474_n_0 ),
        .I3(row_i[2]),
        .I4(O),
        .I5(\rout_reg[3]_i_250_n_0 ),
        .O(\rout_reg[3]_i_243_n_0 ));
  LUT6 #(
    .INIT(64'h00001011FFFFFFFF)) 
    \rout_reg[3]_i_244 
       (.I0(\rout_reg[3]_i_266_n_0 ),
        .I1(\rout_reg[3]_i_252_n_0 ),
        .I2(\rout_reg[3]_i_253_n_0 ),
        .I3(\rout_reg[3]_i_220_n_0 ),
        .I4(row_i[2]),
        .I5(O),
        .O(\rout_reg[3]_i_244_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \rout_reg[3]_i_245 
       (.I0(row_i[2]),
        .I1(\rout_reg[3]_i_474_n_0 ),
        .I2(row_i[1]),
        .O(\rout_reg[3]_i_245_n_0 ));
  LUT6 #(
    .INIT(64'h4444444445444444)) 
    \rout_reg[3]_i_246 
       (.I0(O),
        .I1(\rout_reg[3]_i_267_n_0 ),
        .I2(\col_reg[10]_1 ),
        .I3(\gameover[8][0] ),
        .I4(\col_reg[10]_3 ),
        .I5(\col_reg[10]_2 ),
        .O(\rout_reg[3]_i_246_n_0 ));
  LUT6 #(
    .INIT(64'h2000200075FF2000)) 
    \rout_reg[3]_i_247 
       (.I0(\rout_reg[3]_i_214_n_0 ),
        .I1(\rout_reg[3]_i_267_n_0 ),
        .I2(\rout_reg[3]_i_285_n_0 ),
        .I3(O),
        .I4(\rout_reg[3]_i_221_n_0 ),
        .I5(\rout_reg[3]_i_110_n_0 ),
        .O(\rout_reg[3]_i_247_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEABEFFFFFABEF)) 
    \rout_reg[3]_i_248 
       (.I0(\col_reg[10]_1 ),
        .I1(\col_reg[10]_3 ),
        .I2(\gameover[1][0] ),
        .I3(\gameover[8][0] ),
        .I4(\col_reg[10]_2 ),
        .I5(\start[0][0] ),
        .O(\rout_reg[3]_i_248_n_0 ));
  LUT6 #(
    .INIT(64'h11C0DDF3FFFFFFFF)) 
    \rout_reg[3]_i_249 
       (.I0(\rout_reg[3]_i_248_n_0 ),
        .I1(row_i[2]),
        .I2(\rout_reg[3]_i_288_n_0 ),
        .I3(\rout_reg[3]_i_220_n_0 ),
        .I4(\rout_reg[3]_i_221_n_0 ),
        .I5(O),
        .O(\rout_reg[3]_i_249_n_0 ));
  LUT5 #(
    .INIT(32'h78878778)) 
    \rout_reg[3]_i_25 
       (.I0(\col_reg[10]_2 ),
        .I1(col_i[5]),
        .I2(col_i[6]),
        .I3(\col_reg[10]_3 ),
        .I4(\rout_reg[3]_i_68_n_0 ),
        .O(\rout_reg[3]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rout_reg[3]_i_250 
       (.I0(row_i[0]),
        .I1(row_i[1]),
        .O(\rout_reg[3]_i_250_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8AAAFFFFCFFF)) 
    \rout_reg[3]_i_251 
       (.I0(\rout_reg[3]_i_68_n_0 ),
        .I1(\col_reg[10]_1 ),
        .I2(\col_reg[10]_2 ),
        .I3(\start[0][0] ),
        .I4(\col_reg[10]_3 ),
        .I5(\start[1][0] ),
        .O(\rout_reg[3]_i_251_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \rout_reg[3]_i_252 
       (.I0(\rout_reg[3]_i_68_n_0 ),
        .I1(\gameover[8][0] ),
        .I2(\col_reg[10]_3 ),
        .I3(\col_reg[10]_2 ),
        .O(\rout_reg[3]_i_252_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \rout_reg[3]_i_253 
       (.I0(\col_reg[10]_1 ),
        .I1(\col_reg[10]_3 ),
        .I2(\gameover[1][0] ),
        .I3(\col_reg[10]_2 ),
        .O(\rout_reg[3]_i_253_n_0 ));
  LUT6 #(
    .INIT(64'h8C8C8C88BFBFBFFF)) 
    \rout_reg[3]_i_254 
       (.I0(O),
        .I1(\rout_reg[3]_i_55_n_6 ),
        .I2(\rout_reg[3]_i_19_0 ),
        .I3(row_i[2]),
        .I4(row_i[1]),
        .I5(\rout_reg[3]_i_288_n_0 ),
        .O(\rout_reg[3]_i_254_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \rout_reg[3]_i_255 
       (.I0(\rout_reg[3]_i_68_n_0 ),
        .I1(\col_reg[10]_3 ),
        .I2(\gameover[1][0] ),
        .I3(\col_reg[10]_2 ),
        .O(\rout_reg[3]_i_255_n_0 ));
  LUT6 #(
    .INIT(64'h0101010001010111)) 
    \rout_reg[3]_i_256 
       (.I0(row_i[2]),
        .I1(\rout_reg[3]_i_110_n_0 ),
        .I2(\rout_reg[3]_i_252_n_0 ),
        .I3(row_i[0]),
        .I4(row_i[1]),
        .I5(\rout_reg[3]_i_255_n_0 ),
        .O(\rout_reg[3]_i_256_n_0 ));
  LUT4 #(
    .INIT(16'h0D01)) 
    \rout_reg[3]_i_257 
       (.I0(\rout_reg[3]_i_117_0 ),
        .I1(row_i[0]),
        .I2(row_i[1]),
        .I3(\rout_reg[3]_i_471_n_0 ),
        .O(\rout_reg[3]_i_257_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAB800)) 
    \rout_reg[3]_i_258 
       (.I0(\start[1][0] ),
        .I1(\col_reg[10]_3 ),
        .I2(\start[0][0] ),
        .I3(\col_reg[10]_2 ),
        .I4(\col_reg[10]_1 ),
        .I5(\rout_reg[3]_i_255_n_0 ),
        .O(\rout_reg[3]_i_258_n_0 ));
  LUT5 #(
    .INIT(32'h0000FE02)) 
    \rout_reg[3]_i_259 
       (.I0(\rout_reg[3]_i_276_n_0 ),
        .I1(row_i[1]),
        .I2(row_i[2]),
        .I3(\rout_reg[3]_i_93_n_0 ),
        .I4(O),
        .O(\rout_reg[3]_i_259_n_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \rout_reg[3]_i_26 
       (.I0(\col_reg[10]_3 ),
        .I1(col_i[4]),
        .I2(\col_reg[10]_2 ),
        .I3(col_i[5]),
        .O(\rout_reg[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000707070707)) 
    \rout_reg[3]_i_260 
       (.I0(O),
        .I1(\rout_reg[3]_i_276_n_0 ),
        .I2(\rout_reg[3]_i_55_n_6 ),
        .I3(row_i[2]),
        .I4(\rout_reg[3]_i_250_n_0 ),
        .I5(\rout_reg[3]_i_476_n_0 ),
        .O(\rout_reg[3]_i_260_n_0 ));
  LUT5 #(
    .INIT(32'h00070000)) 
    \rout_reg[3]_i_261 
       (.I0(row_i[1]),
        .I1(row_i[0]),
        .I2(O),
        .I3(row_i[2]),
        .I4(\rout_reg[3]_i_474_n_0 ),
        .O(\rout_reg[3]_i_261_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FFF1B00000000)) 
    \rout_reg[3]_i_262 
       (.I0(\rout_reg[3]_i_250_n_0 ),
        .I1(\rout_reg[3]_i_469_n_0 ),
        .I2(\rout_reg[3]_i_93_n_0 ),
        .I3(O),
        .I4(row_i[2]),
        .I5(\rout_reg[3]_i_477_n_0 ),
        .O(\rout_reg[3]_i_262_n_0 ));
  LUT6 #(
    .INIT(64'h0F77FFFF0F220000)) 
    \rout_reg[3]_i_263 
       (.I0(row_i[1]),
        .I1(\rout_reg[3]_i_267_n_0 ),
        .I2(\rout_reg[3]_i_478_n_0 ),
        .I3(row_i[2]),
        .I4(O),
        .I5(\rout_reg[3]_i_225_n_0 ),
        .O(\rout_reg[3]_i_263_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \rout_reg[3]_i_264 
       (.I0(row_i[1]),
        .I1(\rout_reg[3]_i_117_0 ),
        .I2(row_i[0]),
        .I3(\rout_reg[3]_i_251_n_0 ),
        .O(\rout_reg[3]_i_264_n_0 ));
  LUT5 #(
    .INIT(32'h535F5350)) 
    \rout_reg[3]_i_265 
       (.I0(\rout_reg[3]_i_469_n_0 ),
        .I1(\rout_reg[3]_i_471_n_0 ),
        .I2(row_i[1]),
        .I3(row_i[0]),
        .I4(\rout_reg[3]_i_117_0 ),
        .O(\rout_reg[3]_i_265_n_0 ));
  LUT4 #(
    .INIT(16'h80F0)) 
    \rout_reg[3]_i_266 
       (.I0(\col_reg[10]_3 ),
        .I1(\col_reg[10]_2 ),
        .I2(\start[1][0] ),
        .I3(\rout_reg[3]_i_68_n_0 ),
        .O(\rout_reg[3]_i_266_n_0 ));
  LUT5 #(
    .INIT(32'h8830AAAA)) 
    \rout_reg[3]_i_267 
       (.I0(\start[1][0] ),
        .I1(\col_reg[10]_2 ),
        .I2(\gameover[1][0] ),
        .I3(\col_reg[10]_3 ),
        .I4(\rout_reg[3]_i_68_n_0 ),
        .O(\rout_reg[3]_i_267_n_0 ));
  LUT5 #(
    .INIT(32'hF0F2FFF2)) 
    \rout_reg[3]_i_268 
       (.I0(\rout_reg[3]_i_221_n_0 ),
        .I1(\rout_reg[3]_i_110_n_0 ),
        .I2(row_i[2]),
        .I3(row_i[1]),
        .I4(\rout_reg[3]_i_267_n_0 ),
        .O(\rout_reg[3]_i_268_n_0 ));
  LUT4 #(
    .INIT(16'h5504)) 
    \rout_reg[3]_i_269 
       (.I0(\rout_reg[3]_i_55_n_6 ),
        .I1(\rout_reg[3]_i_221_n_0 ),
        .I2(\rout_reg[3]_i_110_n_0 ),
        .I3(O),
        .O(\rout_reg[3]_i_269_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_27 
       (.I0(col_i[4]),
        .I1(\col_reg[10]_3 ),
        .O(\rout_reg[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h4555555540000000)) 
    \rout_reg[3]_i_270 
       (.I0(O),
        .I1(\rout_reg[3]_i_93_n_0 ),
        .I2(row_i[0]),
        .I3(row_i[1]),
        .I4(row_i[2]),
        .I5(\rout_reg[3]_i_276_n_0 ),
        .O(\rout_reg[3]_i_270_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \rout_reg[3]_i_271 
       (.I0(row_i[2]),
        .I1(row_i[1]),
        .I2(row_i[0]),
        .O(\rout_reg[3]_i_271_n_0 ));
  LUT4 #(
    .INIT(16'hAFBF)) 
    \rout_reg[3]_i_273 
       (.I0(\rout_reg[3]_i_55_n_5 ),
        .I1(\rout_reg[3]_i_266_n_0 ),
        .I2(\rout_reg[3]_i_55_n_6 ),
        .I3(O),
        .O(\rout_reg[3]_i_273_n_0 ));
  LUT6 #(
    .INIT(64'h0B0B0B08FFFFFFFF)) 
    \rout_reg[3]_i_274 
       (.I0(\rout_reg[3]_i_266_n_0 ),
        .I1(\rout_reg[3]_i_220_n_0 ),
        .I2(row_i[2]),
        .I3(\rout_reg[3]_i_110_n_0 ),
        .I4(\rout_reg[3]_i_252_n_0 ),
        .I5(O),
        .O(\rout_reg[3]_i_274_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rout_reg[3]_i_275 
       (.I0(\rout_reg[3]_i_55_n_6 ),
        .I1(\rout_reg[3]_i_52_0 ),
        .O(\rout_reg[3]_i_275_n_0 ));
  LUT4 #(
    .INIT(16'hE0A0)) 
    \rout_reg[3]_i_276 
       (.I0(\col_reg[10]_1 ),
        .I1(\col_reg[10]_2 ),
        .I2(\start[1][0] ),
        .I3(\col_reg[10]_3 ),
        .O(\rout_reg[3]_i_276_n_0 ));
  LUT5 #(
    .INIT(32'hFF00E040)) 
    \rout_reg[3]_i_277 
       (.I0(\col_reg[10]_3 ),
        .I1(\start[0][0] ),
        .I2(\col_reg[10]_2 ),
        .I3(\start[1][0] ),
        .I4(\col_reg[10]_1 ),
        .O(\rout_reg[3]_i_277_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \rout_reg[3]_i_278 
       (.I0(row_i[2]),
        .I1(row_i[1]),
        .I2(row_i[0]),
        .O(\rout_reg[3]_i_278_n_0 ));
  LUT6 #(
    .INIT(64'hC088888888888888)) 
    \rout_reg[3]_i_279 
       (.I0(\rout_reg[3]_i_110_n_0 ),
        .I1(O),
        .I2(\rout_reg[3]_i_277_n_0 ),
        .I3(row_i[0]),
        .I4(row_i[1]),
        .I5(row_i[2]),
        .O(\rout_reg[3]_i_279_n_0 ));
  LUT6 #(
    .INIT(64'h5050303F5F5F303F)) 
    \rout_reg[3]_i_28 
       (.I0(\rout_reg[3]_i_69_n_0 ),
        .I1(\rout_reg[3]_i_70_n_0 ),
        .I2(\rout_reg[3]_i_13_n_4 ),
        .I3(\rout_reg[3]_i_71_n_0 ),
        .I4(\rout_reg[3]_i_13_n_5 ),
        .I5(\rout_reg[3]_i_72_n_0 ),
        .O(\rout_reg[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00000000ACCACCCA)) 
    \rout_reg[3]_i_280 
       (.I0(\rout_reg[3]_i_110_n_0 ),
        .I1(\rout_reg[3]_i_276_n_0 ),
        .I2(row_i[2]),
        .I3(row_i[1]),
        .I4(row_i[0]),
        .I5(O),
        .O(\rout_reg[3]_i_280_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0F080808000)) 
    \rout_reg[3]_i_281 
       (.I0(\rout_reg[3]_i_110_n_0 ),
        .I1(row_i[2]),
        .I2(O),
        .I3(row_i[0]),
        .I4(row_i[1]),
        .I5(\rout_reg[3]_i_471_n_0 ),
        .O(\rout_reg[3]_i_281_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0E0E0EFE0EFE0)) 
    \rout_reg[3]_i_282 
       (.I0(\rout_reg[3]_i_481_n_0 ),
        .I1(\rout_reg[3]_i_482_n_0 ),
        .I2(\rout_reg[3]_i_55_n_6 ),
        .I3(\rout_reg[3]_i_483_n_0 ),
        .I4(\rout_reg[3]_i_216_n_0 ),
        .I5(\rout_reg[3]_i_285_n_0 ),
        .O(\rout_reg[3]_i_282_n_0 ));
  LUT6 #(
    .INIT(64'h08008888FFFFFFFF)) 
    \rout_reg[3]_i_283 
       (.I0(\rout_reg[3]_i_55_n_6 ),
        .I1(O),
        .I2(row_i[2]),
        .I3(\rout_reg[3]_i_19_0 ),
        .I4(\rout_reg[3]_i_205_n_0 ),
        .I5(\rout_reg[3]_i_254_n_0 ),
        .O(\rout_reg[3]_i_283_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA02AA00AA00)) 
    \rout_reg[3]_i_284 
       (.I0(\rout_reg[3]_i_484_n_0 ),
        .I1(row_i[1]),
        .I2(row_i[0]),
        .I3(row_i[2]),
        .I4(\rout_reg[3]_i_253_n_0 ),
        .I5(\rout_reg[3]_i_285_n_0 ),
        .O(\rout_reg[3]_i_284_n_0 ));
  LUT4 #(
    .INIT(16'hFFBF)) 
    \rout_reg[3]_i_285 
       (.I0(\col_reg[10]_1 ),
        .I1(\gameover[8][0] ),
        .I2(\col_reg[10]_3 ),
        .I3(\col_reg[10]_2 ),
        .O(\rout_reg[3]_i_285_n_0 ));
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \rout_reg[3]_i_286 
       (.I0(\rout_reg[3]_i_266_n_0 ),
        .I1(row_i[2]),
        .I2(row_i[1]),
        .I3(row_i[0]),
        .I4(O),
        .O(\rout_reg[3]_i_286_n_0 ));
  LUT4 #(
    .INIT(16'hFFBF)) 
    \rout_reg[3]_i_287 
       (.I0(\col_reg[10]_2 ),
        .I1(\col_reg[10]_3 ),
        .I2(\gameover[8][0] ),
        .I3(\col_reg[10]_1 ),
        .O(\rout_reg[3]_i_287_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \rout_reg[3]_i_288 
       (.I0(\col_reg[10]_2 ),
        .I1(\gameover[8][0] ),
        .I2(\col_reg[10]_3 ),
        .I3(\gameover[1][0] ),
        .I4(\col_reg[10]_1 ),
        .O(\rout_reg[3]_i_288_n_0 ));
  LUT6 #(
    .INIT(64'h4E0F4E0F0F000FFF)) 
    \rout_reg[3]_i_289 
       (.I0(\rout_reg[3]_i_220_n_0 ),
        .I1(\rout_reg[3]_i_288_n_0 ),
        .I2(\rout_reg[3]_i_221_n_0 ),
        .I3(row_i[2]),
        .I4(\rout_reg[3]_i_248_n_0 ),
        .I5(O),
        .O(\rout_reg[3]_i_289_n_0 ));
  LUT5 #(
    .INIT(32'h888BBB8B)) 
    \rout_reg[3]_i_29 
       (.I0(\rout_reg[3]_i_73_n_0 ),
        .I1(\rout_reg[3]_i_13_n_4 ),
        .I2(\rout_reg[3]_i_74_n_0 ),
        .I3(\rout_reg[3]_i_13_n_5 ),
        .I4(\rout_reg[3]_i_75_n_0 ),
        .O(\rout_reg[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h270F270F0F000FFF)) 
    \rout_reg[3]_i_290 
       (.I0(row_i[0]),
        .I1(\rout_reg[3]_i_248_n_0 ),
        .I2(\rout_reg[3]_i_225_n_0 ),
        .I3(row_i[1]),
        .I4(\rout_reg[3]_i_117_0 ),
        .I5(row_i[2]),
        .O(\rout_reg[3]_i_290_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \rout_reg[3]_i_291 
       (.CI(1'b0),
        .CO({\rout_reg[3]_i_291_n_0 ,\NLW_rout_reg[3]_i_291_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\rout_reg[3]_i_485_n_0 ,\rout_reg[3]_i_486_n_0 ,\rout_reg[3]_i_487_n_0 }),
        .O(\NLW_rout_reg[3]_i_291_O_UNCONNECTED [3:0]),
        .S({\rout_reg[3]_i_488_n_0 ,\rout_reg[3]_i_489_n_0 ,\rout_reg[3]_i_490_n_0 ,\rout_reg[3]_i_491_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \rout_reg[3]_i_292 
       (.I0(\rout_reg[3]_i_55_n_4 ),
        .I1(\rout_reg[3]_i_60_n_7 ),
        .O(\rout_reg[3]_i_292_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rout_reg[3]_i_293 
       (.I0(row_i[1]),
        .I1(row_i[0]),
        .O(\rout_reg[3]_i_293_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rout_reg[3]_i_294 
       (.I0(\rout_reg[3]_i_55_n_4 ),
        .I1(\rout_reg[3]_i_60_n_7 ),
        .O(\rout_reg[3]_i_294_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rout_reg[3]_i_295 
       (.I0(\rout_reg[3]_i_55_n_5 ),
        .I1(\rout_reg[3]_i_55_n_6 ),
        .O(\rout_reg[3]_i_295_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rout_reg[3]_i_296 
       (.I0(O),
        .I1(row_i[2]),
        .O(\rout_reg[3]_i_296_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rout_reg[3]_i_297 
       (.I0(row_i[0]),
        .I1(row_i[1]),
        .O(\rout_reg[3]_i_297_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_298 
       (.I0(col_i[3]),
        .O(\rout_reg[3]_i_298_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_299 
       (.I0(col_i[2]),
        .O(\rout_reg[3]_i_299_n_0 ));
  MUXF7 \rout_reg[3]_i_3 
       (.I0(\rout_reg[3]_i_9_n_0 ),
        .I1(\rout_reg[3]_i_10_n_0 ),
        .O(\rout_reg[3]_i_3_n_0 ),
        .S(\rout_reg[3]_i_8_n_5 ));
  LUT6 #(
    .INIT(64'h5050303F5F5F303F)) 
    \rout_reg[3]_i_30 
       (.I0(\rout_reg[3]_i_76_n_0 ),
        .I1(\rout_reg[3]_i_77_n_0 ),
        .I2(\rout_reg[3]_i_13_n_4 ),
        .I3(\rout_reg[3]_i_78_n_0 ),
        .I4(\rout_reg[3]_i_13_n_5 ),
        .I5(\rout_reg[3]_i_79_n_0 ),
        .O(\rout_reg[3]_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_300 
       (.I0(\rout_reg[3]_i_140_n_5 ),
        .O(\rout_reg[3]_i_300_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_301 
       (.CI(\rout_reg[3]_i_492_n_0 ),
        .CO({\rout_reg[3]_i_301_n_0 ,\NLW_rout_reg[3]_i_301_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_493_n_0 ,\rout_reg[3]_i_494_n_0 ,\rout_reg[3]_i_495_n_0 ,\rout_reg[3]_i_496_n_0 }),
        .O(\NLW_rout_reg[3]_i_301_O_UNCONNECTED [3:0]),
        .S({\rout_reg[3]_i_497_n_0 ,\rout_reg[3]_i_498_n_0 ,\rout_reg[3]_i_499_n_0 ,\rout_reg[3]_i_500_n_0 }));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_302 
       (.I0(\rout_reg[3]_i_139_n_7 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [29]),
        .O(\rout_reg[3]_i_302_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_303 
       (.I0(\rout_reg[3]_i_307_n_4 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [28]),
        .O(\rout_reg[3]_i_303_n_0 ));
  LUT5 #(
    .INIT(32'hCCB4334B)) 
    \rout_reg[3]_i_304 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I1(\rout_reg[3]_i_139_n_7 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_139_n_6 ),
        .O(\rout_reg[3]_i_304_n_0 ));
  LUT5 #(
    .INIT(32'hCCB4334B)) 
    \rout_reg[3]_i_305 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I1(\rout_reg[3]_i_307_n_4 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_139_n_7 ),
        .O(\rout_reg[3]_i_305_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_306 
       (.CI(\rout_reg[3]_i_501_n_0 ),
        .CO({\rout_reg[3]_i_306_n_0 ,\NLW_rout_reg[3]_i_306_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\Inst_VGA_Draw/START[0][0]4 [28:25]),
        .S({\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_307 
       (.CI(\rout_reg[3]_i_502_n_0 ),
        .CO({\rout_reg[3]_i_307_n_0 ,\NLW_rout_reg[3]_i_307_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_308_n_5 ,\rout_reg[3]_i_308_n_6 ,\rout_reg[3]_i_308_n_7 ,\rout_reg[3]_i_503_n_4 }),
        .O({\rout_reg[3]_i_307_n_4 ,\rout_reg[3]_i_307_n_5 ,\rout_reg[3]_i_307_n_6 ,\rout_reg[3]_i_307_n_7 }),
        .S({\rout_reg[3]_i_504_n_0 ,\rout_reg[3]_i_505_n_0 ,\rout_reg[3]_i_506_n_0 ,\rout_reg[3]_i_507_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_308 
       (.CI(\rout_reg[3]_i_503_n_0 ),
        .CO(\NLW_rout_reg[3]_i_308_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\rout_reg[3]_i_508_n_0 ,\rout_reg[3]_i_509_n_0 }),
        .O({\NLW_rout_reg[3]_i_308_O_UNCONNECTED [3],\rout_reg[3]_i_308_n_5 ,\rout_reg[3]_i_308_n_6 ,\rout_reg[3]_i_308_n_7 }),
        .S({1'b0,\rout_reg[3]_i_510_n_0 ,\rout_reg[3]_i_511_n_0 ,\rout_reg[3]_i_512_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_309 
       (.CI(\rout_reg[3]_i_513_n_0 ),
        .CO({\rout_reg[3]_i_309_n_0 ,\NLW_rout_reg[3]_i_309_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_514_n_0 ,\rout_reg[3]_i_515_n_0 ,\rout_reg[3]_i_516_n_0 ,\rout_reg[3]_i_517_n_0 }),
        .O(\NLW_rout_reg[3]_i_309_O_UNCONNECTED [3:0]),
        .S({\rout_reg[3]_i_518_n_0 ,\rout_reg[3]_i_519_n_0 ,\rout_reg[3]_i_520_n_0 ,\rout_reg[3]_i_521_n_0 }));
  MUXF7 \rout_reg[3]_i_31 
       (.I0(\rout_reg[3]_i_80_n_0 ),
        .I1(\rout_reg[3]_i_81_n_0 ),
        .O(\rout_reg[3]_i_31_n_0 ),
        .S(\rout_reg[3]_i_13_n_4 ));
  (* HLUTNM = "lutpair61" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_310 
       (.I0(\rout_reg[3]_i_522_n_7 ),
        .I1(\rout_reg[3]_i_523_n_7 ),
        .I2(\rout_reg[3]_i_524_n_7 ),
        .O(\rout_reg[3]_i_310_n_0 ));
  (* HLUTNM = "lutpair60" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_311 
       (.I0(\rout_reg[3]_i_525_n_4 ),
        .I1(\rout_reg[3]_i_526_n_4 ),
        .I2(\rout_reg[3]_i_527_n_4 ),
        .O(\rout_reg[3]_i_311_n_0 ));
  (* HLUTNM = "lutpair59" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_312 
       (.I0(\rout_reg[3]_i_525_n_5 ),
        .I1(\rout_reg[3]_i_526_n_5 ),
        .I2(\rout_reg[3]_i_527_n_5 ),
        .O(\rout_reg[3]_i_312_n_0 ));
  (* HLUTNM = "lutpair58" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_313 
       (.I0(\rout_reg[3]_i_525_n_6 ),
        .I1(\rout_reg[3]_i_526_n_6 ),
        .I2(\rout_reg[3]_i_527_n_6 ),
        .O(\rout_reg[3]_i_313_n_0 ));
  (* HLUTNM = "lutpair62" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_314 
       (.I0(\rout_reg[3]_i_522_n_6 ),
        .I1(\rout_reg[3]_i_523_n_6 ),
        .I2(\rout_reg[3]_i_524_n_6 ),
        .I3(\rout_reg[3]_i_310_n_0 ),
        .O(\rout_reg[3]_i_314_n_0 ));
  (* HLUTNM = "lutpair61" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_315 
       (.I0(\rout_reg[3]_i_522_n_7 ),
        .I1(\rout_reg[3]_i_523_n_7 ),
        .I2(\rout_reg[3]_i_524_n_7 ),
        .I3(\rout_reg[3]_i_311_n_0 ),
        .O(\rout_reg[3]_i_315_n_0 ));
  (* HLUTNM = "lutpair60" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_316 
       (.I0(\rout_reg[3]_i_525_n_4 ),
        .I1(\rout_reg[3]_i_526_n_4 ),
        .I2(\rout_reg[3]_i_527_n_4 ),
        .I3(\rout_reg[3]_i_312_n_0 ),
        .O(\rout_reg[3]_i_316_n_0 ));
  (* HLUTNM = "lutpair59" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_317 
       (.I0(\rout_reg[3]_i_525_n_5 ),
        .I1(\rout_reg[3]_i_526_n_5 ),
        .I2(\rout_reg[3]_i_527_n_5 ),
        .I3(\rout_reg[3]_i_313_n_0 ),
        .O(\rout_reg[3]_i_317_n_0 ));
  LUT6 #(
    .INIT(64'h5555404455557F77)) 
    \rout_reg[3]_i_318 
       (.I0(\rout_reg[3]_i_140_n_5 ),
        .I1(\rout_reg[3]_i_139_n_6 ),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I4(\rout_reg[3]_i_137_n_2 ),
        .I5(\rout_reg[3]_i_136_n_7 ),
        .O(\rout_reg[3]_i_318_n_0 ));
  LUT6 #(
    .INIT(64'h5555404455557F77)) 
    \rout_reg[3]_i_319 
       (.I0(\rout_reg[3]_i_143_n_6 ),
        .I1(\rout_reg[3]_i_139_n_6 ),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I4(\rout_reg[3]_i_137_n_2 ),
        .I5(\rout_reg[3]_i_136_n_4 ),
        .O(\rout_reg[3]_i_319_n_0 ));
  LUT6 #(
    .INIT(64'h5555FFFF5777F777)) 
    \rout_reg[3]_i_32 
       (.I0(\rout_reg[3]_i_13_n_4 ),
        .I1(\rout_reg[3]_i_82_n_0 ),
        .I2(\rout_reg[3]_i_13_n_6 ),
        .I3(\rout_reg[3]_i_13_n_7 ),
        .I4(\rout_reg[3]_i_83_n_0 ),
        .I5(\rout_reg[3]_i_13_n_5 ),
        .O(\rout_reg[3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h00101111FFDFDDDD)) 
    \rout_reg[3]_i_320 
       (.I0(\rout_reg[3]_i_136_n_5 ),
        .I1(\rout_reg[3]_i_137_n_2 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_139_n_6 ),
        .I5(\rout_reg[3]_i_143_n_7 ),
        .O(\rout_reg[3]_i_320_n_0 ));
  LUT6 #(
    .INIT(64'h00101111FFDFDDDD)) 
    \rout_reg[3]_i_321 
       (.I0(\rout_reg[3]_i_136_n_6 ),
        .I1(\rout_reg[3]_i_137_n_2 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_139_n_6 ),
        .I5(\rout_reg[3]_i_140_n_4 ),
        .O(\rout_reg[3]_i_321_n_0 ));
  (* HLUTNM = "lutpair65" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_322 
       (.I0(\rout_reg[3]_i_528_n_7 ),
        .I1(\rout_reg[3]_i_529_n_7 ),
        .I2(\rout_reg[3]_i_530_n_7 ),
        .O(\rout_reg[3]_i_322_n_0 ));
  (* HLUTNM = "lutpair64" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_323 
       (.I0(\rout_reg[3]_i_522_n_4 ),
        .I1(\rout_reg[3]_i_523_n_4 ),
        .I2(\rout_reg[3]_i_524_n_4 ),
        .O(\rout_reg[3]_i_323_n_0 ));
  (* HLUTNM = "lutpair63" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_324 
       (.I0(\rout_reg[3]_i_522_n_5 ),
        .I1(\rout_reg[3]_i_523_n_5 ),
        .I2(\rout_reg[3]_i_524_n_5 ),
        .O(\rout_reg[3]_i_324_n_0 ));
  (* HLUTNM = "lutpair62" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_325 
       (.I0(\rout_reg[3]_i_522_n_6 ),
        .I1(\rout_reg[3]_i_523_n_6 ),
        .I2(\rout_reg[3]_i_524_n_6 ),
        .O(\rout_reg[3]_i_325_n_0 ));
  (* HLUTNM = "lutpair66" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_326 
       (.I0(\rout_reg[3]_i_528_n_6 ),
        .I1(\rout_reg[3]_i_529_n_6 ),
        .I2(\rout_reg[3]_i_530_n_6 ),
        .I3(\rout_reg[3]_i_322_n_0 ),
        .O(\rout_reg[3]_i_326_n_0 ));
  (* HLUTNM = "lutpair65" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_327 
       (.I0(\rout_reg[3]_i_528_n_7 ),
        .I1(\rout_reg[3]_i_529_n_7 ),
        .I2(\rout_reg[3]_i_530_n_7 ),
        .I3(\rout_reg[3]_i_323_n_0 ),
        .O(\rout_reg[3]_i_327_n_0 ));
  (* HLUTNM = "lutpair64" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_328 
       (.I0(\rout_reg[3]_i_522_n_4 ),
        .I1(\rout_reg[3]_i_523_n_4 ),
        .I2(\rout_reg[3]_i_524_n_4 ),
        .I3(\rout_reg[3]_i_324_n_0 ),
        .O(\rout_reg[3]_i_328_n_0 ));
  (* HLUTNM = "lutpair63" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_329 
       (.I0(\rout_reg[3]_i_522_n_5 ),
        .I1(\rout_reg[3]_i_523_n_5 ),
        .I2(\rout_reg[3]_i_524_n_5 ),
        .I3(\rout_reg[3]_i_325_n_0 ),
        .O(\rout_reg[3]_i_329_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BF83BF80BC80)) 
    \rout_reg[3]_i_33 
       (.I0(\rout_reg[3]_i_82_n_0 ),
        .I1(\rout_reg[3]_i_13_n_5 ),
        .I2(\rout_reg[3]_i_13_n_6 ),
        .I3(\rout_reg[3]_i_84_n_0 ),
        .I4(\rout_reg[3]_i_13_n_7 ),
        .I5(\rout_reg[3]_i_69_n_0 ),
        .O(\rout_reg[3]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h00470000)) 
    \rout_reg[3]_i_330 
       (.I0(\rout_reg[3]_i_440_n_0 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\rout_reg[3]_i_142_n_5 ),
        .I3(\rout_reg[3]_i_55_n_4 ),
        .I4(\rout_reg[3]_i_55_n_6 ),
        .O(\rout_reg[3]_i_330_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \rout_reg[3]_i_331 
       (.I0(O),
        .I1(row_i[1]),
        .I2(row_i[2]),
        .O(\rout_reg[3]_i_331_n_0 ));
  LUT6 #(
    .INIT(64'h5454540404045404)) 
    \rout_reg[3]_i_332 
       (.I0(\col_reg[10]_3 ),
        .I1(\rout_reg[3]_i_142_n_7 ),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\rout_reg[3]_i_140_n_4 ),
        .I4(\rout_reg[3]_i_141_n_0 ),
        .I5(\rout_reg[3]_i_136_n_6 ),
        .O(\rout_reg[3]_i_332_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \rout_reg[3]_i_334 
       (.I0(\rout_reg[3]_i_55_n_4 ),
        .I1(\rout_reg[3]_i_55_n_5 ),
        .I2(\rout_reg[3]_i_55_n_6 ),
        .O(\rout_reg[3]_i_334_n_0 ));
  LUT6 #(
    .INIT(64'h80800C0000000000)) 
    \rout_reg[3]_i_335 
       (.I0(\gameover[5][0] ),
        .I1(\rout_reg[3]_i_330_n_0 ),
        .I2(\col_reg[10]_3 ),
        .I3(\gameover[0][0] ),
        .I4(\col_reg[10]_1 ),
        .I5(\col_reg[10]_2 ),
        .O(\rout_reg[3]_i_335_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010001)) 
    \rout_reg[3]_i_336 
       (.I0(O),
        .I1(\rout_reg[3]_i_55_n_4 ),
        .I2(\rout_reg[3]_i_55_n_5 ),
        .I3(\rout_reg[3]_i_55_n_6 ),
        .I4(row_i[2]),
        .I5(\rout_reg[3]_i_433_n_0 ),
        .O(\row_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hA2A2A2AA8A888888)) 
    \rout_reg[3]_i_337 
       (.I0(\rout_reg[3]_i_532_n_0 ),
        .I1(\rout_reg[3]_i_55_n_6 ),
        .I2(\rout_reg[3]_i_222_n_0 ),
        .I3(row_i[0]),
        .I4(row_i[1]),
        .I5(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_337_n_0 ));
  LUT5 #(
    .INIT(32'hFFBA00BA)) 
    \rout_reg[3]_i_338 
       (.I0(\rout_reg[3]_i_533_n_0 ),
        .I1(\rout_reg[3]_i_534_n_0 ),
        .I2(\rout_reg[3]_i_68_n_0 ),
        .I3(\col_reg[10]_0 ),
        .I4(\gameover[8][0] ),
        .O(\rout_reg[3]_i_338_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \rout_reg[3]_i_339 
       (.I0(\col_reg[10]_2 ),
        .I1(\col_reg[10]_3 ),
        .I2(\gameover[1][0] ),
        .O(\rout_reg[3]_i_339_n_0 ));
  LUT6 #(
    .INIT(64'h0000044455550444)) 
    \rout_reg[3]_i_34 
       (.I0(\rout_reg[3]_i_13_n_4 ),
        .I1(\rout_reg[3]_i_85_n_0 ),
        .I2(\rout_reg[3]_i_55_n_4 ),
        .I3(\rout_reg[3]_i_56_n_0 ),
        .I4(\rout_reg[3]_i_86_n_0 ),
        .I5(\rout_reg[3]_i_87_n_0 ),
        .O(\rout_reg[3]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h0005CC05)) 
    \rout_reg[3]_i_340 
       (.I0(\rout_reg[3]_i_142_n_6 ),
        .I1(\rout_reg[3]_i_535_n_0 ),
        .I2(\rout_reg[3]_i_142_n_5 ),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_440_n_0 ),
        .O(\rout_reg[3]_i_340_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF54000000)) 
    \rout_reg[3]_i_341 
       (.I0(\rout_reg[3]_i_222_n_0 ),
        .I1(row_i[1]),
        .I2(row_i[0]),
        .I3(\rout_reg[3]_i_55_n_6 ),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .I5(\rout_reg[3]_i_55_n_4 ),
        .O(\rout_reg[3]_i_341_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rout_reg[3]_i_342 
       (.I0(\rout_reg[3]_i_136_n_4 ),
        .I1(\rout_reg[3]_i_141_n_0 ),
        .I2(\rout_reg[3]_i_143_n_6 ),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_142_n_5 ),
        .O(\col_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h55555555EAAAAAAA)) 
    \rout_reg[3]_i_343 
       (.I0(\rout_reg[3]_i_55_n_6 ),
        .I1(row_i[2]),
        .I2(O),
        .I3(row_i[0]),
        .I4(row_i[1]),
        .I5(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_343_n_0 ));
  LUT5 #(
    .INIT(32'h80800C00)) 
    \rout_reg[3]_i_344 
       (.I0(\gameover[5][0] ),
        .I1(\col_reg[10]_2 ),
        .I2(\col_reg[10]_1 ),
        .I3(\gameover[0][0] ),
        .I4(\col_reg[10]_3 ),
        .O(\rout_reg[3]_i_344_n_0 ));
  LUT6 #(
    .INIT(64'hA828A02088088000)) 
    \rout_reg[3]_i_345 
       (.I0(\rout_reg[3]_i_340_n_0 ),
        .I1(\col_reg[10]_2 ),
        .I2(\col_reg[10]_3 ),
        .I3(\gameover[1][0] ),
        .I4(\gameover[0][0] ),
        .I5(\gameover[3][0] ),
        .O(\rout_reg[3]_i_345_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0A00000)) 
    \rout_reg[3]_i_346 
       (.I0(\gameover[3][0] ),
        .I1(\gameover[5][0] ),
        .I2(\col_reg[10]_3 ),
        .I3(\col_reg[10]_2 ),
        .I4(\col_reg[10]_1 ),
        .I5(\col_reg[10]_0 ),
        .O(\rout_reg[3]_i_346_n_0 ));
  LUT5 #(
    .INIT(32'h0000CF88)) 
    \rout_reg[3]_i_347 
       (.I0(\rout_reg[3]_i_390_n_0 ),
        .I1(row_i[2]),
        .I2(\rout_reg[3]_i_55_n_5 ),
        .I3(\rout_reg[3]_i_357_n_0 ),
        .I4(O),
        .O(\rout_reg[3]_i_347_n_0 ));
  LUT6 #(
    .INIT(64'h2223FFFF22220000)) 
    \rout_reg[3]_i_348 
       (.I0(\rout_reg[3]_i_390_n_0 ),
        .I1(row_i[2]),
        .I2(row_i[0]),
        .I3(row_i[1]),
        .I4(O),
        .I5(\rout_reg[3]_i_417_n_0 ),
        .O(\rout_reg[3]_i_348_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \rout_reg[3]_i_349 
       (.I0(row_i[2]),
        .I1(\col_reg[10]_1 ),
        .I2(\gameover[6][0] ),
        .I3(\col_reg[10]_2 ),
        .I4(\col_reg[10]_3 ),
        .I5(\rout_reg[3]_i_422_n_0 ),
        .O(\rout_reg[3]_i_349_n_0 ));
  LUT4 #(
    .INIT(16'h15FF)) 
    \rout_reg[3]_i_35 
       (.I0(\rout_reg[3]_i_88_n_0 ),
        .I1(\rout_reg[3]_i_13_n_7 ),
        .I2(\rout_reg[3]_i_13_n_6 ),
        .I3(\rout_reg[3]_i_13_n_5 ),
        .O(\rout_reg[3]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \rout_reg[3]_i_350 
       (.I0(\rout_reg[3]_i_55_n_6 ),
        .I1(\gameover[8][0] ),
        .I2(\col_reg[10]_0 ),
        .I3(\rout_reg[3]_i_55_n_4 ),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .I5(\rout_reg[3]_i_445_n_0 ),
        .O(\rout_reg[3]_i_350_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rout_reg[3]_i_351 
       (.I0(\rout_reg[3]_i_536_n_0 ),
        .I1(\gameover[3][0] ),
        .I2(\col_reg[10]_3 ),
        .I3(\rout_reg[3]_i_537_n_0 ),
        .I4(\col_reg[10]_2 ),
        .I5(\rout_reg[3]_i_538_n_0 ),
        .O(\rout_reg[3]_i_351_n_0 ));
  LUT5 #(
    .INIT(32'h28A80000)) 
    \rout_reg[3]_i_352 
       (.I0(O),
        .I1(row_i[2]),
        .I2(row_i[1]),
        .I3(row_i[0]),
        .I4(\rout_reg[3]_i_334_n_0 ),
        .O(\row_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0004004400000000)) 
    \rout_reg[3]_i_353 
       (.I0(row_i[2]),
        .I1(\rout_reg[3]_i_55_n_5 ),
        .I2(row_i[0]),
        .I3(O),
        .I4(row_i[1]),
        .I5(\rout_reg[3]_i_425_n_0 ),
        .O(\rout_reg[3]_i_353_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF400F400F400)) 
    \rout_reg[3]_i_354 
       (.I0(\rout_reg[3]_i_55_n_6 ),
        .I1(\rout_reg[3]_i_449_n_0 ),
        .I2(\rout_reg[3]_i_192_n_0 ),
        .I3(\rout_reg[3]_i_442_n_0 ),
        .I4(\rout_reg[3]_i_443_n_0 ),
        .I5(\rout_reg[3]_i_365_n_0 ),
        .O(\rout_reg[3]_i_354_n_0 ));
  LUT6 #(
    .INIT(64'h80A0000080FF0000)) 
    \rout_reg[3]_i_355 
       (.I0(O),
        .I1(\rout_reg[3]_i_539_n_0 ),
        .I2(\rout_reg[3]_i_55_n_5 ),
        .I3(\rout_reg[3]_i_55_n_6 ),
        .I4(\rout_reg[3]_i_532_n_0 ),
        .I5(\rout_reg[3]_i_424_n_0 ),
        .O(\rout_reg[3]_i_355_n_0 ));
  LUT5 #(
    .INIT(32'h1DFC0C1C)) 
    \rout_reg[3]_i_356 
       (.I0(row_i[0]),
        .I1(row_i[1]),
        .I2(O),
        .I3(row_i[2]),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_356_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \rout_reg[3]_i_357 
       (.I0(\gameover[1][0] ),
        .I1(\col_reg[10]_2 ),
        .I2(\col_reg[10]_1 ),
        .I3(\col_reg[10]_3 ),
        .I4(\rout_reg[3]_i_330_n_0 ),
        .O(\rout_reg[3]_i_357_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \rout_reg[3]_i_358 
       (.I0(\rout_reg[3]_i_55_n_5 ),
        .I1(\rout_reg[3]_i_330_n_0 ),
        .I2(\col_reg[10]_3 ),
        .I3(\col_reg[10]_2 ),
        .I4(\gameover[6][0] ),
        .I5(\col_reg[10]_1 ),
        .O(\rout_reg[3]_i_358_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \rout_reg[3]_i_359 
       (.I0(\col_reg[10]_3 ),
        .I1(O),
        .I2(\col_reg[10]_1 ),
        .I3(\col_reg[10]_2 ),
        .I4(\gameover[1][0] ),
        .I5(\rout_reg[3]_i_365_n_0 ),
        .O(\rout_reg[3]_i_359_n_0 ));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    \rout_reg[3]_i_36 
       (.I0(\rout_reg[3]_i_19_0 ),
        .I1(\rout_reg[3]_i_55_n_4 ),
        .I2(\rout_reg[3]_i_90_n_0 ),
        .I3(\rout_reg[3]_i_91_n_0 ),
        .I4(\rout_reg[3]_i_92_n_0 ),
        .O(\rout_reg[3]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rout_reg[3]_i_360 
       (.I0(row_i[2]),
        .I1(O),
        .O(\rout_reg[3]_i_360_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \rout_reg[3]_i_361 
       (.I0(\col_reg[10]_3 ),
        .I1(\col_reg[10]_2 ),
        .I2(\gameover[2][0] ),
        .I3(\col_reg[10]_1 ),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .I5(\rout_reg[3]_i_330_n_0 ),
        .O(\rout_reg[3]_i_361_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \rout_reg[3]_i_362 
       (.I0(\gameover[8][0] ),
        .I1(\col_reg[10]_0 ),
        .I2(\rout_reg[3]_i_160_0 ),
        .I3(\col_reg[10]_3 ),
        .I4(\rout_reg[3]_i_537_n_0 ),
        .I5(\col_reg[10]_2 ),
        .O(\rout_reg[3]_i_362_n_0 ));
  LUT5 #(
    .INIT(32'h00880008)) 
    \rout_reg[3]_i_363 
       (.I0(\rout_reg[3]_i_330_n_0 ),
        .I1(\rout_reg[3]_i_423_n_0 ),
        .I2(row_i[2]),
        .I3(O),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_363_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAEEEAFFFFEEEA)) 
    \rout_reg[3]_i_364 
       (.I0(\rout_reg[3]_i_540_n_0 ),
        .I1(\rout_reg[3]_i_341_n_0 ),
        .I2(\rout_reg[3]_i_541_n_0 ),
        .I3(\rout_reg[3]_i_345_n_0 ),
        .I4(\rout_reg[3]_i_374_n_0 ),
        .I5(\rout_reg[3]_i_360_n_0 ),
        .O(\rout_reg[3]_i_364_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000022202)) 
    \rout_reg[3]_i_365 
       (.I0(\rout_reg[3]_i_55_n_5 ),
        .I1(\rout_reg[3]_i_55_n_4 ),
        .I2(\rout_reg[3]_i_142_n_5 ),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_440_n_0 ),
        .I5(\rout_reg[3]_i_55_n_6 ),
        .O(\rout_reg[3]_i_365_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \rout_reg[3]_i_366 
       (.I0(\rout_reg[3]_i_542_n_0 ),
        .I1(\rout_reg[3]_i_543_n_0 ),
        .I2(\rout_reg[3]_i_358_n_0 ),
        .I3(\rout_reg[3]_i_375_n_0 ),
        .I4(\rout_reg[3]_i_544_n_0 ),
        .I5(\rout_reg[3]_i_545_n_0 ),
        .O(\rout_reg[3]_i_366_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8000800)) 
    \rout_reg[3]_i_367 
       (.I0(\rout_reg[3]_i_335_n_0 ),
        .I1(\rout_reg[3]_i_546_n_0 ),
        .I2(row_i[2]),
        .I3(\rout_reg[3]_i_55_n_5 ),
        .I4(\rout_reg[3]_i_547_n_0 ),
        .I5(\rout_reg[3]_i_350_n_0 ),
        .O(\rout_reg[3]_i_367_n_0 ));
  LUT6 #(
    .INIT(64'h0080808080808080)) 
    \rout_reg[3]_i_368 
       (.I0(O),
        .I1(\rout_reg[3]_i_443_n_0 ),
        .I2(\rout_reg[3]_i_422_n_0 ),
        .I3(\rout_reg[3]_i_55_n_6 ),
        .I4(row_i[2]),
        .I5(\rout_reg[3]_i_433_n_0 ),
        .O(\rout_reg[3]_i_368_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF2020202020)) 
    \rout_reg[3]_i_369 
       (.I0(\rout_reg[3]_i_164_0 ),
        .I1(\col_reg[10]_0 ),
        .I2(\row_reg[2]_1 ),
        .I3(\rout_reg[3]_i_541_n_0 ),
        .I4(\rout_reg[3]_i_549_n_0 ),
        .I5(\rout_reg[3]_i_341_n_0 ),
        .O(\rout_reg[3]_i_369_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rout_reg[3]_i_37 
       (.I0(\rout_reg[3]_i_13_n_7 ),
        .I1(\rout_reg[3]_i_13_n_6 ),
        .O(\rout_reg[3]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \rout_reg[3]_i_370 
       (.I0(O),
        .I1(\rout_reg[3]_i_55_n_5 ),
        .I2(\col_reg[10]_0 ),
        .I3(\rout_reg[3]_i_55_n_4 ),
        .I4(\rout_reg[3]_i_55_n_6 ),
        .I5(\rout_reg[3]_i_443_n_0 ),
        .O(\rout_reg[3]_i_370_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \rout_reg[3]_i_371 
       (.I0(\rout_reg[3]_i_55_n_6 ),
        .I1(\rout_reg[3]_i_449_n_0 ),
        .I2(\rout_reg[3]_i_55_n_5 ),
        .I3(\col_reg[10]_0 ),
        .I4(\rout_reg[3]_i_55_n_4 ),
        .I5(\rout_reg[3]_i_424_n_0 ),
        .O(\rout_reg[3]_i_371_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \rout_reg[3]_i_372 
       (.I0(\rout_reg[3]_i_550_n_0 ),
        .I1(\col_reg[10]_1 ),
        .I2(\gameover[2][0] ),
        .I3(\col_reg[10]_2 ),
        .I4(\col_reg[10]_3 ),
        .I5(\rout_reg[3]_i_551_n_0 ),
        .O(\rout_reg[3]_i_372_n_0 ));
  LUT5 #(
    .INIT(32'hB8000000)) 
    \rout_reg[3]_i_373 
       (.I0(\gameover[8][0] ),
        .I1(\col_reg[10]_0 ),
        .I2(\rout_reg[3]_i_552_n_0 ),
        .I3(\rout_reg[3]_i_334_n_0 ),
        .I4(\rout_reg[3]_i_553_n_0 ),
        .O(\rout_reg[3]_i_373_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \rout_reg[3]_i_374 
       (.I0(\rout_reg[3]_i_330_n_0 ),
        .I1(\col_reg[10]_3 ),
        .I2(\col_reg[10]_1 ),
        .I3(\col_reg[10]_2 ),
        .I4(\gameover[1][0] ),
        .I5(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_374_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \rout_reg[3]_i_375 
       (.I0(O),
        .I1(row_i[2]),
        .I2(row_i[1]),
        .O(\rout_reg[3]_i_375_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA8880808080)) 
    \rout_reg[3]_i_376 
       (.I0(\rout_reg[3]_i_411_n_0 ),
        .I1(\rout_reg[3]_i_365_n_0 ),
        .I2(\rout_reg[3]_i_554_n_0 ),
        .I3(\rout_reg[3]_i_555_n_0 ),
        .I4(\rout_reg[3]_i_556_n_0 ),
        .I5(\rout_reg[3]_i_409_n_0 ),
        .O(\rout_reg[3]_i_376_n_0 ));
  LUT6 #(
    .INIT(64'h0888888000000000)) 
    \rout_reg[3]_i_377 
       (.I0(\rout_reg[3]_i_409_n_0 ),
        .I1(\rout_reg[3]_i_412_n_0 ),
        .I2(\rout_reg[3]_i_55_n_5 ),
        .I3(\rout_reg[3]_i_433_n_0 ),
        .I4(row_i[2]),
        .I5(O),
        .O(\rout_reg[3]_i_377_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAEAA)) 
    \rout_reg[3]_i_378 
       (.I0(\rout_reg[3]_i_353_n_0 ),
        .I1(\row_reg[2]_1 ),
        .I2(\col_reg[10]_0 ),
        .I3(\rout_reg[3]_i_351_n_0 ),
        .I4(\rout_reg[3]_i_350_n_0 ),
        .O(\rout_reg[3]_i_378_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEFEFEAEAEAEEE)) 
    \rout_reg[3]_i_379 
       (.I0(\rout_reg[3]_i_349_n_0 ),
        .I1(\rout_reg[3]_i_417_n_0 ),
        .I2(O),
        .I3(\rout_reg[3]_i_433_n_0 ),
        .I4(row_i[2]),
        .I5(\rout_reg[3]_i_390_n_0 ),
        .O(\rout_reg[3]_i_379_n_0 ));
  LUT5 #(
    .INIT(32'h4540FFFF)) 
    \rout_reg[3]_i_38 
       (.I0(\rout_reg[3]_i_13_n_5 ),
        .I1(\rout_reg[3]_i_88_n_0 ),
        .I2(\rout_reg[3]_i_13_n_6 ),
        .I3(\rout_reg[3]_i_87_n_0 ),
        .I4(\rout_reg[3]_i_13_n_4 ),
        .O(\rout_reg[3]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAEAAAEA0000)) 
    \rout_reg[3]_i_380 
       (.I0(\rout_reg[3]_i_55_n_4 ),
        .I1(\rout_reg[3]_i_55_n_5 ),
        .I2(\rout_reg[3]_i_55_n_6 ),
        .I3(\rout_reg[3]_i_170_n_0 ),
        .I4(\rout_reg[3]_i_345_n_0 ),
        .I5(\rout_reg[3]_i_346_n_0 ),
        .O(\rout_reg[3]_i_380_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \rout_reg[3]_i_381 
       (.I0(\row_reg[2]_0 ),
        .I1(\rout_reg[3]_i_557_n_0 ),
        .I2(\col_reg[10]_3 ),
        .I3(\rout_reg[3]_i_160_0 ),
        .I4(\col_reg[10]_0 ),
        .I5(\gameover[8][0] ),
        .O(\rout_reg[3]_i_381_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \rout_reg[3]_i_382 
       (.I0(\rout_reg[3]_i_361_n_0 ),
        .I1(O),
        .I2(row_i[2]),
        .O(\rout_reg[3]_i_382_n_0 ));
  LUT6 #(
    .INIT(64'h8880000000000000)) 
    \rout_reg[3]_i_383 
       (.I0(O),
        .I1(row_i[2]),
        .I2(row_i[1]),
        .I3(row_i[0]),
        .I4(\rout_reg[3]_i_365_n_0 ),
        .I5(\rout_reg[3]_i_344_n_0 ),
        .O(\rout_reg[3]_i_383_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEAAAAAAA)) 
    \rout_reg[3]_i_384 
       (.I0(\rout_reg[3]_i_376_n_0 ),
        .I1(O),
        .I2(row_i[2]),
        .I3(row_i[1]),
        .I4(\rout_reg[3]_i_357_n_0 ),
        .I5(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_384_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    \rout_reg[3]_i_385 
       (.I0(\rout_reg[3]_i_558_n_0 ),
        .I1(\rout_reg[3]_i_559_n_0 ),
        .I2(\rout_reg[3]_i_341_n_0 ),
        .I3(\rout_reg[3]_i_549_n_0 ),
        .I4(\rout_reg[3]_i_541_n_0 ),
        .I5(\rout_reg[3]_i_560_n_0 ),
        .O(\rout_reg[3]_i_385_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rout_reg[3]_i_386 
       (.I0(\rout_reg[3]_i_423_n_0 ),
        .I1(\rout_reg[3]_i_561_n_0 ),
        .I2(\rout_reg[3]_i_365_n_0 ),
        .I3(\rout_reg[3]_i_443_n_0 ),
        .I4(\rout_reg[3]_i_442_n_0 ),
        .I5(\rout_reg[3]_i_562_n_0 ),
        .O(\rout_reg[3]_i_386_n_0 ));
  LUT5 #(
    .INIT(32'hAA800080)) 
    \rout_reg[3]_i_387 
       (.I0(\row_reg[2]_1 ),
        .I1(\col_reg[10]_3 ),
        .I2(\rout_reg[3]_i_160_0 ),
        .I3(\col_reg[10]_0 ),
        .I4(\gameover[8][0] ),
        .O(\rout_reg[3]_i_387_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF080808FF08)) 
    \rout_reg[3]_i_388 
       (.I0(\rout_reg[3]_i_395_n_0 ),
        .I1(\rout_reg[3]_i_365_n_0 ),
        .I2(\rout_reg[3]_i_170_n_0 ),
        .I3(\rout_reg[3]_i_361_n_0 ),
        .I4(\rout_reg[3]_i_360_n_0 ),
        .I5(\rout_reg[3]_i_421_n_0 ),
        .O(\rout_reg[3]_i_388_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF02FF02FF02)) 
    \rout_reg[3]_i_389 
       (.I0(\rout_reg[3]_i_563_n_0 ),
        .I1(\rout_reg[3]_i_564_n_0 ),
        .I2(\rout_reg[3]_i_546_n_0 ),
        .I3(\rout_reg[3]_i_169_n_0 ),
        .I4(\rout_reg[3]_i_565_n_0 ),
        .I5(\rout_reg[3]_i_417_n_0 ),
        .O(\rout_reg[3]_i_389_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444447747)) 
    \rout_reg[3]_i_39 
       (.I0(\rout_reg[3]_i_93_n_0 ),
        .I1(\rout_reg[3]_i_55_n_4 ),
        .I2(\rout_reg[3]_i_94_n_0 ),
        .I3(\rout_reg[3]_i_95_n_0 ),
        .I4(\rout_reg[3]_i_96_n_0 ),
        .I5(\rout_reg[3]_i_97_n_0 ),
        .O(\rout_reg[3]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \rout_reg[3]_i_390 
       (.I0(\col_reg[10]_3 ),
        .I1(\col_reg[10]_2 ),
        .I2(\gameover[6][0] ),
        .I3(\col_reg[10]_1 ),
        .I4(\rout_reg[3]_i_330_n_0 ),
        .O(\rout_reg[3]_i_390_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \rout_reg[3]_i_391 
       (.I0(\row_reg[2]_1 ),
        .I1(\rout_reg[3]_i_566_n_0 ),
        .I2(\col_reg[10]_3 ),
        .I3(\rout_reg[3]_i_160_0 ),
        .I4(\col_reg[10]_0 ),
        .I5(\gameover[8][0] ),
        .O(\rout_reg[3]_i_391_n_0 ));
  LUT6 #(
    .INIT(64'h222222228888A888)) 
    \rout_reg[3]_i_392 
       (.I0(\rout_reg[3]_i_563_n_0 ),
        .I1(\rout_reg[3]_i_55_n_5 ),
        .I2(row_i[1]),
        .I3(row_i[0]),
        .I4(\rout_reg[3]_i_222_n_0 ),
        .I5(\rout_reg[3]_i_55_n_6 ),
        .O(\rout_reg[3]_i_392_n_0 ));
  LUT4 #(
    .INIT(16'h070F)) 
    \rout_reg[3]_i_393 
       (.I0(row_i[0]),
        .I1(row_i[2]),
        .I2(O),
        .I3(row_i[1]),
        .O(\rout_reg[3]_i_393_n_0 ));
  LUT6 #(
    .INIT(64'h5404000000000000)) 
    \rout_reg[3]_i_394 
       (.I0(\rout_reg[3]_i_55_n_4 ),
        .I1(\rout_reg[3]_i_142_n_5 ),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\rout_reg[3]_i_440_n_0 ),
        .I4(\gameover[8][0] ),
        .I5(\rout_reg[3]_i_55_n_6 ),
        .O(\rout_reg[3]_i_394_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \rout_reg[3]_i_395 
       (.I0(\col_reg[10]_1 ),
        .I1(\gameover[5][0] ),
        .I2(\col_reg[10]_2 ),
        .I3(\col_reg[10]_3 ),
        .O(\rout_reg[3]_i_395_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88800080)) 
    \rout_reg[3]_i_396 
       (.I0(\rout_reg[3]_i_553_n_0 ),
        .I1(\rout_reg[3]_i_334_n_0 ),
        .I2(\rout_reg[3]_i_552_n_0 ),
        .I3(\col_reg[10]_0 ),
        .I4(\gameover[8][0] ),
        .I5(\rout_reg[3]_i_567_n_0 ),
        .O(\rout_reg[3]_i_396_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    \rout_reg[3]_i_397 
       (.I0(\rout_reg[3]_i_392_n_0 ),
        .I1(\gameover[8][0] ),
        .I2(\col_reg[10]_0 ),
        .I3(\rout_reg[3]_i_568_n_0 ),
        .I4(\row_reg[2]_1 ),
        .O(\rout_reg[3]_i_397_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF5454545454)) 
    \rout_reg[3]_i_398 
       (.I0(O),
        .I1(\rout_reg[3]_i_569_n_0 ),
        .I2(\rout_reg[3]_i_570_n_0 ),
        .I3(\rout_reg[3]_i_346_n_0 ),
        .I4(\rout_reg[3]_i_345_n_0 ),
        .I5(\rout_reg[3]_i_341_n_0 ),
        .O(\rout_reg[3]_i_398_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \rout_reg[3]_i_399 
       (.I0(\rout_reg[3]_i_203_n_0 ),
        .I1(\rout_reg[3]_i_78_0 ),
        .I2(\col_reg[10]_3 ),
        .I3(\rout_reg[3]_i_160_0 ),
        .I4(\col_reg[10]_0 ),
        .I5(\gameover[8][0] ),
        .O(\rout_reg[3]_i_399_n_0 ));
  LUT6 #(
    .INIT(64'hABABABABAAABAAAA)) 
    \rout_reg[3]_i_4 
       (.I0(\rout_reg[3]_i_8_n_5 ),
        .I1(\rout_reg[3]_i_8_n_6 ),
        .I2(\rout_reg[3]_i_11_n_0 ),
        .I3(\rout_reg[3]_i_12_n_0 ),
        .I4(\rout_reg[3]_i_13_n_4 ),
        .I5(\rout_reg[3]_i_14_n_0 ),
        .O(\rout_reg[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5503550055035503)) 
    \rout_reg[3]_i_40 
       (.I0(\rout_reg[3]_i_98_n_0 ),
        .I1(\rout_reg[3]_i_92_n_0 ),
        .I2(\rout_reg[3]_i_99_n_0 ),
        .I3(\rout_reg[3]_i_55_n_4 ),
        .I4(\rout_reg[3]_i_100_n_0 ),
        .I5(\rout_reg[3]_i_94_n_0 ),
        .O(\rout_reg[3]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h22220020)) 
    \rout_reg[3]_i_400 
       (.I0(\rout_reg[3]_i_341_n_0 ),
        .I1(\col_reg[10]_0 ),
        .I2(\rout_reg[3]_i_68_n_0 ),
        .I3(\rout_reg[3]_i_177_0 ),
        .I4(\rout_reg[3]_i_572_n_0 ),
        .O(\rout_reg[3]_i_400_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000020000000)) 
    \rout_reg[3]_i_401 
       (.I0(row_i[2]),
        .I1(\rout_reg[3]_i_55_n_5 ),
        .I2(\rout_reg[3]_i_330_n_0 ),
        .I3(\rout_reg[3]_i_423_n_0 ),
        .I4(O),
        .I5(\rout_reg[3]_i_169_n_0 ),
        .O(\rout_reg[3]_i_401_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEEEEE)) 
    \rout_reg[3]_i_402 
       (.I0(\rout_reg[3]_i_144_n_0 ),
        .I1(\rout_reg[3]_i_573_n_0 ),
        .I2(\rout_reg[3]_i_192_n_0 ),
        .I3(\rout_reg[3]_i_395_n_0 ),
        .I4(\rout_reg[3]_i_337_n_0 ),
        .O(\rout_reg[3]_i_402_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0008888)) 
    \rout_reg[3]_i_404 
       (.I0(\rout_reg[3]_i_55_n_5 ),
        .I1(\rout_reg[3]_i_423_n_0 ),
        .I2(\rout_reg[3]_i_55_n_6 ),
        .I3(\gameover[8][0] ),
        .I4(\col_reg[10]_0 ),
        .I5(\rout_reg[3]_i_55_n_4 ),
        .O(\rout_reg[3]_i_404_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA808080)) 
    \rout_reg[3]_i_405 
       (.I0(\rout_reg[3]_i_409_n_0 ),
        .I1(\rout_reg[3]_i_410_n_0 ),
        .I2(\rout_reg[3]_i_411_n_0 ),
        .I3(\rout_reg[3]_i_412_n_0 ),
        .I4(\rout_reg[3]_i_413_n_0 ),
        .I5(\rout_reg[3]_i_435_n_0 ),
        .O(\rout_reg[3]_i_405_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \rout_reg[3]_i_406 
       (.I0(\col_reg[10]_3 ),
        .I1(\col_reg[10]_2 ),
        .I2(\gameover[5][0] ),
        .I3(\col_reg[10]_1 ),
        .I4(\rout_reg[3]_i_191_n_0 ),
        .O(\rout_reg[3]_i_406_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \rout_reg[3]_i_409 
       (.I0(\gameover[3][0] ),
        .I1(\rout_reg[3]_i_142_n_7 ),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\rout_reg[3]_i_140_n_4 ),
        .I4(\rout_reg[3]_i_141_n_0 ),
        .I5(\rout_reg[3]_i_136_n_6 ),
        .O(\rout_reg[3]_i_409_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \rout_reg[3]_i_41 
       (.I0(\rout_reg[3]_i_93_n_0 ),
        .I1(\rout_reg[3]_i_55_n_4 ),
        .I2(\rout_reg[3]_i_101_n_0 ),
        .I3(\rout_reg[3]_i_55_n_5 ),
        .I4(\rout_reg[3]_i_102_n_0 ),
        .O(\rout_reg[3]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h000C000C0008000C)) 
    \rout_reg[3]_i_410 
       (.I0(row_i[1]),
        .I1(\rout_reg[3]_i_55_n_5 ),
        .I2(\rout_reg[3]_i_55_n_4 ),
        .I3(\col_reg[10]_0 ),
        .I4(\rout_reg[3]_i_55_n_6 ),
        .I5(row_i[2]),
        .O(\rout_reg[3]_i_410_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rout_reg[3]_i_411 
       (.I0(\col_reg[10]_3 ),
        .I1(O),
        .O(\rout_reg[3]_i_411_n_0 ));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \rout_reg[3]_i_412 
       (.I0(\rout_reg[3]_i_55_n_6 ),
        .I1(\rout_reg[3]_i_55_n_4 ),
        .I2(\rout_reg[3]_i_142_n_5 ),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_440_n_0 ),
        .I5(\col_reg[10]_3 ),
        .O(\rout_reg[3]_i_412_n_0 ));
  LUT5 #(
    .INIT(32'h222AAAA8)) 
    \rout_reg[3]_i_413 
       (.I0(O),
        .I1(row_i[2]),
        .I2(row_i[1]),
        .I3(row_i[0]),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_413_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC000E000C000)) 
    \rout_reg[3]_i_414 
       (.I0(\rout_reg[3]_i_330_n_0 ),
        .I1(\rout_reg[3]_i_191_n_0 ),
        .I2(\rout_reg[3]_i_538_n_0 ),
        .I3(\rout_reg[3]_i_332_n_0 ),
        .I4(\rout_reg[3]_i_170_n_0 ),
        .I5(\rout_reg[3]_i_394_n_0 ),
        .O(\rout_reg[3]_i_414_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \rout_reg[3]_i_415 
       (.I0(\rout_reg[3]_i_574_n_0 ),
        .I1(\col_reg[10]_2 ),
        .I2(\rout_reg[3]_i_537_n_0 ),
        .I3(\col_reg[10]_3 ),
        .I4(\gameover[3][0] ),
        .I5(\col_reg[10]_0 ),
        .O(\rout_reg[3]_i_415_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \rout_reg[3]_i_416 
       (.I0(\col_reg[10]_3 ),
        .I1(\gameover[0][0] ),
        .I2(\col_reg[10]_1 ),
        .I3(\col_reg[10]_2 ),
        .I4(\rout_reg[3]_i_550_n_0 ),
        .I5(\rout_reg[3]_i_445_n_0 ),
        .O(\rout_reg[3]_i_416_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \rout_reg[3]_i_417 
       (.I0(\col_reg[10]_1 ),
        .I1(\gameover[5][0] ),
        .I2(\col_reg[10]_2 ),
        .I3(\col_reg[10]_3 ),
        .I4(\rout_reg[3]_i_330_n_0 ),
        .O(\rout_reg[3]_i_417_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \rout_reg[3]_i_418 
       (.I0(\rout_reg[3]_i_55_n_5 ),
        .I1(\rout_reg[3]_i_55_n_4 ),
        .I2(\col_reg[10]_0 ),
        .I3(\gameover[8][0] ),
        .I4(\rout_reg[3]_i_55_n_6 ),
        .I5(\rout_reg[3]_i_170_n_0 ),
        .O(\rout_reg[3]_i_418_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000BA000000)) 
    \rout_reg[3]_i_419 
       (.I0(\rout_reg[3]_i_550_n_0 ),
        .I1(O),
        .I2(\rout_reg[3]_i_365_n_0 ),
        .I3(\rout_reg[3]_i_575_n_0 ),
        .I4(\rout_reg[3]_i_332_n_0 ),
        .I5(\rout_reg[3]_i_442_n_0 ),
        .O(\rout_reg[3]_i_419_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_42 
       (.I0(col_i[3]),
        .O(\rout_reg[3]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \rout_reg[3]_i_420 
       (.I0(\col_reg[10]_0 ),
        .I1(\rout_reg[3]_i_68_n_0 ),
        .I2(\gameover[1][0] ),
        .I3(\col_reg[10]_3 ),
        .I4(\col_reg[10]_2 ),
        .O(\rout_reg[3]_i_420_n_0 ));
  LUT6 #(
    .INIT(64'hA808000000000000)) 
    \rout_reg[3]_i_421 
       (.I0(\rout_reg[3]_i_576_n_0 ),
        .I1(\rout_reg[3]_i_142_n_5 ),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\rout_reg[3]_i_440_n_0 ),
        .I4(\gameover[8][0] ),
        .I5(\rout_reg[3]_i_55_n_6 ),
        .O(\rout_reg[3]_i_421_n_0 ));
  LUT5 #(
    .INIT(32'h00470000)) 
    \rout_reg[3]_i_422 
       (.I0(\rout_reg[3]_i_440_n_0 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\rout_reg[3]_i_142_n_5 ),
        .I3(\rout_reg[3]_i_55_n_4 ),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_422_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \rout_reg[3]_i_423 
       (.I0(\col_reg[10]_3 ),
        .I1(\gameover[0][0] ),
        .I2(\col_reg[10]_1 ),
        .I3(\col_reg[10]_2 ),
        .O(\rout_reg[3]_i_423_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rout_reg[3]_i_424 
       (.I0(row_i[1]),
        .I1(row_i[2]),
        .I2(O),
        .I3(row_i[0]),
        .O(\rout_reg[3]_i_424_n_0 ));
  LUT6 #(
    .INIT(64'h0000000054040000)) 
    \rout_reg[3]_i_425 
       (.I0(\rout_reg[3]_i_55_n_4 ),
        .I1(\rout_reg[3]_i_142_n_5 ),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\rout_reg[3]_i_440_n_0 ),
        .I4(\gameover[8][0] ),
        .I5(\rout_reg[3]_i_55_n_6 ),
        .O(\rout_reg[3]_i_425_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rout_reg[3]_i_426 
       (.I0(\rout_reg[3]_i_536_n_0 ),
        .I1(\gameover[3][0] ),
        .I2(\col_reg[10]_3 ),
        .I3(\rout_reg[3]_i_574_n_0 ),
        .I4(\col_reg[10]_2 ),
        .O(\rout_reg[3]_i_426_n_0 ));
  LUT5 #(
    .INIT(32'h8C008000)) 
    \rout_reg[3]_i_427 
       (.I0(\gameover[5][0] ),
        .I1(\col_reg[10]_3 ),
        .I2(\col_reg[10]_1 ),
        .I3(\col_reg[10]_2 ),
        .I4(\gameover[1][0] ),
        .O(\rout_reg[3]_i_427_n_0 ));
  LUT6 #(
    .INIT(64'h88A2888000A20080)) 
    \rout_reg[3]_i_428 
       (.I0(\rout_reg[3]_i_340_n_0 ),
        .I1(\col_reg[10]_3 ),
        .I2(\gameover[3][0] ),
        .I3(\col_reg[10]_2 ),
        .I4(\gameover[2][0] ),
        .I5(\gameover[1][0] ),
        .O(\rout_reg[3]_i_428_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \rout_reg[3]_i_429 
       (.I0(row_i[0]),
        .I1(row_i[2]),
        .I2(row_i[1]),
        .I3(O),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .I5(\rout_reg[3]_i_394_n_0 ),
        .O(\rout_reg[3]_i_429_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_43 
       (.I0(col_i[1]),
        .O(\rout_reg[3]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0008888800000000)) 
    \rout_reg[3]_i_430 
       (.I0(O),
        .I1(\rout_reg[3]_i_55_n_5 ),
        .I2(row_i[1]),
        .I3(row_i[0]),
        .I4(row_i[2]),
        .I5(\rout_reg[3]_i_394_n_0 ),
        .O(\rout_reg[3]_i_430_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEA00000000)) 
    \rout_reg[3]_i_431 
       (.I0(\rout_reg[3]_i_577_n_0 ),
        .I1(row_i[0]),
        .I2(\rout_reg[3]_i_578_n_0 ),
        .I3(\rout_reg[3]_i_555_n_0 ),
        .I4(\rout_reg[3]_i_411_n_0 ),
        .I5(\rout_reg[3]_i_409_n_0 ),
        .O(\rout_reg[3]_i_431_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \rout_reg[3]_i_432 
       (.I0(\rout_reg[3]_i_365_n_0 ),
        .I1(\rout_reg[3]_i_579_n_0 ),
        .I2(\rout_reg[3]_i_411_n_0 ),
        .I3(\rout_reg[3]_i_197_n_0 ),
        .I4(\rout_reg[3]_i_580_n_0 ),
        .I5(\rout_reg[3]_i_435_n_0 ),
        .O(\rout_reg[3]_i_432_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rout_reg[3]_i_433 
       (.I0(row_i[0]),
        .I1(row_i[1]),
        .O(\rout_reg[3]_i_433_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF040004000400)) 
    \rout_reg[3]_i_434 
       (.I0(\col_reg[10]_3 ),
        .I1(\rout_reg[3]_i_566_n_0 ),
        .I2(\col_reg[10]_0 ),
        .I3(\rout_reg[3]_i_197_n_0 ),
        .I4(\rout_reg[3]_i_581_n_0 ),
        .I5(\rout_reg[3]_i_341_n_0 ),
        .O(\rout_reg[3]_i_434_n_0 ));
  LUT6 #(
    .INIT(64'h0808080008000800)) 
    \rout_reg[3]_i_435 
       (.I0(\rout_reg[3]_i_332_n_0 ),
        .I1(\gameover[2][0] ),
        .I2(\col_reg[10]_1 ),
        .I3(\rout_reg[3]_i_191_n_0 ),
        .I4(\rout_reg[3]_i_330_n_0 ),
        .I5(\rout_reg[3]_i_170_n_0 ),
        .O(\rout_reg[3]_i_435_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \rout_reg[3]_i_436 
       (.I0(\row_reg[2]_1 ),
        .I1(\rout_reg[3]_i_582_n_0 ),
        .I2(\rout_reg[3]_i_447_n_0 ),
        .I3(\rout_reg[3]_i_423_n_0 ),
        .I4(\rout_reg[3]_i_416_n_0 ),
        .I5(\rout_reg[3]_i_583_n_0 ),
        .O(\rout_reg[3]_i_436_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rout_reg[3]_i_437 
       (.I0(\rout_reg[3]_i_191_n_0 ),
        .I1(\rout_reg[3]_i_427_n_0 ),
        .I2(\rout_reg[3]_i_584_n_0 ),
        .I3(O),
        .I4(\row_reg[2]_0 ),
        .I5(\rout_reg[3]_i_580_n_0 ),
        .O(\rout_reg[3]_i_437_n_0 ));
  LUT6 #(
    .INIT(64'hFF88F088FFFFF000)) 
    \rout_reg[3]_i_438 
       (.I0(row_i[0]),
        .I1(\rout_reg[3]_i_585_n_0 ),
        .I2(\rout_reg[3]_i_357_n_0 ),
        .I3(\rout_reg[3]_i_222_n_0 ),
        .I4(\rout_reg[3]_i_358_n_0 ),
        .I5(row_i[1]),
        .O(\rout_reg[3]_i_438_n_0 ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \rout_reg[3]_i_439 
       (.I0(\rout_reg[3]_i_393_n_0 ),
        .I1(\rout_reg[3]_i_417_n_0 ),
        .I2(\rout_reg[3]_i_586_n_0 ),
        .I3(\col_reg[10]_0 ),
        .I4(\rout_reg[3]_i_203_n_0 ),
        .O(\rout_reg[3]_i_439_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_44 
       (.I0(col_i[0]),
        .O(\rout_reg[3]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFEEEE00202222)) 
    \rout_reg[3]_i_440 
       (.I0(\rout_reg[3]_i_136_n_4 ),
        .I1(\rout_reg[3]_i_137_n_2 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_139_n_6 ),
        .I5(\rout_reg[3]_i_143_n_6 ),
        .O(\rout_reg[3]_i_440_n_0 ));
  LUT5 #(
    .INIT(32'h4FFF4CCC)) 
    \rout_reg[3]_i_441 
       (.I0(row_i[1]),
        .I1(\rout_reg[3]_i_358_n_0 ),
        .I2(row_i[2]),
        .I3(O),
        .I4(\rout_reg[3]_i_357_n_0 ),
        .O(\rout_reg[3]_i_441_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000011101)) 
    \rout_reg[3]_i_442 
       (.I0(\rout_reg[3]_i_424_n_0 ),
        .I1(\rout_reg[3]_i_55_n_4 ),
        .I2(\rout_reg[3]_i_142_n_5 ),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_440_n_0 ),
        .I5(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_442_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \rout_reg[3]_i_443 
       (.I0(\col_reg[10]_1 ),
        .I1(\gameover[6][0] ),
        .I2(\col_reg[10]_2 ),
        .I3(\col_reg[10]_3 ),
        .O(\rout_reg[3]_i_443_n_0 ));
  LUT4 #(
    .INIT(16'hF0E0)) 
    \rout_reg[3]_i_445 
       (.I0(row_i[0]),
        .I1(row_i[1]),
        .I2(O),
        .I3(row_i[2]),
        .O(\rout_reg[3]_i_445_n_0 ));
  LUT6 #(
    .INIT(64'h2200300000000000)) 
    \rout_reg[3]_i_446 
       (.I0(\gameover[5][0] ),
        .I1(\rout_reg[3]_i_55_n_5 ),
        .I2(\gameover[1][0] ),
        .I3(\col_reg[10]_2 ),
        .I4(\col_reg[10]_1 ),
        .I5(\rout_reg[3]_i_412_n_0 ),
        .O(\rout_reg[3]_i_446_n_0 ));
  LUT5 #(
    .INIT(32'h01FF0000)) 
    \rout_reg[3]_i_447 
       (.I0(O),
        .I1(row_i[1]),
        .I2(row_i[2]),
        .I3(\rout_reg[3]_i_55_n_6 ),
        .I4(\rout_reg[3]_i_422_n_0 ),
        .O(\rout_reg[3]_i_447_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \rout_reg[3]_i_448 
       (.I0(\rout_reg[3]_i_55_n_5 ),
        .I1(\rout_reg[3]_i_330_n_0 ),
        .I2(\col_reg[10]_2 ),
        .I3(\col_reg[10]_1 ),
        .I4(\gameover[0][0] ),
        .I5(\col_reg[10]_3 ),
        .O(\rout_reg[3]_i_448_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \rout_reg[3]_i_449 
       (.I0(\col_reg[10]_1 ),
        .I1(\gameover[2][0] ),
        .I2(\col_reg[10]_2 ),
        .I3(\col_reg[10]_3 ),
        .O(\rout_reg[3]_i_449_n_0 ));
  LUT6 #(
    .INIT(64'h555555550000CC0C)) 
    \rout_reg[3]_i_45 
       (.I0(\rout_reg[3]_i_19_0 ),
        .I1(\rout_reg[3]_i_103_n_0 ),
        .I2(\rout_reg[3]_i_104_n_0 ),
        .I3(\rout_reg[3]_i_105_n_0 ),
        .I4(\rout_reg[3]_i_106_n_0 ),
        .I5(\rout_reg[3]_i_55_n_4 ),
        .O(\rout_reg[3]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \rout_reg[3]_i_450 
       (.I0(\col_reg[10]_2 ),
        .I1(\gameover[1][0] ),
        .I2(\col_reg[10]_3 ),
        .I3(\col_reg[10]_1 ),
        .O(\rout_reg[3]_i_450_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \rout_reg[3]_i_451 
       (.I0(\rout_reg[3]_i_55_n_6 ),
        .I1(O),
        .O(\rout_reg[3]_i_451_n_0 ));
  LUT6 #(
    .INIT(64'h0400050504000000)) 
    \rout_reg[3]_i_452 
       (.I0(\rout_reg[3]_i_55_n_6 ),
        .I1(\rout_reg[3]_i_587_n_0 ),
        .I2(\col_reg[10]_1 ),
        .I3(\rout_reg[3]_i_208_1 ),
        .I4(\col_reg[10]_2 ),
        .I5(\rout_reg[3]_i_208_0 ),
        .O(\rout_reg[3]_i_452_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F2FFF2F2)) 
    \rout_reg[3]_i_453 
       (.I0(\rout_reg[3]_i_590_n_0 ),
        .I1(\rout_reg[3]_i_214_n_0 ),
        .I2(O),
        .I3(\rout_reg[3]_i_278_n_0 ),
        .I4(\rout_reg[3]_i_591_n_0 ),
        .I5(\col_reg[10]_1 ),
        .O(\rout_reg[3]_i_453_n_0 ));
  LUT6 #(
    .INIT(64'hFF91FFFFFFFFFFFF)) 
    \rout_reg[3]_i_454 
       (.I0(row_i[2]),
        .I1(row_i[1]),
        .I2(row_i[0]),
        .I3(\col_reg[10]_1 ),
        .I4(\col_reg[10]_2 ),
        .I5(\rout_reg[3]_i_208_1 ),
        .O(\rout_reg[3]_i_454_n_0 ));
  LUT6 #(
    .INIT(64'h45404040FFFFFFFF)) 
    \rout_reg[3]_i_455 
       (.I0(\rout_reg[3]_i_278_n_0 ),
        .I1(\rout_reg[3]_i_592_n_0 ),
        .I2(\col_reg[10]_3 ),
        .I3(\rout_reg[3]_i_593_n_0 ),
        .I4(\col_reg[10]_2 ),
        .I5(O),
        .O(\rout_reg[3]_i_455_n_0 ));
  LUT6 #(
    .INIT(64'h0540004000000000)) 
    \rout_reg[3]_i_456 
       (.I0(\col_reg[10]_1 ),
        .I1(\start[0][0] ),
        .I2(\col_reg[10]_2 ),
        .I3(\col_reg[10]_3 ),
        .I4(\gameover[8][0] ),
        .I5(\rout_reg[3]_i_278_n_0 ),
        .O(\rout_reg[3]_i_456_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004550400)) 
    \rout_reg[3]_i_457 
       (.I0(\col_reg[10]_1 ),
        .I1(\start[0][0] ),
        .I2(\col_reg[10]_3 ),
        .I3(\col_reg[10]_2 ),
        .I4(\rout_reg[3]_i_211_0 ),
        .I5(row_i[2]),
        .O(\rout_reg[3]_i_457_n_0 ));
  LUT6 #(
    .INIT(64'h0540004000000000)) 
    \rout_reg[3]_i_458 
       (.I0(\col_reg[10]_1 ),
        .I1(\start[0][0] ),
        .I2(\col_reg[10]_2 ),
        .I3(\col_reg[10]_3 ),
        .I4(\gameover[8][0] ),
        .I5(\rout_reg[3]_i_594_n_0 ),
        .O(\rout_reg[3]_i_458_n_0 ));
  LUT6 #(
    .INIT(64'hFBAAFBFFFFFFFFFF)) 
    \rout_reg[3]_i_459 
       (.I0(\col_reg[10]_1 ),
        .I1(\start[0][0] ),
        .I2(\col_reg[10]_3 ),
        .I3(\col_reg[10]_2 ),
        .I4(\rout_reg[3]_i_211_0 ),
        .I5(\rout_reg[3]_i_214_n_0 ),
        .O(\rout_reg[3]_i_459_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB888B8888)) 
    \rout_reg[3]_i_46 
       (.I0(\rout_reg[3]_i_93_n_0 ),
        .I1(\rout_reg[3]_i_55_n_4 ),
        .I2(\rout_reg[3]_i_55_n_5 ),
        .I3(\rout_reg[3]_i_107_n_0 ),
        .I4(\rout_reg[3]_i_108_n_0 ),
        .I5(\rout_reg[3]_i_109_n_0 ),
        .O(\rout_reg[3]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABBBAAABA)) 
    \rout_reg[3]_i_460 
       (.I0(O),
        .I1(\rout_reg[3]_i_214_n_0 ),
        .I2(\rout_reg[3]_i_208_0 ),
        .I3(\col_reg[10]_2 ),
        .I4(\rout_reg[3]_i_208_1 ),
        .I5(\col_reg[10]_1 ),
        .O(\rout_reg[3]_i_460_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE0EEEEEEEEEE)) 
    \rout_reg[3]_i_461 
       (.I0(row_i[0]),
        .I1(row_i[1]),
        .I2(\col_reg[10]_2 ),
        .I3(\gameover[1][0] ),
        .I4(\col_reg[10]_3 ),
        .I5(\rout_reg[3]_i_68_n_0 ),
        .O(\rout_reg[3]_i_461_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \rout_reg[3]_i_462 
       (.I0(row_i[2]),
        .I1(\col_reg[10]_2 ),
        .I2(\gameover[1][0] ),
        .I3(\col_reg[10]_3 ),
        .I4(\col_reg[10]_1 ),
        .O(\rout_reg[3]_i_462_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \rout_reg[3]_i_463 
       (.I0(\rout_reg[3]_i_55_n_5 ),
        .I1(\rout_reg[3]_i_55_n_6 ),
        .O(\rout_reg[3]_i_463_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFD1FF)) 
    \rout_reg[3]_i_465 
       (.I0(\rout_reg[3]_i_142_n_7 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\rout_reg[3]_i_595_n_0 ),
        .I3(\gameover[1][0] ),
        .I4(\col_reg[10]_3 ),
        .O(\rout_reg[3]_i_465_n_0 ));
  LUT5 #(
    .INIT(32'hD1FFFFFF)) 
    \rout_reg[3]_i_466 
       (.I0(\rout_reg[3]_i_142_n_7 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\rout_reg[3]_i_595_n_0 ),
        .I3(\col_reg[10]_3 ),
        .I4(\gameover[8][0] ),
        .O(\rout_reg[3]_i_466_n_0 ));
  LUT6 #(
    .INIT(64'hD1D1D1000000D100)) 
    \rout_reg[3]_i_467 
       (.I0(\rout_reg[3]_i_142_n_7 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\rout_reg[3]_i_595_n_0 ),
        .I3(\start[0][0] ),
        .I4(\col_reg[10]_3 ),
        .I5(\start[1][0] ),
        .O(\rout_reg[3]_i_467_n_0 ));
  LUT5 #(
    .INIT(32'hCD88C888)) 
    \rout_reg[3]_i_468 
       (.I0(\col_reg[10]_1 ),
        .I1(\start[1][0] ),
        .I2(\col_reg[10]_2 ),
        .I3(\col_reg[10]_3 ),
        .I4(\gameover[8][0] ),
        .O(\rout_reg[3]_i_468_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \rout_reg[3]_i_469 
       (.I0(\col_reg[10]_1 ),
        .I1(\start[1][0] ),
        .I2(\col_reg[10]_3 ),
        .I3(\start[0][0] ),
        .I4(\col_reg[10]_2 ),
        .I5(\rout_reg[3]_i_211_0 ),
        .O(\rout_reg[3]_i_469_n_0 ));
  LUT5 #(
    .INIT(32'h8F8F8F88)) 
    \rout_reg[3]_i_47 
       (.I0(\rout_reg[3]_i_110_n_0 ),
        .I1(\rout_reg[3]_i_55_n_4 ),
        .I2(\rout_reg[3]_i_111_n_0 ),
        .I3(\rout_reg[3]_i_112_n_0 ),
        .I4(\rout_reg[3]_i_113_n_0 ),
        .O(\rout_reg[3]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'hF0B83030)) 
    \rout_reg[3]_i_470 
       (.I0(\gameover[8][0] ),
        .I1(\rout_reg[3]_i_68_n_0 ),
        .I2(\start[1][0] ),
        .I3(\col_reg[10]_2 ),
        .I4(\col_reg[10]_3 ),
        .O(\rout_reg[3]_i_470_n_0 ));
  LUT6 #(
    .INIT(64'hCCDDD888CC88D888)) 
    \rout_reg[3]_i_471 
       (.I0(\col_reg[10]_1 ),
        .I1(\start[1][0] ),
        .I2(\start[0][0] ),
        .I3(\col_reg[10]_2 ),
        .I4(\col_reg[10]_3 ),
        .I5(\gameover[8][0] ),
        .O(\rout_reg[3]_i_471_n_0 ));
  LUT6 #(
    .INIT(64'hFF00E545FF00E040)) 
    \rout_reg[3]_i_472 
       (.I0(\col_reg[10]_3 ),
        .I1(\start[0][0] ),
        .I2(\col_reg[10]_2 ),
        .I3(\start[1][0] ),
        .I4(\col_reg[10]_1 ),
        .I5(\gameover[1][0] ),
        .O(\rout_reg[3]_i_472_n_0 ));
  LUT6 #(
    .INIT(64'hCDC88D8DCDC88888)) 
    \rout_reg[3]_i_474 
       (.I0(\col_reg[10]_1 ),
        .I1(\start[1][0] ),
        .I2(\col_reg[10]_2 ),
        .I3(\gameover[8][0] ),
        .I4(\col_reg[10]_3 ),
        .I5(\gameover[1][0] ),
        .O(\rout_reg[3]_i_474_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00A404)) 
    \rout_reg[3]_i_476 
       (.I0(\col_reg[10]_3 ),
        .I1(\gameover[1][0] ),
        .I2(\col_reg[10]_2 ),
        .I3(\start[1][0] ),
        .I4(\col_reg[10]_1 ),
        .I5(O),
        .O(\rout_reg[3]_i_476_n_0 ));
  LUT6 #(
    .INIT(64'h0155115555555555)) 
    \rout_reg[3]_i_477 
       (.I0(\rout_reg[3]_i_55_n_6 ),
        .I1(\col_reg[10]_1 ),
        .I2(\col_reg[10]_2 ),
        .I3(\start[1][0] ),
        .I4(\col_reg[10]_3 ),
        .I5(O),
        .O(\rout_reg[3]_i_477_n_0 ));
  LUT6 #(
    .INIT(64'hAA0AAA0A0A3A0A0A)) 
    \rout_reg[3]_i_478 
       (.I0(\start[1][0] ),
        .I1(\rout_reg[3]_i_250_n_0 ),
        .I2(\rout_reg[3]_i_68_n_0 ),
        .I3(\col_reg[10]_3 ),
        .I4(\gameover[1][0] ),
        .I5(\col_reg[10]_2 ),
        .O(\rout_reg[3]_i_478_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8B8B8B88)) 
    \rout_reg[3]_i_48 
       (.I0(\rout_reg[3]_i_93_n_0 ),
        .I1(\rout_reg[3]_i_55_n_4 ),
        .I2(\rout_reg[3]_i_114_n_0 ),
        .I3(\rout_reg[3]_i_112_n_0 ),
        .I4(\rout_reg[3]_i_115_n_0 ),
        .I5(\rout_reg[3]_i_116_n_0 ),
        .O(\rout_reg[3]_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rout_reg[3]_i_481 
       (.I0(O),
        .I1(\rout_reg[3]_i_221_n_0 ),
        .O(\rout_reg[3]_i_481_n_0 ));
  LUT6 #(
    .INIT(64'h8A028A028A020A0A)) 
    \rout_reg[3]_i_482 
       (.I0(O),
        .I1(row_i[2]),
        .I2(\rout_reg[3]_i_221_n_0 ),
        .I3(\rout_reg[3]_i_288_n_0 ),
        .I4(row_i[0]),
        .I5(row_i[1]),
        .O(\rout_reg[3]_i_482_n_0 ));
  LUT6 #(
    .INIT(64'h08FF00FF7FFFFFFF)) 
    \rout_reg[3]_i_483 
       (.I0(row_i[1]),
        .I1(row_i[0]),
        .I2(\rout_reg[3]_i_221_n_0 ),
        .I3(O),
        .I4(row_i[2]),
        .I5(\rout_reg[3]_i_117_0 ),
        .O(\rout_reg[3]_i_483_n_0 ));
  LUT6 #(
    .INIT(64'h0008AAA8AAAAAAAA)) 
    \rout_reg[3]_i_484 
       (.I0(O),
        .I1(\rout_reg[3]_i_221_n_0 ),
        .I2(row_i[1]),
        .I3(row_i[0]),
        .I4(\rout_reg[3]_i_288_n_0 ),
        .I5(row_i[2]),
        .O(\rout_reg[3]_i_484_n_0 ));
  LUT4 #(
    .INIT(16'h0445)) 
    \rout_reg[3]_i_485 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [9]),
        .I1(mode[1]),
        .I2(mode[0]),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [8]),
        .O(\rout_reg[3]_i_485_n_0 ));
  LUT4 #(
    .INIT(16'h3073)) 
    \rout_reg[3]_i_486 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .I1(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .I2(mode[1]),
        .I3(mode[0]),
        .O(\rout_reg[3]_i_486_n_0 ));
  LUT4 #(
    .INIT(16'h0051)) 
    \rout_reg[3]_i_487 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [5]),
        .I1(mode[0]),
        .I2(mode[1]),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [4]),
        .O(\rout_reg[3]_i_487_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rout_reg[3]_i_488 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/is_text_pixel5 [10]),
        .O(\rout_reg[3]_i_488_n_0 ));
  LUT4 #(
    .INIT(16'h4124)) 
    \rout_reg[3]_i_489 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [9]),
        .I1(mode[0]),
        .I2(mode[1]),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [8]),
        .O(\rout_reg[3]_i_489_n_0 ));
  LUT6 #(
    .INIT(64'h0000008A00FF008A)) 
    \rout_reg[3]_i_49 
       (.I0(\rout_reg[3]_i_117_n_0 ),
        .I1(\rout_reg[3]_i_118_n_0 ),
        .I2(\rout_reg[3]_i_119_n_0 ),
        .I3(\rout_reg[3]_i_86_n_0 ),
        .I4(\rout_reg[3]_i_55_n_4 ),
        .I5(\rout_reg[3]_i_110_n_0 ),
        .O(\rout_reg[3]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h0892)) 
    \rout_reg[3]_i_490 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .I1(mode[1]),
        .I2(mode[0]),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .O(\rout_reg[3]_i_490_n_0 ));
  LUT4 #(
    .INIT(16'h5104)) 
    \rout_reg[3]_i_491 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [5]),
        .I1(mode[0]),
        .I2(mode[1]),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [4]),
        .O(\rout_reg[3]_i_491_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_492 
       (.CI(\rout_reg[3]_i_596_n_0 ),
        .CO({\rout_reg[3]_i_492_n_0 ,\NLW_rout_reg[3]_i_492_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_597_n_0 ,\rout_reg[3]_i_598_n_0 ,\rout_reg[3]_i_599_n_0 ,\rout_reg[3]_i_600_n_0 }),
        .O(\NLW_rout_reg[3]_i_492_O_UNCONNECTED [3:0]),
        .S({\rout_reg[3]_i_601_n_0 ,\rout_reg[3]_i_602_n_0 ,\rout_reg[3]_i_603_n_0 ,\rout_reg[3]_i_604_n_0 }));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_493 
       (.I0(\rout_reg[3]_i_307_n_5 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [27]),
        .O(\rout_reg[3]_i_493_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_494 
       (.I0(\rout_reg[3]_i_307_n_6 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [26]),
        .O(\rout_reg[3]_i_494_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_495 
       (.I0(\rout_reg[3]_i_307_n_7 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [25]),
        .O(\rout_reg[3]_i_495_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_496 
       (.I0(\rout_reg[3]_i_502_n_4 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [24]),
        .O(\rout_reg[3]_i_496_n_0 ));
  LUT5 #(
    .INIT(32'hC3B4C34B)) 
    \rout_reg[3]_i_497 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I1(\rout_reg[3]_i_307_n_5 ),
        .I2(\rout_reg[3]_i_307_n_4 ),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [28]),
        .O(\rout_reg[3]_i_497_n_0 ));
  LUT5 #(
    .INIT(32'hC3B4C34B)) 
    \rout_reg[3]_i_498 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I1(\rout_reg[3]_i_307_n_6 ),
        .I2(\rout_reg[3]_i_307_n_5 ),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [27]),
        .O(\rout_reg[3]_i_498_n_0 ));
  LUT5 #(
    .INIT(32'hCCB4334B)) 
    \rout_reg[3]_i_499 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I1(\rout_reg[3]_i_307_n_7 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_307_n_6 ),
        .O(\rout_reg[3]_i_499_n_0 ));
  LUT6 #(
    .INIT(64'hAB00AB00AB000000)) 
    \rout_reg[3]_i_5 
       (.I0(\rout_reg[3]_i_15_n_0 ),
        .I1(\rout_reg[3]_i_13_n_4 ),
        .I2(\rout_reg[3]_i_16_n_0 ),
        .I3(\rout_reg[3]_i_8_n_6 ),
        .I4(\rout_reg[3]_i_8_n_7 ),
        .I5(\rout_reg[3]_i_17_n_0 ),
        .O(\rout_reg[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF0E0E0EFFFFFFFF)) 
    \rout_reg[3]_i_50 
       (.I0(\rout_reg[3]_i_113_n_0 ),
        .I1(\rout_reg[3]_i_112_n_0 ),
        .I2(\rout_reg[3]_i_111_n_0 ),
        .I3(\rout_reg[3]_i_55_n_4 ),
        .I4(\rout_reg[3]_i_110_n_0 ),
        .I5(\rout_reg[3]_i_86_n_0 ),
        .O(\rout_reg[3]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'hCCB4334B)) 
    \rout_reg[3]_i_500 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [24]),
        .I1(\rout_reg[3]_i_502_n_4 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_307_n_7 ),
        .O(\rout_reg[3]_i_500_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_501 
       (.CI(\rout_reg[3]_i_605_n_0 ),
        .CO({\rout_reg[3]_i_501_n_0 ,\NLW_rout_reg[3]_i_501_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\Inst_VGA_Draw/START[0][0]4 [24:21]),
        .S({\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_502 
       (.CI(\rout_reg[3]_i_606_n_0 ),
        .CO({\rout_reg[3]_i_502_n_0 ,\NLW_rout_reg[3]_i_502_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_503_n_5 ,\rout_reg[3]_i_503_n_6 ,\rout_reg[3]_i_503_n_7 ,\rout_reg[3]_i_607_n_4 }),
        .O({\rout_reg[3]_i_502_n_4 ,\rout_reg[3]_i_502_n_5 ,\rout_reg[3]_i_502_n_6 ,\rout_reg[3]_i_502_n_7 }),
        .S({\rout_reg[3]_i_608_n_0 ,\rout_reg[3]_i_609_n_0 ,\rout_reg[3]_i_610_n_0 ,\rout_reg[3]_i_611_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_503 
       (.CI(\rout_reg[3]_i_607_n_0 ),
        .CO({\rout_reg[3]_i_503_n_0 ,\NLW_rout_reg[3]_i_503_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_612_n_0 ,\rout_reg[3]_i_613_n_0 ,\rout_reg[3]_i_614_n_0 ,\rout_reg[3]_i_615_n_0 }),
        .O({\rout_reg[3]_i_503_n_4 ,\rout_reg[3]_i_503_n_5 ,\rout_reg[3]_i_503_n_6 ,\rout_reg[3]_i_503_n_7 }),
        .S({\rout_reg[3]_i_616_n_0 ,\rout_reg[3]_i_617_n_0 ,\rout_reg[3]_i_618_n_0 ,\rout_reg[3]_i_619_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_504 
       (.I0(\rout_reg[3]_i_308_n_5 ),
        .I1(\rout_reg[3]_i_308_n_7 ),
        .O(\rout_reg[3]_i_504_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_505 
       (.I0(\rout_reg[3]_i_308_n_6 ),
        .I1(\rout_reg[3]_i_503_n_4 ),
        .O(\rout_reg[3]_i_505_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_506 
       (.I0(\rout_reg[3]_i_308_n_7 ),
        .I1(\rout_reg[3]_i_503_n_5 ),
        .O(\rout_reg[3]_i_506_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_507 
       (.I0(\rout_reg[3]_i_503_n_4 ),
        .I1(\rout_reg[3]_i_503_n_6 ),
        .O(\rout_reg[3]_i_507_n_0 ));
  (* HLUTNM = "lutpair83" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \rout_reg[3]_i_508 
       (.I0(\rout_reg[3]_i_620_n_5 ),
        .I1(\rout_reg[3]_i_621_n_1 ),
        .I2(\rout_reg[3]_i_622_n_5 ),
        .O(\rout_reg[3]_i_508_n_0 ));
  (* HLUTNM = "lutpair82" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \rout_reg[3]_i_509 
       (.I0(\rout_reg[3]_i_620_n_6 ),
        .I1(\rout_reg[3]_i_621_n_1 ),
        .I2(\rout_reg[3]_i_622_n_6 ),
        .O(\rout_reg[3]_i_509_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \rout_reg[3]_i_51 
       (.I0(\rout_reg[3]_i_13_n_5 ),
        .I1(\rout_reg[3]_i_13_n_6 ),
        .I2(\rout_reg[3]_i_13_n_7 ),
        .O(\rout_reg[3]_i_51_n_0 ));
  LUT5 #(
    .INIT(32'h69999996)) 
    \rout_reg[3]_i_510 
       (.I0(\rout_reg[3]_i_623_n_3 ),
        .I1(\rout_reg[3]_i_624_n_7 ),
        .I2(\rout_reg[3]_i_622_n_4 ),
        .I3(\rout_reg[3]_i_621_n_1 ),
        .I4(\rout_reg[3]_i_620_n_4 ),
        .O(\rout_reg[3]_i_510_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \rout_reg[3]_i_511 
       (.I0(\rout_reg[3]_i_508_n_0 ),
        .I1(\rout_reg[3]_i_620_n_4 ),
        .I2(\rout_reg[3]_i_621_n_1 ),
        .I3(\rout_reg[3]_i_622_n_4 ),
        .O(\rout_reg[3]_i_511_n_0 ));
  (* HLUTNM = "lutpair83" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \rout_reg[3]_i_512 
       (.I0(\rout_reg[3]_i_620_n_5 ),
        .I1(\rout_reg[3]_i_621_n_1 ),
        .I2(\rout_reg[3]_i_622_n_5 ),
        .I3(\rout_reg[3]_i_509_n_0 ),
        .O(\rout_reg[3]_i_512_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_513 
       (.CI(\rout_reg[3]_i_625_n_0 ),
        .CO({\rout_reg[3]_i_513_n_0 ,\NLW_rout_reg[3]_i_513_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_626_n_0 ,\rout_reg[3]_i_627_n_0 ,\rout_reg[3]_i_628_n_0 ,\rout_reg[3]_i_629_n_0 }),
        .O(\NLW_rout_reg[3]_i_513_O_UNCONNECTED [3:0]),
        .S({\rout_reg[3]_i_630_n_0 ,\rout_reg[3]_i_631_n_0 ,\rout_reg[3]_i_632_n_0 ,\rout_reg[3]_i_633_n_0 }));
  (* HLUTNM = "lutpair57" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_514 
       (.I0(\rout_reg[3]_i_525_n_7 ),
        .I1(\rout_reg[3]_i_526_n_7 ),
        .I2(\rout_reg[3]_i_527_n_7 ),
        .O(\rout_reg[3]_i_514_n_0 ));
  (* HLUTNM = "lutpair56" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_515 
       (.I0(\rout_reg[3]_i_634_n_4 ),
        .I1(\rout_reg[3]_i_635_n_4 ),
        .I2(\rout_reg[3]_i_636_n_4 ),
        .O(\rout_reg[3]_i_515_n_0 ));
  (* HLUTNM = "lutpair55" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_516 
       (.I0(\rout_reg[3]_i_634_n_5 ),
        .I1(\rout_reg[3]_i_635_n_5 ),
        .I2(\rout_reg[3]_i_636_n_5 ),
        .O(\rout_reg[3]_i_516_n_0 ));
  (* HLUTNM = "lutpair54" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_517 
       (.I0(\rout_reg[3]_i_634_n_6 ),
        .I1(\rout_reg[3]_i_635_n_6 ),
        .I2(\rout_reg[3]_i_636_n_6 ),
        .O(\rout_reg[3]_i_517_n_0 ));
  (* HLUTNM = "lutpair58" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_518 
       (.I0(\rout_reg[3]_i_525_n_6 ),
        .I1(\rout_reg[3]_i_526_n_6 ),
        .I2(\rout_reg[3]_i_527_n_6 ),
        .I3(\rout_reg[3]_i_514_n_0 ),
        .O(\rout_reg[3]_i_518_n_0 ));
  (* HLUTNM = "lutpair57" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_519 
       (.I0(\rout_reg[3]_i_525_n_7 ),
        .I1(\rout_reg[3]_i_526_n_7 ),
        .I2(\rout_reg[3]_i_527_n_7 ),
        .I3(\rout_reg[3]_i_515_n_0 ),
        .O(\rout_reg[3]_i_519_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDDDF000FDDDF)) 
    \rout_reg[3]_i_52 
       (.I0(\rout_reg[3]_i_117_n_0 ),
        .I1(\rout_reg[3]_i_120_n_0 ),
        .I2(\rout_reg[3]_i_13_n_5 ),
        .I3(\rout_reg[3]_i_37_n_0 ),
        .I4(\rout_reg[3]_i_55_n_4 ),
        .I5(\rout_reg[3]_i_110_n_0 ),
        .O(\rout_reg[3]_i_52_n_0 ));
  (* HLUTNM = "lutpair56" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_520 
       (.I0(\rout_reg[3]_i_634_n_4 ),
        .I1(\rout_reg[3]_i_635_n_4 ),
        .I2(\rout_reg[3]_i_636_n_4 ),
        .I3(\rout_reg[3]_i_516_n_0 ),
        .O(\rout_reg[3]_i_520_n_0 ));
  (* HLUTNM = "lutpair55" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_521 
       (.I0(\rout_reg[3]_i_634_n_5 ),
        .I1(\rout_reg[3]_i_635_n_5 ),
        .I2(\rout_reg[3]_i_636_n_5 ),
        .I3(\rout_reg[3]_i_517_n_0 ),
        .O(\rout_reg[3]_i_521_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_522 
       (.CI(\rout_reg[3]_i_525_n_0 ),
        .CO({\rout_reg[3]_i_522_n_0 ,\NLW_rout_reg[3]_i_522_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_637_n_0 ,\rout_reg[3]_i_638_n_0 ,\rout_reg[3]_i_639_n_0 ,\rout_reg[3]_i_640_n_0 }),
        .O({\rout_reg[3]_i_522_n_4 ,\rout_reg[3]_i_522_n_5 ,\rout_reg[3]_i_522_n_6 ,\rout_reg[3]_i_522_n_7 }),
        .S({\rout_reg[3]_i_641_n_0 ,\rout_reg[3]_i_642_n_0 ,\rout_reg[3]_i_643_n_0 ,\rout_reg[3]_i_644_n_0 }));
  CARRY4 \rout_reg[3]_i_523 
       (.CI(\rout_reg[3]_i_526_n_0 ),
        .CO({\rout_reg[3]_i_523_n_0 ,\NLW_rout_reg[3]_i_523_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_645_n_0 ,\rout_reg[3]_i_646_n_0 ,\rout_reg[3]_i_647_n_0 ,\rout_reg[3]_i_648_n_0 }),
        .O({\rout_reg[3]_i_523_n_4 ,\rout_reg[3]_i_523_n_5 ,\rout_reg[3]_i_523_n_6 ,\rout_reg[3]_i_523_n_7 }),
        .S({\rout_reg[3]_i_649_n_0 ,\rout_reg[3]_i_650_n_0 ,\rout_reg[3]_i_651_n_0 ,\rout_reg[3]_i_652_n_0 }));
  CARRY4 \rout_reg[3]_i_524 
       (.CI(\rout_reg[3]_i_527_n_0 ),
        .CO({\rout_reg[3]_i_524_n_0 ,\NLW_rout_reg[3]_i_524_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_653_n_0 ,\rout_reg[3]_i_654_n_0 ,\rout_reg[3]_i_655_n_0 ,\rout_reg[3]_i_656_n_0 }),
        .O({\rout_reg[3]_i_524_n_4 ,\rout_reg[3]_i_524_n_5 ,\rout_reg[3]_i_524_n_6 ,\rout_reg[3]_i_524_n_7 }),
        .S({\rout_reg[3]_i_657_n_0 ,\rout_reg[3]_i_658_n_0 ,\rout_reg[3]_i_659_n_0 ,\rout_reg[3]_i_660_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_525 
       (.CI(\rout_reg[3]_i_634_n_0 ),
        .CO({\rout_reg[3]_i_525_n_0 ,\NLW_rout_reg[3]_i_525_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_661_n_0 ,\rout_reg[3]_i_662_n_0 ,\rout_reg[3]_i_663_n_0 ,\rout_reg[3]_i_664_n_0 }),
        .O({\rout_reg[3]_i_525_n_4 ,\rout_reg[3]_i_525_n_5 ,\rout_reg[3]_i_525_n_6 ,\rout_reg[3]_i_525_n_7 }),
        .S({\rout_reg[3]_i_665_n_0 ,\rout_reg[3]_i_666_n_0 ,\rout_reg[3]_i_667_n_0 ,\rout_reg[3]_i_668_n_0 }));
  CARRY4 \rout_reg[3]_i_526 
       (.CI(\rout_reg[3]_i_635_n_0 ),
        .CO({\rout_reg[3]_i_526_n_0 ,\NLW_rout_reg[3]_i_526_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_669_n_0 ,\rout_reg[3]_i_670_n_0 ,\rout_reg[3]_i_671_n_0 ,\rout_reg[3]_i_672_n_0 }),
        .O({\rout_reg[3]_i_526_n_4 ,\rout_reg[3]_i_526_n_5 ,\rout_reg[3]_i_526_n_6 ,\rout_reg[3]_i_526_n_7 }),
        .S({\rout_reg[3]_i_673_n_0 ,\rout_reg[3]_i_674_n_0 ,\rout_reg[3]_i_675_n_0 ,\rout_reg[3]_i_676_n_0 }));
  CARRY4 \rout_reg[3]_i_527 
       (.CI(\rout_reg[3]_i_636_n_0 ),
        .CO({\rout_reg[3]_i_527_n_0 ,\NLW_rout_reg[3]_i_527_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_677_n_0 ,\rout_reg[3]_i_678_n_0 ,\rout_reg[3]_i_679_n_0 ,\rout_reg[3]_i_680_n_0 }),
        .O({\rout_reg[3]_i_527_n_4 ,\rout_reg[3]_i_527_n_5 ,\rout_reg[3]_i_527_n_6 ,\rout_reg[3]_i_527_n_7 }),
        .S({\rout_reg[3]_i_681_n_0 ,\rout_reg[3]_i_682_n_0 ,\rout_reg[3]_i_683_n_0 ,\rout_reg[3]_i_684_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_528 
       (.CI(\rout_reg[3]_i_522_n_0 ),
        .CO({\rout_reg[3]_i_528_n_0 ,\NLW_rout_reg[3]_i_528_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_685_n_0 ,\rout_reg[3]_i_686_n_0 ,\rout_reg[3]_i_687_n_0 ,\rout_reg[3]_i_688_n_0 }),
        .O({\rout_reg[3]_i_528_n_4 ,\rout_reg[3]_i_528_n_5 ,\rout_reg[3]_i_528_n_6 ,\rout_reg[3]_i_528_n_7 }),
        .S({\rout_reg[3]_i_689_n_0 ,\rout_reg[3]_i_690_n_0 ,\rout_reg[3]_i_691_n_0 ,\rout_reg[3]_i_692_n_0 }));
  CARRY4 \rout_reg[3]_i_529 
       (.CI(\rout_reg[3]_i_523_n_0 ),
        .CO({\rout_reg[3]_i_529_n_0 ,\NLW_rout_reg[3]_i_529_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_693_n_0 ,\rout_reg[3]_i_694_n_0 ,\rout_reg[3]_i_695_n_0 ,\rout_reg[3]_i_696_n_0 }),
        .O({\rout_reg[3]_i_529_n_4 ,\rout_reg[3]_i_529_n_5 ,\rout_reg[3]_i_529_n_6 ,\rout_reg[3]_i_529_n_7 }),
        .S({\rout_reg[3]_i_697_n_0 ,\rout_reg[3]_i_698_n_0 ,\rout_reg[3]_i_699_n_0 ,\rout_reg[3]_i_700_n_0 }));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \rout_reg[3]_i_53 
       (.I0(\col_reg[10]_2 ),
        .I1(\col_reg[10]_3 ),
        .I2(\gameover[8][0] ),
        .I3(\col_reg[10]_1 ),
        .I4(\rout_reg[3]_i_55_n_4 ),
        .I5(\rout_reg[3]_i_122_n_0 ),
        .O(\rout_reg[3]_i_53_n_0 ));
  CARRY4 \rout_reg[3]_i_530 
       (.CI(\rout_reg[3]_i_524_n_0 ),
        .CO({\rout_reg[3]_i_530_n_0 ,\NLW_rout_reg[3]_i_530_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_701_n_0 ,\rout_reg[3]_i_702_n_0 ,\rout_reg[3]_i_703_n_0 ,\rout_reg[3]_i_704_n_0 }),
        .O({\rout_reg[3]_i_530_n_4 ,\rout_reg[3]_i_530_n_5 ,\rout_reg[3]_i_530_n_6 ,\rout_reg[3]_i_530_n_7 }),
        .S({\rout_reg[3]_i_705_n_0 ,\rout_reg[3]_i_706_n_0 ,\rout_reg[3]_i_707_n_0 ,\rout_reg[3]_i_708_n_0 }));
  LUT6 #(
    .INIT(64'h0101015151510151)) 
    \rout_reg[3]_i_532 
       (.I0(\rout_reg[3]_i_55_n_4 ),
        .I1(\rout_reg[3]_i_142_n_5 ),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\rout_reg[3]_i_143_n_6 ),
        .I4(\rout_reg[3]_i_141_n_0 ),
        .I5(\rout_reg[3]_i_136_n_4 ),
        .O(\rout_reg[3]_i_532_n_0 ));
  LUT5 #(
    .INIT(32'h00808880)) 
    \rout_reg[3]_i_533 
       (.I0(\col_reg[10]_3 ),
        .I1(\gameover[3][0] ),
        .I2(\rout_reg[3]_i_142_n_7 ),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_595_n_0 ),
        .O(\rout_reg[3]_i_533_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFD1FF)) 
    \rout_reg[3]_i_534 
       (.I0(\rout_reg[3]_i_142_n_7 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\rout_reg[3]_i_595_n_0 ),
        .I3(\gameover[2][0] ),
        .I4(\col_reg[10]_3 ),
        .O(\rout_reg[3]_i_534_n_0 ));
  LUT6 #(
    .INIT(64'h00101111FFDFDDDD)) 
    \rout_reg[3]_i_535 
       (.I0(\rout_reg[3]_i_136_n_5 ),
        .I1(\rout_reg[3]_i_137_n_2 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_139_n_6 ),
        .I5(\rout_reg[3]_i_143_n_7 ),
        .O(\rout_reg[3]_i_535_n_0 ));
  LUT5 #(
    .INIT(32'hFABB0A88)) 
    \rout_reg[3]_i_536 
       (.I0(\gameover[5][0] ),
        .I1(\rout_reg[3]_i_142_n_6 ),
        .I2(\rout_reg[3]_i_535_n_0 ),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\gameover[1][0] ),
        .O(\rout_reg[3]_i_536_n_0 ));
  LUT6 #(
    .INIT(64'h00088808222AAA2A)) 
    \rout_reg[3]_i_537 
       (.I0(\gameover[0][0] ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\rout_reg[3]_i_143_n_7 ),
        .I3(\rout_reg[3]_i_141_n_0 ),
        .I4(\rout_reg[3]_i_136_n_5 ),
        .I5(\rout_reg[3]_i_142_n_6 ),
        .O(\rout_reg[3]_i_537_n_0 ));
  LUT6 #(
    .INIT(64'h00088808222AAA2A)) 
    \rout_reg[3]_i_538 
       (.I0(\gameover[2][0] ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\rout_reg[3]_i_143_n_7 ),
        .I3(\rout_reg[3]_i_141_n_0 ),
        .I4(\rout_reg[3]_i_136_n_5 ),
        .I5(\rout_reg[3]_i_142_n_6 ),
        .O(\rout_reg[3]_i_538_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \rout_reg[3]_i_539 
       (.I0(row_i[1]),
        .I1(row_i[0]),
        .I2(row_i[2]),
        .O(\rout_reg[3]_i_539_n_0 ));
  MUXF7 \rout_reg[3]_i_54 
       (.I0(\rout_reg[3]_i_123_n_0 ),
        .I1(\rout_reg[3]_i_124_n_0 ),
        .O(\rout_reg[3]_i_54_n_0 ),
        .S(\rout_reg[3]_i_55_n_5 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rout_reg[3]_i_540 
       (.I0(row_i[0]),
        .I1(row_i[2]),
        .I2(\rout_reg[3]_i_554_n_0 ),
        .I3(\rout_reg[3]_i_422_n_0 ),
        .I4(\rout_reg[3]_i_411_n_0 ),
        .I5(row_i[1]),
        .O(\rout_reg[3]_i_540_n_0 ));
  LUT6 #(
    .INIT(64'h0040004055550040)) 
    \rout_reg[3]_i_541 
       (.I0(\col_reg[10]_0 ),
        .I1(\rout_reg[3]_i_332_n_0 ),
        .I2(\gameover[6][0] ),
        .I3(\rout_reg[3]_i_68_n_0 ),
        .I4(\col_reg[10]_1 ),
        .I5(\rout_reg[3]_i_709_n_0 ),
        .O(\rout_reg[3]_i_541_n_0 ));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    \rout_reg[3]_i_542 
       (.I0(O),
        .I1(\rout_reg[3]_i_55_n_5 ),
        .I2(\rout_reg[3]_i_433_n_0 ),
        .I3(row_i[2]),
        .I4(\rout_reg[3]_i_412_n_0 ),
        .I5(\rout_reg[3]_i_554_n_0 ),
        .O(\rout_reg[3]_i_542_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \rout_reg[3]_i_543 
       (.I0(\rout_reg[3]_i_170_n_0 ),
        .I1(\col_reg[10]_1 ),
        .I2(\gameover[6][0] ),
        .I3(\col_reg[10]_2 ),
        .I4(\col_reg[10]_3 ),
        .I5(\rout_reg[3]_i_422_n_0 ),
        .O(\rout_reg[3]_i_543_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \rout_reg[3]_i_544 
       (.I0(\rout_reg[3]_i_412_n_0 ),
        .I1(\col_reg[10]_2 ),
        .I2(\gameover[5][0] ),
        .I3(\col_reg[10]_1 ),
        .I4(O),
        .I5(row_i[2]),
        .O(\rout_reg[3]_i_544_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \rout_reg[3]_i_545 
       (.I0(\rout_reg[3]_i_55_n_6 ),
        .I1(\col_reg[10]_1 ),
        .I2(\gameover[5][0] ),
        .I3(\col_reg[10]_2 ),
        .I4(\col_reg[10]_3 ),
        .I5(\rout_reg[3]_i_710_n_0 ),
        .O(\rout_reg[3]_i_545_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rout_reg[3]_i_546 
       (.I0(row_i[1]),
        .I1(O),
        .O(\rout_reg[3]_i_546_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \rout_reg[3]_i_547 
       (.I0(row_i[1]),
        .I1(row_i[0]),
        .I2(O),
        .O(\rout_reg[3]_i_547_n_0 ));
  LUT6 #(
    .INIT(64'h0404400000004000)) 
    \rout_reg[3]_i_549 
       (.I0(\col_reg[10]_0 ),
        .I1(\rout_reg[3]_i_68_n_0 ),
        .I2(\col_reg[10]_3 ),
        .I3(\gameover[3][0] ),
        .I4(\col_reg[10]_2 ),
        .I5(\gameover[0][0] ),
        .O(\rout_reg[3]_i_549_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 \rout_reg[3]_i_55 
       (.CI(1'b0),
        .CO({\rout_reg[3]_i_55_n_0 ,\NLW_rout_reg[3]_i_55_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({row_i[6:4],1'b0}),
        .O({\rout_reg[3]_i_55_n_4 ,\rout_reg[3]_i_55_n_5 ,\rout_reg[3]_i_55_n_6 ,O}),
        .S({\rout_reg[3]_i_125_n_0 ,\rout_reg[3]_i_126_n_0 ,\rout_reg[3]_i_127_n_0 ,row_i[3]}));
  LUT6 #(
    .INIT(64'h0000000000022202)) 
    \rout_reg[3]_i_550 
       (.I0(\rout_reg[3]_i_55_n_6 ),
        .I1(\rout_reg[3]_i_55_n_4 ),
        .I2(\rout_reg[3]_i_142_n_5 ),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_440_n_0 ),
        .I5(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_550_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \rout_reg[3]_i_551 
       (.I0(row_i[2]),
        .I1(row_i[0]),
        .I2(row_i[1]),
        .I3(O),
        .O(\rout_reg[3]_i_551_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFA0A0C0C0C0C0)) 
    \rout_reg[3]_i_552 
       (.I0(\rout_reg[3]_i_536_n_0 ),
        .I1(\gameover[3][0] ),
        .I2(\col_reg[10]_3 ),
        .I3(\col_reg[10]_1 ),
        .I4(\gameover[0][0] ),
        .I5(\col_reg[10]_2 ),
        .O(\rout_reg[3]_i_552_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \rout_reg[3]_i_553 
       (.I0(row_i[2]),
        .I1(row_i[1]),
        .I2(O),
        .O(\rout_reg[3]_i_553_n_0 ));
  LUT6 #(
    .INIT(64'hC000C50500000000)) 
    \rout_reg[3]_i_554 
       (.I0(\rout_reg[3]_i_142_n_6 ),
        .I1(\rout_reg[3]_i_535_n_0 ),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\rout_reg[3]_i_595_n_0 ),
        .I4(\rout_reg[3]_i_142_n_7 ),
        .I5(\gameover[1][0] ),
        .O(\rout_reg[3]_i_554_n_0 ));
  LUT6 #(
    .INIT(64'h0047000000000000)) 
    \rout_reg[3]_i_555 
       (.I0(\rout_reg[3]_i_440_n_0 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\rout_reg[3]_i_142_n_5 ),
        .I3(\rout_reg[3]_i_55_n_4 ),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .I5(row_i[2]),
        .O(\rout_reg[3]_i_555_n_0 ));
  LUT6 #(
    .INIT(64'h0002220200000000)) 
    \rout_reg[3]_i_556 
       (.I0(\rout_reg[3]_i_55_n_5 ),
        .I1(\rout_reg[3]_i_55_n_4 ),
        .I2(\rout_reg[3]_i_142_n_5 ),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_440_n_0 ),
        .I5(row_i[1]),
        .O(\rout_reg[3]_i_556_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \rout_reg[3]_i_557 
       (.I0(\col_reg[10]_1 ),
        .I1(\gameover[0][0] ),
        .I2(\col_reg[10]_2 ),
        .O(\rout_reg[3]_i_557_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \rout_reg[3]_i_558 
       (.I0(\rout_reg[3]_i_55_n_5 ),
        .I1(\rout_reg[3]_i_55_n_4 ),
        .I2(\col_reg[10]_0 ),
        .I3(\gameover[8][0] ),
        .I4(\rout_reg[3]_i_55_n_6 ),
        .I5(O),
        .O(\rout_reg[3]_i_558_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \rout_reg[3]_i_559 
       (.I0(\rout_reg[3]_i_330_n_0 ),
        .I1(\col_reg[10]_1 ),
        .I2(\gameover[6][0] ),
        .I3(\col_reg[10]_2 ),
        .I4(\col_reg[10]_3 ),
        .I5(\rout_reg[3]_i_711_n_0 ),
        .O(\rout_reg[3]_i_559_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \rout_reg[3]_i_56 
       (.I0(\col_reg[10]_2 ),
        .I1(\col_reg[10]_3 ),
        .I2(\gameover[8][0] ),
        .I3(\col_reg[10]_1 ),
        .O(\rout_reg[3]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h2220002000000000)) 
    \rout_reg[3]_i_560 
       (.I0(\row_reg[2]_1 ),
        .I1(\col_reg[10]_0 ),
        .I2(\gameover[3][0] ),
        .I3(\col_reg[10]_2 ),
        .I4(\rout_reg[3]_i_536_n_0 ),
        .I5(\col_reg[10]_3 ),
        .O(\rout_reg[3]_i_560_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF0000A8000000)) 
    \rout_reg[3]_i_561 
       (.I0(O),
        .I1(row_i[2]),
        .I2(\rout_reg[3]_i_433_n_0 ),
        .I3(\rout_reg[3]_i_55_n_6 ),
        .I4(\rout_reg[3]_i_532_n_0 ),
        .I5(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_561_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000400000004)) 
    \rout_reg[3]_i_562 
       (.I0(\rout_reg[3]_i_55_n_6 ),
        .I1(\gameover[2][0] ),
        .I2(\col_reg[10]_3 ),
        .I3(\col_reg[10]_1 ),
        .I4(\col_reg[10]_2 ),
        .I5(\gameover[1][0] ),
        .O(\rout_reg[3]_i_562_n_0 ));
  LUT5 #(
    .INIT(32'h00008A80)) 
    \rout_reg[3]_i_563 
       (.I0(\gameover[8][0] ),
        .I1(\rout_reg[3]_i_440_n_0 ),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\rout_reg[3]_i_142_n_5 ),
        .I4(\rout_reg[3]_i_55_n_4 ),
        .O(\rout_reg[3]_i_563_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \rout_reg[3]_i_564 
       (.I0(row_i[2]),
        .I1(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_564_n_0 ));
  LUT5 #(
    .INIT(32'h1FFF0000)) 
    \rout_reg[3]_i_565 
       (.I0(row_i[0]),
        .I1(row_i[1]),
        .I2(row_i[2]),
        .I3(O),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_565_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \rout_reg[3]_i_566 
       (.I0(\col_reg[10]_1 ),
        .I1(\gameover[2][0] ),
        .I2(\col_reg[10]_2 ),
        .O(\rout_reg[3]_i_566_n_0 ));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \rout_reg[3]_i_567 
       (.I0(\rout_reg[3]_i_394_n_0 ),
        .I1(\rout_reg[3]_i_393_n_0 ),
        .I2(\rout_reg[3]_i_551_n_0 ),
        .I3(\rout_reg[3]_i_332_n_0 ),
        .I4(\rout_reg[3]_i_538_n_0 ),
        .I5(\rout_reg[3]_i_550_n_0 ),
        .O(\rout_reg[3]_i_567_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0C0CFC0C0)) 
    \rout_reg[3]_i_568 
       (.I0(\rout_reg[3]_i_536_n_0 ),
        .I1(\gameover[3][0] ),
        .I2(\col_reg[10]_3 ),
        .I3(\col_reg[10]_1 ),
        .I4(\gameover[2][0] ),
        .I5(\col_reg[10]_2 ),
        .O(\rout_reg[3]_i_568_n_0 ));
  LUT6 #(
    .INIT(64'h00D0000000000000)) 
    \rout_reg[3]_i_569 
       (.I0(\rout_reg[3]_i_55_n_5 ),
        .I1(row_i[2]),
        .I2(\rout_reg[3]_i_412_n_0 ),
        .I3(\col_reg[10]_1 ),
        .I4(\col_reg[10]_2 ),
        .I5(\gameover[1][0] ),
        .O(\rout_reg[3]_i_569_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB8B8)) 
    \rout_reg[3]_i_57 
       (.I0(\rout_reg[3]_i_19_0 ),
        .I1(\rout_reg[3]_i_55_n_4 ),
        .I2(\rout_reg[3]_i_106_n_0 ),
        .I3(\rout_reg[3]_i_55_n_5 ),
        .I4(\rout_reg[3]_i_128_n_0 ),
        .O(\rout_reg[3]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \rout_reg[3]_i_570 
       (.I0(\rout_reg[3]_i_330_n_0 ),
        .I1(\col_reg[10]_1 ),
        .I2(\gameover[6][0] ),
        .I3(\col_reg[10]_2 ),
        .I4(\col_reg[10]_3 ),
        .I5(row_i[2]),
        .O(\rout_reg[3]_i_570_n_0 ));
  LUT5 #(
    .INIT(32'hA0208000)) 
    \rout_reg[3]_i_572 
       (.I0(\col_reg[10]_1 ),
        .I1(\col_reg[10]_2 ),
        .I2(\col_reg[10]_3 ),
        .I3(\gameover[5][0] ),
        .I4(\gameover[3][0] ),
        .O(\rout_reg[3]_i_572_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \rout_reg[3]_i_573 
       (.I0(\rout_reg[3]_i_402_0 ),
        .I1(\col_reg[10]_1 ),
        .I2(\col_reg[10]_2 ),
        .I3(\rout_reg[3]_i_365_n_0 ),
        .I4(row_i[1]),
        .I5(\rout_reg[3]_i_421_n_0 ),
        .O(\rout_reg[3]_i_573_n_0 ));
  LUT5 #(
    .INIT(32'hFABB0A88)) 
    \rout_reg[3]_i_574 
       (.I0(\gameover[6][0] ),
        .I1(\rout_reg[3]_i_142_n_6 ),
        .I2(\rout_reg[3]_i_535_n_0 ),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\gameover[2][0] ),
        .O(\rout_reg[3]_i_574_n_0 ));
  LUT6 #(
    .INIT(64'hAAA222A288800080)) 
    \rout_reg[3]_i_575 
       (.I0(\gameover[6][0] ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\rout_reg[3]_i_143_n_7 ),
        .I3(\rout_reg[3]_i_141_n_0 ),
        .I4(\rout_reg[3]_i_136_n_5 ),
        .I5(\rout_reg[3]_i_142_n_6 ),
        .O(\rout_reg[3]_i_575_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rout_reg[3]_i_576 
       (.I0(\rout_reg[3]_i_55_n_5 ),
        .I1(\rout_reg[3]_i_55_n_4 ),
        .O(\rout_reg[3]_i_576_n_0 ));
  LUT6 #(
    .INIT(64'h222A202800000000)) 
    \rout_reg[3]_i_577 
       (.I0(\rout_reg[3]_i_55_n_5 ),
        .I1(row_i[2]),
        .I2(row_i[1]),
        .I3(row_i[0]),
        .I4(O),
        .I5(\rout_reg[3]_i_412_n_0 ),
        .O(\rout_reg[3]_i_577_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \rout_reg[3]_i_578 
       (.I0(row_i[1]),
        .I1(\col_reg[10]_3 ),
        .I2(O),
        .I3(\rout_reg[3]_i_55_n_5 ),
        .I4(\rout_reg[3]_i_55_n_4 ),
        .I5(\col_reg[10]_0 ),
        .O(\rout_reg[3]_i_578_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \rout_reg[3]_i_579 
       (.I0(\col_reg[10]_2 ),
        .I1(\gameover[5][0] ),
        .I2(\col_reg[10]_1 ),
        .O(\rout_reg[3]_i_579_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \rout_reg[3]_i_58 
       (.CI(\rout_reg[3]_i_129_n_0 ),
        .CO({\rout_reg[3]_i_58_n_0 ,\NLW_rout_reg[3]_i_58_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_rout_reg[3]_i_58_O_UNCONNECTED [3:0]),
        .S({\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 }));
  LUT5 #(
    .INIT(32'h00005404)) 
    \rout_reg[3]_i_580 
       (.I0(\col_reg[10]_2 ),
        .I1(\rout_reg[3]_i_574_n_0 ),
        .I2(\col_reg[10]_3 ),
        .I3(\gameover[3][0] ),
        .I4(\col_reg[10]_0 ),
        .O(\rout_reg[3]_i_580_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888B88888)) 
    \rout_reg[3]_i_581 
       (.I0(\gameover[8][0] ),
        .I1(\col_reg[10]_0 ),
        .I2(\rout_reg[3]_i_68_n_0 ),
        .I3(\col_reg[10]_3 ),
        .I4(\gameover[2][0] ),
        .I5(\col_reg[10]_2 ),
        .O(\rout_reg[3]_i_581_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4A45404)) 
    \rout_reg[3]_i_582 
       (.I0(\col_reg[10]_2 ),
        .I1(\rout_reg[3]_i_574_n_0 ),
        .I2(\col_reg[10]_3 ),
        .I3(\gameover[3][0] ),
        .I4(\rout_reg[3]_i_713_n_0 ),
        .I5(\col_reg[10]_0 ),
        .O(\rout_reg[3]_i_582_n_0 ));
  LUT6 #(
    .INIT(64'h2F202FB800000000)) 
    \rout_reg[3]_i_583 
       (.I0(\rout_reg[3]_i_55_n_5 ),
        .I1(row_i[2]),
        .I2(O),
        .I3(row_i[1]),
        .I4(row_i[0]),
        .I5(\rout_reg[3]_i_394_n_0 ),
        .O(\rout_reg[3]_i_583_n_0 ));
  LUT6 #(
    .INIT(64'h000080000000C000)) 
    \rout_reg[3]_i_584 
       (.I0(row_i[2]),
        .I1(\rout_reg[3]_i_55_n_6 ),
        .I2(\gameover[8][0] ),
        .I3(\col_reg[10]_0 ),
        .I4(\rout_reg[3]_i_55_n_4 ),
        .I5(\rout_reg[3]_i_55_n_5 ),
        .O(\rout_reg[3]_i_584_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \rout_reg[3]_i_585 
       (.I0(\rout_reg[3]_i_55_n_6 ),
        .I1(\rout_reg[3]_i_55_n_5 ),
        .I2(\rout_reg[3]_i_55_n_4 ),
        .I3(\gameover[8][0] ),
        .I4(\col_reg[10]_0 ),
        .O(\rout_reg[3]_i_585_n_0 ));
  LUT6 #(
    .INIT(64'h0030BBBB00308888)) 
    \rout_reg[3]_i_586 
       (.I0(\gameover[3][0] ),
        .I1(\col_reg[10]_3 ),
        .I2(\gameover[0][0] ),
        .I3(\col_reg[10]_1 ),
        .I4(\col_reg[10]_2 ),
        .I5(\rout_reg[3]_i_574_n_0 ),
        .O(\rout_reg[3]_i_586_n_0 ));
  LUT4 #(
    .INIT(16'h8880)) 
    \rout_reg[3]_i_587 
       (.I0(row_i[2]),
        .I1(O),
        .I2(row_i[0]),
        .I3(row_i[1]),
        .O(\rout_reg[3]_i_587_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_59 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .O(\Inst_VGA_Draw/is_text_pixel5 [11]));
  LUT6 #(
    .INIT(64'h00000000BFBA808A)) 
    \rout_reg[3]_i_590 
       (.I0(\start[0][0] ),
        .I1(\rout_reg[3]_i_595_n_0 ),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\rout_reg[3]_i_142_n_7 ),
        .I4(\gameover[1][0] ),
        .I5(\col_reg[10]_3 ),
        .O(\rout_reg[3]_i_590_n_0 ));
  LUT6 #(
    .INIT(64'h3F30808A0000808A)) 
    \rout_reg[3]_i_591 
       (.I0(\start[0][0] ),
        .I1(\rout_reg[3]_i_595_n_0 ),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\rout_reg[3]_i_142_n_7 ),
        .I4(\col_reg[10]_3 ),
        .I5(\gameover[8][0] ),
        .O(\rout_reg[3]_i_591_n_0 ));
  LUT6 #(
    .INIT(64'h4474003000000000)) 
    \rout_reg[3]_i_592 
       (.I0(\rout_reg[3]_i_595_n_0 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\rout_reg[3]_i_142_n_7 ),
        .I3(\rout_reg[3]_i_142_n_6 ),
        .I4(\rout_reg[3]_i_535_n_0 ),
        .I5(\gameover[8][0] ),
        .O(\rout_reg[3]_i_592_n_0 ));
  LUT6 #(
    .INIT(64'h00088808222AAA2A)) 
    \rout_reg[3]_i_593 
       (.I0(\start[0][0] ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\rout_reg[3]_i_143_n_7 ),
        .I3(\rout_reg[3]_i_141_n_0 ),
        .I4(\rout_reg[3]_i_136_n_5 ),
        .I5(\rout_reg[3]_i_142_n_6 ),
        .O(\rout_reg[3]_i_593_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \rout_reg[3]_i_594 
       (.I0(row_i[2]),
        .I1(row_i[1]),
        .I2(row_i[0]),
        .O(\rout_reg[3]_i_594_n_0 ));
  LUT6 #(
    .INIT(64'h00101111FFDFDDDD)) 
    \rout_reg[3]_i_595 
       (.I0(\rout_reg[3]_i_136_n_6 ),
        .I1(\rout_reg[3]_i_137_n_2 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_139_n_6 ),
        .I5(\rout_reg[3]_i_140_n_4 ),
        .O(\rout_reg[3]_i_595_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_596 
       (.CI(\rout_reg[3]_i_714_n_0 ),
        .CO({\rout_reg[3]_i_596_n_0 ,\NLW_rout_reg[3]_i_596_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_715_n_0 ,\rout_reg[3]_i_716_n_0 ,\rout_reg[3]_i_717_n_0 ,\rout_reg[3]_i_718_n_0 }),
        .O(\NLW_rout_reg[3]_i_596_O_UNCONNECTED [3:0]),
        .S({\rout_reg[3]_i_719_n_0 ,\rout_reg[3]_i_720_n_0 ,\rout_reg[3]_i_721_n_0 ,\rout_reg[3]_i_722_n_0 }));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_597 
       (.I0(\rout_reg[3]_i_502_n_5 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [23]),
        .O(\rout_reg[3]_i_597_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_598 
       (.I0(\rout_reg[3]_i_502_n_6 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [22]),
        .O(\rout_reg[3]_i_598_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_599 
       (.I0(\rout_reg[3]_i_502_n_7 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [21]),
        .O(\rout_reg[3]_i_599_n_0 ));
  LUT6 #(
    .INIT(64'h6F666F666F666666)) 
    \rout_reg[3]_i_6 
       (.I0(mode[1]),
        .I1(mode[0]),
        .I2(\rout_reg[3]_i_18_n_0 ),
        .I3(\rout_reg[3]_i_8_n_5 ),
        .I4(\rout_reg[3]_i_13_n_4 ),
        .I5(\rout_reg[3]_i_19_n_0 ),
        .O(\rout_reg[3]_i_6_n_0 ));
  CARRY4 \rout_reg[3]_i_60 
       (.CI(\rout_reg[3]_i_55_n_0 ),
        .CO({\rout_reg[3]_i_60_n_0 ,\NLW_rout_reg[3]_i_60_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({row_i[10:9],1'b0,1'b0}),
        .O({\rout_reg[3]_i_60_n_4 ,\rout_reg[3]_i_60_n_5 ,\rout_reg[3]_i_60_n_6 ,\rout_reg[3]_i_60_n_7 }),
        .S({\rout_reg[3]_i_130_n_0 ,\rout_reg[3]_i_131_n_0 ,row_i[8:7]}));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_600 
       (.I0(\rout_reg[3]_i_606_n_4 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [20]),
        .O(\rout_reg[3]_i_600_n_0 ));
  LUT5 #(
    .INIT(32'hC3B4C34B)) 
    \rout_reg[3]_i_601 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [23]),
        .I1(\rout_reg[3]_i_502_n_5 ),
        .I2(\rout_reg[3]_i_502_n_4 ),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [24]),
        .O(\rout_reg[3]_i_601_n_0 ));
  LUT5 #(
    .INIT(32'hC3B4C34B)) 
    \rout_reg[3]_i_602 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [22]),
        .I1(\rout_reg[3]_i_502_n_6 ),
        .I2(\rout_reg[3]_i_502_n_5 ),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [23]),
        .O(\rout_reg[3]_i_602_n_0 ));
  LUT5 #(
    .INIT(32'hCCB4334B)) 
    \rout_reg[3]_i_603 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [21]),
        .I1(\rout_reg[3]_i_502_n_7 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [22]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_502_n_6 ),
        .O(\rout_reg[3]_i_603_n_0 ));
  LUT5 #(
    .INIT(32'hCCB4334B)) 
    \rout_reg[3]_i_604 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [20]),
        .I1(\rout_reg[3]_i_606_n_4 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [21]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_502_n_7 ),
        .O(\rout_reg[3]_i_604_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_605 
       (.CI(\rout_reg[3]_i_723_n_0 ),
        .CO({\rout_reg[3]_i_605_n_0 ,\NLW_rout_reg[3]_i_605_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\Inst_VGA_Draw/START[0][0]4 [20:17]),
        .S({\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_606 
       (.CI(\rout_reg[3]_i_724_n_0 ),
        .CO({\rout_reg[3]_i_606_n_0 ,\NLW_rout_reg[3]_i_606_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_607_n_5 ,\rout_reg[3]_i_607_n_6 ,\rout_reg[3]_i_607_n_7 ,\rout_reg[3]_i_725_n_4 }),
        .O({\rout_reg[3]_i_606_n_4 ,\rout_reg[3]_i_606_n_5 ,\rout_reg[3]_i_606_n_6 ,\rout_reg[3]_i_606_n_7 }),
        .S({\rout_reg[3]_i_726_n_0 ,\rout_reg[3]_i_727_n_0 ,\rout_reg[3]_i_728_n_0 ,\rout_reg[3]_i_729_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_607 
       (.CI(\rout_reg[3]_i_725_n_0 ),
        .CO({\rout_reg[3]_i_607_n_0 ,\NLW_rout_reg[3]_i_607_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_730_n_0 ,\rout_reg[3]_i_731_n_0 ,\rout_reg[3]_i_732_n_0 ,\rout_reg[3]_i_733_n_0 }),
        .O({\rout_reg[3]_i_607_n_4 ,\rout_reg[3]_i_607_n_5 ,\rout_reg[3]_i_607_n_6 ,\rout_reg[3]_i_607_n_7 }),
        .S({\rout_reg[3]_i_734_n_0 ,\rout_reg[3]_i_735_n_0 ,\rout_reg[3]_i_736_n_0 ,\rout_reg[3]_i_737_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_608 
       (.I0(\rout_reg[3]_i_503_n_5 ),
        .I1(\rout_reg[3]_i_503_n_7 ),
        .O(\rout_reg[3]_i_608_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_609 
       (.I0(\rout_reg[3]_i_503_n_6 ),
        .I1(\rout_reg[3]_i_607_n_4 ),
        .O(\rout_reg[3]_i_609_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \rout_reg[3]_i_61 
       (.CI(\rout_reg[3]_i_132_n_0 ),
        .CO({\rout_reg[3]_i_61_n_0 ,\NLW_rout_reg[3]_i_61_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_rout_reg[3]_i_61_O_UNCONNECTED [3:0]),
        .S({\rout_reg[3]_i_21_n_3 ,\rout_reg[3]_i_21_n_3 ,\rout_reg[3]_i_133_n_0 ,\rout_reg[3]_i_134_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_610 
       (.I0(\rout_reg[3]_i_503_n_7 ),
        .I1(\rout_reg[3]_i_607_n_5 ),
        .O(\rout_reg[3]_i_610_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_611 
       (.I0(\rout_reg[3]_i_607_n_4 ),
        .I1(\rout_reg[3]_i_607_n_6 ),
        .O(\rout_reg[3]_i_611_n_0 ));
  (* HLUTNM = "lutpair81" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \rout_reg[3]_i_612 
       (.I0(\rout_reg[3]_i_620_n_7 ),
        .I1(\rout_reg[3]_i_621_n_1 ),
        .I2(\rout_reg[3]_i_622_n_7 ),
        .O(\rout_reg[3]_i_612_n_0 ));
  (* HLUTNM = "lutpair80" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \rout_reg[3]_i_613 
       (.I0(\rout_reg[3]_i_738_n_4 ),
        .I1(\rout_reg[3]_i_621_n_1 ),
        .I2(\rout_reg[3]_i_739_n_4 ),
        .O(\rout_reg[3]_i_613_n_0 ));
  (* HLUTNM = "lutpair79" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \rout_reg[3]_i_614 
       (.I0(\rout_reg[3]_i_738_n_5 ),
        .I1(\rout_reg[3]_i_621_n_1 ),
        .I2(\rout_reg[3]_i_739_n_5 ),
        .O(\rout_reg[3]_i_614_n_0 ));
  (* HLUTNM = "lutpair78" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_615 
       (.I0(\rout_reg[3]_i_739_n_6 ),
        .I1(\rout_reg[3]_i_621_n_6 ),
        .I2(\rout_reg[3]_i_738_n_6 ),
        .O(\rout_reg[3]_i_615_n_0 ));
  (* HLUTNM = "lutpair82" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \rout_reg[3]_i_616 
       (.I0(\rout_reg[3]_i_620_n_6 ),
        .I1(\rout_reg[3]_i_621_n_1 ),
        .I2(\rout_reg[3]_i_622_n_6 ),
        .I3(\rout_reg[3]_i_612_n_0 ),
        .O(\rout_reg[3]_i_616_n_0 ));
  (* HLUTNM = "lutpair81" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \rout_reg[3]_i_617 
       (.I0(\rout_reg[3]_i_620_n_7 ),
        .I1(\rout_reg[3]_i_621_n_1 ),
        .I2(\rout_reg[3]_i_622_n_7 ),
        .I3(\rout_reg[3]_i_613_n_0 ),
        .O(\rout_reg[3]_i_617_n_0 ));
  (* HLUTNM = "lutpair80" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \rout_reg[3]_i_618 
       (.I0(\rout_reg[3]_i_738_n_4 ),
        .I1(\rout_reg[3]_i_621_n_1 ),
        .I2(\rout_reg[3]_i_739_n_4 ),
        .I3(\rout_reg[3]_i_614_n_0 ),
        .O(\rout_reg[3]_i_618_n_0 ));
  (* HLUTNM = "lutpair79" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \rout_reg[3]_i_619 
       (.I0(\rout_reg[3]_i_738_n_5 ),
        .I1(\rout_reg[3]_i_621_n_1 ),
        .I2(\rout_reg[3]_i_739_n_5 ),
        .I3(\rout_reg[3]_i_615_n_0 ),
        .O(\rout_reg[3]_i_619_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_62 
       (.I0(\rout_reg[3]_i_21_n_3 ),
        .O(\rout_reg[3]_i_62_n_0 ));
  CARRY4 \rout_reg[3]_i_620 
       (.CI(\rout_reg[3]_i_738_n_0 ),
        .CO({\rout_reg[3]_i_620_n_0 ,\NLW_rout_reg[3]_i_620_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_740_n_0 ,\rout_reg[3]_i_741_n_0 ,\rout_reg[3]_i_742_n_0 ,\rout_reg[3]_i_743_n_0 }),
        .O({\rout_reg[3]_i_620_n_4 ,\rout_reg[3]_i_620_n_5 ,\rout_reg[3]_i_620_n_6 ,\rout_reg[3]_i_620_n_7 }),
        .S({\rout_reg[3]_i_744_n_0 ,\rout_reg[3]_i_745_n_0 ,\rout_reg[3]_i_746_n_0 ,\rout_reg[3]_i_747_n_0 }));
  CARRY4 \rout_reg[3]_i_621 
       (.CI(\rout_reg[3]_i_748_n_0 ),
        .CO({\NLW_rout_reg[3]_i_621_CO_UNCONNECTED [3],\rout_reg[3]_i_621_n_1 ,\NLW_rout_reg[3]_i_621_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\rout_reg[3]_i_749_n_0 ,\rout_reg[3]_i_750_n_0 }),
        .O({\NLW_rout_reg[3]_i_621_O_UNCONNECTED [3:2],\rout_reg[3]_i_621_n_6 ,\rout_reg[3]_i_621_n_7 }),
        .S({1'b0,1'b1,\rout_reg[3]_i_751_n_0 ,\rout_reg[3]_i_752_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_622 
       (.CI(\rout_reg[3]_i_739_n_0 ),
        .CO({\rout_reg[3]_i_622_n_0 ,\NLW_rout_reg[3]_i_622_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_753_n_0 ,\rout_reg[3]_i_754_n_0 ,\rout_reg[3]_i_755_n_0 ,\rout_reg[3]_i_756_n_0 }),
        .O({\rout_reg[3]_i_622_n_4 ,\rout_reg[3]_i_622_n_5 ,\rout_reg[3]_i_622_n_6 ,\rout_reg[3]_i_622_n_7 }),
        .S({\rout_reg[3]_i_757_n_0 ,\rout_reg[3]_i_758_n_0 ,\rout_reg[3]_i_759_n_0 ,\rout_reg[3]_i_760_n_0 }));
  CARRY4 \rout_reg[3]_i_623 
       (.CI(\rout_reg[3]_i_620_n_0 ),
        .CO({\NLW_rout_reg[3]_i_623_CO_UNCONNECTED [3:1],\rout_reg[3]_i_623_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_rout_reg[3]_i_623_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_624 
       (.CI(\rout_reg[3]_i_622_n_0 ),
        .CO(\NLW_rout_reg[3]_i_624_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rout_reg[3]_i_624_O_UNCONNECTED [3:1],\rout_reg[3]_i_624_n_7 }),
        .S({1'b0,1'b0,1'b0,\rout_reg[3]_i_761_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_625 
       (.CI(\rout_reg[3]_i_762_n_0 ),
        .CO({\rout_reg[3]_i_625_n_0 ,\NLW_rout_reg[3]_i_625_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_763_n_0 ,\rout_reg[3]_i_764_n_0 ,\rout_reg[3]_i_765_n_0 ,\rout_reg[3]_i_766_n_0 }),
        .O(\NLW_rout_reg[3]_i_625_O_UNCONNECTED [3:0]),
        .S({\rout_reg[3]_i_767_n_0 ,\rout_reg[3]_i_768_n_0 ,\rout_reg[3]_i_769_n_0 ,\rout_reg[3]_i_770_n_0 }));
  (* HLUTNM = "lutpair53" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_626 
       (.I0(\rout_reg[3]_i_634_n_7 ),
        .I1(\rout_reg[3]_i_635_n_7 ),
        .I2(\rout_reg[3]_i_636_n_7 ),
        .O(\rout_reg[3]_i_626_n_0 ));
  (* HLUTNM = "lutpair52" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_627 
       (.I0(\rout_reg[3]_i_771_n_4 ),
        .I1(\rout_reg[3]_i_772_n_4 ),
        .I2(\rout_reg[3]_i_773_n_4 ),
        .O(\rout_reg[3]_i_627_n_0 ));
  (* HLUTNM = "lutpair51" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_628 
       (.I0(\rout_reg[3]_i_771_n_5 ),
        .I1(\rout_reg[3]_i_772_n_5 ),
        .I2(\rout_reg[3]_i_773_n_5 ),
        .O(\rout_reg[3]_i_628_n_0 ));
  (* HLUTNM = "lutpair50" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_629 
       (.I0(\rout_reg[3]_i_771_n_6 ),
        .I1(\rout_reg[3]_i_772_n_6 ),
        .I2(\rout_reg[3]_i_773_n_6 ),
        .O(\rout_reg[3]_i_629_n_0 ));
  CARRY4 \rout_reg[3]_i_63 
       (.CI(\rout_reg[3]_i_135_n_0 ),
        .CO({\rout_reg[3]_i_63_n_0 ,\NLW_rout_reg[3]_i_63_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\Inst_VGA_Draw/is_text_pixel5 [8:5]),
        .S(col_i[8:5]));
  (* HLUTNM = "lutpair54" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_630 
       (.I0(\rout_reg[3]_i_634_n_6 ),
        .I1(\rout_reg[3]_i_635_n_6 ),
        .I2(\rout_reg[3]_i_636_n_6 ),
        .I3(\rout_reg[3]_i_626_n_0 ),
        .O(\rout_reg[3]_i_630_n_0 ));
  (* HLUTNM = "lutpair53" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_631 
       (.I0(\rout_reg[3]_i_634_n_7 ),
        .I1(\rout_reg[3]_i_635_n_7 ),
        .I2(\rout_reg[3]_i_636_n_7 ),
        .I3(\rout_reg[3]_i_627_n_0 ),
        .O(\rout_reg[3]_i_631_n_0 ));
  (* HLUTNM = "lutpair52" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_632 
       (.I0(\rout_reg[3]_i_771_n_4 ),
        .I1(\rout_reg[3]_i_772_n_4 ),
        .I2(\rout_reg[3]_i_773_n_4 ),
        .I3(\rout_reg[3]_i_628_n_0 ),
        .O(\rout_reg[3]_i_632_n_0 ));
  (* HLUTNM = "lutpair51" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_633 
       (.I0(\rout_reg[3]_i_771_n_5 ),
        .I1(\rout_reg[3]_i_772_n_5 ),
        .I2(\rout_reg[3]_i_773_n_5 ),
        .I3(\rout_reg[3]_i_629_n_0 ),
        .O(\rout_reg[3]_i_633_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_634 
       (.CI(\rout_reg[3]_i_771_n_0 ),
        .CO({\rout_reg[3]_i_634_n_0 ,\NLW_rout_reg[3]_i_634_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_774_n_0 ,\rout_reg[3]_i_775_n_0 ,col_i[0],\rout_reg[3]_i_776_n_7 }),
        .O({\rout_reg[3]_i_634_n_4 ,\rout_reg[3]_i_634_n_5 ,\rout_reg[3]_i_634_n_6 ,\rout_reg[3]_i_634_n_7 }),
        .S({\rout_reg[3]_i_777_n_0 ,\rout_reg[3]_i_778_n_0 ,\rout_reg[3]_i_779_n_0 ,\rout_reg[3]_i_780_n_0 }));
  CARRY4 \rout_reg[3]_i_635 
       (.CI(\rout_reg[3]_i_772_n_0 ),
        .CO({\rout_reg[3]_i_635_n_0 ,\NLW_rout_reg[3]_i_635_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_781_n_0 ,\rout_reg[3]_i_782_n_0 ,\rout_reg[3]_i_783_n_0 ,\rout_reg[3]_i_784_n_0 }),
        .O({\rout_reg[3]_i_635_n_4 ,\rout_reg[3]_i_635_n_5 ,\rout_reg[3]_i_635_n_6 ,\rout_reg[3]_i_635_n_7 }),
        .S({\rout_reg[3]_i_785_n_0 ,\rout_reg[3]_i_786_n_0 ,\rout_reg[3]_i_787_n_0 ,\rout_reg[3]_i_788_n_0 }));
  CARRY4 \rout_reg[3]_i_636 
       (.CI(\rout_reg[3]_i_773_n_0 ),
        .CO({\rout_reg[3]_i_636_n_0 ,\NLW_rout_reg[3]_i_636_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_789_n_0 ,\rout_reg[3]_i_790_n_0 ,\rout_reg[3]_i_791_n_0 ,\rout_reg[3]_i_792_n_0 }),
        .O({\rout_reg[3]_i_636_n_4 ,\rout_reg[3]_i_636_n_5 ,\rout_reg[3]_i_636_n_6 ,\rout_reg[3]_i_636_n_7 }),
        .S({\rout_reg[3]_i_793_n_0 ,\rout_reg[3]_i_794_n_0 ,\rout_reg[3]_i_795_n_0 ,\rout_reg[3]_i_796_n_0 }));
  LUT5 #(
    .INIT(32'hEEE888E8)) 
    \rout_reg[3]_i_637 
       (.I0(\rout_reg[3]_i_797_n_5 ),
        .I1(\rout_reg[3]_i_798_n_5 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [9]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [9]),
        .O(\rout_reg[3]_i_637_n_0 ));
  LUT5 #(
    .INIT(32'hEEE888E8)) 
    \rout_reg[3]_i_638 
       (.I0(\rout_reg[3]_i_797_n_6 ),
        .I1(\rout_reg[3]_i_798_n_6 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [8]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [8]),
        .O(\rout_reg[3]_i_638_n_0 ));
  LUT5 #(
    .INIT(32'hEEE888E8)) 
    \rout_reg[3]_i_639 
       (.I0(\rout_reg[3]_i_797_n_7 ),
        .I1(\rout_reg[3]_i_798_n_7 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [7]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .O(\rout_reg[3]_i_639_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_64 
       (.I0(col_i[10]),
        .O(\rout_reg[3]_i_64_n_0 ));
  LUT5 #(
    .INIT(32'hEEE888E8)) 
    \rout_reg[3]_i_640 
       (.I0(\rout_reg[3]_i_801_n_4 ),
        .I1(\rout_reg[3]_i_802_n_4 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [6]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .O(\rout_reg[3]_i_640_n_0 ));
  LUT6 #(
    .INIT(64'h6996699669699696)) 
    \rout_reg[3]_i_641 
       (.I0(\rout_reg[3]_i_637_n_0 ),
        .I1(\rout_reg[3]_i_797_n_4 ),
        .I2(\rout_reg[3]_i_798_n_4 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [10]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [10]),
        .I5(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_641_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \rout_reg[3]_i_642 
       (.I0(\rout_reg[3]_i_638_n_0 ),
        .I1(\rout_reg[3]_i_797_n_5 ),
        .I2(\rout_reg[3]_i_798_n_5 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [9]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/START[0][0]4 [9]),
        .O(\rout_reg[3]_i_642_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \rout_reg[3]_i_643 
       (.I0(\rout_reg[3]_i_639_n_0 ),
        .I1(\rout_reg[3]_i_797_n_6 ),
        .I2(\rout_reg[3]_i_798_n_6 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [8]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/START[0][0]4 [8]),
        .O(\rout_reg[3]_i_643_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \rout_reg[3]_i_644 
       (.I0(\rout_reg[3]_i_640_n_0 ),
        .I1(\rout_reg[3]_i_797_n_7 ),
        .I2(\rout_reg[3]_i_798_n_7 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/START[0][0]4 [7]),
        .O(\rout_reg[3]_i_644_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h008E)) 
    \rout_reg[3]_i_645 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [21]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [16]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [18]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_645_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h008E)) 
    \rout_reg[3]_i_646 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [20]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [15]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [17]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_646_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h008E)) 
    \rout_reg[3]_i_647 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [19]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [14]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [16]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_647_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h008E)) 
    \rout_reg[3]_i_648 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [18]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [13]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [15]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_648_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT5 #(
    .INIT(32'h0096FF69)) 
    \rout_reg[3]_i_649 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [22]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [17]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [19]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_645_n_0 ),
        .O(\rout_reg[3]_i_649_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_65 
       (.I0(col_i[9]),
        .O(\rout_reg[3]_i_65_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT5 #(
    .INIT(32'h0096FF69)) 
    \rout_reg[3]_i_650 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [21]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [16]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [18]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_646_n_0 ),
        .O(\rout_reg[3]_i_650_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT5 #(
    .INIT(32'h0096FF69)) 
    \rout_reg[3]_i_651 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [20]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [15]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [17]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_647_n_0 ),
        .O(\rout_reg[3]_i_651_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'h0096FF69)) 
    \rout_reg[3]_i_652 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [19]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [14]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [16]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_648_n_0 ),
        .O(\rout_reg[3]_i_652_n_0 ));
  LUT5 #(
    .INIT(32'hFB51BA10)) 
    \rout_reg[3]_i_653 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [14]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [12]),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [10]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [10]),
        .O(\rout_reg[3]_i_653_n_0 ));
  LUT5 #(
    .INIT(32'hFB51BA10)) 
    \rout_reg[3]_i_654 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [13]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [11]),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [9]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [9]),
        .O(\rout_reg[3]_i_654_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFBB8BCFCC8B88)) 
    \rout_reg[3]_i_655 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [10]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [12]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [10]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [8]),
        .I5(\Inst_VGA_Draw/START[0][0]4 [8]),
        .O(\rout_reg[3]_i_655_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFCACFF0FAC0CA)) 
    \rout_reg[3]_i_656 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [9]),
        .I1(\Inst_VGA_Draw/is_text_pixel5 [9]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [11]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .I5(\Inst_VGA_Draw/START[0][0]4 [7]),
        .O(\rout_reg[3]_i_656_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT5 #(
    .INIT(32'h4114BEEB)) 
    \rout_reg[3]_i_657 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [15]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [13]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [11]),
        .I4(\rout_reg[3]_i_653_n_0 ),
        .O(\rout_reg[3]_i_657_n_0 ));
  LUT6 #(
    .INIT(64'hA599A566A566A599)) 
    \rout_reg[3]_i_658 
       (.I0(\rout_reg[3]_i_654_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [10]),
        .I2(\Inst_VGA_Draw/is_text_pixel5 [10]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [14]),
        .I5(\Inst_VGA_Draw/START[0][0]4 [12]),
        .O(\rout_reg[3]_i_658_n_0 ));
  LUT6 #(
    .INIT(64'hA599A566A566A599)) 
    \rout_reg[3]_i_659 
       (.I0(\rout_reg[3]_i_655_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [9]),
        .I2(\Inst_VGA_Draw/is_text_pixel5 [9]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [13]),
        .I5(\Inst_VGA_Draw/START[0][0]4 [11]),
        .O(\rout_reg[3]_i_659_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFEEEE00202222)) 
    \rout_reg[3]_i_66 
       (.I0(\rout_reg[3]_i_136_n_7 ),
        .I1(\rout_reg[3]_i_137_n_2 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_139_n_6 ),
        .I5(\rout_reg[3]_i_140_n_5 ),
        .O(\col_reg[10]_3 ));
  LUT6 #(
    .INIT(64'h59A9A65656A6A959)) 
    \rout_reg[3]_i_660 
       (.I0(\rout_reg[3]_i_656_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [8]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [8]),
        .I4(\rout_reg[3]_i_803_n_0 ),
        .I5(\Inst_VGA_Draw/START[0][0]4 [12]),
        .O(\rout_reg[3]_i_660_n_0 ));
  LUT5 #(
    .INIT(32'hEEE888E8)) 
    \rout_reg[3]_i_661 
       (.I0(\rout_reg[3]_i_801_n_5 ),
        .I1(\rout_reg[3]_i_802_n_5 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [5]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [5]),
        .O(\rout_reg[3]_i_661_n_0 ));
  LUT5 #(
    .INIT(32'hEEE888E8)) 
    \rout_reg[3]_i_662 
       (.I0(\rout_reg[3]_i_801_n_6 ),
        .I1(\rout_reg[3]_i_802_n_6 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [4]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [4]),
        .O(\rout_reg[3]_i_662_n_0 ));
  LUT5 #(
    .INIT(32'hEEE888E8)) 
    \rout_reg[3]_i_663 
       (.I0(\rout_reg[3]_i_801_n_7 ),
        .I1(\rout_reg[3]_i_802_n_7 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [3]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .O(\rout_reg[3]_i_663_n_0 ));
  LUT5 #(
    .INIT(32'hEEE888E8)) 
    \rout_reg[3]_i_664 
       (.I0(\rout_reg[3]_i_805_n_4 ),
        .I1(\rout_reg[3]_i_776_n_4 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [2]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [2]),
        .O(\rout_reg[3]_i_664_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \rout_reg[3]_i_665 
       (.I0(\rout_reg[3]_i_661_n_0 ),
        .I1(\rout_reg[3]_i_801_n_4 ),
        .I2(\rout_reg[3]_i_802_n_4 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/START[0][0]4 [6]),
        .O(\rout_reg[3]_i_665_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \rout_reg[3]_i_666 
       (.I0(\rout_reg[3]_i_662_n_0 ),
        .I1(\rout_reg[3]_i_801_n_5 ),
        .I2(\rout_reg[3]_i_802_n_5 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [5]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/START[0][0]4 [5]),
        .O(\rout_reg[3]_i_666_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \rout_reg[3]_i_667 
       (.I0(\rout_reg[3]_i_663_n_0 ),
        .I1(\rout_reg[3]_i_801_n_6 ),
        .I2(\rout_reg[3]_i_802_n_6 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [4]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/START[0][0]4 [4]),
        .O(\rout_reg[3]_i_667_n_0 ));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \rout_reg[3]_i_668 
       (.I0(\rout_reg[3]_i_664_n_0 ),
        .I1(\rout_reg[3]_i_801_n_7 ),
        .I2(\rout_reg[3]_i_802_n_7 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/START[0][0]4 [3]),
        .O(\rout_reg[3]_i_668_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h008E)) 
    \rout_reg[3]_i_669 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [17]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [12]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [14]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_669_n_0 ));
  LUT5 #(
    .INIT(32'h470047FF)) 
    \rout_reg[3]_i_67 
       (.I0(\rout_reg[3]_i_136_n_6 ),
        .I1(\rout_reg[3]_i_141_n_0 ),
        .I2(\rout_reg[3]_i_140_n_4 ),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_142_n_7 ),
        .O(\col_reg[10]_2 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h008E)) 
    \rout_reg[3]_i_670 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [16]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [11]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [13]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_670_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCA0FA)) 
    \rout_reg[3]_i_671 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [15]),
        .I1(\Inst_VGA_Draw/is_text_pixel5 [10]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [10]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [12]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_671_n_0 ));
  LUT5 #(
    .INIT(32'hACA0AFAC)) 
    \rout_reg[3]_i_672 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [9]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [14]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [9]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [11]),
        .O(\rout_reg[3]_i_672_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT5 #(
    .INIT(32'h0096FF69)) 
    \rout_reg[3]_i_673 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [18]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [13]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [15]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_669_n_0 ),
        .O(\rout_reg[3]_i_673_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT5 #(
    .INIT(32'h0096FF69)) 
    \rout_reg[3]_i_674 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [17]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [12]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [14]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_670_n_0 ),
        .O(\rout_reg[3]_i_674_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h0096FF69)) 
    \rout_reg[3]_i_675 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [16]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [11]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [13]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_671_n_0 ),
        .O(\rout_reg[3]_i_675_n_0 ));
  LUT6 #(
    .INIT(64'hA9A65956A6A95659)) 
    \rout_reg[3]_i_676 
       (.I0(\rout_reg[3]_i_672_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [15]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [10]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [10]),
        .I5(\Inst_VGA_Draw/START[0][0]4 [12]),
        .O(\rout_reg[3]_i_676_n_0 ));
  LUT6 #(
    .INIT(64'hE2FF22F3C0EE00E2)) 
    \rout_reg[3]_i_677 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [8]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/is_text_pixel5 [8]),
        .I3(\rout_reg[3]_i_803_n_0 ),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .I5(\Inst_VGA_Draw/START[0][0]4 [6]),
        .O(\rout_reg[3]_i_677_n_0 ));
  LUT6 #(
    .INIT(64'hCCAFFFAF000ACC0A)) 
    \rout_reg[3]_i_678 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [7]),
        .I1(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [9]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [9]),
        .I5(\rout_reg[3]_i_806_n_0 ),
        .O(\rout_reg[3]_i_678_n_0 ));
  LUT6 #(
    .INIT(64'hCCAFFFAF000ACC0A)) 
    \rout_reg[3]_i_679 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [6]),
        .I1(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [8]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [8]),
        .I5(\rout_reg[3]_i_807_n_0 ),
        .O(\rout_reg[3]_i_679_n_0 ));
  LUT5 #(
    .INIT(32'h470047FF)) 
    \rout_reg[3]_i_68 
       (.I0(\rout_reg[3]_i_136_n_5 ),
        .I1(\rout_reg[3]_i_141_n_0 ),
        .I2(\rout_reg[3]_i_143_n_7 ),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_142_n_6 ),
        .O(\rout_reg[3]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \rout_reg[3]_i_680 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [3]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [7]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .I5(\rout_reg[3]_i_806_n_0 ),
        .O(\rout_reg[3]_i_680_n_0 ));
  LUT6 #(
    .INIT(64'h59A9A65656A6A959)) 
    \rout_reg[3]_i_681 
       (.I0(\rout_reg[3]_i_677_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [7]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .I4(\rout_reg[3]_i_808_n_0 ),
        .I5(\Inst_VGA_Draw/START[0][0]4 [11]),
        .O(\rout_reg[3]_i_681_n_0 ));
  LUT6 #(
    .INIT(64'hA95956A656A6A959)) 
    \rout_reg[3]_i_682 
       (.I0(\rout_reg[3]_i_678_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [6]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .I4(\rout_reg[3]_i_809_n_0 ),
        .I5(\rout_reg[3]_i_803_n_0 ),
        .O(\rout_reg[3]_i_682_n_0 ));
  LUT6 #(
    .INIT(64'hA95956A656A6A959)) 
    \rout_reg[3]_i_683 
       (.I0(\rout_reg[3]_i_679_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [7]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .I4(\rout_reg[3]_i_808_n_0 ),
        .I5(\rout_reg[3]_i_806_n_0 ),
        .O(\rout_reg[3]_i_683_n_0 ));
  LUT6 #(
    .INIT(64'hA95956A656A6A959)) 
    \rout_reg[3]_i_684 
       (.I0(\rout_reg[3]_i_680_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [6]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .I4(\rout_reg[3]_i_809_n_0 ),
        .I5(\rout_reg[3]_i_807_n_0 ),
        .O(\rout_reg[3]_i_684_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h44D4)) 
    \rout_reg[3]_i_685 
       (.I0(\rout_reg[3]_i_810_n_1 ),
        .I1(\rout_reg[3]_i_811_n_5 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [13]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_685_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h88E8)) 
    \rout_reg[3]_i_686 
       (.I0(\rout_reg[3]_i_811_n_6 ),
        .I1(\rout_reg[3]_i_810_n_6 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [12]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_686_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h88E8)) 
    \rout_reg[3]_i_687 
       (.I0(\rout_reg[3]_i_811_n_7 ),
        .I1(\rout_reg[3]_i_810_n_7 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [11]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_687_n_0 ));
  LUT5 #(
    .INIT(32'hEEE88E88)) 
    \rout_reg[3]_i_688 
       (.I0(\rout_reg[3]_i_797_n_4 ),
        .I1(\rout_reg[3]_i_798_n_4 ),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [10]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [10]),
        .O(\rout_reg[3]_i_688_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT5 #(
    .INIT(32'h66969969)) 
    \rout_reg[3]_i_689 
       (.I0(\rout_reg[3]_i_810_n_1 ),
        .I1(\rout_reg[3]_i_811_n_4 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [14]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_685_n_0 ),
        .O(\rout_reg[3]_i_689_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rout_reg[3]_i_69 
       (.I0(\rout_reg[3]_i_144_n_0 ),
        .I1(\rout_reg[3]_i_145_n_0 ),
        .I2(\rout_reg[3]_i_146_n_0 ),
        .I3(\rout_reg[3]_i_147_n_0 ),
        .I4(\rout_reg[3]_i_148_n_0 ),
        .O(\rout_reg[3]_i_69_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT5 #(
    .INIT(32'h66969969)) 
    \rout_reg[3]_i_690 
       (.I0(\rout_reg[3]_i_810_n_1 ),
        .I1(\rout_reg[3]_i_811_n_5 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [13]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_686_n_0 ),
        .O(\rout_reg[3]_i_690_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT5 #(
    .INIT(32'h99696696)) 
    \rout_reg[3]_i_691 
       (.I0(\rout_reg[3]_i_811_n_6 ),
        .I1(\rout_reg[3]_i_810_n_6 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [12]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_687_n_0 ),
        .O(\rout_reg[3]_i_691_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT5 #(
    .INIT(32'h99696696)) 
    \rout_reg[3]_i_692 
       (.I0(\rout_reg[3]_i_811_n_7 ),
        .I1(\rout_reg[3]_i_810_n_7 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [11]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_688_n_0 ),
        .O(\rout_reg[3]_i_692_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h008E)) 
    \rout_reg[3]_i_693 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [20]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [22]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_693_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h008E)) 
    \rout_reg[3]_i_694 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [24]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [19]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [21]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_694_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h008E)) 
    \rout_reg[3]_i_695 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [23]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [18]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [20]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_695_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h008E)) 
    \rout_reg[3]_i_696 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [22]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [17]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [19]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_696_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT5 #(
    .INIT(32'h0096FF69)) 
    \rout_reg[3]_i_697 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [21]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [23]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_693_n_0 ),
        .O(\rout_reg[3]_i_697_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT5 #(
    .INIT(32'h0096FF69)) 
    \rout_reg[3]_i_698 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [20]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [22]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_694_n_0 ),
        .O(\rout_reg[3]_i_698_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT5 #(
    .INIT(32'h0096FF69)) 
    \rout_reg[3]_i_699 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [24]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [19]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [21]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_695_n_0 ),
        .O(\rout_reg[3]_i_699_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rout_reg[3]_i_7 
       (.I0(\rout_reg[3]_i_20_n_2 ),
        .I1(\rout_reg[3]_i_21_n_3 ),
        .I2(\rout_reg[3]_i_22_n_3 ),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rout_reg[3]_i_70 
       (.I0(\rout_reg[3]_i_149_n_0 ),
        .I1(\rout_reg[3]_i_150_n_0 ),
        .I2(\rout_reg[3]_i_151_n_0 ),
        .I3(\rout_reg[3]_i_152_n_0 ),
        .I4(\rout_reg[3]_i_153_n_0 ),
        .I5(\rout_reg[3]_i_154_n_0 ),
        .O(\rout_reg[3]_i_70_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT5 #(
    .INIT(32'h0096FF69)) 
    \rout_reg[3]_i_700 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [23]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [18]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [20]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_696_n_0 ),
        .O(\rout_reg[3]_i_700_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h5110)) 
    \rout_reg[3]_i_701 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [18]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [16]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [14]),
        .O(\rout_reg[3]_i_701_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h5110)) 
    \rout_reg[3]_i_702 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [17]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [15]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [13]),
        .O(\rout_reg[3]_i_702_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h5110)) 
    \rout_reg[3]_i_703 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [16]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [14]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [12]),
        .O(\rout_reg[3]_i_703_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h5110)) 
    \rout_reg[3]_i_704 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [15]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [13]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [11]),
        .O(\rout_reg[3]_i_704_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT5 #(
    .INIT(32'h4114BEEB)) 
    \rout_reg[3]_i_705 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [19]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [17]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [15]),
        .I4(\rout_reg[3]_i_701_n_0 ),
        .O(\rout_reg[3]_i_705_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT5 #(
    .INIT(32'h4114BEEB)) 
    \rout_reg[3]_i_706 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [18]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [16]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [14]),
        .I4(\rout_reg[3]_i_702_n_0 ),
        .O(\rout_reg[3]_i_706_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT5 #(
    .INIT(32'h4114BEEB)) 
    \rout_reg[3]_i_707 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [17]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [15]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [13]),
        .I4(\rout_reg[3]_i_703_n_0 ),
        .O(\rout_reg[3]_i_707_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT5 #(
    .INIT(32'h4114BEEB)) 
    \rout_reg[3]_i_708 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [16]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [14]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [12]),
        .I4(\rout_reg[3]_i_704_n_0 ),
        .O(\rout_reg[3]_i_708_n_0 ));
  LUT6 #(
    .INIT(64'h3F5F5F5F3F5F3F3F)) 
    \rout_reg[3]_i_709 
       (.I0(\gameover[3][0] ),
        .I1(\gameover[5][0] ),
        .I2(\col_reg[10]_3 ),
        .I3(\rout_reg[3]_i_595_n_0 ),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\rout_reg[3]_i_142_n_7 ),
        .O(\rout_reg[3]_i_709_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFE00)) 
    \rout_reg[3]_i_71 
       (.I0(\rout_reg[3]_i_155_n_0 ),
        .I1(\rout_reg[3]_i_150_n_0 ),
        .I2(\rout_reg[3]_i_156_n_0 ),
        .I3(\rout_reg[3]_i_13_n_6 ),
        .I4(\rout_reg[3]_i_157_n_0 ),
        .I5(\rout_reg[3]_i_158_n_0 ),
        .O(\rout_reg[3]_i_71_n_0 ));
  LUT5 #(
    .INIT(32'h00000047)) 
    \rout_reg[3]_i_710 
       (.I0(\rout_reg[3]_i_440_n_0 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\rout_reg[3]_i_142_n_5 ),
        .I3(\rout_reg[3]_i_55_n_4 ),
        .I4(\rout_reg[3]_i_424_n_0 ),
        .O(\rout_reg[3]_i_710_n_0 ));
  LUT5 #(
    .INIT(32'h444CC8C8)) 
    \rout_reg[3]_i_711 
       (.I0(row_i[2]),
        .I1(\rout_reg[3]_i_55_n_5 ),
        .I2(row_i[1]),
        .I3(row_i[0]),
        .I4(O),
        .O(\rout_reg[3]_i_711_n_0 ));
  LUT6 #(
    .INIT(64'hAAA222A288800080)) 
    \rout_reg[3]_i_713 
       (.I0(\gameover[5][0] ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\rout_reg[3]_i_143_n_7 ),
        .I3(\rout_reg[3]_i_141_n_0 ),
        .I4(\rout_reg[3]_i_136_n_5 ),
        .I5(\rout_reg[3]_i_142_n_6 ),
        .O(\rout_reg[3]_i_713_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_714 
       (.CI(\rout_reg[3]_i_812_n_0 ),
        .CO({\rout_reg[3]_i_714_n_0 ,\NLW_rout_reg[3]_i_714_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_813_n_0 ,\rout_reg[3]_i_814_n_0 ,\rout_reg[3]_i_815_n_0 ,\rout_reg[3]_i_816_n_0 }),
        .O(\NLW_rout_reg[3]_i_714_O_UNCONNECTED [3:0]),
        .S({\rout_reg[3]_i_817_n_0 ,\rout_reg[3]_i_818_n_0 ,\rout_reg[3]_i_819_n_0 ,\rout_reg[3]_i_820_n_0 }));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_715 
       (.I0(\rout_reg[3]_i_606_n_5 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [19]),
        .O(\rout_reg[3]_i_715_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_716 
       (.I0(\rout_reg[3]_i_606_n_6 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [18]),
        .O(\rout_reg[3]_i_716_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_717 
       (.I0(\rout_reg[3]_i_606_n_7 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [17]),
        .O(\rout_reg[3]_i_717_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_718 
       (.I0(\rout_reg[3]_i_724_n_4 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [16]),
        .O(\rout_reg[3]_i_718_n_0 ));
  LUT5 #(
    .INIT(32'hC3B4C34B)) 
    \rout_reg[3]_i_719 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [19]),
        .I1(\rout_reg[3]_i_606_n_5 ),
        .I2(\rout_reg[3]_i_606_n_4 ),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [20]),
        .O(\rout_reg[3]_i_719_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFEFFFEFFFE000)) 
    \rout_reg[3]_i_72 
       (.I0(\rout_reg[3]_i_159_n_0 ),
        .I1(\rout_reg[3]_i_160_n_0 ),
        .I2(\rout_reg[3]_i_13_n_7 ),
        .I3(\rout_reg[3]_i_13_n_6 ),
        .I4(\rout_reg[3]_i_161_n_0 ),
        .I5(\rout_reg[3]_i_162_n_0 ),
        .O(\rout_reg[3]_i_72_n_0 ));
  LUT5 #(
    .INIT(32'hC3B4C34B)) 
    \rout_reg[3]_i_720 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [18]),
        .I1(\rout_reg[3]_i_606_n_6 ),
        .I2(\rout_reg[3]_i_606_n_5 ),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [19]),
        .O(\rout_reg[3]_i_720_n_0 ));
  LUT5 #(
    .INIT(32'hCCB4334B)) 
    \rout_reg[3]_i_721 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [17]),
        .I1(\rout_reg[3]_i_606_n_7 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [18]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_606_n_6 ),
        .O(\rout_reg[3]_i_721_n_0 ));
  LUT5 #(
    .INIT(32'hCCB4334B)) 
    \rout_reg[3]_i_722 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [16]),
        .I1(\rout_reg[3]_i_724_n_4 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [17]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_606_n_7 ),
        .O(\rout_reg[3]_i_722_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_723 
       (.CI(\rout_reg[3]_i_799_n_0 ),
        .CO({\rout_reg[3]_i_723_n_0 ,\NLW_rout_reg[3]_i_723_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\Inst_VGA_Draw/START[0][0]4 [16:13]),
        .S({\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_724 
       (.CI(\rout_reg[3]_i_821_n_0 ),
        .CO({\rout_reg[3]_i_724_n_0 ,\NLW_rout_reg[3]_i_724_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_725_n_5 ,\rout_reg[3]_i_725_n_6 ,\rout_reg[3]_i_725_n_7 ,\rout_reg[3]_i_822_n_4 }),
        .O({\rout_reg[3]_i_724_n_4 ,\rout_reg[3]_i_724_n_5 ,\rout_reg[3]_i_724_n_6 ,\rout_reg[3]_i_724_n_7 }),
        .S({\rout_reg[3]_i_823_n_0 ,\rout_reg[3]_i_824_n_0 ,\rout_reg[3]_i_825_n_0 ,\rout_reg[3]_i_826_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_725 
       (.CI(\rout_reg[3]_i_822_n_0 ),
        .CO({\rout_reg[3]_i_725_n_0 ,\NLW_rout_reg[3]_i_725_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_827_n_0 ,\rout_reg[3]_i_828_n_0 ,\rout_reg[3]_i_829_n_0 ,\rout_reg[3]_i_830_n_0 }),
        .O({\rout_reg[3]_i_725_n_4 ,\rout_reg[3]_i_725_n_5 ,\rout_reg[3]_i_725_n_6 ,\rout_reg[3]_i_725_n_7 }),
        .S({\rout_reg[3]_i_831_n_0 ,\rout_reg[3]_i_832_n_0 ,\rout_reg[3]_i_833_n_0 ,\rout_reg[3]_i_834_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_726 
       (.I0(\rout_reg[3]_i_607_n_5 ),
        .I1(\rout_reg[3]_i_607_n_7 ),
        .O(\rout_reg[3]_i_726_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_727 
       (.I0(\rout_reg[3]_i_607_n_6 ),
        .I1(\rout_reg[3]_i_725_n_4 ),
        .O(\rout_reg[3]_i_727_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_728 
       (.I0(\rout_reg[3]_i_607_n_7 ),
        .I1(\rout_reg[3]_i_725_n_5 ),
        .O(\rout_reg[3]_i_728_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_729 
       (.I0(\rout_reg[3]_i_725_n_4 ),
        .I1(\rout_reg[3]_i_725_n_6 ),
        .O(\rout_reg[3]_i_729_n_0 ));
  LUT6 #(
    .INIT(64'h030200000357FFFF)) 
    \rout_reg[3]_i_73 
       (.I0(\rout_reg[3]_i_13_n_6 ),
        .I1(\rout_reg[3]_i_157_n_0 ),
        .I2(\rout_reg[3]_i_158_n_0 ),
        .I3(\rout_reg[3]_i_13_n_7 ),
        .I4(\rout_reg[3]_i_13_n_5 ),
        .I5(\rout_reg[3]_i_163_n_0 ),
        .O(\rout_reg[3]_i_73_n_0 ));
  (* HLUTNM = "lutpair77" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_730 
       (.I0(\rout_reg[3]_i_739_n_7 ),
        .I1(\rout_reg[3]_i_621_n_7 ),
        .I2(\rout_reg[3]_i_738_n_7 ),
        .O(\rout_reg[3]_i_730_n_0 ));
  (* HLUTNM = "lutpair76" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_731 
       (.I0(\rout_reg[3]_i_835_n_4 ),
        .I1(\rout_reg[3]_i_748_n_4 ),
        .I2(\rout_reg[3]_i_836_n_4 ),
        .O(\rout_reg[3]_i_731_n_0 ));
  (* HLUTNM = "lutpair75" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_732 
       (.I0(\rout_reg[3]_i_835_n_5 ),
        .I1(\rout_reg[3]_i_748_n_5 ),
        .I2(\rout_reg[3]_i_836_n_5 ),
        .O(\rout_reg[3]_i_732_n_0 ));
  (* HLUTNM = "lutpair74" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_733 
       (.I0(\rout_reg[3]_i_835_n_6 ),
        .I1(\rout_reg[3]_i_748_n_6 ),
        .I2(\rout_reg[3]_i_836_n_6 ),
        .O(\rout_reg[3]_i_733_n_0 ));
  (* HLUTNM = "lutpair78" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_734 
       (.I0(\rout_reg[3]_i_739_n_6 ),
        .I1(\rout_reg[3]_i_621_n_6 ),
        .I2(\rout_reg[3]_i_738_n_6 ),
        .I3(\rout_reg[3]_i_730_n_0 ),
        .O(\rout_reg[3]_i_734_n_0 ));
  (* HLUTNM = "lutpair77" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_735 
       (.I0(\rout_reg[3]_i_739_n_7 ),
        .I1(\rout_reg[3]_i_621_n_7 ),
        .I2(\rout_reg[3]_i_738_n_7 ),
        .I3(\rout_reg[3]_i_731_n_0 ),
        .O(\rout_reg[3]_i_735_n_0 ));
  (* HLUTNM = "lutpair76" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_736 
       (.I0(\rout_reg[3]_i_835_n_4 ),
        .I1(\rout_reg[3]_i_748_n_4 ),
        .I2(\rout_reg[3]_i_836_n_4 ),
        .I3(\rout_reg[3]_i_732_n_0 ),
        .O(\rout_reg[3]_i_736_n_0 ));
  (* HLUTNM = "lutpair75" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_737 
       (.I0(\rout_reg[3]_i_835_n_5 ),
        .I1(\rout_reg[3]_i_748_n_5 ),
        .I2(\rout_reg[3]_i_836_n_5 ),
        .I3(\rout_reg[3]_i_733_n_0 ),
        .O(\rout_reg[3]_i_737_n_0 ));
  CARRY4 \rout_reg[3]_i_738 
       (.CI(\rout_reg[3]_i_836_n_0 ),
        .CO({\rout_reg[3]_i_738_n_0 ,\NLW_rout_reg[3]_i_738_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_837_n_0 ,\rout_reg[3]_i_838_n_0 ,\rout_reg[3]_i_839_n_0 ,\rout_reg[3]_i_840_n_0 }),
        .O({\rout_reg[3]_i_738_n_4 ,\rout_reg[3]_i_738_n_5 ,\rout_reg[3]_i_738_n_6 ,\rout_reg[3]_i_738_n_7 }),
        .S({\rout_reg[3]_i_841_n_0 ,\rout_reg[3]_i_842_n_0 ,\rout_reg[3]_i_843_n_0 ,\rout_reg[3]_i_844_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_739 
       (.CI(\rout_reg[3]_i_835_n_0 ),
        .CO({\rout_reg[3]_i_739_n_0 ,\NLW_rout_reg[3]_i_739_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_845_n_0 ,\rout_reg[3]_i_846_n_0 ,\rout_reg[3]_i_847_n_0 ,\rout_reg[3]_i_848_n_0 }),
        .O({\rout_reg[3]_i_739_n_4 ,\rout_reg[3]_i_739_n_5 ,\rout_reg[3]_i_739_n_6 ,\rout_reg[3]_i_739_n_7 }),
        .S({\rout_reg[3]_i_849_n_0 ,\rout_reg[3]_i_850_n_0 ,\rout_reg[3]_i_851_n_0 ,\rout_reg[3]_i_852_n_0 }));
  LUT6 #(
    .INIT(64'hEFFFEFFFEFFFE000)) 
    \rout_reg[3]_i_74 
       (.I0(\rout_reg[3]_i_164_n_0 ),
        .I1(\rout_reg[3]_i_165_n_0 ),
        .I2(\rout_reg[3]_i_13_n_7 ),
        .I3(\rout_reg[3]_i_13_n_6 ),
        .I4(\rout_reg[3]_i_166_n_0 ),
        .I5(\rout_reg[3]_i_167_n_0 ),
        .O(\rout_reg[3]_i_74_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rout_reg[3]_i_740 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_740_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rout_reg[3]_i_741 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_741_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \rout_reg[3]_i_742 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [29]),
        .O(\rout_reg[3]_i_742_n_0 ));
  LUT3 #(
    .INIT(8'h32)) 
    \rout_reg[3]_i_743 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [29]),
        .O(\rout_reg[3]_i_743_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \rout_reg[3]_i_744 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [30]),
        .O(\rout_reg[3]_i_744_n_0 ));
  LUT3 #(
    .INIT(8'hED)) 
    \rout_reg[3]_i_745 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .O(\rout_reg[3]_i_745_n_0 ));
  LUT4 #(
    .INIT(16'hFEF1)) 
    \rout_reg[3]_i_746 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [29]),
        .O(\rout_reg[3]_i_746_n_0 ));
  LUT5 #(
    .INIT(32'hFF1EFFE1)) 
    \rout_reg[3]_i_747 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [28]),
        .O(\rout_reg[3]_i_747_n_0 ));
  CARRY4 \rout_reg[3]_i_748 
       (.CI(\rout_reg[3]_i_853_n_0 ),
        .CO({\rout_reg[3]_i_748_n_0 ,\NLW_rout_reg[3]_i_748_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_854_n_0 ,\rout_reg[3]_i_855_n_0 ,\rout_reg[3]_i_856_n_0 ,\rout_reg[3]_i_857_n_0 }),
        .O({\rout_reg[3]_i_748_n_4 ,\rout_reg[3]_i_748_n_5 ,\rout_reg[3]_i_748_n_6 ,\rout_reg[3]_i_748_n_7 }),
        .S({\rout_reg[3]_i_858_n_0 ,\rout_reg[3]_i_859_n_0 ,\rout_reg[3]_i_860_n_0 ,\rout_reg[3]_i_861_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    \rout_reg[3]_i_749 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_749_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \rout_reg[3]_i_75 
       (.I0(\rout_reg[3]_i_168_n_0 ),
        .I1(\rout_reg[3]_i_169_n_0 ),
        .I2(\rout_reg[3]_i_170_n_0 ),
        .I3(\rout_reg[3]_i_171_n_0 ),
        .I4(\rout_reg[3]_i_172_n_0 ),
        .O(\rout_reg[3]_i_75_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rout_reg[3]_i_750 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_750_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \rout_reg[3]_i_751 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [30]),
        .O(\rout_reg[3]_i_751_n_0 ));
  LUT3 #(
    .INIT(8'hED)) 
    \rout_reg[3]_i_752 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .O(\rout_reg[3]_i_752_n_0 ));
  (* HLUTNM = "lutpair47" *) 
  LUT4 #(
    .INIT(16'h1171)) 
    \rout_reg[3]_i_753 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_753_n_0 ));
  (* HLUTNM = "lutpair46" *) 
  LUT4 #(
    .INIT(16'h1171)) 
    \rout_reg[3]_i_754 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_754_n_0 ));
  (* HLUTNM = "lutpair45" *) 
  LUT4 #(
    .INIT(16'h1171)) 
    \rout_reg[3]_i_755 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_755_n_0 ));
  (* HLUTNM = "lutpair44" *) 
  LUT4 #(
    .INIT(16'h1171)) 
    \rout_reg[3]_i_756 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_756_n_0 ));
  LUT5 #(
    .INIT(32'h96966996)) 
    \rout_reg[3]_i_757 
       (.I0(\rout_reg[3]_i_753_n_0 ),
        .I1(\rout_reg[3]_i_862_n_3 ),
        .I2(\rout_reg[3]_i_810_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_757_n_0 ));
  (* HLUTNM = "lutpair47" *) 
  LUT5 #(
    .INIT(32'h99696696)) 
    \rout_reg[3]_i_758 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_754_n_0 ),
        .O(\rout_reg[3]_i_758_n_0 ));
  (* HLUTNM = "lutpair46" *) 
  LUT5 #(
    .INIT(32'h99696696)) 
    \rout_reg[3]_i_759 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_755_n_0 ),
        .O(\rout_reg[3]_i_759_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFEFEFE0)) 
    \rout_reg[3]_i_76 
       (.I0(\rout_reg[3]_i_166_n_0 ),
        .I1(\rout_reg[3]_i_167_n_0 ),
        .I2(\rout_reg[3]_i_13_n_6 ),
        .I3(\rout_reg[3]_i_173_n_0 ),
        .I4(\rout_reg[3]_i_174_n_0 ),
        .I5(\rout_reg[3]_i_175_n_0 ),
        .O(\rout_reg[3]_i_76_n_0 ));
  (* HLUTNM = "lutpair45" *) 
  LUT5 #(
    .INIT(32'h99696696)) 
    \rout_reg[3]_i_760 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_756_n_0 ),
        .O(\rout_reg[3]_i_760_n_0 ));
  LUT4 #(
    .INIT(16'h0DDF)) 
    \rout_reg[3]_i_761 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\rout_reg[3]_i_862_n_3 ),
        .I3(\rout_reg[3]_i_810_n_1 ),
        .O(\rout_reg[3]_i_761_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_762 
       (.CI(1'b0),
        .CO({\rout_reg[3]_i_762_n_0 ,\NLW_rout_reg[3]_i_762_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_863_n_0 ,\rout_reg[3]_i_864_n_0 ,\rout_reg[3]_i_865_n_0 ,\rout_reg[3]_i_866_n_0 }),
        .O(\NLW_rout_reg[3]_i_762_O_UNCONNECTED [3:0]),
        .S({\rout_reg[3]_i_867_n_0 ,\rout_reg[3]_i_868_n_0 ,\rout_reg[3]_i_869_n_0 ,\rout_reg[3]_i_870_n_0 }));
  (* HLUTNM = "lutpair49" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_763 
       (.I0(\rout_reg[3]_i_771_n_7 ),
        .I1(\rout_reg[3]_i_772_n_7 ),
        .I2(col_i[0]),
        .O(\rout_reg[3]_i_763_n_0 ));
  (* HLUTNM = "lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rout_reg[3]_i_764 
       (.I0(\rout_reg[3]_i_871_n_4 ),
        .I1(\rout_reg[3]_i_872_n_4 ),
        .O(\rout_reg[3]_i_764_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rout_reg[3]_i_765 
       (.I0(\rout_reg[3]_i_871_n_5 ),
        .I1(\rout_reg[3]_i_872_n_5 ),
        .O(\rout_reg[3]_i_765_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rout_reg[3]_i_766 
       (.I0(\rout_reg[3]_i_871_n_6 ),
        .I1(\rout_reg[3]_i_872_n_6 ),
        .O(\rout_reg[3]_i_766_n_0 ));
  (* HLUTNM = "lutpair50" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_767 
       (.I0(\rout_reg[3]_i_771_n_6 ),
        .I1(\rout_reg[3]_i_772_n_6 ),
        .I2(\rout_reg[3]_i_773_n_6 ),
        .I3(\rout_reg[3]_i_763_n_0 ),
        .O(\rout_reg[3]_i_767_n_0 ));
  (* HLUTNM = "lutpair49" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_768 
       (.I0(\rout_reg[3]_i_771_n_7 ),
        .I1(\rout_reg[3]_i_772_n_7 ),
        .I2(col_i[0]),
        .I3(\rout_reg[3]_i_764_n_0 ),
        .O(\rout_reg[3]_i_768_n_0 ));
  (* HLUTNM = "lutpair48" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \rout_reg[3]_i_769 
       (.I0(\rout_reg[3]_i_871_n_4 ),
        .I1(\rout_reg[3]_i_872_n_4 ),
        .I2(\rout_reg[3]_i_872_n_5 ),
        .I3(\rout_reg[3]_i_871_n_5 ),
        .O(\rout_reg[3]_i_769_n_0 ));
  LUT6 #(
    .INIT(64'hFCFDFCFDFCFDFCA8)) 
    \rout_reg[3]_i_77 
       (.I0(\rout_reg[3]_i_13_n_6 ),
        .I1(\rout_reg[3]_i_176_n_0 ),
        .I2(\rout_reg[3]_i_175_n_0 ),
        .I3(\rout_reg[3]_i_13_n_7 ),
        .I4(\rout_reg[3]_i_177_n_0 ),
        .I5(\rout_reg[3]_i_178_n_0 ),
        .O(\rout_reg[3]_i_77_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \rout_reg[3]_i_770 
       (.I0(\rout_reg[3]_i_872_n_6 ),
        .I1(\rout_reg[3]_i_871_n_6 ),
        .I2(\rout_reg[3]_i_872_n_5 ),
        .I3(\rout_reg[3]_i_871_n_5 ),
        .O(\rout_reg[3]_i_770_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_771 
       (.CI(\rout_reg[3]_i_871_n_0 ),
        .CO({\rout_reg[3]_i_771_n_0 ,\NLW_rout_reg[3]_i_771_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_873_n_4 ,\rout_reg[3]_i_873_n_5 ,\rout_reg[3]_i_873_n_6 ,\rout_reg[3]_i_873_n_7 }),
        .O({\rout_reg[3]_i_771_n_4 ,\rout_reg[3]_i_771_n_5 ,\rout_reg[3]_i_771_n_6 ,\rout_reg[3]_i_771_n_7 }),
        .S({\rout_reg[3]_i_874_n_0 ,\rout_reg[3]_i_875_n_0 ,\rout_reg[3]_i_876_n_0 ,\rout_reg[3]_i_877_n_0 }));
  CARRY4 \rout_reg[3]_i_772 
       (.CI(\rout_reg[3]_i_872_n_0 ),
        .CO({\rout_reg[3]_i_772_n_0 ,\NLW_rout_reg[3]_i_772_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_878_n_0 ,\rout_reg[3]_i_879_n_0 ,\rout_reg[3]_i_880_n_0 ,\rout_reg[3]_i_881_n_0 }),
        .O({\rout_reg[3]_i_772_n_4 ,\rout_reg[3]_i_772_n_5 ,\rout_reg[3]_i_772_n_6 ,\rout_reg[3]_i_772_n_7 }),
        .S({\rout_reg[3]_i_882_n_0 ,\rout_reg[3]_i_883_n_0 ,\rout_reg[3]_i_884_n_0 ,\rout_reg[3]_i_885_n_0 }));
  CARRY4 \rout_reg[3]_i_773 
       (.CI(1'b0),
        .CO({\rout_reg[3]_i_773_n_0 ,\NLW_rout_reg[3]_i_773_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_886_n_0 ,col_i[0],1'b0,1'b1}),
        .O({\rout_reg[3]_i_773_n_4 ,\rout_reg[3]_i_773_n_5 ,\rout_reg[3]_i_773_n_6 ,\NLW_rout_reg[3]_i_773_O_UNCONNECTED [0]}),
        .S({\rout_reg[3]_i_887_n_0 ,\rout_reg[3]_i_888_n_0 ,\rout_reg[3]_i_889_n_0 ,col_i[0]}));
  LUT5 #(
    .INIT(32'hFFB8B800)) 
    \rout_reg[3]_i_774 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [1]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [1]),
        .I3(\rout_reg[3]_i_805_n_5 ),
        .I4(\rout_reg[3]_i_776_n_5 ),
        .O(\rout_reg[3]_i_774_n_0 ));
  LUT5 #(
    .INIT(32'hE21D1DE2)) 
    \rout_reg[3]_i_775 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [1]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/is_text_pixel5 [1]),
        .I3(\rout_reg[3]_i_776_n_5 ),
        .I4(\rout_reg[3]_i_805_n_5 ),
        .O(\rout_reg[3]_i_775_n_0 ));
  CARRY4 \rout_reg[3]_i_776 
       (.CI(\rout_reg[3]_i_873_n_0 ),
        .CO({\rout_reg[3]_i_776_n_0 ,\NLW_rout_reg[3]_i_776_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_693_n_0 ,\rout_reg[3]_i_694_n_0 ,\rout_reg[3]_i_695_n_0 ,\rout_reg[3]_i_696_n_0 }),
        .O({\rout_reg[3]_i_776_n_4 ,\rout_reg[3]_i_776_n_5 ,\rout_reg[3]_i_776_n_6 ,\rout_reg[3]_i_776_n_7 }),
        .S({\rout_reg[3]_i_890_n_0 ,\rout_reg[3]_i_891_n_0 ,\rout_reg[3]_i_892_n_0 ,\rout_reg[3]_i_893_n_0 }));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \rout_reg[3]_i_777 
       (.I0(\rout_reg[3]_i_774_n_0 ),
        .I1(\rout_reg[3]_i_805_n_4 ),
        .I2(\rout_reg[3]_i_776_n_4 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [2]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/START[0][0]4 [2]),
        .O(\rout_reg[3]_i_777_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \rout_reg[3]_i_778 
       (.I0(\rout_reg[3]_i_805_n_5 ),
        .I1(\rout_reg[3]_i_776_n_5 ),
        .I2(\rout_reg[3]_i_894_n_0 ),
        .I3(\rout_reg[3]_i_805_n_6 ),
        .I4(\rout_reg[3]_i_776_n_6 ),
        .O(\rout_reg[3]_i_778_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \rout_reg[3]_i_779 
       (.I0(\rout_reg[3]_i_805_n_6 ),
        .I1(\rout_reg[3]_i_776_n_6 ),
        .I2(col_i[0]),
        .O(\rout_reg[3]_i_779_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rout_reg[3]_i_78 
       (.I0(\rout_reg[3]_i_179_n_0 ),
        .I1(\rout_reg[3]_i_180_n_0 ),
        .I2(\rout_reg[3]_i_181_n_0 ),
        .I3(\rout_reg[3]_i_182_n_0 ),
        .I4(\rout_reg[3]_i_183_n_0 ),
        .I5(\rout_reg[3]_i_184_n_0 ),
        .O(\rout_reg[3]_i_78_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_780 
       (.I0(\rout_reg[3]_i_776_n_7 ),
        .I1(\rout_reg[3]_i_805_n_7 ),
        .O(\rout_reg[3]_i_780_n_0 ));
  LUT6 #(
    .INIT(64'h20203232EC20FE32)) 
    \rout_reg[3]_i_781 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [13]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [8]),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [8]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [10]),
        .I5(\Inst_VGA_Draw/is_text_pixel5 [10]),
        .O(\rout_reg[3]_i_781_n_0 ));
  LUT6 #(
    .INIT(64'h20203232EC20FE32)) 
    \rout_reg[3]_i_782 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [12]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [7]),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [9]),
        .I5(\Inst_VGA_Draw/is_text_pixel5 [9]),
        .O(\rout_reg[3]_i_782_n_0 ));
  LUT6 #(
    .INIT(64'h20203232EC20FE32)) 
    \rout_reg[3]_i_783 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [11]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [6]),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [8]),
        .I5(\Inst_VGA_Draw/is_text_pixel5 [8]),
        .O(\rout_reg[3]_i_783_n_0 ));
  LUT6 #(
    .INIT(64'hACAFFCFF000CA0AC)) 
    \rout_reg[3]_i_784 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [10]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [10]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [7]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .I5(\rout_reg[3]_i_806_n_0 ),
        .O(\rout_reg[3]_i_784_n_0 ));
  LUT6 #(
    .INIT(64'hA9A65956A6A95659)) 
    \rout_reg[3]_i_785 
       (.I0(\rout_reg[3]_i_781_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [14]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [9]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [9]),
        .I5(\Inst_VGA_Draw/START[0][0]4 [11]),
        .O(\rout_reg[3]_i_785_n_0 ));
  LUT6 #(
    .INIT(64'h5956A9A6A6A95659)) 
    \rout_reg[3]_i_786 
       (.I0(\rout_reg[3]_i_782_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [13]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [8]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [8]),
        .I5(\rout_reg[3]_i_803_n_0 ),
        .O(\rout_reg[3]_i_786_n_0 ));
  LUT6 #(
    .INIT(64'h5956A9A6A6A95659)) 
    \rout_reg[3]_i_787 
       (.I0(\rout_reg[3]_i_783_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [12]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [7]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .I5(\rout_reg[3]_i_808_n_0 ),
        .O(\rout_reg[3]_i_787_n_0 ));
  LUT6 #(
    .INIT(64'h5956A9A6A6A95659)) 
    \rout_reg[3]_i_788 
       (.I0(\rout_reg[3]_i_784_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [11]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [6]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .I5(\rout_reg[3]_i_809_n_0 ),
        .O(\rout_reg[3]_i_788_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \rout_reg[3]_i_789 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [2]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [2]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [6]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .I5(\rout_reg[3]_i_807_n_0 ),
        .O(\rout_reg[3]_i_789_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rout_reg[3]_i_79 
       (.I0(\rout_reg[3]_i_144_n_0 ),
        .I1(\rout_reg[3]_i_185_n_0 ),
        .I2(\rout_reg[3]_i_186_n_0 ),
        .I3(\rout_reg[3]_i_187_n_0 ),
        .I4(\rout_reg[3]_i_184_n_0 ),
        .I5(\rout_reg[3]_i_178_n_0 ),
        .O(\rout_reg[3]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hB8FF88FC30BB00B8)) 
    \rout_reg[3]_i_790 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [1]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [1]),
        .I3(\rout_reg[3]_i_806_n_0 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [3]),
        .I5(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .O(\rout_reg[3]_i_790_n_0 ));
  LUT6 #(
    .INIT(64'h3CC35A5A3CC3A5A5)) 
    \rout_reg[3]_i_791 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [1]),
        .I1(\Inst_VGA_Draw/is_text_pixel5 [1]),
        .I2(\rout_reg[3]_i_806_n_0 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/START[0][0]4 [3]),
        .O(\rout_reg[3]_i_791_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rout_reg[3]_i_792 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [2]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [2]),
        .O(\rout_reg[3]_i_792_n_0 ));
  LUT6 #(
    .INIT(64'h9669969696696969)) 
    \rout_reg[3]_i_793 
       (.I0(\rout_reg[3]_i_789_n_0 ),
        .I1(\rout_reg[3]_i_806_n_0 ),
        .I2(\rout_reg[3]_i_895_n_0 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/START[0][0]4 [3]),
        .O(\rout_reg[3]_i_793_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666699969)) 
    \rout_reg[3]_i_794 
       (.I0(\rout_reg[3]_i_790_n_0 ),
        .I1(\rout_reg[3]_i_807_n_0 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [6]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .I5(\rout_reg[3]_i_792_n_0 ),
        .O(\rout_reg[3]_i_794_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \rout_reg[3]_i_795 
       (.I0(\rout_reg[3]_i_896_n_0 ),
        .I1(\rout_reg[3]_i_806_n_0 ),
        .I2(\rout_reg[3]_i_894_n_0 ),
        .I3(\rout_reg[3]_i_807_n_0 ),
        .I4(col_i[0]),
        .O(\rout_reg[3]_i_795_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A3CC3A5A53CC3)) 
    \rout_reg[3]_i_796 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [4]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [4]),
        .I2(col_i[0]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [2]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/is_text_pixel5 [2]),
        .O(\rout_reg[3]_i_796_n_0 ));
  CARRY4 \rout_reg[3]_i_797 
       (.CI(\rout_reg[3]_i_801_n_0 ),
        .CO({\rout_reg[3]_i_797_n_0 ,\NLW_rout_reg[3]_i_797_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_897_n_0 ,\rout_reg[3]_i_898_n_0 ,\rout_reg[3]_i_899_n_0 ,\rout_reg[3]_i_900_n_0 }),
        .O({\rout_reg[3]_i_797_n_4 ,\rout_reg[3]_i_797_n_5 ,\rout_reg[3]_i_797_n_6 ,\rout_reg[3]_i_797_n_7 }),
        .S({\rout_reg[3]_i_901_n_0 ,\rout_reg[3]_i_902_n_0 ,\rout_reg[3]_i_903_n_0 ,\rout_reg[3]_i_904_n_0 }));
  CARRY4 \rout_reg[3]_i_798 
       (.CI(\rout_reg[3]_i_802_n_0 ),
        .CO({\rout_reg[3]_i_798_n_0 ,\NLW_rout_reg[3]_i_798_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_905_n_0 ,\rout_reg[3]_i_906_n_0 ,\rout_reg[3]_i_907_n_0 ,\rout_reg[3]_i_857_n_0 }),
        .O({\rout_reg[3]_i_798_n_4 ,\rout_reg[3]_i_798_n_5 ,\rout_reg[3]_i_798_n_6 ,\rout_reg[3]_i_798_n_7 }),
        .S({\rout_reg[3]_i_908_n_0 ,\rout_reg[3]_i_909_n_0 ,\rout_reg[3]_i_910_n_0 ,\rout_reg[3]_i_911_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_799 
       (.CI(\rout_reg[3]_i_800_n_0 ),
        .CO({\rout_reg[3]_i_799_n_0 ,\NLW_rout_reg[3]_i_799_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\Inst_VGA_Draw/START[0][0]4 [12:9]),
        .S({\rout_reg[3]_i_23_n_1 ,\rout_reg[3]_i_23_n_1 ,\Inst_VGA_Draw/p_0_out [10:9]}));
  CARRY4 \rout_reg[3]_i_8 
       (.CI(\rout_reg[3]_i_13_n_0 ),
        .CO(\NLW_rout_reg[3]_i_8_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\rout_reg[3]_i_24_n_0 ,1'b1}),
        .O({\NLW_rout_reg[3]_i_8_O_UNCONNECTED [3],\rout_reg[3]_i_8_n_5 ,\rout_reg[3]_i_8_n_6 ,\rout_reg[3]_i_8_n_7 }),
        .S({1'b0,\rout_reg[3]_i_25_n_0 ,\rout_reg[3]_i_26_n_0 ,\rout_reg[3]_i_27_n_0 }));
  LUT5 #(
    .INIT(32'h0A085F7F)) 
    \rout_reg[3]_i_80 
       (.I0(\rout_reg[3]_i_13_n_5 ),
        .I1(\rout_reg[3]_i_13_n_6 ),
        .I2(\rout_reg[3]_i_188_n_0 ),
        .I3(\rout_reg[3]_i_13_n_7 ),
        .I4(\rout_reg[3]_i_189_n_0 ),
        .O(\rout_reg[3]_i_80_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_800 
       (.CI(\rout_reg[3]_i_804_n_0 ),
        .CO({\rout_reg[3]_i_800_n_0 ,\NLW_rout_reg[3]_i_800_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\Inst_VGA_Draw/START[0][0]4 [8:5]),
        .S(\Inst_VGA_Draw/p_0_out [8:5]));
  CARRY4 \rout_reg[3]_i_801 
       (.CI(\rout_reg[3]_i_805_n_0 ),
        .CO({\rout_reg[3]_i_801_n_0 ,\NLW_rout_reg[3]_i_801_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_918_n_0 ,\rout_reg[3]_i_919_n_0 ,\rout_reg[3]_i_920_n_0 ,\rout_reg[3]_i_921_n_0 }),
        .O({\rout_reg[3]_i_801_n_4 ,\rout_reg[3]_i_801_n_5 ,\rout_reg[3]_i_801_n_6 ,\rout_reg[3]_i_801_n_7 }),
        .S({\rout_reg[3]_i_922_n_0 ,\rout_reg[3]_i_923_n_0 ,\rout_reg[3]_i_924_n_0 ,\rout_reg[3]_i_925_n_0 }));
  CARRY4 \rout_reg[3]_i_802 
       (.CI(\rout_reg[3]_i_776_n_0 ),
        .CO({\rout_reg[3]_i_802_n_0 ,\NLW_rout_reg[3]_i_802_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_926_n_0 ,\rout_reg[3]_i_927_n_0 ,\rout_reg[3]_i_928_n_0 ,\rout_reg[3]_i_929_n_0 }),
        .O({\rout_reg[3]_i_802_n_4 ,\rout_reg[3]_i_802_n_5 ,\rout_reg[3]_i_802_n_6 ,\rout_reg[3]_i_802_n_7 }),
        .S({\rout_reg[3]_i_930_n_0 ,\rout_reg[3]_i_931_n_0 ,\rout_reg[3]_i_932_n_0 ,\rout_reg[3]_i_933_n_0 }));
  LUT3 #(
    .INIT(8'hAC)) 
    \rout_reg[3]_i_803 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [10]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [10]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_803_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_804 
       (.CI(1'b0),
        .CO({\rout_reg[3]_i_804_n_0 ,\NLW_rout_reg[3]_i_804_CO_UNCONNECTED [2:0]}),
        .CYINIT(\Inst_VGA_Draw/p_0_out [0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\Inst_VGA_Draw/START[0][0]4 [4:1]),
        .S(\Inst_VGA_Draw/p_0_out [4:1]));
  CARRY4 \rout_reg[3]_i_805 
       (.CI(\rout_reg[3]_i_939_n_0 ),
        .CO({\rout_reg[3]_i_805_n_0 ,\NLW_rout_reg[3]_i_805_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_701_n_0 ,\rout_reg[3]_i_702_n_0 ,\rout_reg[3]_i_703_n_0 ,\rout_reg[3]_i_704_n_0 }),
        .O({\rout_reg[3]_i_805_n_4 ,\rout_reg[3]_i_805_n_5 ,\rout_reg[3]_i_805_n_6 ,\rout_reg[3]_i_805_n_7 }),
        .S({\rout_reg[3]_i_940_n_0 ,\rout_reg[3]_i_941_n_0 ,\rout_reg[3]_i_942_n_0 ,\rout_reg[3]_i_943_n_0 }));
  LUT3 #(
    .INIT(8'hB8)) 
    \rout_reg[3]_i_806 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [5]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [5]),
        .O(\rout_reg[3]_i_806_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rout_reg[3]_i_807 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [4]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [4]),
        .O(\rout_reg[3]_i_807_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rout_reg[3]_i_808 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [9]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [9]),
        .O(\rout_reg[3]_i_808_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rout_reg[3]_i_809 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [8]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [8]),
        .O(\rout_reg[3]_i_809_n_0 ));
  LUT6 #(
    .INIT(64'h407F00F0407F0FFF)) 
    \rout_reg[3]_i_81 
       (.I0(\rout_reg[3]_i_78_n_0 ),
        .I1(\rout_reg[3]_i_13_n_7 ),
        .I2(\rout_reg[3]_i_13_n_5 ),
        .I3(\rout_reg[3]_i_190_n_0 ),
        .I4(\rout_reg[3]_i_13_n_6 ),
        .I5(\rout_reg[3]_i_188_n_0 ),
        .O(\rout_reg[3]_i_81_n_0 ));
  CARRY4 \rout_reg[3]_i_810 
       (.CI(\rout_reg[3]_i_798_n_0 ),
        .CO({\NLW_rout_reg[3]_i_810_CO_UNCONNECTED [3],\rout_reg[3]_i_810_n_1 ,\NLW_rout_reg[3]_i_810_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\rout_reg[3]_i_944_n_0 ,\rout_reg[3]_i_945_n_0 }),
        .O({\NLW_rout_reg[3]_i_810_O_UNCONNECTED [3:2],\rout_reg[3]_i_810_n_6 ,\rout_reg[3]_i_810_n_7 }),
        .S({1'b0,1'b1,\rout_reg[3]_i_946_n_0 ,\rout_reg[3]_i_947_n_0 }));
  CARRY4 \rout_reg[3]_i_811 
       (.CI(\rout_reg[3]_i_797_n_0 ),
        .CO({\rout_reg[3]_i_811_n_0 ,\NLW_rout_reg[3]_i_811_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_837_n_0 ,\rout_reg[3]_i_838_n_0 ,\rout_reg[3]_i_839_n_0 ,\rout_reg[3]_i_840_n_0 }),
        .O({\rout_reg[3]_i_811_n_4 ,\rout_reg[3]_i_811_n_5 ,\rout_reg[3]_i_811_n_6 ,\rout_reg[3]_i_811_n_7 }),
        .S({\rout_reg[3]_i_948_n_0 ,\rout_reg[3]_i_949_n_0 ,\rout_reg[3]_i_950_n_0 ,\rout_reg[3]_i_951_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_812 
       (.CI(\rout_reg[3]_i_952_n_0 ),
        .CO({\rout_reg[3]_i_812_n_0 ,\NLW_rout_reg[3]_i_812_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_953_n_0 ,\rout_reg[3]_i_954_n_0 ,\rout_reg[3]_i_955_n_0 ,\rout_reg[3]_i_956_n_0 }),
        .O(\NLW_rout_reg[3]_i_812_O_UNCONNECTED [3:0]),
        .S({\rout_reg[3]_i_957_n_0 ,\rout_reg[3]_i_958_n_0 ,\rout_reg[3]_i_959_n_0 ,\rout_reg[3]_i_960_n_0 }));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_813 
       (.I0(\rout_reg[3]_i_724_n_5 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [15]),
        .O(\rout_reg[3]_i_813_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_814 
       (.I0(\rout_reg[3]_i_724_n_6 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [14]),
        .O(\rout_reg[3]_i_814_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_815 
       (.I0(\rout_reg[3]_i_724_n_7 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [13]),
        .O(\rout_reg[3]_i_815_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_816 
       (.I0(\rout_reg[3]_i_821_n_4 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [12]),
        .O(\rout_reg[3]_i_816_n_0 ));
  LUT5 #(
    .INIT(32'hCCB4334B)) 
    \rout_reg[3]_i_817 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [15]),
        .I1(\rout_reg[3]_i_724_n_5 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [16]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_724_n_4 ),
        .O(\rout_reg[3]_i_817_n_0 ));
  LUT5 #(
    .INIT(32'hCCB4334B)) 
    \rout_reg[3]_i_818 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [14]),
        .I1(\rout_reg[3]_i_724_n_6 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [15]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_724_n_5 ),
        .O(\rout_reg[3]_i_818_n_0 ));
  LUT5 #(
    .INIT(32'hCCB4334B)) 
    \rout_reg[3]_i_819 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [13]),
        .I1(\rout_reg[3]_i_724_n_7 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [14]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_724_n_6 ),
        .O(\rout_reg[3]_i_819_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \rout_reg[3]_i_82 
       (.I0(\rout_reg[3]_i_191_n_0 ),
        .I1(\rout_reg[3]_i_192_n_0 ),
        .I2(\rout_reg[3]_i_193_n_0 ),
        .I3(\rout_reg[3]_i_194_n_0 ),
        .I4(\rout_reg[3]_i_195_n_0 ),
        .I5(\rout_reg[3]_i_148_n_0 ),
        .O(\rout_reg[3]_i_82_n_0 ));
  LUT5 #(
    .INIT(32'hCCB4334B)) 
    \rout_reg[3]_i_820 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [12]),
        .I1(\rout_reg[3]_i_821_n_4 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [13]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_724_n_7 ),
        .O(\rout_reg[3]_i_820_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_821 
       (.CI(\rout_reg[3]_i_961_n_0 ),
        .CO({\rout_reg[3]_i_821_n_0 ,\NLW_rout_reg[3]_i_821_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_822_n_5 ,\rout_reg[3]_i_822_n_6 ,\rout_reg[3]_i_822_n_7 ,\rout_reg[3]_i_143_n_4 }),
        .O({\rout_reg[3]_i_821_n_4 ,\rout_reg[3]_i_821_n_5 ,\rout_reg[3]_i_821_n_6 ,\rout_reg[3]_i_821_n_7 }),
        .S({\rout_reg[3]_i_962_n_0 ,\rout_reg[3]_i_963_n_0 ,\rout_reg[3]_i_964_n_0 ,\rout_reg[3]_i_965_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_822 
       (.CI(\rout_reg[3]_i_143_n_0 ),
        .CO({\rout_reg[3]_i_822_n_0 ,\NLW_rout_reg[3]_i_822_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_966_n_0 ,\rout_reg[3]_i_967_n_0 ,\rout_reg[3]_i_968_n_0 ,\rout_reg[3]_i_969_n_0 }),
        .O({\rout_reg[3]_i_822_n_4 ,\rout_reg[3]_i_822_n_5 ,\rout_reg[3]_i_822_n_6 ,\rout_reg[3]_i_822_n_7 }),
        .S({\rout_reg[3]_i_970_n_0 ,\rout_reg[3]_i_971_n_0 ,\rout_reg[3]_i_972_n_0 ,\rout_reg[3]_i_973_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_823 
       (.I0(\rout_reg[3]_i_725_n_5 ),
        .I1(\rout_reg[3]_i_725_n_7 ),
        .O(\rout_reg[3]_i_823_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_824 
       (.I0(\rout_reg[3]_i_725_n_6 ),
        .I1(\rout_reg[3]_i_822_n_4 ),
        .O(\rout_reg[3]_i_824_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_825 
       (.I0(\rout_reg[3]_i_725_n_7 ),
        .I1(\rout_reg[3]_i_822_n_5 ),
        .O(\rout_reg[3]_i_825_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_826 
       (.I0(\rout_reg[3]_i_822_n_4 ),
        .I1(\rout_reg[3]_i_822_n_6 ),
        .O(\rout_reg[3]_i_826_n_0 ));
  (* HLUTNM = "lutpair73" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_827 
       (.I0(\rout_reg[3]_i_835_n_7 ),
        .I1(\rout_reg[3]_i_748_n_7 ),
        .I2(\rout_reg[3]_i_836_n_7 ),
        .O(\rout_reg[3]_i_827_n_0 ));
  (* HLUTNM = "lutpair72" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_828 
       (.I0(\rout_reg[3]_i_974_n_4 ),
        .I1(\rout_reg[3]_i_853_n_4 ),
        .I2(\rout_reg[3]_i_975_n_4 ),
        .O(\rout_reg[3]_i_828_n_0 ));
  (* HLUTNM = "lutpair71" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_829 
       (.I0(\rout_reg[3]_i_974_n_5 ),
        .I1(\rout_reg[3]_i_853_n_5 ),
        .I2(\rout_reg[3]_i_975_n_5 ),
        .O(\rout_reg[3]_i_829_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \rout_reg[3]_i_83 
       (.I0(\rout_reg[3]_i_32_0 ),
        .I1(\rout_reg[3]_i_197_n_0 ),
        .I2(\rout_reg[3]_i_198_n_0 ),
        .I3(\rout_reg[3]_i_199_n_0 ),
        .I4(\rout_reg[3]_i_195_n_0 ),
        .I5(\rout_reg[3]_i_200_n_0 ),
        .O(\rout_reg[3]_i_83_n_0 ));
  (* HLUTNM = "lutpair70" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_830 
       (.I0(\rout_reg[3]_i_974_n_6 ),
        .I1(\rout_reg[3]_i_853_n_6 ),
        .I2(\rout_reg[3]_i_975_n_6 ),
        .O(\rout_reg[3]_i_830_n_0 ));
  (* HLUTNM = "lutpair74" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_831 
       (.I0(\rout_reg[3]_i_835_n_6 ),
        .I1(\rout_reg[3]_i_748_n_6 ),
        .I2(\rout_reg[3]_i_836_n_6 ),
        .I3(\rout_reg[3]_i_827_n_0 ),
        .O(\rout_reg[3]_i_831_n_0 ));
  (* HLUTNM = "lutpair73" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_832 
       (.I0(\rout_reg[3]_i_835_n_7 ),
        .I1(\rout_reg[3]_i_748_n_7 ),
        .I2(\rout_reg[3]_i_836_n_7 ),
        .I3(\rout_reg[3]_i_828_n_0 ),
        .O(\rout_reg[3]_i_832_n_0 ));
  (* HLUTNM = "lutpair72" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_833 
       (.I0(\rout_reg[3]_i_974_n_4 ),
        .I1(\rout_reg[3]_i_853_n_4 ),
        .I2(\rout_reg[3]_i_975_n_4 ),
        .I3(\rout_reg[3]_i_829_n_0 ),
        .O(\rout_reg[3]_i_833_n_0 ));
  (* HLUTNM = "lutpair71" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_834 
       (.I0(\rout_reg[3]_i_974_n_5 ),
        .I1(\rout_reg[3]_i_853_n_5 ),
        .I2(\rout_reg[3]_i_975_n_5 ),
        .I3(\rout_reg[3]_i_830_n_0 ),
        .O(\rout_reg[3]_i_834_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_835 
       (.CI(\rout_reg[3]_i_974_n_0 ),
        .CO({\rout_reg[3]_i_835_n_0 ,\NLW_rout_reg[3]_i_835_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_976_n_0 ,\rout_reg[3]_i_977_n_0 ,\rout_reg[3]_i_978_n_0 ,\rout_reg[3]_i_979_n_0 }),
        .O({\rout_reg[3]_i_835_n_4 ,\rout_reg[3]_i_835_n_5 ,\rout_reg[3]_i_835_n_6 ,\rout_reg[3]_i_835_n_7 }),
        .S({\rout_reg[3]_i_980_n_0 ,\rout_reg[3]_i_981_n_0 ,\rout_reg[3]_i_982_n_0 ,\rout_reg[3]_i_983_n_0 }));
  CARRY4 \rout_reg[3]_i_836 
       (.CI(\rout_reg[3]_i_975_n_0 ),
        .CO({\rout_reg[3]_i_836_n_0 ,\NLW_rout_reg[3]_i_836_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_897_n_0 ,\rout_reg[3]_i_898_n_0 ,\rout_reg[3]_i_899_n_0 ,\rout_reg[3]_i_900_n_0 }),
        .O({\rout_reg[3]_i_836_n_4 ,\rout_reg[3]_i_836_n_5 ,\rout_reg[3]_i_836_n_6 ,\rout_reg[3]_i_836_n_7 }),
        .S({\rout_reg[3]_i_984_n_0 ,\rout_reg[3]_i_985_n_0 ,\rout_reg[3]_i_986_n_0 ,\rout_reg[3]_i_987_n_0 }));
  LUT4 #(
    .INIT(16'h5110)) 
    \rout_reg[3]_i_837 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [26]),
        .O(\rout_reg[3]_i_837_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h5110)) 
    \rout_reg[3]_i_838 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [25]),
        .O(\rout_reg[3]_i_838_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h5110)) 
    \rout_reg[3]_i_839 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [24]),
        .O(\rout_reg[3]_i_839_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \rout_reg[3]_i_84 
       (.I0(\rout_reg[3]_i_201_n_0 ),
        .I1(\rout_reg[3]_i_69_0 ),
        .I2(\rout_reg[3]_i_203_n_0 ),
        .I3(\rout_reg[3]_i_33_0 ),
        .I4(\rout_reg[3]_i_182_n_0 ),
        .I5(\rout_reg[3]_i_148_n_0 ),
        .O(\rout_reg[3]_i_84_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h5110)) 
    \rout_reg[3]_i_840 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [23]),
        .O(\rout_reg[3]_i_840_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF718EFFFF8E71)) 
    \rout_reg[3]_i_841 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/START[0][0]4 [27]),
        .O(\rout_reg[3]_i_841_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_842 
       (.I0(\rout_reg[3]_i_838_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [30]),
        .O(\rout_reg[3]_i_842_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT5 #(
    .INIT(32'h4114BEEB)) 
    \rout_reg[3]_i_843 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I4(\rout_reg[3]_i_839_n_0 ),
        .O(\rout_reg[3]_i_843_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT5 #(
    .INIT(32'h4114BEEB)) 
    \rout_reg[3]_i_844 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [24]),
        .I4(\rout_reg[3]_i_840_n_0 ),
        .O(\rout_reg[3]_i_844_n_0 ));
  (* HLUTNM = "lutpair43" *) 
  LUT4 #(
    .INIT(16'h1171)) 
    \rout_reg[3]_i_845 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_845_n_0 ));
  (* HLUTNM = "lutpair42" *) 
  LUT4 #(
    .INIT(16'h1171)) 
    \rout_reg[3]_i_846 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [24]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_846_n_0 ));
  (* HLUTNM = "lutpair41" *) 
  LUT4 #(
    .INIT(16'h1171)) 
    \rout_reg[3]_i_847 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [23]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_847_n_0 ));
  (* HLUTNM = "lutpair40" *) 
  LUT4 #(
    .INIT(16'h1171)) 
    \rout_reg[3]_i_848 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [22]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_848_n_0 ));
  (* HLUTNM = "lutpair44" *) 
  LUT5 #(
    .INIT(32'h99696696)) 
    \rout_reg[3]_i_849 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_845_n_0 ),
        .O(\rout_reg[3]_i_849_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \rout_reg[3]_i_85 
       (.I0(\rout_reg[3]_i_205_n_0 ),
        .I1(\rout_reg[3]_i_55_n_4 ),
        .I2(\rout_reg[3]_i_55_n_5 ),
        .I3(\rout_reg[3]_i_55_n_6 ),
        .I4(O),
        .O(\rout_reg[3]_i_85_n_0 ));
  (* HLUTNM = "lutpair43" *) 
  LUT5 #(
    .INIT(32'h99696696)) 
    \rout_reg[3]_i_850 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_846_n_0 ),
        .O(\rout_reg[3]_i_850_n_0 ));
  (* HLUTNM = "lutpair42" *) 
  LUT5 #(
    .INIT(32'h99696696)) 
    \rout_reg[3]_i_851 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [24]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_847_n_0 ),
        .O(\rout_reg[3]_i_851_n_0 ));
  (* HLUTNM = "lutpair41" *) 
  LUT5 #(
    .INIT(32'h99696696)) 
    \rout_reg[3]_i_852 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [23]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_848_n_0 ),
        .O(\rout_reg[3]_i_852_n_0 ));
  CARRY4 \rout_reg[3]_i_853 
       (.CI(\rout_reg[3]_i_529_n_0 ),
        .CO({\rout_reg[3]_i_853_n_0 ,\NLW_rout_reg[3]_i_853_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_926_n_0 ,\rout_reg[3]_i_927_n_0 ,\rout_reg[3]_i_928_n_0 ,\rout_reg[3]_i_929_n_0 }),
        .O({\rout_reg[3]_i_853_n_4 ,\rout_reg[3]_i_853_n_5 ,\rout_reg[3]_i_853_n_6 ,\rout_reg[3]_i_853_n_7 }),
        .S({\rout_reg[3]_i_988_n_0 ,\rout_reg[3]_i_989_n_0 ,\rout_reg[3]_i_990_n_0 ,\rout_reg[3]_i_991_n_0 }));
  LUT3 #(
    .INIT(8'h04)) 
    \rout_reg[3]_i_854 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .O(\rout_reg[3]_i_854_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \rout_reg[3]_i_855 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [29]),
        .O(\rout_reg[3]_i_855_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \rout_reg[3]_i_856 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [28]),
        .O(\rout_reg[3]_i_856_n_0 ));
  LUT3 #(
    .INIT(8'hED)) 
    \rout_reg[3]_i_857 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [28]),
        .O(\rout_reg[3]_i_857_n_0 ));
  LUT4 #(
    .INIT(16'hF4FB)) 
    \rout_reg[3]_i_858 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [29]),
        .O(\rout_reg[3]_i_858_n_0 ));
  LUT5 #(
    .INIT(32'hFFB4FF4B)) 
    \rout_reg[3]_i_859 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [28]),
        .O(\rout_reg[3]_i_859_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \rout_reg[3]_i_86 
       (.I0(\rout_reg[3]_i_13_n_5 ),
        .I1(\rout_reg[3]_i_13_n_6 ),
        .I2(\rout_reg[3]_i_13_n_7 ),
        .O(\rout_reg[3]_i_86_n_0 ));
  LUT5 #(
    .INIT(32'hFFB4FF4B)) 
    \rout_reg[3]_i_860 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [27]),
        .O(\rout_reg[3]_i_860_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2BD4FFFFD42B)) 
    \rout_reg[3]_i_861 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/START[0][0]4 [26]),
        .O(\rout_reg[3]_i_861_n_0 ));
  CARRY4 \rout_reg[3]_i_862 
       (.CI(\rout_reg[3]_i_992_n_0 ),
        .CO({\NLW_rout_reg[3]_i_862_CO_UNCONNECTED [3:1],\rout_reg[3]_i_862_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_rout_reg[3]_i_862_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h8)) 
    \rout_reg[3]_i_863 
       (.I0(\rout_reg[3]_i_871_n_7 ),
        .I1(\rout_reg[3]_i_993_n_7 ),
        .O(\rout_reg[3]_i_863_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \rout_reg[3]_i_864 
       (.I0(\rout_reg[3]_i_994_n_4 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [2]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [2]),
        .O(\rout_reg[3]_i_864_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \rout_reg[3]_i_865 
       (.I0(\rout_reg[3]_i_994_n_5 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [1]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [1]),
        .O(\rout_reg[3]_i_865_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rout_reg[3]_i_866 
       (.I0(col_i[0]),
        .I1(\rout_reg[3]_i_994_n_6 ),
        .O(\rout_reg[3]_i_866_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \rout_reg[3]_i_867 
       (.I0(\rout_reg[3]_i_993_n_7 ),
        .I1(\rout_reg[3]_i_871_n_7 ),
        .I2(\rout_reg[3]_i_872_n_6 ),
        .I3(\rout_reg[3]_i_871_n_6 ),
        .O(\rout_reg[3]_i_867_n_0 ));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    \rout_reg[3]_i_868 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [2]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [2]),
        .I3(\rout_reg[3]_i_994_n_4 ),
        .I4(\rout_reg[3]_i_993_n_7 ),
        .I5(\rout_reg[3]_i_871_n_7 ),
        .O(\rout_reg[3]_i_868_n_0 ));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    \rout_reg[3]_i_869 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [1]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [1]),
        .I3(\rout_reg[3]_i_994_n_5 ),
        .I4(\rout_reg[3]_i_792_n_0 ),
        .I5(\rout_reg[3]_i_994_n_4 ),
        .O(\rout_reg[3]_i_869_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    \rout_reg[3]_i_87 
       (.I0(\rout_reg[3]_i_206_n_0 ),
        .I1(\rout_reg[3]_i_55_n_4 ),
        .I2(\rout_reg[3]_i_207_n_0 ),
        .I3(\rout_reg[3]_i_208_n_0 ),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .I5(\rout_reg[3]_i_209_n_0 ),
        .O(\rout_reg[3]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h8788877778777888)) 
    \rout_reg[3]_i_870 
       (.I0(\rout_reg[3]_i_994_n_6 ),
        .I1(col_i[0]),
        .I2(\Inst_VGA_Draw/is_text_pixel5 [1]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [1]),
        .I5(\rout_reg[3]_i_994_n_5 ),
        .O(\rout_reg[3]_i_870_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_871 
       (.CI(\rout_reg[3]_i_994_n_0 ),
        .CO({\rout_reg[3]_i_871_n_0 ,\NLW_rout_reg[3]_i_871_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_995_n_4 ,\rout_reg[3]_i_995_n_5 ,\rout_reg[3]_i_995_n_6 ,\rout_reg[3]_i_995_n_7 }),
        .O({\rout_reg[3]_i_871_n_4 ,\rout_reg[3]_i_871_n_5 ,\rout_reg[3]_i_871_n_6 ,\rout_reg[3]_i_871_n_7 }),
        .S({\rout_reg[3]_i_996_n_0 ,\rout_reg[3]_i_997_n_0 ,\rout_reg[3]_i_998_n_0 ,\rout_reg[3]_i_999_n_0 }));
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 \rout_reg[3]_i_872 
       (.CI(1'b0),
        .CO({\rout_reg[3]_i_872_n_0 ,\NLW_rout_reg[3]_i_872_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_1000_n_0 ,\rout_reg[3]_i_1001_n_0 ,\rout_reg[3]_i_1002_n_0 ,1'b0}),
        .O({\rout_reg[3]_i_872_n_4 ,\rout_reg[3]_i_872_n_5 ,\rout_reg[3]_i_872_n_6 ,\NLW_rout_reg[3]_i_872_O_UNCONNECTED [0]}),
        .S({\rout_reg[3]_i_1003_n_0 ,\rout_reg[3]_i_1004_n_0 ,\rout_reg[3]_i_1005_n_0 ,\rout_reg[3]_i_1006_n_0 }));
  CARRY4 \rout_reg[3]_i_873 
       (.CI(\rout_reg[3]_i_995_n_0 ),
        .CO({\rout_reg[3]_i_873_n_0 ,\NLW_rout_reg[3]_i_873_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_645_n_0 ,\rout_reg[3]_i_646_n_0 ,\rout_reg[3]_i_647_n_0 ,\rout_reg[3]_i_648_n_0 }),
        .O({\rout_reg[3]_i_873_n_4 ,\rout_reg[3]_i_873_n_5 ,\rout_reg[3]_i_873_n_6 ,\rout_reg[3]_i_873_n_7 }),
        .S({\rout_reg[3]_i_1007_n_0 ,\rout_reg[3]_i_1008_n_0 ,\rout_reg[3]_i_1009_n_0 ,\rout_reg[3]_i_1010_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_874 
       (.I0(\rout_reg[3]_i_873_n_4 ),
        .I1(\rout_reg[3]_i_939_n_4 ),
        .O(\rout_reg[3]_i_874_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_875 
       (.I0(\rout_reg[3]_i_873_n_5 ),
        .I1(\rout_reg[3]_i_939_n_5 ),
        .O(\rout_reg[3]_i_875_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_876 
       (.I0(\rout_reg[3]_i_873_n_6 ),
        .I1(\rout_reg[3]_i_939_n_6 ),
        .O(\rout_reg[3]_i_876_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_877 
       (.I0(\rout_reg[3]_i_873_n_7 ),
        .I1(\rout_reg[3]_i_939_n_7 ),
        .O(\rout_reg[3]_i_877_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \rout_reg[3]_i_878 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [9]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [9]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [6]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .I5(\rout_reg[3]_i_807_n_0 ),
        .O(\rout_reg[3]_i_878_n_0 ));
  LUT6 #(
    .INIT(64'hB8FF88FC30BB00B8)) 
    \rout_reg[3]_i_879 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [8]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [8]),
        .I3(\rout_reg[3]_i_806_n_0 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [3]),
        .I5(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .O(\rout_reg[3]_i_879_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA3303AAAA0000)) 
    \rout_reg[3]_i_88 
       (.I0(\rout_reg[3]_i_206_n_0 ),
        .I1(\rout_reg[3]_i_210_n_0 ),
        .I2(\rout_reg[3]_i_211_n_0 ),
        .I3(\rout_reg[3]_i_212_n_0 ),
        .I4(\rout_reg[3]_i_55_n_4 ),
        .I5(\rout_reg[3]_i_213_n_0 ),
        .O(\rout_reg[3]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \rout_reg[3]_i_880 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [7]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [4]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [4]),
        .I5(\rout_reg[3]_i_792_n_0 ),
        .O(\rout_reg[3]_i_880_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBFCFF003088B8)) 
    \rout_reg[3]_i_881 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [6]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [3]),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .I5(\rout_reg[3]_i_894_n_0 ),
        .O(\rout_reg[3]_i_881_n_0 ));
  LUT6 #(
    .INIT(64'h9696966969699669)) 
    \rout_reg[3]_i_882 
       (.I0(\rout_reg[3]_i_878_n_0 ),
        .I1(\rout_reg[3]_i_803_n_0 ),
        .I2(\rout_reg[3]_i_806_n_0 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [7]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .O(\rout_reg[3]_i_882_n_0 ));
  LUT6 #(
    .INIT(64'h9696966969699669)) 
    \rout_reg[3]_i_883 
       (.I0(\rout_reg[3]_i_879_n_0 ),
        .I1(\rout_reg[3]_i_808_n_0 ),
        .I2(\rout_reg[3]_i_807_n_0 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [6]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .O(\rout_reg[3]_i_883_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666699969)) 
    \rout_reg[3]_i_884 
       (.I0(\rout_reg[3]_i_880_n_0 ),
        .I1(\rout_reg[3]_i_809_n_0 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [3]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .I5(\rout_reg[3]_i_806_n_0 ),
        .O(\rout_reg[3]_i_884_n_0 ));
  LUT6 #(
    .INIT(64'h9A95656A656A9A95)) 
    \rout_reg[3]_i_885 
       (.I0(\rout_reg[3]_i_881_n_0 ),
        .I1(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [7]),
        .I4(\rout_reg[3]_i_807_n_0 ),
        .I5(\rout_reg[3]_i_792_n_0 ),
        .O(\rout_reg[3]_i_885_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rout_reg[3]_i_886 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [1]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [1]),
        .O(\rout_reg[3]_i_886_n_0 ));
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    \rout_reg[3]_i_887 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [1]),
        .I1(\Inst_VGA_Draw/is_text_pixel5 [1]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [3]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .O(\rout_reg[3]_i_887_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \rout_reg[3]_i_888 
       (.I0(col_i[0]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [2]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [2]),
        .O(\rout_reg[3]_i_888_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \rout_reg[3]_i_889 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [1]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/is_text_pixel5 [1]),
        .O(\rout_reg[3]_i_889_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_890 
       (.I0(\rout_reg[3]_i_693_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [21]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [23]),
        .O(\rout_reg[3]_i_890_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_891 
       (.I0(\rout_reg[3]_i_694_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [20]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [22]),
        .O(\rout_reg[3]_i_891_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_892 
       (.I0(\rout_reg[3]_i_695_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [24]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [19]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [21]),
        .O(\rout_reg[3]_i_892_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_893 
       (.I0(\rout_reg[3]_i_696_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [23]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [18]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [20]),
        .O(\rout_reg[3]_i_893_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rout_reg[3]_i_894 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [1]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [1]),
        .O(\rout_reg[3]_i_894_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rout_reg[3]_i_895 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [7]),
        .O(\rout_reg[3]_i_895_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rout_reg[3]_i_896 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [3]),
        .O(\rout_reg[3]_i_896_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h5110)) 
    \rout_reg[3]_i_897 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [24]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [22]),
        .O(\rout_reg[3]_i_897_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h5110)) 
    \rout_reg[3]_i_898 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [23]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [21]),
        .O(\rout_reg[3]_i_898_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h5110)) 
    \rout_reg[3]_i_899 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [24]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [22]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [20]),
        .O(\rout_reg[3]_i_899_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rout_reg[3]_i_9 
       (.I0(\rout_reg[3]_i_28_n_0 ),
        .I1(\rout_reg[3]_i_29_n_0 ),
        .I2(\rout_reg[3]_i_8_n_6 ),
        .I3(\rout_reg[3]_i_30_n_0 ),
        .I4(\rout_reg[3]_i_8_n_7 ),
        .I5(\rout_reg[3]_i_31_n_0 ),
        .O(\rout_reg[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF4F000000000000)) 
    \rout_reg[3]_i_90 
       (.I0(\rout_reg[3]_i_214_n_0 ),
        .I1(\rout_reg[3]_i_110_n_0 ),
        .I2(O),
        .I3(\rout_reg[3]_i_215_n_0 ),
        .I4(\rout_reg[3]_i_216_n_0 ),
        .I5(\rout_reg[3]_i_94_n_0 ),
        .O(\rout_reg[3]_i_90_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h5110)) 
    \rout_reg[3]_i_900 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [23]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [21]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [19]),
        .O(\rout_reg[3]_i_900_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_901 
       (.I0(\rout_reg[3]_i_897_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [23]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [27]),
        .O(\rout_reg[3]_i_901_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_902 
       (.I0(\rout_reg[3]_i_898_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [24]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [22]),
        .O(\rout_reg[3]_i_902_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_903 
       (.I0(\rout_reg[3]_i_899_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [23]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [21]),
        .O(\rout_reg[3]_i_903_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_904 
       (.I0(\rout_reg[3]_i_900_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [22]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [24]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [20]),
        .O(\rout_reg[3]_i_904_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \rout_reg[3]_i_905 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .O(\rout_reg[3]_i_905_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \rout_reg[3]_i_906 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [29]),
        .O(\rout_reg[3]_i_906_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \rout_reg[3]_i_907 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [28]),
        .O(\rout_reg[3]_i_907_n_0 ));
  LUT4 #(
    .INIT(16'hF4FB)) 
    \rout_reg[3]_i_908 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [29]),
        .O(\rout_reg[3]_i_908_n_0 ));
  LUT5 #(
    .INIT(32'hFFB4FF4B)) 
    \rout_reg[3]_i_909 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [28]),
        .O(\rout_reg[3]_i_909_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF4F0000)) 
    \rout_reg[3]_i_91 
       (.I0(O),
        .I1(\rout_reg[3]_i_19_0 ),
        .I2(\rout_reg[3]_i_55_n_6 ),
        .I3(\rout_reg[3]_i_217_n_0 ),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .I5(\rout_reg[3]_i_218_n_0 ),
        .O(\rout_reg[3]_i_91_n_0 ));
  LUT5 #(
    .INIT(32'hFFB4FF4B)) 
    \rout_reg[3]_i_910 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\Inst_VGA_Draw/START[0][0]4 [27]),
        .O(\rout_reg[3]_i_910_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2BD4FFFFD42B)) 
    \rout_reg[3]_i_911 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/START[0][0]4 [26]),
        .O(\rout_reg[3]_i_911_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_912 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [10]),
        .O(\Inst_VGA_Draw/p_0_out [10]));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_913 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [9]),
        .O(\Inst_VGA_Draw/p_0_out [9]));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_914 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [8]),
        .O(\Inst_VGA_Draw/p_0_out [8]));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_915 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [7]),
        .O(\Inst_VGA_Draw/p_0_out [7]));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_916 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [6]),
        .O(\Inst_VGA_Draw/p_0_out [6]));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_917 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [5]),
        .O(\Inst_VGA_Draw/p_0_out [5]));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h5110)) 
    \rout_reg[3]_i_918 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [22]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [20]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [18]),
        .O(\rout_reg[3]_i_918_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h5110)) 
    \rout_reg[3]_i_919 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [21]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [19]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [17]),
        .O(\rout_reg[3]_i_919_n_0 ));
  LUT6 #(
    .INIT(64'h00000EAE00000000)) 
    \rout_reg[3]_i_92 
       (.I0(\rout_reg[3]_i_219_n_0 ),
        .I1(\rout_reg[3]_i_220_n_0 ),
        .I2(\rout_reg[3]_i_221_n_0 ),
        .I3(\rout_reg[3]_i_222_n_0 ),
        .I4(\rout_reg[3]_i_55_n_5 ),
        .I5(\rout_reg[3]_i_55_n_6 ),
        .O(\rout_reg[3]_i_92_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h5110)) 
    \rout_reg[3]_i_920 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [20]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [18]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [16]),
        .O(\rout_reg[3]_i_920_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h5110)) 
    \rout_reg[3]_i_921 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [19]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [17]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [15]),
        .O(\rout_reg[3]_i_921_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_922 
       (.I0(\rout_reg[3]_i_918_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [21]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [23]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [19]),
        .O(\rout_reg[3]_i_922_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_923 
       (.I0(\rout_reg[3]_i_919_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [20]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [22]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [18]),
        .O(\rout_reg[3]_i_923_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_924 
       (.I0(\rout_reg[3]_i_920_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [19]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [21]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [17]),
        .O(\rout_reg[3]_i_924_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_925 
       (.I0(\rout_reg[3]_i_921_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [18]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [20]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [16]),
        .O(\rout_reg[3]_i_925_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h008E)) 
    \rout_reg[3]_i_926 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [24]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_926_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h008E)) 
    \rout_reg[3]_i_927 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [23]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_927_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h008E)) 
    \rout_reg[3]_i_928 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [22]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [24]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_928_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h008E)) 
    \rout_reg[3]_i_929 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [21]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [23]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_929_n_0 ));
  LUT6 #(
    .INIT(64'hCC88CC88D8DDD888)) 
    \rout_reg[3]_i_93 
       (.I0(\col_reg[10]_1 ),
        .I1(\start[1][0] ),
        .I2(\start[0][0] ),
        .I3(\col_reg[10]_2 ),
        .I4(\gameover[1][0] ),
        .I5(\col_reg[10]_3 ),
        .O(\rout_reg[3]_i_93_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_930 
       (.I0(\rout_reg[3]_i_926_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [30]),
        .O(\rout_reg[3]_i_930_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_931 
       (.I0(\rout_reg[3]_i_927_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [24]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [29]),
        .O(\rout_reg[3]_i_931_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_932 
       (.I0(\rout_reg[3]_i_928_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [23]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [25]),
        .O(\rout_reg[3]_i_932_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_933 
       (.I0(\rout_reg[3]_i_929_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [22]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [24]),
        .O(\rout_reg[3]_i_933_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_934 
       (.I0(col_i[0]),
        .O(\Inst_VGA_Draw/p_0_out [0]));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_935 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [4]),
        .O(\Inst_VGA_Draw/p_0_out [4]));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_936 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [3]),
        .O(\Inst_VGA_Draw/p_0_out [3]));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_937 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [2]),
        .O(\Inst_VGA_Draw/p_0_out [2]));
  LUT1 #(
    .INIT(2'h1)) 
    \rout_reg[3]_i_938 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [1]),
        .O(\Inst_VGA_Draw/p_0_out [1]));
  CARRY4 \rout_reg[3]_i_939 
       (.CI(\rout_reg[3]_i_1011_n_0 ),
        .CO({\rout_reg[3]_i_939_n_0 ,\NLW_rout_reg[3]_i_939_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_653_n_0 ,\rout_reg[3]_i_654_n_0 ,\rout_reg[3]_i_655_n_0 ,\rout_reg[3]_i_656_n_0 }),
        .O({\rout_reg[3]_i_939_n_4 ,\rout_reg[3]_i_939_n_5 ,\rout_reg[3]_i_939_n_6 ,\rout_reg[3]_i_939_n_7 }),
        .S({\rout_reg[3]_i_1012_n_0 ,\rout_reg[3]_i_1013_n_0 ,\rout_reg[3]_i_1014_n_0 ,\rout_reg[3]_i_1015_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \rout_reg[3]_i_94 
       (.I0(\rout_reg[3]_i_55_n_5 ),
        .I1(\rout_reg[3]_i_55_n_6 ),
        .O(\rout_reg[3]_i_94_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_940 
       (.I0(\rout_reg[3]_i_701_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [17]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [19]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [15]),
        .O(\rout_reg[3]_i_940_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_941 
       (.I0(\rout_reg[3]_i_702_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [16]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [18]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [14]),
        .O(\rout_reg[3]_i_941_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_942 
       (.I0(\rout_reg[3]_i_703_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [15]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [17]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [13]),
        .O(\rout_reg[3]_i_942_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_943 
       (.I0(\rout_reg[3]_i_704_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [14]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [16]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [12]),
        .O(\rout_reg[3]_i_943_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rout_reg[3]_i_944 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_944_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rout_reg[3]_i_945 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_945_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \rout_reg[3]_i_946 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [30]),
        .O(\rout_reg[3]_i_946_n_0 ));
  LUT3 #(
    .INIT(8'hED)) 
    \rout_reg[3]_i_947 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .O(\rout_reg[3]_i_947_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF718EFFFF8E71)) 
    \rout_reg[3]_i_948 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [30]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\Inst_VGA_Draw/START[0][0]4 [27]),
        .O(\rout_reg[3]_i_948_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_949 
       (.I0(\rout_reg[3]_i_838_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [30]),
        .O(\rout_reg[3]_i_949_n_0 ));
  LUT6 #(
    .INIT(64'h00FBFFFF00F80000)) 
    \rout_reg[3]_i_95 
       (.I0(\rout_reg[3]_i_223_n_0 ),
        .I1(row_i[1]),
        .I2(row_i[2]),
        .I3(\rout_reg[3]_i_224_n_0 ),
        .I4(O),
        .I5(\rout_reg[3]_i_225_n_0 ),
        .O(\rout_reg[3]_i_95_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_950 
       (.I0(\rout_reg[3]_i_839_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [29]),
        .O(\rout_reg[3]_i_950_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_951 
       (.I0(\rout_reg[3]_i_840_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [24]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [28]),
        .O(\rout_reg[3]_i_951_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_952 
       (.CI(1'b0),
        .CO({\rout_reg[3]_i_952_n_0 ,\NLW_rout_reg[3]_i_952_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_1016_n_0 ,\rout_reg[3]_i_1017_n_0 ,\rout_reg[3]_i_1018_n_0 ,\rout_reg[3]_i_1019_n_0 }),
        .O(\NLW_rout_reg[3]_i_952_O_UNCONNECTED [3:0]),
        .S({\rout_reg[3]_i_1020_n_0 ,\rout_reg[3]_i_1021_n_0 ,\rout_reg[3]_i_1022_n_0 ,\rout_reg[3]_i_1023_n_0 }));
  LUT3 #(
    .INIT(8'h8A)) 
    \rout_reg[3]_i_953 
       (.I0(\rout_reg[3]_i_821_n_5 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [11]),
        .O(\rout_reg[3]_i_953_n_0 ));
  LUT4 #(
    .INIT(16'h028A)) 
    \rout_reg[3]_i_954 
       (.I0(\rout_reg[3]_i_821_n_6 ),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [10]),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [10]),
        .O(\rout_reg[3]_i_954_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \rout_reg[3]_i_955 
       (.I0(\rout_reg[3]_i_821_n_7 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [9]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [9]),
        .O(\rout_reg[3]_i_955_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \rout_reg[3]_i_956 
       (.I0(\rout_reg[3]_i_961_n_4 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [8]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/is_text_pixel5 [8]),
        .O(\rout_reg[3]_i_956_n_0 ));
  LUT5 #(
    .INIT(32'hCCB4334B)) 
    \rout_reg[3]_i_957 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [11]),
        .I1(\rout_reg[3]_i_821_n_5 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [12]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_821_n_4 ),
        .O(\rout_reg[3]_i_957_n_0 ));
  LUT6 #(
    .INIT(64'h5050CF30AFAF30CF)) 
    \rout_reg[3]_i_958 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [10]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [10]),
        .I2(\rout_reg[3]_i_821_n_6 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [11]),
        .I4(\rout_reg[3]_i_23_n_1 ),
        .I5(\rout_reg[3]_i_821_n_5 ),
        .O(\rout_reg[3]_i_958_n_0 ));
  LUT6 #(
    .INIT(64'hB8FF47004700B8FF)) 
    \rout_reg[3]_i_959 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [9]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [9]),
        .I3(\rout_reg[3]_i_821_n_7 ),
        .I4(\rout_reg[3]_i_803_n_0 ),
        .I5(\rout_reg[3]_i_821_n_6 ),
        .O(\rout_reg[3]_i_959_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DFDFDF1F)) 
    \rout_reg[3]_i_96 
       (.I0(\rout_reg[3]_i_226_n_0 ),
        .I1(row_i[2]),
        .I2(O),
        .I3(\rout_reg[3]_i_227_n_0 ),
        .I4(\rout_reg[3]_i_228_n_0 ),
        .I5(\rout_reg[3]_i_229_n_0 ),
        .O(\rout_reg[3]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'hB8FF47004700B8FF)) 
    \rout_reg[3]_i_960 
       (.I0(\Inst_VGA_Draw/is_text_pixel5 [8]),
        .I1(\rout_reg[3]_i_23_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [8]),
        .I3(\rout_reg[3]_i_961_n_4 ),
        .I4(\rout_reg[3]_i_821_n_7 ),
        .I5(\rout_reg[3]_i_808_n_0 ),
        .O(\rout_reg[3]_i_960_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 \rout_reg[3]_i_961 
       (.CI(1'b0),
        .CO({\rout_reg[3]_i_961_n_0 ,\NLW_rout_reg[3]_i_961_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_143_n_5 ,\rout_reg[3]_i_143_n_6 ,\rout_reg[3]_i_143_n_7 ,1'b0}),
        .O({\rout_reg[3]_i_961_n_4 ,\rout_reg[3]_i_961_n_5 ,\rout_reg[3]_i_961_n_6 ,\rout_reg[3]_i_961_n_7 }),
        .S({\rout_reg[3]_i_1024_n_0 ,\rout_reg[3]_i_1025_n_0 ,\rout_reg[3]_i_1026_n_0 ,\rout_reg[3]_i_140_n_4 }));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_962 
       (.I0(\rout_reg[3]_i_822_n_5 ),
        .I1(\rout_reg[3]_i_822_n_7 ),
        .O(\rout_reg[3]_i_962_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_963 
       (.I0(\rout_reg[3]_i_822_n_6 ),
        .I1(\rout_reg[3]_i_143_n_4 ),
        .O(\rout_reg[3]_i_963_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_964 
       (.I0(\rout_reg[3]_i_822_n_7 ),
        .I1(\rout_reg[3]_i_143_n_5 ),
        .O(\rout_reg[3]_i_964_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_965 
       (.I0(\rout_reg[3]_i_143_n_4 ),
        .I1(\rout_reg[3]_i_143_n_6 ),
        .O(\rout_reg[3]_i_965_n_0 ));
  (* HLUTNM = "lutpair69" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_966 
       (.I0(\rout_reg[3]_i_974_n_7 ),
        .I1(\rout_reg[3]_i_853_n_7 ),
        .I2(\rout_reg[3]_i_975_n_7 ),
        .O(\rout_reg[3]_i_966_n_0 ));
  (* HLUTNM = "lutpair68" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_967 
       (.I0(\rout_reg[3]_i_528_n_4 ),
        .I1(\rout_reg[3]_i_529_n_4 ),
        .I2(\rout_reg[3]_i_530_n_4 ),
        .O(\rout_reg[3]_i_967_n_0 ));
  (* HLUTNM = "lutpair67" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_968 
       (.I0(\rout_reg[3]_i_528_n_5 ),
        .I1(\rout_reg[3]_i_529_n_5 ),
        .I2(\rout_reg[3]_i_530_n_5 ),
        .O(\rout_reg[3]_i_968_n_0 ));
  (* HLUTNM = "lutpair66" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \rout_reg[3]_i_969 
       (.I0(\rout_reg[3]_i_528_n_6 ),
        .I1(\rout_reg[3]_i_529_n_6 ),
        .I2(\rout_reg[3]_i_530_n_6 ),
        .O(\rout_reg[3]_i_969_n_0 ));
  LUT4 #(
    .INIT(16'h00F1)) 
    \rout_reg[3]_i_97 
       (.I0(O),
        .I1(\rout_reg[3]_i_230_n_0 ),
        .I2(\rout_reg[3]_i_231_n_0 ),
        .I3(\rout_reg[3]_i_232_n_0 ),
        .O(\rout_reg[3]_i_97_n_0 ));
  (* HLUTNM = "lutpair70" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_970 
       (.I0(\rout_reg[3]_i_974_n_6 ),
        .I1(\rout_reg[3]_i_853_n_6 ),
        .I2(\rout_reg[3]_i_975_n_6 ),
        .I3(\rout_reg[3]_i_966_n_0 ),
        .O(\rout_reg[3]_i_970_n_0 ));
  (* HLUTNM = "lutpair69" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_971 
       (.I0(\rout_reg[3]_i_974_n_7 ),
        .I1(\rout_reg[3]_i_853_n_7 ),
        .I2(\rout_reg[3]_i_975_n_7 ),
        .I3(\rout_reg[3]_i_967_n_0 ),
        .O(\rout_reg[3]_i_971_n_0 ));
  (* HLUTNM = "lutpair68" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_972 
       (.I0(\rout_reg[3]_i_528_n_4 ),
        .I1(\rout_reg[3]_i_529_n_4 ),
        .I2(\rout_reg[3]_i_530_n_4 ),
        .I3(\rout_reg[3]_i_968_n_0 ),
        .O(\rout_reg[3]_i_972_n_0 ));
  (* HLUTNM = "lutpair67" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \rout_reg[3]_i_973 
       (.I0(\rout_reg[3]_i_528_n_5 ),
        .I1(\rout_reg[3]_i_529_n_5 ),
        .I2(\rout_reg[3]_i_530_n_5 ),
        .I3(\rout_reg[3]_i_969_n_0 ),
        .O(\rout_reg[3]_i_973_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_974 
       (.CI(\rout_reg[3]_i_528_n_0 ),
        .CO({\rout_reg[3]_i_974_n_0 ,\NLW_rout_reg[3]_i_974_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_1027_n_0 ,\rout_reg[3]_i_1028_n_0 ,\rout_reg[3]_i_1029_n_0 ,\rout_reg[3]_i_1030_n_0 }),
        .O({\rout_reg[3]_i_974_n_4 ,\rout_reg[3]_i_974_n_5 ,\rout_reg[3]_i_974_n_6 ,\rout_reg[3]_i_974_n_7 }),
        .S({\rout_reg[3]_i_1031_n_0 ,\rout_reg[3]_i_1032_n_0 ,\rout_reg[3]_i_1033_n_0 ,\rout_reg[3]_i_1034_n_0 }));
  CARRY4 \rout_reg[3]_i_975 
       (.CI(\rout_reg[3]_i_530_n_0 ),
        .CO({\rout_reg[3]_i_975_n_0 ,\NLW_rout_reg[3]_i_975_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_918_n_0 ,\rout_reg[3]_i_919_n_0 ,\rout_reg[3]_i_920_n_0 ,\rout_reg[3]_i_921_n_0 }),
        .O({\rout_reg[3]_i_975_n_4 ,\rout_reg[3]_i_975_n_5 ,\rout_reg[3]_i_975_n_6 ,\rout_reg[3]_i_975_n_7 }),
        .S({\rout_reg[3]_i_1035_n_0 ,\rout_reg[3]_i_1036_n_0 ,\rout_reg[3]_i_1037_n_0 ,\rout_reg[3]_i_1038_n_0 }));
  (* HLUTNM = "lutpair39" *) 
  LUT4 #(
    .INIT(16'h1171)) 
    \rout_reg[3]_i_976 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [21]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_976_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT4 #(
    .INIT(16'h1171)) 
    \rout_reg[3]_i_977 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [20]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_977_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT4 #(
    .INIT(16'h1171)) 
    \rout_reg[3]_i_978 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [19]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_978_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT4 #(
    .INIT(16'h44D4)) 
    \rout_reg[3]_i_979 
       (.I0(\rout_reg[3]_i_810_n_1 ),
        .I1(\rout_reg[3]_i_992_n_4 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [18]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .O(\rout_reg[3]_i_979_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \rout_reg[3]_i_98 
       (.I0(\col_reg[10]_3 ),
        .I1(\gameover[1][0] ),
        .I2(\col_reg[10]_2 ),
        .I3(\start[0][0] ),
        .I4(\col_reg[10]_1 ),
        .O(\rout_reg[3]_i_98_n_0 ));
  (* HLUTNM = "lutpair40" *) 
  LUT5 #(
    .INIT(32'h99696696)) 
    \rout_reg[3]_i_980 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [22]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_976_n_0 ),
        .O(\rout_reg[3]_i_980_n_0 ));
  (* HLUTNM = "lutpair39" *) 
  LUT5 #(
    .INIT(32'h99696696)) 
    \rout_reg[3]_i_981 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [21]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_977_n_0 ),
        .O(\rout_reg[3]_i_981_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT5 #(
    .INIT(32'h99696696)) 
    \rout_reg[3]_i_982 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [20]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_978_n_0 ),
        .O(\rout_reg[3]_i_982_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT5 #(
    .INIT(32'h99696696)) 
    \rout_reg[3]_i_983 
       (.I0(\rout_reg[3]_i_862_n_3 ),
        .I1(\rout_reg[3]_i_810_n_1 ),
        .I2(\Inst_VGA_Draw/START[0][0]4 [19]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_979_n_0 ),
        .O(\rout_reg[3]_i_983_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT5 #(
    .INIT(32'h4114BEEB)) 
    \rout_reg[3]_i_984 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [23]),
        .I4(\rout_reg[3]_i_897_n_0 ),
        .O(\rout_reg[3]_i_984_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT5 #(
    .INIT(32'h4114BEEB)) 
    \rout_reg[3]_i_985 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [24]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [22]),
        .I4(\rout_reg[3]_i_898_n_0 ),
        .O(\rout_reg[3]_i_985_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT5 #(
    .INIT(32'h4114BEEB)) 
    \rout_reg[3]_i_986 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [23]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [21]),
        .I4(\rout_reg[3]_i_899_n_0 ),
        .O(\rout_reg[3]_i_986_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT5 #(
    .INIT(32'h4114BEEB)) 
    \rout_reg[3]_i_987 
       (.I0(\rout_reg[3]_i_23_n_1 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [24]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [22]),
        .I3(\Inst_VGA_Draw/START[0][0]4 [20]),
        .I4(\rout_reg[3]_i_900_n_0 ),
        .O(\rout_reg[3]_i_987_n_0 ));
  LUT5 #(
    .INIT(32'h59565659)) 
    \rout_reg[3]_i_988 
       (.I0(\rout_reg[3]_i_926_n_0 ),
        .I1(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I2(\rout_reg[3]_i_23_n_1 ),
        .I3(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I4(\Inst_VGA_Draw/START[0][0]4 [30]),
        .O(\rout_reg[3]_i_988_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT5 #(
    .INIT(32'h0096FF69)) 
    \rout_reg[3]_i_989 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [29]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [24]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [26]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_927_n_0 ),
        .O(\rout_reg[3]_i_989_n_0 ));
  LUT6 #(
    .INIT(64'h8808880888888808)) 
    \rout_reg[3]_i_99 
       (.I0(\rout_reg[3]_i_233_n_0 ),
        .I1(\rout_reg[3]_i_55_n_5 ),
        .I2(\rout_reg[3]_i_234_n_0 ),
        .I3(\rout_reg[3]_i_235_n_0 ),
        .I4(\rout_reg[3]_i_19_0 ),
        .I5(row_i[2]),
        .O(\rout_reg[3]_i_99_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT5 #(
    .INIT(32'h0096FF69)) 
    \rout_reg[3]_i_990 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [28]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [23]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [25]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_928_n_0 ),
        .O(\rout_reg[3]_i_990_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT5 #(
    .INIT(32'h0096FF69)) 
    \rout_reg[3]_i_991 
       (.I0(\Inst_VGA_Draw/START[0][0]4 [27]),
        .I1(\Inst_VGA_Draw/START[0][0]4 [22]),
        .I2(\Inst_VGA_Draw/START[0][0]4 [24]),
        .I3(\rout_reg[3]_i_23_n_1 ),
        .I4(\rout_reg[3]_i_929_n_0 ),
        .O(\rout_reg[3]_i_991_n_0 ));
  CARRY4 \rout_reg[3]_i_992 
       (.CI(\rout_reg[3]_i_811_n_0 ),
        .CO({\rout_reg[3]_i_992_n_0 ,\NLW_rout_reg[3]_i_992_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_1039_n_0 ,\rout_reg[3]_i_1040_n_0 ,\rout_reg[3]_i_1041_n_0 ,\rout_reg[3]_i_1042_n_0 }),
        .O({\rout_reg[3]_i_992_n_4 ,\rout_reg[3]_i_992_n_5 ,\rout_reg[3]_i_992_n_6 ,\rout_reg[3]_i_992_n_7 }),
        .S({\rout_reg[3]_i_1043_n_0 ,\rout_reg[3]_i_1044_n_0 ,\rout_reg[3]_i_1045_n_0 ,\rout_reg[3]_i_1046_n_0 }));
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 \rout_reg[3]_i_993 
       (.CI(1'b0),
        .CO({\rout_reg[3]_i_993_n_0 ,\NLW_rout_reg[3]_i_993_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_1000_n_0 ,\rout_reg[3]_i_1001_n_0 ,\rout_reg[3]_i_1002_n_0 ,1'b0}),
        .O({\NLW_rout_reg[3]_i_993_O_UNCONNECTED [3:1],\rout_reg[3]_i_993_n_7 }),
        .S({\rout_reg[3]_i_1047_n_0 ,\rout_reg[3]_i_1048_n_0 ,\rout_reg[3]_i_1049_n_0 ,\rout_reg[3]_i_1050_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rout_reg[3]_i_994 
       (.CI(\rout_reg[3]_i_1051_n_0 ),
        .CO({\rout_reg[3]_i_994_n_0 ,\NLW_rout_reg[3]_i_994_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_1052_n_4 ,\rout_reg[3]_i_1052_n_5 ,\rout_reg[3]_i_1052_n_6 ,\rout_reg[3]_i_1052_n_7 }),
        .O({\rout_reg[3]_i_994_n_4 ,\rout_reg[3]_i_994_n_5 ,\rout_reg[3]_i_994_n_6 ,\NLW_rout_reg[3]_i_994_O_UNCONNECTED [0]}),
        .S({\rout_reg[3]_i_1053_n_0 ,\rout_reg[3]_i_1054_n_0 ,\rout_reg[3]_i_1055_n_0 ,\rout_reg[3]_i_1056_n_0 }));
  CARRY4 \rout_reg[3]_i_995 
       (.CI(\rout_reg[3]_i_1052_n_0 ),
        .CO({\rout_reg[3]_i_995_n_0 ,\NLW_rout_reg[3]_i_995_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\rout_reg[3]_i_669_n_0 ,\rout_reg[3]_i_670_n_0 ,\rout_reg[3]_i_671_n_0 ,\rout_reg[3]_i_672_n_0 }),
        .O({\rout_reg[3]_i_995_n_4 ,\rout_reg[3]_i_995_n_5 ,\rout_reg[3]_i_995_n_6 ,\rout_reg[3]_i_995_n_7 }),
        .S({\rout_reg[3]_i_1057_n_0 ,\rout_reg[3]_i_1058_n_0 ,\rout_reg[3]_i_1059_n_0 ,\rout_reg[3]_i_1060_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_996 
       (.I0(\rout_reg[3]_i_995_n_4 ),
        .I1(\rout_reg[3]_i_1011_n_4 ),
        .O(\rout_reg[3]_i_996_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_997 
       (.I0(\rout_reg[3]_i_995_n_5 ),
        .I1(\rout_reg[3]_i_1011_n_5 ),
        .O(\rout_reg[3]_i_997_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_998 
       (.I0(\rout_reg[3]_i_995_n_6 ),
        .I1(\rout_reg[3]_i_1011_n_6 ),
        .O(\rout_reg[3]_i_998_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rout_reg[3]_i_999 
       (.I0(\rout_reg[3]_i_995_n_7 ),
        .I1(\rout_reg[3]_i_1011_n_7 ),
        .O(\rout_reg[3]_i_999_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/v_count[0]_i_1_n_0 ),
        .Q(row_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/v_count[10]_i_1_n_0 ),
        .Q(row_i[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/v_count[1]_i_1_n_0 ),
        .Q(row_i[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\v_count[2]_i_1_n_0 ),
        .Q(row_i[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/v_count[3]_i_1_n_0 ),
        .Q(row_i[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\v_count[4]_i_1_n_0 ),
        .Q(row_i[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/v_count[5]_i_1_n_0 ),
        .Q(row_i[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/v_count[6]_i_1_n_0 ),
        .Q(row_i[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/v_count[7]_i_1_n_0 ),
        .Q(row_i[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/v_count[8]_i_1_n_0 ),
        .Q(row_i[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/v_count[9]_i_1_n_0 ),
        .Q(row_i[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB4)) 
    \v_count[2]_i_1 
       (.I0(\i_/v_count[10]_i_5_n_0 ),
        .I1(\v_count_reg_n_0_[1] ),
        .I2(\v_count_reg_n_0_[2] ),
        .O(\v_count[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \v_count[4]_i_1 
       (.I0(\i_/v_count[10]_i_5_n_0 ),
        .I1(\v_count_reg_n_0_[1] ),
        .I2(\v_count_reg_n_0_[2] ),
        .I3(\v_count_reg_n_0_[3] ),
        .I4(\v_count_reg_n_0_[4] ),
        .O(\v_count[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \v_count[9]_i_2 
       (.I0(\i_/v_count[10]_i_5_n_0 ),
        .I1(\v_count_reg_n_0_[1] ),
        .I2(\v_count_reg_n_0_[5] ),
        .I3(\v_count_reg_n_0_[3] ),
        .O(\v_count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/v_count[0]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/v_count[10]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/v_count[1]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\v_count[2]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/v_count[3]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\v_count[4]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/v_count[5]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/v_count[6]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/v_count[7]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/v_count[8]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\i_/v_count[9]_i_1_n_0 ),
        .Q(\v_count_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    v_sync_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(1'b1),
        .Q(VSync_OBUF),
        .R(v_sync0));
endmodule

(* ECO_CHECKSUM = "12a4f93e" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module top
   (clk,
    reset,
    button_up,
    button_down,
    button_left,
    button_right,
    button_center,
    HSync,
    VSync,
    Red,
    Green,
    Blue,
    LEDs,
    LED);
  input clk;
  input reset;
  input button_up;
  input button_down;
  input button_left;
  input button_right;
  input button_center;
  output HSync;
  output VSync;
  output [3:0]Red;
  output [3:0]Green;
  output [3:0]Blue;
  output [4:0]LEDs;
  output [2:0]LED;

  wire [3:0]Blue;
  wire [0:0]Blue_OBUF;
  wire [3:0]Green;
  wire HSync;
  wire HSync_OBUF;
  wire Inst_Buttons_Sync_n_3;
  wire Inst_MainFSM_n_2;
  wire Inst_ScaledString_n_10;
  wire Inst_ScaledString_n_11;
  wire Inst_ScaledString_n_12;
  wire Inst_ScaledString_n_13;
  wire Inst_ScaledString_n_14;
  wire Inst_ScaledString_n_15;
  wire Inst_ScaledString_n_16;
  wire Inst_ScaledString_n_17;
  wire Inst_ScaledString_n_18;
  wire Inst_ScaledString_n_19;
  wire Inst_ScaledString_n_20;
  wire Inst_ScaledString_n_21;
  wire Inst_ScaledString_n_22;
  wire Inst_ScaledString_n_23;
  wire Inst_ScaledString_n_24;
  wire Inst_ScaledString_n_25;
  wire Inst_ScaledString_n_26;
  wire Inst_ScaledString_n_27;
  wire Inst_ScaledString_n_9;
  wire \Inst_VGA_Draw/typeDraw ;
  wire Inst_VGA_Manager_n_3;
  wire Inst_VGA_Manager_n_4;
  wire Inst_VGA_Manager_n_5;
  wire Inst_VGA_Manager_n_6;
  wire Inst_VGA_Manager_n_7;
  wire Inst_VGA_Manager_n_8;
  wire Inst_VGA_Manager_n_9;
  wire [2:0]LED;
  wire [2:0]LED_OBUF;
  wire [4:0]LEDs;
  wire [4:0]LEDs_OBUF;
  wire [3:0]Red;
  wire VSync;
  wire VSync_OBUF;
  wire button_center;
  wire button_center_IBUF;
  wire button_down;
  wire button_down_IBUF;
  wire button_left;
  wire button_left_IBUF;
  wire button_right;
  wire button_right_IBUF;
  wire button_up;
  wire button_up_IBUF;
  wire clk;
  wire clk_CV;
  wire clk_IBUF;
  wire clk_temp;
  wire [64:64]\gameover[0][0] ;
  wire [59:59]\gameover[1][0] ;
  wire [79:79]\gameover[2][0] ;
  wire [79:79]\gameover[3][0] ;
  wire [59:59]\gameover[5][0] ;
  wire [79:79]\gameover[6][0] ;
  wire [79:79]\gameover[8][0] ;
  wire [1:0]mode;
  wire sig_108MHz;
  wire [2:0]sig_buttons;
  wire [69:69]\start[0][0] ;
  wire [79:79]\start[1][0] ;

initial begin
 $sdf_annotate("tb_Main_Game_time_impl.sdf",,,,"tool_control");
end
  OBUF \Blue_OBUF[0]_inst 
       (.I(Blue_OBUF),
        .O(Blue[0]));
  OBUF \Blue_OBUF[1]_inst 
       (.I(Blue_OBUF),
        .O(Blue[1]));
  OBUF \Blue_OBUF[2]_inst 
       (.I(Blue_OBUF),
        .O(Blue[2]));
  OBUF \Blue_OBUF[3]_inst 
       (.I(Blue_OBUF),
        .O(Blue[3]));
  OBUF \Green_OBUF[0]_inst 
       (.I(Blue_OBUF),
        .O(Green[0]));
  OBUF \Green_OBUF[1]_inst 
       (.I(Blue_OBUF),
        .O(Green[1]));
  OBUF \Green_OBUF[2]_inst 
       (.I(Blue_OBUF),
        .O(Green[2]));
  OBUF \Green_OBUF[3]_inst 
       (.I(Blue_OBUF),
        .O(Green[3]));
  OBUF HSync_OBUF_inst
       (.I(HSync_OBUF),
        .O(HSync));
  BUTTONS_Sync Inst_Buttons_Sync
       (.\FSM_onehot_cur_state_reg[0] (Inst_Buttons_Sync_n_3),
        .\FSM_onehot_cur_state_reg[0]_0 (Inst_MainFSM_n_2),
        .LEDs_OBUF(LEDs_OBUF),
        .button_center_IBUF(button_center_IBUF),
        .button_down_IBUF(button_down_IBUF),
        .button_left_IBUF(button_left_IBUF),
        .button_right_IBUF(button_right_IBUF),
        .button_up_IBUF(button_up_IBUF),
        .clk_temp(clk_temp),
        .mode(mode[1]),
        .sig_buttons(sig_buttons));
  Clock_distributor Inst_ClockDistributor
       (.clk(clk_IBUF),
        .clk_CV(clk_CV));
  Clock_Converter Inst_Clock_Converter
       (.clk_CV(clk_CV),
        .clk_temp(clk_temp));
  Main_Game Inst_MainFSM
       (.\FSM_onehot_cur_state_reg[0]_0 (Inst_MainFSM_n_2),
        .\FSM_onehot_cur_state_reg[0]_1 (Inst_Buttons_Sync_n_3),
        .LED_OBUF(LED_OBUF),
        .clk_CV(clk_CV),
        .mode(mode),
        .sig_buttons(sig_buttons),
        .typeDraw(\Inst_VGA_Draw/typeDraw ));
  (* IMPORTED_FROM = "c:/Users/juans/OneDrive/Escritorio/Universidad/Cuarto/Sistemas Electrnicos Digitales/TRABAJO/VHDL-SnakeGame/SnakeGame/SnakeGame.gen/sources_1/ip/PLL100to108/PLL100to108.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* syn_black_box = "TRUE" *) 
  PLL100to108 Inst_PLL
       (.clk_in1(clk_IBUF),
        .clk_out1(sig_108MHz));
  Scaled_String Inst_ScaledString
       (.O(Inst_VGA_Manager_n_3),
        .\char_scaled_reg[0][59] (Inst_ScaledString_n_23),
        .\char_scaled_reg[0][59]_0 (Inst_ScaledString_n_25),
        .\char_scaled_reg[0][59]_1 (Inst_ScaledString_n_27),
        .\char_scaled_reg[15][25] (Inst_ScaledString_n_21),
        .\char_scaled_reg[25][10] (Inst_ScaledString_n_19),
        .\char_scaled_reg[25][5] (Inst_ScaledString_n_14),
        .\char_scaled_reg[25][5]_0 (Inst_ScaledString_n_18),
        .\char_scaled_reg[60][0] (Inst_ScaledString_n_9),
        .\char_scaled_reg[60][0]_0 (Inst_ScaledString_n_10),
        .\char_scaled_reg[60][0]_1 (Inst_ScaledString_n_11),
        .\char_scaled_reg[60][0]_2 (Inst_ScaledString_n_12),
        .\char_scaled_reg[60][0]_3 (Inst_ScaledString_n_16),
        .\char_scaled_reg[60][0]_4 (Inst_ScaledString_n_20),
        .\char_scaled_reg[60][0]_5 (Inst_ScaledString_n_22),
        .\char_scaled_reg[60][25] (Inst_ScaledString_n_15),
        .\char_scaled_reg[60][25]_0 (Inst_ScaledString_n_17),
        .\char_scaled_reg[60][25]_1 (Inst_ScaledString_n_24),
        .\char_scaled_reg[60][5] (Inst_ScaledString_n_13),
        .\char_scaled_reg[60][5]_0 (Inst_ScaledString_n_26),
        .clk_CV(clk_CV),
        .\gameover[0][0] (\gameover[0][0] ),
        .\gameover[1][0] (\gameover[1][0] ),
        .\gameover[2][0] (\gameover[2][0] ),
        .\gameover[3][0] (\gameover[3][0] ),
        .\gameover[5][0] (\gameover[5][0] ),
        .\gameover[6][0] (\gameover[6][0] ),
        .\gameover[8][0] (\gameover[8][0] ),
        .\rout_reg[3]_i_57 (Inst_VGA_Manager_n_8),
        .\rout_reg[3]_i_57_0 (Inst_VGA_Manager_n_7),
        .\rout_reg[3]_i_57_1 (Inst_VGA_Manager_n_6),
        .\rout_reg[3]_i_83 (Inst_VGA_Manager_n_5),
        .\rout_reg[3]_i_84 (Inst_VGA_Manager_n_9),
        .\rout_reg[3]_i_84_0 (Inst_VGA_Manager_n_4),
        .\start[0][0] (\start[0][0] ),
        .\start[1][0] (\start[1][0] ));
  VGA_Manager Inst_VGA_Manager
       (.Blue_OBUF(Blue_OBUF),
        .HSync_OBUF(HSync_OBUF),
        .LED_OBUF(LED_OBUF[0]),
        .O(Inst_VGA_Manager_n_3),
        .VSync_OBUF(VSync_OBUF),
        .clk_out1(sig_108MHz),
        .\col_reg[10] (Inst_VGA_Manager_n_5),
        .\col_reg[10]_0 (Inst_VGA_Manager_n_6),
        .\col_reg[10]_1 (Inst_VGA_Manager_n_7),
        .\col_reg[10]_2 (Inst_VGA_Manager_n_8),
        .\gameover[0][0] (\gameover[0][0] ),
        .\gameover[1][0] (\gameover[1][0] ),
        .\gameover[2][0] (\gameover[2][0] ),
        .\gameover[3][0] (\gameover[3][0] ),
        .\gameover[5][0] (\gameover[5][0] ),
        .\gameover[6][0] (\gameover[6][0] ),
        .\gameover[8][0] (\gameover[8][0] ),
        .mode(mode),
        .\rout_reg[3]_i_117 (Inst_ScaledString_n_22),
        .\rout_reg[3]_i_160 (Inst_ScaledString_n_14),
        .\rout_reg[3]_i_164 (Inst_ScaledString_n_19),
        .\rout_reg[3]_i_177 (Inst_ScaledString_n_23),
        .\rout_reg[3]_i_19 (Inst_ScaledString_n_25),
        .\rout_reg[3]_i_208 (Inst_ScaledString_n_27),
        .\rout_reg[3]_i_208_0 (Inst_ScaledString_n_26),
        .\rout_reg[3]_i_211 (Inst_ScaledString_n_20),
        .\rout_reg[3]_i_32 (Inst_ScaledString_n_11),
        .\rout_reg[3]_i_33 (Inst_ScaledString_n_9),
        .\rout_reg[3]_i_402 (Inst_ScaledString_n_24),
        .\rout_reg[3]_i_52 (Inst_ScaledString_n_21),
        .\rout_reg[3]_i_69 (Inst_ScaledString_n_16),
        .\rout_reg[3]_i_77 (Inst_ScaledString_n_17),
        .\rout_reg[3]_i_78 (Inst_ScaledString_n_15),
        .\rout_reg[3]_i_78_0 (Inst_ScaledString_n_18),
        .\rout_reg[3]_i_79 (Inst_ScaledString_n_10),
        .\rout_reg[3]_i_91 (Inst_ScaledString_n_12),
        .\rout_reg[3]_i_99 (Inst_ScaledString_n_13),
        .\row_reg[2] (Inst_VGA_Manager_n_4),
        .\row_reg[2]_0 (Inst_VGA_Manager_n_9),
        .\start[0][0] (\start[0][0] ),
        .\start[1][0] (\start[1][0] ),
        .typeDraw(\Inst_VGA_Draw/typeDraw ));
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[1]),
        .O(LED[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(LED_OBUF[2]),
        .O(LED[2]));
  OBUF \LEDs_OBUF[0]_inst 
       (.I(LEDs_OBUF[0]),
        .O(LEDs[0]));
  OBUF \LEDs_OBUF[1]_inst 
       (.I(LEDs_OBUF[1]),
        .O(LEDs[1]));
  OBUF \LEDs_OBUF[2]_inst 
       (.I(LEDs_OBUF[2]),
        .O(LEDs[2]));
  OBUF \LEDs_OBUF[3]_inst 
       (.I(LEDs_OBUF[3]),
        .O(LEDs[3]));
  OBUF \LEDs_OBUF[4]_inst 
       (.I(LEDs_OBUF[4]),
        .O(LEDs[4]));
  OBUF \Red_OBUF[0]_inst 
       (.I(Blue_OBUF),
        .O(Red[0]));
  OBUF \Red_OBUF[1]_inst 
       (.I(Blue_OBUF),
        .O(Red[1]));
  OBUF \Red_OBUF[2]_inst 
       (.I(Blue_OBUF),
        .O(Red[2]));
  OBUF \Red_OBUF[3]_inst 
       (.I(Blue_OBUF),
        .O(Red[3]));
  OBUF VSync_OBUF_inst
       (.I(VSync_OBUF),
        .O(VSync));
  IBUF button_center_IBUF_inst
       (.I(button_center),
        .O(button_center_IBUF));
  IBUF button_down_IBUF_inst
       (.I(button_down),
        .O(button_down_IBUF));
  IBUF button_left_IBUF_inst
       (.I(button_left),
        .O(button_left_IBUF));
  IBUF button_right_IBUF_inst
       (.I(button_right),
        .O(button_right_IBUF));
  IBUF button_up_IBUF_inst
       (.I(button_up),
        .O(button_up_IBUF));
  (* OPT_INSERTED *) 
  (* OPT_MODIFIED = "MLO" *) 
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
