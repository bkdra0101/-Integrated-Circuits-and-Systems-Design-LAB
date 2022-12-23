module TestCounter;
// Inputs
reg clk;
reg reset;
// Outputs
wire [3:0] q;
// Instantiate the Unit Under Test (UUT)
SynCounter4bit uut (
.clk(clk), 
.reset(reset), 
.q(q)
);
integer i;
initial begin
// Initialize Inputs
clk = 0;
reset = 0;
#10;
reset = 1;
#10;
reset = 0;
// Wait 10 ns for global reset to finish
#10;
for (i=0;i<32;i=i+1)
#10 clk = ~clk;
 // Add stimulus here
end
 endmodule