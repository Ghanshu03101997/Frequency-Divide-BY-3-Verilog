`timescale 1ns / 1ps



module test_bench();
reg clk,rst;
wire clk_div3;
clk_divide_by_3 gh1(clk,rst,clk_div3);
initial
begin
rst=1; clk=0;
#10 rst=0; clk=1;
end
 always #5 clk =~clk;
 
endmodule
