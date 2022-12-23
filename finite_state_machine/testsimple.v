`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:41:52 09/29/2022
// Design Name:   simple
// Module Name:   E:/ic/finite_state_machine/testsimple.v
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

module testsimple;

	// Inputs
	reg Clock;
	reg Resetn;
	reg w;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	simple uut (
		.Clock(Clock), 
		.Resetn(Resetn), 
		.w(w), 
		.z(z),
		.y(y),
		.Y(Y)
	);
always #10 Clock =~Clock;
	initial begin
		// Initialize Inputs
		Clock = 0;
		Resetn = 0;
		w = 0;
	#50;
	Resetn =1;
	#50;
	w=1;
	#50;
	w=1;
	#50;
	w=1;
	
	
	#50;
	w=0;
	
	#50;
	w=0;
	#50;
	w=0;
	#50;
	w=0;
	#50;
	w=0;
	
	#50;
	Resetn =1;
	#50;
	w=1;
	#50;
	w=0;
	
	#50;
	w=1;
	#50;
	w=1;
	
	
	end
      
endmodule

