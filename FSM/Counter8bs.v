`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:48:56 09/22/2022 
// Design Name: 
// Module Name:    Counter8bs 
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
module Counter8bs
#(parameter N= 8) // 500,000,000 for 0.1Hz 
( input wire clk,reset,
 output wire [7:0]q
 );
// signal declaration
reg [N-1:0] r_reg;
wire [N-1:0] r_next;
// body, register
always @(posedge clk, posedge reset) 
 if (reset)
 r_reg<=0;
 else 
 r_reg<=r_next;
// next state logic
assign r_next = r_reg + 1;
// output logic 
assign q=r_reg;
endmodule
