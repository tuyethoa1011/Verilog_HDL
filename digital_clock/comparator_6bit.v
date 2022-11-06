module comparator_6bit(input [5:0] data,output reg [2:0] out,output reg [1:0] sel);
	
	always@(*)
	begin
		if(data < 6'b001010)
		begin
			out = 3'b000;
			sel = 2'b00;
		end
		else if (data < 6'b010100)
		begin
			out = 3'b001;
			sel = 2'b01;
		end
		else if (data < 6'b011110)
		begin
			out = 3'b010;
		end
		else if (data < 6'b101000)
		begin
			out = 3'b011;
		end
		else if (data < 6'b110010)
		begin
			out = 3'b100;
		end
		else
		begin
			out = 3'b101;
		end
		
	end
endmodule