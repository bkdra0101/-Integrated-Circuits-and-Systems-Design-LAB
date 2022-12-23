`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:15:28 10/13/2022
// Design Name:   simple
// Module Name:   E:/ic/finite_state_machine/test.v
// Project Name:  finite_state_machine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: simple
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
	reg Clock;
	reg Resetn;
	reg w;

	// Outputs
	wire z;
	wire [2:1] ht;

	// Instantiate the Unit Under Test (UUT)
	simple uut (
		.Clock(Clock), 
		.Resetn(Resetn), 
		.w(w), 
		.z(z), 
		.ht(ht)
	);

	always #10 Clock=~Clock;
	initial begin
		// Initialize Inputs
		Clock = 0;
		Resetn = 0;
		w = 0;

		// Wait 100 ns for global reset to finish
		#100;
		Resetn =1;
		w=1;
		#40;
		w=0;
		
		#20;
		w=1;
		#130;
		w=0;
		
		#30;
		
		w=1;
		#30;
		w=0;
		#20;
		w=1;
		#20;
	
        
		// Add stimulus here

	end
      
endmodule

