`timescale 1ns / 1ps
module SPI_Master(
output reg [7:0] out_data,
output mosi,
output  miso,
output sclk,
output [7:0] mastershift,
output [7:0] slaveshift,
input clk,
input cs,
input wr,
input rd,
input [7:0] in_data,
input [1:0] div
);
reg busy =0;
reg sclk =0;
reg [4:0] sclk_cnt=0;
reg [4:0] div_cnt=4'b0001;
reg [7:0] mastershift;
reg [7:0] slaveshift;
reg out;
reg miso = 0;
reg mosi = 0;
wire mosi_buf;
wire miso_buf;
wire [4:0]clk_div;

assign mosi_buf = mastershift[7];
assign miso_buf = slaveshift[7];
	 
assign clk_div = (div==0)? 2: ((div==1)? 4: ((div==2)? 8: 16));
always @(posedge sclk) 
begin	
	mosi = mosi_buf;
	miso = miso_buf;
	mastershift = (mastershift<<1) | miso;	
	slaveshift = (slaveshift<<1) | mosi;
end

always @(posedge clk) 
begin
	if (!busy)
		begin
			if (cs && wr)
			begin			
				mastershift <= in_data;
				slaveshift <= 8'b0;
				busy<=1;
				out <=0;
			end
			else 
				if (cs && rd)
				begin
					busy<=1;					
					out <=1;					
				end
		end
	else
		begin
			if (!out) out_data <= 8'bxxxxxxxx;
			div_cnt<=div_cnt+1;
			if (div_cnt>=clk_div)
			begin
				div_cnt<=1;
				sclk<=!sclk;
				if (!sclk) sclk_cnt<=sclk_cnt+1;
				if (sclk_cnt==8) 
				begin
					busy<=0;
					sclk_cnt<=0;					
					if (out) out_data<=mastershift;
				end
			end
		end
end
endmodule
