

/* This file is part of JT51.

 
	JT51 program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	JT51 program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with JT51.  If not, see <http://www.gnu.org/licenses/>.

	Based on Sauraen VHDL version of OPN/OPN2, which is based on die shots.

	Author: Jose Tejada Gomez. Twitter: @topapate
	Version: 1.0
	Date: 14-4-2017	

*/

// altera message_off 10030

module jt51_phrom
(
	input [4:0] addr,
	input clk,
	input cen,
	output reg [45:0] ph
);

	reg [45:0] sinetable[31:0];
	initial
	begin
	sinetable[5'd0 ] = 46'b0001100000100100010001000010101010101001010010;
	sinetable[5'd1 ] = 46'b0001100000110100000100000010010001001101000001;
	sinetable[5'd2 ] = 46'b0001100000110100000100110010001011001101100000;
	sinetable[5'd3 ] = 46'b0001110000010000000000110010110001001101110010;
	sinetable[5'd4 ] = 46'b0001110000010000001100000010111010001101101001;
	sinetable[5'd5 ] = 46'b0001110000010100001001100010000000101101111010;
	sinetable[5'd6 ] = 46'b0001110000010100001101100010010011001101011010;
	sinetable[5'd7 ] = 46'b0001110000011100000101010010111000101111111100;
	sinetable[5'd8 ] = 46'b0001110000111000000001110010101110001101110111;
	sinetable[5'd9 ] = 46'b0001110000111000010100111000011101011010100110;
	sinetable[5'd10] = 46'b0001110000111100011000011000111100001001111010;
	sinetable[5'd11] = 46'b0001110000111100011100111001101011001001110111;
	sinetable[5'd12] = 46'b0100100001010000010001011001001000111010110111;
	sinetable[5'd13] = 46'b0100100001010100010001001001110001111100101010;
	sinetable[5'd14] = 46'b0100100001010100010101101101111110100101000110;
	sinetable[5'd15] = 46'b0100100011100000001000011001010110101101111001;
	sinetable[5'd16] = 46'b0100100011100100001000101011100101001011101111;
	sinetable[5'd17] = 46'b0100100011101100000111011010000001011010110001;
	sinetable[5'd18] = 46'b0100110011001000000111101010000010111010111111;
	sinetable[5'd19] = 46'b0100110011001100001011011110101110110110000001;
	sinetable[5'd20] = 46'b0100110011101000011010111011001010001101110001;
	sinetable[5'd21] = 46'b0100110011101101011010110101111001010100001111;
	sinetable[5'd22] = 46'b0111000010000001010111000101010101010110010111;
	sinetable[5'd23] = 46'b0111000010000101010111110111110101010010111011;
	sinetable[5'd24] = 46'b0111000010110101101000101100001000010000011001;
	sinetable[5'd25] = 46'b0111010010011001100100011110100100010010010010;
	sinetable[5'd26] = 46'b0111010010111010100101100101000000110100100011;
	sinetable[5'd27] = 46'b1010000010011010101101011101100001110010011010;
	sinetable[5'd28] = 46'b1010000010111111111100100111010100010000111001;
	sinetable[5'd29] = 46'b1010010111110100110010001100111001010110100000;
	sinetable[5'd30] = 46'b1011010111010011111011011110000100110010100001;
	sinetable[5'd31] = 46'b1110011011110001111011100111100001110110100111;

	end

	always @ (posedge clk) if(cen)
		ph <= sinetable[addr];

endmodule
