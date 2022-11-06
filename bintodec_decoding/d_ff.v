module d_ff(D,Clk,Q,Qn);
	
	input D,Clk;
	output Q,Qn;
	
	wire Qm;
	
	d_latch U1(.D(D),.Clk(~Clk),.Qa(Qm));
	d_latch U2(.D(Qm),.Clk(Clk),.Qa(Q),.Qb(Qn));

endmodule