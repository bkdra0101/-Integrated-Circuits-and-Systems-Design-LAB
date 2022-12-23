`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:05:19 10/12/2022 
// Design Name: 
// Module Name:    adder_3bit 
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
module adder_3bit(
 input wire [2:0] A,
 input wire [2:0] B,
 input wire Cin,
 output wire Cout,
 output wire [2:0] Sum
 );
wire c1, c2;
full_adder add0 (A[0], B[0], Cin ,Sum[0],c1 );
full_adder add1 (A[1], B[1], c1 ,Sum[1],c2 );

full_adder add2 (A[2], B[2], c2 ,Sum[2],Cout );


endmodule
