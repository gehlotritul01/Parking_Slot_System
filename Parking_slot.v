`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: RIRI COROPORATION
// Engineer: RIRI
// 
// Create Date:     
// Design Name: 
// Module Name:    Parking_slot 
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
module Parking_slot(
input clock,
input [4:0] parking_slots,
output reg [4:0] parking_slots_available,
output [6:0] seg,
output reg [3:0] an
    );
reg [3:0] display;
sevenseg ss0(display,seg);


wire slowclock_100Hz;
slowclock_100Hz sclk(clock,slowclock_100Hz);
reg [1:0] enable=0;

always@(parking_slots)
begin
case(parking_slots)
0:parking_slots_available=5'b11111;
1:parking_slots_available=5'b11110;
2:parking_slots_available=5'b11101;
3:parking_slots_available=5'b11100;
4:parking_slots_available=5'b11011;
5:parking_slots_available=5'b11010;
6:parking_slots_available=5'b11001;
7:parking_slots_available=5'b11000;
8:parking_slots_available=5'b10111;
9:parking_slots_available=5'b10110;
10:parking_slots_available=5'b10101;
11:parking_slots_available=5'b10100;
12:parking_slots_available=5'b10011;
13:parking_slots_available=5'b10010;
14:parking_slots_available=5'b10001;
15:parking_slots_available=5'b10000;
16:parking_slots_available=5'b01111;
17:parking_slots_available=5'b01110;
18:parking_slots_available=5'b01101;
19:parking_slots_available=5'b01100;
20:parking_slots_available=5'b01011;
21:parking_slots_available=5'b01010;
22:parking_slots_available=5'b01001;
23:parking_slots_available=5'b01000;
24:parking_slots_available=5'b00111;
25:parking_slots_available=5'b00110;
26:parking_slots_available=5'b00101;
27:parking_slots_available=5'b00100;
28:parking_slots_available=5'b00011;
29:parking_slots_available=5'b00010;
30:parking_slots_available=5'b00001;
31:parking_slots_available=5'b00000;

end
always @(posedge slowclock_100Hz)
begin

enable <= enable +1
end

always @(posedge slowclock_100Hz)
begin

if(parking_slots[0] & parking_slots[1] & parking_slots[2] & parking_slots[3] & parking_slots[4])

begin
case(enable)
2'b00:
begin
display =0;
an= 4'b1110;
end

2'b01:
begin
display =0;
an= 4'b1101;
end

2'b10:
begin
display =1;
an= 4'b1011;
end

2'b11:
begin
display =2;
an= 4'b0111;
end
endcase
end
else if((parking_slots[0] & parking_slots[1] & parking_slots[2] & parking_slots[3] & parking_slots[4])!=1)
begin
case(enable)


2'b00:
begin
display =6;
an= 4'b1110;
end

2'b01:
begin
display =5;
an= 4'b1101;
end

2'b10:
begin
display =4;
an= 4'b1011;

2'b11:
begin
display =3;
an= 4'b0111;
end
endcase
end 
end


endmodule
