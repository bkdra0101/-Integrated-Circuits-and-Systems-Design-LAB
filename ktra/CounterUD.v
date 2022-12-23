`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:52:38 10/06/2022 
// Design Name: 
// Module Name:    CounterUD 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module CounterUD
   #(parameter N= 4) // 500,000,000 for 0.1Hz 
( input wire clk,reset,ud,
 output wire [3:0]q
 );
// signal declaration
reg [N-1:0] r_reg;
wire [N-1:0] r_next;
// body, register
always @(posedge clk, negedge reset) 
begin
 if (reset==0)
 r_reg<=0;
 else 
 r_reg<=r_next;
 
end
		 
		 // next state logic
	assign r_next = (r_reg==9 && ud==1)?0: ((r_reg==0 && ud==0)?9:((ud==1)?r_reg + 1:r_reg - 1));
//((ud==1)? r_reg + 1:((r_reg==4'b0000 && ud==0 )?9 :((ud==0)? r_reg - 1:)));
		// output logic 
		assign q=r_reg;


endmodule
