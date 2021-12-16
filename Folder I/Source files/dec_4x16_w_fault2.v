`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:08:01 12/15/2021 
// Design Name: 
// Module Name:    dec_4x16_w_fault2 
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
module dec_4x16_w_fault2(output [15:0]D, input X,Y,Z,W);
wire W0;
not(W0,W);//SA0 fault at w wire going throgh second decoder 
dec_3x8 T1(D[7:0],X,Y,Z,W0), T2(D[15:8],X,Y,Z,0);

endmodule