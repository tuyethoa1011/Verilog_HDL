//Mạch so sánh kiểm tra số nhập với 9. Ngõ ra comparator z=0 nếu số nhỏ hơn 9, và z = 1 nếu số lớn hơn 9

module comparator(v,z);
	input [3:0] v; //Inputs
	output z; //Output
	
	assign z = v[3] & (v[2] | v[1]);
endmodule