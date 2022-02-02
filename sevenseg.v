`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:09:03 02/02/2022 
// Design Name: 
// Module Name:    sevenseg 
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
module sevenseg(
input [3:0] display,
output reg [6:0] seg
    );
	 
	 always (display)
	 begin
	 case(display)
	 0:seg=7'b1110001; //L
	 1:seg=7'b1000001;//U
	 2:seg=7'b0111000; //F
	 3:seg=7'b0000001;//O
	 4:seg=7'b0011000;//P
	 5:seg=7'b0110000;//E
	 6:seg=7'b1101010;//N
endcase
end
	 


endmodule
