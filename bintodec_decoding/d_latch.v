module d_latch(D,Clk,Qa,Qb);
	input D,Clk;
	output Qa,Qb;
	
	wire S,R,R_g,S_g;
	assign S = D;
	
	nand g1 (S_g,S,Clk);
	not g2 (R,D);
	
	nand g3 (R_g,R,Clk);
	
	nand g4(Qa,S_g,Qb);
	nand g5(Qb,R_g,Qa);
	
endmodule
