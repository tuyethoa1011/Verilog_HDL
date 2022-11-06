
module controller(northsouth_light, eastwest_light,gt2_signal, gt6_signal,clk,reset_signal);
	localparam s0 = 3'b000, s1 = 3'b001, s2 = 3'b010, s3 = 3'b011, s4 = 3'b100, s5 = 3'b101;
	input gt2_signal, gt6_signal;
	input clk;
	output reg reset_signal;
	reg [2:0] state;
	output reg [2:0] northsouth_light, eastwest_light;
//state transition

	always@(posedge clk)
	begin
		if(clk)
		begin
			case(state)
			s0: begin
				if(gt6_signal == 1'b1) 
				begin 
					reset_signal <= 1'b1;
					state <= s1; 
				end
				else begin 
					reset_signal <= 1'b0;
					state <= s0; 
				end
			end
			
			s1: begin
				if(gt2_signal == 1'b1) 
				begin 
					reset_signal <= 1'b1;
					state <= s2; 
				end
				else begin
					reset_signal <= 1'b0;
					state <= s1; 
				end
			end
			
			s2: begin
				if(gt2_signal == 1'b1) 
				begin 
					reset_signal <= 1'b1;
					state <= s3; 
				end
				else begin
					reset_signal <= 1'b0;
					state <= s2; 
				end
			end
			
			s3: begin
				if(gt6_signal == 1'b1) 
				begin 
					reset_signal <= 1'b1;
					state <= s4; 
				end
				else begin
					reset_signal <= 1'b0;
					state <= s3; 
				end
			end
			
			s4: begin
				if(gt2_signal == 1'b1) 
				begin 
					reset_signal <= 1'b1;
					state <= s5; 
				end
				else begin
					reset_signal <= 1'b0;
					state <= s4; 
				end
			end
			
			s5: begin
				if(gt2_signal == 1'b1) 
				begin 
					reset_signal <= 1'b1;
					state <= s0; 
				end
				else begin
					reset_signal <= 1'b0;
					state <= s5; 
				end
			end
			
			default: begin
				state <= s0;
				end
		endcase
	end
	end
	
	//logic output each state
	//red 100 yellow 010 green 001 
	always@(state) 
	begin
		case(state) 
			s0: begin
				northsouth_light = 3'b001;
				eastwest_light = 3'b100;
			end
			s1: begin
				
				northsouth_light = 3'b010;
				eastwest_light = 3'b100;
			end
			
			s2: begin
				northsouth_light = 3'b100;
				eastwest_light = 3'b100;
			end
			s3: begin
				northsouth_light = 3'b100;
				eastwest_light = 3'b001;
			end
			s4: begin
				northsouth_light = 3'b100;
				eastwest_light = 3'b010;
			end
			s5: begin
				northsouth_light = 3'b100;
				eastwest_light = 3'b100;
			end
			
		endcase
	end
endmodule





module datapath(gt2_signal, gt6_signal,reset, clk, q_out);
	
	output gt2_signal, gt6_signal;
	input reset, clk;
	output wire [2:0] q_out;
	
	counter U0 (.reset(reset),.clk(clk),.q_out(q_out));
	
	comparator_greaterthan6 U1 (.data_in(q_out),.signal(gt6_signal));
	comparator_greaterthan2 U2 (.data_in(q_out),.signal(gt2_signal));
	
	
endmodule





module counter(clk, reset,q_out);
	input clk,reset;
	output reg [2:0] q_out;

	always@(posedge clk or posedge reset)
	begin
		if(reset) q_out <= 3'b000;
		else
		begin
			q_out <= q_out + 1;
		end
	end
endmodule



module comparator_greaterthan6(data_in, signal);

	input [2:0] data_in;
	output reg signal;
	
	always@(*)
	begin
		if(data_in < 3'b101)
		begin
			signal = 1'b0;
		end
		else 
			signal = 1'b1;
	end
	
endmodule

module comparator_greaterthan2(data_in, signal);

	input [2:0] data_in;
	output reg signal;
	
	always@(*)
	begin
		if(data_in < 3'b001)
		begin
			signal = 1'b0;
		end
		else signal = 1'b1;
	end
	
endmodule



module traffic_light(northsouth_light, eastwest_light,q_count,clk);
	
	output [2:0] northsouth_light, eastwest_light;
	wire gt2, gt6,rst;
	output [2:0] q_count;
	input clk; //CLOCK_50
	
	controller U0 (.northsouth_light(northsouth_light), .eastwest_light(eastwest_light),.gt2_signal(gt2), .gt6_signal(gt6),.clk(clk),.reset_signal(rst));
	datapath U1 (.gt2_signal(gt2), .gt6_signal(gt6),.reset(rst), .clk(clk), .q_out(q_count));
	

	
endmodule