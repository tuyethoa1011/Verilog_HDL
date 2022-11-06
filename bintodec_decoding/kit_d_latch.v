module kit_d_latch(SW,LEDR);
	input [1:0] SW;
	output [1:0] LEDR; //LEDR 0 = Q Q' = LEDR[1]
	
	d_latch U1 (.D(SW[0]),.Clk(SW[1]),.Qa(LEDR[0]),.Qb(LEDR[1]));
	
endmodule
