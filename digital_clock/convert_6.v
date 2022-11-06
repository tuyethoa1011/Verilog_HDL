module convert_6(input [2:0] data,output reg sig);
	always@(data)
	begin
		if(data==3'b110)
		begin
			sig = 1'b1;
		end
		else
		begin
			sig = 1'b0;
		end
	end
endmodule