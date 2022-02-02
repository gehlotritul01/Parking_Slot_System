`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Personal
// Engineer: Ritul
// 
// Create Date:    21:55:47 02/02/2022 
// Design Name: 
// Module Name:    slowclock_100Hz 
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
module slowclock_100Hz(input clk_in,  //Basys 3 Board 100 MHz
output reg clk_out); //100MHz
reg [20:0] period_count=0;
always @ (posedge clk_in)

if (period_count !=500000-1) //1M/2
begin
period_count<= period_count+1;
clk_out<=0;
end
else
begin
period_count <=0;
clk_out <=1;
end
endmodule
