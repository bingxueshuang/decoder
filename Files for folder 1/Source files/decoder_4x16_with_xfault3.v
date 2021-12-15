`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:26:47 12/04/2021 
// Design Name: 
// Module Name:    decoder_4x16_with_xfault3.v 
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
module decoder_4x16_with_xfault3(
    input [3:0] d_in,
    output [15:0] d_out
    );

parameter tmp = 16'b0000_0000_0000_0001;
wire [3:0] tmp2 = (d_in&(4'b1000)) ? (4'b1011)&d_in : d_in;
	
assign d_out = (tmp2 == 4'b0000) ? tmp :
               (tmp2 == 4'b0001) ? tmp<<1 :
					(tmp2 == 4'b0010) ? tmp<<2 :
					(tmp2 == 4'b0011) ? tmp<<3 :
					(tmp2 == 4'b0100) ? tmp<<4 :
					(tmp2 == 4'b0101) ? tmp<<5 :
					(tmp2 == 4'b0110) ? tmp<<6 :
					(tmp2 == 4'b0111) ? tmp<<7 :
					(tmp2 == 4'b1000) ? tmp<<8 :
					(tmp2 == 4'b1001) ? tmp<<9 :
					(tmp2 == 4'b1010) ? tmp<<10 :
					(tmp2 == 4'b1011) ? tmp<<11 :
					(tmp2 == 4'b1100) ? tmp<<12 :
					(tmp2 == 4'b1101) ? tmp<<13 :
					(tmp2 == 4'b1110) ? tmp<<14 :
					(tmp2 == 4'b1111) ? tmp<<15 : 
					16'bxxxx_xxxx_xxxx_xxxx;

endmodule
