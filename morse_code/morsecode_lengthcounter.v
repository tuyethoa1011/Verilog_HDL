module morsecode_lengthcounter(enable,load,data_in,q_out,reset,clk);
	input [3:0] data_in;
	
	input clk;
	input reset; //addition reset
	
	input enable; //enable data input
	input load; //clk
	
	output reg [3:0] q_out;
	
	always@(posedge clk or posedge enable or posedge load) // cho phep nap gia tri (enable) load gia tri 000 va clk de tru
	begin
		if(enable) q_out <= data_in;
		else if (load) q_out <= 0;
		else if(clk)
		begin
			begin
				q_out <= q_out - 1;
			end
		end
		
	end

endmodule