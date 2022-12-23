`timescale 1ns / 1ps


module Test_LatchD;

	// Inputs
	reg clk;
	reg d;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	Lactch_D uut (
		.clk(clk), 
		.d(d), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		d = 1;
		clk = 0;
		forever #10 clk=!clk;
		
        
		// Add stimulus here

	end
      
endmodule

