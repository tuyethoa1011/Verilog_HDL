module comparator_hour(input [4:0] data,output reg sel,output reg [1:0] out);
	always@(*)
	begin
		if(data < 5'b01010)
		begin 
			sel = 1'b0;
			out = 2'b00;
		end //data >10
		else
		begin
			out = 2'b01;
			sel = 1'b1;
			if(data>5'b10011)
			begin
				out = 2'b10;
			end
			
		end
	end
endmodule