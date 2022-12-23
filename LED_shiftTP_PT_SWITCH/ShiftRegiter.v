`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:41 09/15/2022 
// Design Name: 
// Module Name:    ShiftRegiter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ShiftRegiter(
   input wire clk, lr,
output wire [7:0] q);
wire clk_o ;	
wire s_in;
// module instance
Clock_1Hz clockdivider (clk,clk_o) ;
Shift_SIPO SIPO (clk_o,s_in,lr, q);
assign s_in =(lr == 1)?~q[0]: ~q[7] ;
endmodule