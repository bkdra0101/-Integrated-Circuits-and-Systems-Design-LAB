`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:08:10 09/06/2022
// Design Name:   Adder_4bit
// Module Name:   E:/ic/Adder_4bit/Testbench_add.v
// Project Name:  Adder_4bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Adder_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_add;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire Cout;
	wire [3:0] Sum;

	// Instantiate the Unit Under Test (UUT)
	Adder_4bit uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.Cout(Cout), 
		.Sum(Sum)
	);

	initial begin
		// Initialize Inputs
		A = 2;
		B = 3;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

