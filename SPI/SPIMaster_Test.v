`timescale 1ns / 1ps

module SPIMaster_Test;
wire [7:0] out_data;
wire mosi;
wire miso;
wire sclk;
wire [7:0] mastershift;
wire [7:0] slaveshift;
reg clk;
reg cs;
reg wr;
reg rd;
reg [7:0] in_data;
reg [1:0] div;

	// Instantiate the Unit Under Test (UUT)
	SPI_Master uut (
out_data,
mosi,
miso,
sclk,
mastershift,
slaveshift,
clk,
cs,
wr,
rd,
in_data,
div
 );

	initial begin
	clk=0;
	forever #10 clk=!clk;
	end
	
	initial begin
	rd=0;
	cs=0;
	wr=0;
	div=0;	
	
	in_data= 8'b11001010;	
	cs=1;
	wr=1; #20;
	cs=0;
	wr=0;
	
	#1000;
	
	in_data= 8'b01010001;	
	cs=1;
	wr=1; #20;
	cs=0;
	wr=0;
	
	#1000;
		
	cs=1;
	rd=1; #20;
	cs=0;
	rd=0;
	
	#1000;
	
	in_data= 8'b01010001;	
	cs=1;
	wr=1; #20;
	cs=0;
	wr=0;
	
	end
      
endmodule

