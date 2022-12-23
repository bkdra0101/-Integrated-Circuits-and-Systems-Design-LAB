`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:50:05 10/12/2022
// Design Name:   fsm2
// Module Name:   E:/ic/ktra_fsm2/test.v
// Project Name:  ktra_fsm2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fsm2
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
	reg clk;
	reg reset;
	reg a;
	reg b;

	// Outputs
	wire y0;
	wire yl;

	// Instantiate the Unit Under Test (UUT)
	fsm2 uut (
		.clk(clk), 
		.reset(reset), 
		.a(a), 
		.b(b), 
		.y0(y0), 
		.yl(yl)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		a = 0;
		b = 0;
		#100;
		// Wait 100 ns for global reset to finish
	/*	reset=1;
		
		
		
		a=1;
		b=1;
		#50
		
		a=0;
		b=1;
		#50;
		
		a=0;
		b=0;
		#50;
		
		//----------------------
		a=1;
		b=0;
		#50;
		
		a=0; // th? nút
		b=1;
		#50;
		b=0;
		#50;
		
		
		a=1; // quay v? s0
		#50;
		
		a=0;
		#50
		
		a=1; // ph? thu?c vào b
		
		
		
		
		
		*/
		
		
        
		// Add stimulus here

	end
	
	always
	begin
	clk=~clk;
	#10;
	
	
	end
      
endmodule

