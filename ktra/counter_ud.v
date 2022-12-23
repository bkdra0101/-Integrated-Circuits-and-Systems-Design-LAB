`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:47:00 10/06/2022 
// Design Name: 
// Module Name:    counter_ud 
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
module counter_ud(
   input wire clk, reset,
//input wire [1:0] SW,
input wire UD,
output wire [3:0] LED 
 );
// wire declaration
//wire  f;
//wire clk_o ;
// module instance
//Clock_div clockdivider (clk,reset, f) ;
CounterUD counter (clk, reset,UD,LED);

endmodule
