`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:33:09 12/15/2021 
// Design Name: 
// Module Name:    dec_4x16_d_fault0 
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
module dec_4x16_d_fault8(output [15:0]D, input X,Y,Z,W);
wire [15:0] tmp; 
wire W0;
not(W0,W);
dec_3x8 T1(tmp[7:0],X,Y,Z,W0), T2(tmp[15:8],X,Y,Z,W);
assign D[15:9] = tmp[15:9];
assign D[8] = 0;
assign D[7:0] = tmp[7:0];

endmodule
