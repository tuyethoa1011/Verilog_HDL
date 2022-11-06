
module regfile(data_in,REA,RAA,REB,RAB,WA,WEn,CLK,outA,outB);
	
	parameter data_width =3;
	parameter reg_width = 2;
	parameter reg_num = 4;
	
	input [data_width-1:0] data_in;
	input [reg_width-1:0] RAA, RAB,WA;
	
	input REA, REB, WEn, CLK;
	
	output reg [data_width-1:0] outA, outB;
	
	//An array of 4 register each of 3 bits
	reg [data_width-1:0] rf [reg_num-1:0];
	
	always@(posedge CLK)
	begin
		if(CLK) 
		begin
		if(WEn == 1'b1) 
			begin 
				rf[WA] <= data_in; 
			end
		if(REA == 1'b1) 
			begin
				outA <= rf[RAA];
			end
		if (REB==1'b1)
			begin
				outB <= rf[RAB];
			end
		end
	end

endmodule




















