//Tao mux2to1
//Cach 1
/*module mux2_to1(x,y,s,m);
	input x,y,s;
	output m;
	
	assign m = ((x&~s)|(s & y)); 
	
endmodule
*/

//Cach 2: Su dung primitive gate
module mux2_to1(s,x,y,m); //s: select, x: 0, y: 1, m: mux output
	input x,y,s;
	output m;
	
	and (m1,x,ns);
	and (m2,y,s);
	
	or (m,m1,m2);
	not (ns,s);
endmodule

	