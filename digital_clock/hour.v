module hour(signal_clk,q_out,mux_out,sel,HEX6,HEX7,reset,conv_out,comp_out);
	
	output wire [1:0] comp_out;
	output wire [4:0] q_out;
	output wire [3:0] mux_out;
	output wire sel;
	input signal_clk;
	input reset;
	output [6:0] HEX6;
	output [6:0] HEX7;
	output wire [3:0] conv_out;
	wire clk_up;	

	seq_counter24 U0 (.clock(signal_clk),.q_out(q_out),.reset_n(reset));
	
	comparator_hour U1 (.data(q_out),.sel(sel),.out(comp_out));
	
	convert_hour U2 (.data(q_out[3:0]),.out(conv_out));
	
	//4 muxes
	mux2to1 U3 (.sel(sel),.a(q_out[3]),.b(conv_out[3]),.out(mux_out[3]));
	mux2to1 U4 (.sel(sel),.a(q_out[2]),.b(conv_out[2]),.out(mux_out[2]));
	mux2to1 U5 (.sel(sel),.a(q_out[1]),.b(conv_out[1]),.out(mux_out[1]));
	mux2to1 U6 (.sel(sel),.a(q_out[0]),.b(conv_out[0]),.out(mux_out[0]));
	//------------
	
	//q_out[4] q_out[3]
	//decoder HEX6 HEX7
	decoder0to9 U7 (.BCD(comp_out),.out(HEX7));
	decoder0to9 U8 (.BCD(mux_out),.out(HEX6));
endmodule