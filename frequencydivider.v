module frequencydivider( clk,newclk);
input clk;
output reg newclk =0;
reg [4:0]count=0;
always@(posedge clk)
begin
count = count + 1'b1;
newclk = count[4];
end
endmodule 
// example program
// example 2
// example 3
// example 4

// add new branch 
// add new branch 2
