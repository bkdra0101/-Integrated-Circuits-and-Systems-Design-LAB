`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:25:48 10/06/2022
// Design Name:   counter_ud
// Module Name:   E:/ic/ktra/test.v
// Project Name:  ktra
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter_ud
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
	reg UD;

	// Outputs
	wire [3:0] LED;

	// Instantiate the Unit Under Test (UUT)
	counter_ud uut (
		.clk(clk), 
		.reset(reset), 
		.UD(UD), 
		.LED(LED)
	);

	
		initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		//SW = 0;
		UD = 1;

		// Wait 100 ns for global reset to finish
		#10;
		reset = 1;
		#10;
		reset = 0;
		#10;
		reset =1;

		#210;
		
		UD=1;
		#30;
		UD=0;
		
		#200;
		UD=1;
		#200;
		
		
	end	
		
		always 
		begin 
		 #10;
		clk=~clk;
		end
		
        
		// Add stimulus here

	
      

      
endmodule

