

module datapath(sel_input, in_dtpath, REA,REB, WEn,WA,RAA,RAB,clk,gt_2signal,gt_6signal,alu_sel);
	
	input sel_input;
	input [2:0] in_dtpath;

	wire [2:0] datareg_in, outA, outB,outALU;
	
	input REA, REB, WEn;
	input clk;
	input [1:0] RAA, RAB, WA;
	input [1:0] alu_sel;
	
	output gt_2signal;
	output gt_6signal;
	
	
	regfile U0 (.data_in(datareg_in),.REA(REA),.RAA(RAA),.REB(REB),.RAB(RAB),.WA(WA),.WEn(WEn),.CLK(clk),.outA(outA),.outB(outB));
	
	mux2to1 U1(.a(in_dtpath),.b(outALU),.y(datareg_in),.sel(sel_input));
	
	alu U2 (.sel(alu_sel),.a(outA),.b(outB),.y(outALU));
	
	comparator_greaterthan6 U3 (.data_in(outALU),.signal(gt_2signal));
	
	comparator_greaterthan2 U4 (.data_in(outALU),.signal(gt_6signal));
	
endmodule