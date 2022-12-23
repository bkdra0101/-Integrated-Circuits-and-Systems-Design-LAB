`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:25:28 10/12/2022 
// Design Name: 
// Module Name:    fsm2 
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
module fsm2( 
input wire clk , reset , 
input wire a , b , 
output wire y0, yl );
//symbolic state declaration 
localparam [1:0] S0 = 2'b00, S1 = 2'b01 , S2=2'b10; 
// signal declaration 
reg [1 : 0] state_reg,state_next ; 
 // state register
always @ (posedge clk ,posedge reset) 
if (reset)
state_reg<=S0;
else
state_reg<=state_next;
//next_state logic

always @*
case (state_reg)
S0: if(a)
 if(b)
 state_next=S2;
 else
 state_next=S1;
 else
 state_next=S0; S1: if(a)
 state_next=S0;
 else
 state_next=S1;
S2: state_next=S0;
default: state_next=S0;
endcase


//Moore outputlogic
//assign y1=~((state_reg==S0)||(state_reg==S1));

assign y1= ((state_reg==S0)||(state_reg==S1));
//Mealy outputlogic
assign y0=(state_reg==S0)&a&b; 
endmodule
