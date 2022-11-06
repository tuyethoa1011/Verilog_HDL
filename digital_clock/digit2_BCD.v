//5
module digit2_BCD (CLOCK_50, KEY,sel,q_out, conv_out,HEX0,HEX1,mux_out);
	output wire [3:0] conv_out;
	output wire [4:0] q_out;
	output wire [3:0] mux_out;
	input CLOCK_50;
	input [3:0] KEY;
	output [1:0] sel;
	output [6:0] HEX0;
	output [6:0] HEX1;
	wire clk_up;	
	lpm_counter0 U0 (.clock(CLOCK_50),.q(clk_up));
	seq_counter U1 (.clock(clk_up),.q_out(q_out),.reset_n(KEY[0]));
	
	comparator U2 (.data(q_out),.sel(sel));
	
	convert U3 (.data(q_out[3:0]),.out(conv_out));
	
	
	//4 muxes
	mux4to1 U4 (.sel(sel),.a(q_out[3]),.b(conv_out[3]),.c(1'b0),.out(mux_out[3]));
	mux4to1 U5 (.sel(sel),.a(q_out[2]),.b(conv_out[2]),.c(1'b0),.out(mux_out[2]));
	mux4to1 U6 (.sel(sel),.a(q_out[1]),.b(conv_out[1]),.c(1'b0),.out(mux_out[1]));
	mux4to1 U7 (.sel(sel),.a(q_out[0]),.b(conv_out[0]),.c(1'b0),.out(mux_out[0]));
	//------------
	
	//q_out[4] q_out[3]
	//decoder HEX0 HEX1
	decoder0to9 U8 (.BCD(sel),.out(HEX1));
	decoder0to9 U9 (.BCD(mux_out),.out(HEX0));
	
endmodule