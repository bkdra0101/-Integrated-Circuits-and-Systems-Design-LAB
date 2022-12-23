`timescale 1ns / 1ps

module ShiftRegister(
input clk,
inout [7:0] n);
reg [7:0] n_buf;

always @(posedge clk)
	n_buf<= (n<<1);


endmodule
