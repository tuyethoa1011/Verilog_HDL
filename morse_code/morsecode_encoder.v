//letter selection logic

module morsecode_encoder(letter_in,morsecode_length,morsecode_shiftreg);
	
	parameter A = 3'b000,
				 B = 3'b001,
				 C = 3'b010,
				 D = 3'b011,
				 E = 3'b100,
				 F = 3'b101,
				 G = 3'b110,
				 H = 3'b111;
	
	input [2:0] letter_in;
	
	output reg [3:0] morsecode_length;
	output reg [10:0] morsecode_shiftreg;
	
	//1: dot 111:dash 0: off light
	
	always@(*)
	begin
		case(letter_in)
			A: begin
				morsecode_length = 4'b0101; //5
				morsecode_shiftreg = 11'b00000011101; 
			end
			B: begin
				morsecode_length = 4'b1001; //9
				morsecode_shiftreg = 11'b00101010111; 
			end
			C: begin
				morsecode_length = 4'b1011; //11
				morsecode_shiftreg = 11'b10111010111; 
			end
			D: begin
				morsecode_length = 4'b1000;  //7
				morsecode_shiftreg = 11'b00001010111; 
			end
			E: begin
				morsecode_length = 4'b0001; //1
				morsecode_shiftreg = 11'b00000000001; 
			end
			F: begin
				morsecode_length = 4'b1001; //9
				morsecode_shiftreg = 11'b00101110101; 	
			end
			G: begin		
				morsecode_length = 4'b1001; //9
				morsecode_shiftreg = 11'b00101110111; 
			end
			H: begin
				morsecode_length = 4'b0111; //7
				morsecode_shiftreg = 'b0001010101; 
			end
		endcase
	end
	
endmodule