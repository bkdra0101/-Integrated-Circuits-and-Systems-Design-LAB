`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:24:51 09/29/2022
// Design Name:   fsmegmultseg
// Module Name:   E:/ic/finte_state_machine_2/testmachine2.v
// Project Name:  finte_state_machine_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fsmegmultseg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testmachine2;

	// Inputs
	reg clk;
	reg reset;
	reg a;
	reg b;

	// Outputs
	wire y0;
	wire yl;

	// Instantiate the Unit Under Test (UUT)
	fsmegmultseg uut (
		.clk(clk), 
		.reset(reset), 
		.a(a), 
		.b(b), 
		.y0(y0), 
		.yl(yl)
	);
	
always #10 Clock =~Clock;
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

