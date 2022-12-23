`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:14:09 09/15/2022 
// Design Name: 
// Module Name:    Clock_1Hz 
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
module Clock_1Hz
#(parameter N= 30, M = 50000000) // for 50Mhz
( input wire clk,
 output wire f
 );
// signal declaration
reg [N-1:0] r_reg;
wire [N-1:0] r_next;
// body, register
always @(posedge clk)
r_reg<=r_next;
// next state logic
assign r_next = (r_reg>=M)?0:r_reg + 1;
// output logic 
//assign f=(r_reg>M/2)?1:0;
 assign f=r_reg[25] ;
endmodule
