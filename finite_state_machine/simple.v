`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:35:30 09/22/2022 
// Design Name: 
// Module Name:    simple 
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
module simple (
input Clock, Resetn, w, 
		output z, //output reg [2:1]y, 
		output [2:1]ht);


//input Clock, Resetn, w; output z, output reg [2:1] y, Y;
//reg [2:1] y, Y;
reg [2:1] y ,Y;
parameter [2:1] A = 2'b00, B = 2'b01, C = 2'b10;
// Define the next state combinational circuit
always @(w, y)
case (y)
A: if (w) Y = B;
else Y = A;
B: if (w) Y = C;
else Y = A;
C: if (w==0) Y = C;
else Y = A;
default: Y = 2'bxx;
endcase
// Define the sequential block
always @(negedge Resetn, posedge Clock)
if (Resetn == 0) y <= A;
else y <= Y;
// Define output
assign z = (y == C)||(y==B);
assign ht=y;
endmodule
