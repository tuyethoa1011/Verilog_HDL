
module morsecode_shiftregister(enable,load,data_in, shiftreg_out);
	input [12:0] data_in;

	input enable; //data input enable 
	input load; //clk //load = 1 thi tru tiep load = 0 thi giu nguyen trang thai

	output reg [12:0] shiftreg_out; //chung ta chi lay bit shiftreg_out[0] khi ghep cac module lai voi nhau
	
	always@(posedge load or posedge enable)
	begin
		if (enable) shiftreg_out <= data_in;
		else if (load) begin
				 shiftreg_out <= {1'b0,shiftreg_out[11:1]};	
		end 
	end
endmodule

//checked