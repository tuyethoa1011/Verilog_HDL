module morsecode_lengthcounter(enable,load,data_in,q_out);
	input [3:0] data_in;
	
	
	input enable; //enable data input
	input load; //clk
	
	output reg [3:0] q_out;
	
	always@(posedge enable or posedge load) // cho phep nap gia tri (enable) load gia tri 000 va clk de tru
	begin
		if(enable) q_out <= data_in;
		else if(load)
		begin
			begin
				q_out <= q_out - 1;
			end
		end
		
	end

endmodule

//checked

