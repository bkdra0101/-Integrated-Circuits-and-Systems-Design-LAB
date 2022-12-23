`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:20:22 09/15/2022 
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
input wire clk, 
input wire s_in,
output wire s_out 
 );
 
 wire clk_o ;
// module instance
Clock_1Hz clockdivider (clk, clk_o) ;
Shift_SISO SISO (clk_o,s_in,s_out);
endmodule



