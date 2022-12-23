`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:40:50 09/29/2022
// Design Name:   FSM
// Module Name:   E:/ic/FSM/testmachine3.v
// Project Name:  FSM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FSM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testmachine3;

	// Inputs
	reg reset;
	reg clk;
	reg btn;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	FSM uut (
		.reset(reset), 
		.clk(clk), 
		.btn(btn), 
		.q(q)
	);
	
always #10 Clock =~Clock;
	initial begin
		// Initialize Inputs
		reset = 0;
		clk = 0;
		btn = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

