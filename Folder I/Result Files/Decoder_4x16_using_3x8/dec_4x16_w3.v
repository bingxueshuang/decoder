`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:09:42 12/15/2021
// Design Name:   dec_4x16_w_fault3
// Module Name:   /home/ise/ise_projects/Decoder_4x16_using_3x8/dec_4x16_w3.v
// Project Name:  Decoder_4x16_using_3x8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dec_4x16_w_fault3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dec_4x16_w3;

	// Inputs
	reg X;
	reg Y;
	reg Z;
	reg W;

	// Outputs
	wire [15:0] D;

	// Instantiate the Unit Under Test (UUT)
	dec_4x16_w_fault3 uut (
		.D(D), 
		.X(X), 
		.Y(Y), 
		.Z(Z), 
		.W(W)
	);

	initial begin
		// Initialize Inputs
		X = 0;
		Y = 0;
		Z = 0;
		W = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

