`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:45:18 09/06/2022 
// Design Name: 
// Module Name:    Adder_4bit 
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
module Adder_4bit(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output Cout,
    output [3:0] Sum
    );
wire c1, c2, c3;
FullAdder add0 (A[0], B[0], Cin ,Sum[0],c1 );
FullAdder add1 (A[1], B[1], c1 ,Sum[1],c2 );
FullAdder add2 (A[2], B[2], c2 ,Sum[2],c3 );
FullAdder add3 (A[3], B[3], c3 ,Sum[3],Cout );

endmodule
