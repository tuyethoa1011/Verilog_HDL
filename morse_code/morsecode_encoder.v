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
	output reg [12:0] morsecode_shiftreg;
	
	//1: dot 111:dash 0: off light
	
	always@(*)
	begin
		case(letter_in)
			A: begin
				morsecode_length = 4'b0111; //7
				morsecode_shiftreg = 7'b0111010; //can 7 chu ky clk de day ra het  
			end
			B: begin
				morsecode_length = 4'b1011; //11
				morsecode_shiftreg = 11'b01010101110; //can 11 chu ky de day ra het 
			end
			C: begin
				morsecode_length = 4'b1101; //13
				morsecode_shiftreg = 13'b0101110101110; //can 12 chu ky de day ra het 
			end
			D: begin
				morsecode_length = 4'b1001;  //9
				morsecode_shiftreg = 9'b010101110; 
			end
			E: begin
				morsecode_length = 4'b0011; //3
				morsecode_shiftreg = 3'b010; //can 3 chu ky de day ra het 
			end
			F: begin
				morsecode_length = 4'b1011; //11
				morsecode_shiftreg = 11'b01011101010; //can 11 chu ky de day ra het 	
			end
			G: begin		
				morsecode_length = 4'b1011; //11
				morsecode_shiftreg = 11'b01011101110; //can 10 chu de day ra het 
			end
			H: begin
				morsecode_length = 4'b1001; //9
				morsecode_shiftreg = 9'b010101010; //can 9 chu ky de day ra het 
			end
		endcase
	end
	
endmodule

//checked