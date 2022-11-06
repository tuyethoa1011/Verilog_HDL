module comparator (input [4:0] data,output reg [1:0] sel);
	
	always@(*)
	begin
		if(data < 5'b01010)
		begin
			sel = 2'b00;
		end
		else begin
			sel = 2'b01;
			if(data > 5'b10011)
			begin
				sel = 2'b10;
			end
		end
	end
endmodule