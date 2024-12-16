`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Digilent Inc.
// Engineer: Thomas Kappenman
// 
// Create Date:    03/03/2015 09:08:33 PM 
// Design Name: 
// Module Name:    seg7decimal 
// Project Name: Nexys4DDR Keyboard Demo
// Target Devices: Nexys4DDR
// Tool Versions: 
// Description: 7 segment display driver
// 
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module seg7decimal(

	input [31:0] x,
    input clk,
    output reg [6:0] seg,
    output reg [7:0] an,
    output wire dp 
	 );
	 
	 
wire [2:0] s; 	 
reg [3:0] digit;
reg [19:0] clkdiv;
reg [31:0] display_data;

assign dp = 1;
assign s = clkdiv[19:17];

// Update display_data based on input keys (A, W, S, D)
always @(posedge clk) begin
    case (x[7:0])
        8'h1C: display_data <= 32'h1A10A10B; // Key 'A' -> "ARRIBA" (A-R-R-I)
        8'h1D: display_data <= 32'h1A11B10B; // Key 'W' -> "ABAJO" (A-B-A-J)
        8'h1B: display_data <= 32'h10C14C14; // Key 'S' -> "IZQ"   (I-Z-Q)
        8'h23: display_data <= 32'h1D13C1A1; // Key 'D' -> "DCH"   (D-C-H)
        default: display_data <= 32'h00000000; // Blank
    endcase
end

// quad 4to1 MUX.
always @(posedge clk) begin
	case(s)
		0: digit = display_data[3:0];
		1: digit = display_data[7:4];
		2: digit = display_data[11:8];
		3: digit = display_data[15:12];
		4: digit = display_data[19:16];
		5: digit = display_data[23:20];
		6: digit = display_data[27:24];
		7: digit = display_data[31:28];
		default: digit = 4'hF; // Blank digit
	endcase
end

//decoder or truth-table for 7seg display values
always @(*) begin
	case(digit)
		0: seg = 7'b1000000; // 0
		1: seg = 7'b1111001; // 1
		2: seg = 7'b0100100; // 2
		3: seg = 7'b0110000; // 3
		4: seg = 7'b0011001; // 4
		5: seg = 7'b0010010; // 5
		6: seg = 7'b0000010; // 6
		7: seg = 7'b1111000; // 7
		8: seg = 7'b0000000; // 8
		9: seg = 7'b0010000; // 9
		'hA: seg = 7'b0001000; // A
		'hB: seg = 7'b0000011; // B
		'hC: seg = 7'b1000110; // C
		'hD: seg = 7'b0100001; // D
		'hE: seg = 7'b0000110; // E
		'hF: seg = 7'b0001110; // Blank
		default: seg = 7'b0000000; // U
	endcase
end

// Activate specific digit
always @(*) begin
	an = 8'b11111111; // All digits off by default
	an[s] = 0; // Activate the current digit
end

// Clock divider
always @(posedge clk) begin
	clkdiv <= clkdiv + 1;
end

endmodule
