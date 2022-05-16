`timescale 1ns / 1ps



module clk_divide_by_3(clk,rst,clk_div3);
input clk,rst;
output [1:0] clk_div3;
reg  [1:0]cnt;
always@(posedge clk or posedge rst) begin
if(rst) begin
cnt<= 0;
end
else begin
if(cnt == 2'd2)
cnt<=0;
else
cnt <= cnt+1;
end
end 
assign clk_div3 = cnt;




endmodule
