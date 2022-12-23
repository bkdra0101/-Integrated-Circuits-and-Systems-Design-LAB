`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:51:02 10/06/2022 
// Design Name: 
// Module Name:    Clock_div 
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
module Clock_div
    #(parameter N= 4, M = 10_000_000) 
( input wire clk, reset,
 output wire q
 );
// signal declaration
reg [N-1:0] r_reg;
wire [N-1:0] r_next;
// body, register
always @(posedge clk, negedge reset)
if (reset==0)
r_reg <= 0;
else 
r_reg<=r_next;
// next state logic
assign r_next = (r_reg==M)?0:r_reg + 1;
// output logic 
assign q=(r_reg<M/2)?0:1;


endmodule
