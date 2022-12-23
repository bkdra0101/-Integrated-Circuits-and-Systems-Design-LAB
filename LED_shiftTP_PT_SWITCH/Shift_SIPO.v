`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:13:18 09/15/2022 
// Design Name: 
// Module Name:    Shift_SIPO 
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
module Shift_SIPO
( 
 input wire clk,s_in,lr, 
 output wire [7:0] q_out 
 );
// signal declaration
reg [7:0] r_reg;
wire [7:0] r_next;
// body, register
always@(negedge clk)
r_reg<=r_next; 
// next state logic
assign r_next =(lr==1) ? {s_in,r_reg[7:1]}:{r_reg[6:0],s_in};
// output logic 
assign q_out= r_reg;
endmodule
