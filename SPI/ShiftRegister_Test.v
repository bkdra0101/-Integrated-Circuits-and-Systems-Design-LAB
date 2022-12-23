`timescale 1ns / 1ps


module ShiftRegister_Test;

	// Inputs
	reg clk;

	// Bidirs
	wire [7:0] n;

	// Instantiate the Unit Under Test (UUT)
	ShiftRegister uut (
		.clk(clk), 
		.n(n)
	);

	initial begin
		clk = 0;
		forever #10 clk=!clk;
        

	end
      
endmodule

