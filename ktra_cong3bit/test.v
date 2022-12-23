`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:15:55 10/12/2022
// Design Name:   adder_3bit
// Module Name:   E:/ic/ktra_cong3bit/test.v
// Project Name:  ktra_cong3bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_3bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [2:0] A;
	reg [2:0] B;
	reg Cin;

	// Outputs
	wire Cout;
	wire [2:0] Sum;

	// Instantiate the Unit Under Test (UUT)
	adder_3bit uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.Cout(Cout), 
		.Sum(Sum)
	);

	initial begin
#5;
A=0;
B=0;
Cin=0;

#5;
A=2;
B=3;

#5;
Cin=1;

#5;
Cin=0;
A= 3'b101;

#5;
B=3'b111;

#5;
Cin=0;
#5;
#5;


	end
	
	
      
endmodule

