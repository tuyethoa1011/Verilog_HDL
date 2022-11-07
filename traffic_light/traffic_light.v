module traffic_light(reset,lights,clk);
	localparam s0 = 3'b000, s1 = 3'b001, s2 = 3'b010, s3 = 3'b011, s4 = 3'b100, s5 = 3'b101;
	localparam delay1 = 4'd5, delay2 = 4'd1;
	
	input reset;
	input clk;
	reg [2:0] state;
	reg [2:0] q_count; //time
	output reg [5:0] lights; //e-w [5:3] n-s [2:0]
//state transition

	always@(posedge clk or posedge reset)
	begin
		if(reset)
		begin
			state <= s0;
			q_count <= 1;
		end
		else if(clk)
		begin
			case(state)
			s0: begin
				if(q_count < delay1) 
				begin 
					state <= s0; 
					q_count <= q_count + 1;
				end
				else begin 
					state <= s1;
					q_count <= 1;
				end
			end
			
			s1: begin
				if(q_count<delay2) 
				begin 
					state <= s1; 
					q_count <= q_count+1;
				end
				else begin
					state <= s2; 
					q_count <= 1;
				end
			end
			
			s2: begin
				if(q_count<delay2) 
				begin 
					state <= s2; 
					q_count <= q_count + 1;
				end
				else begin
					state <= s3; 
					q_count <= 1;
				end
			end
			
			s3: begin
				if(q_count<delay1) 
				begin 
					state <= s3; 
					q_count <= q_count+1;
				end
				else begin
					state <= s4; 
					q_count <= 1;
				end
			end
			
			s4: begin
				if(q_count<delay2) 
				begin 
					state <= s4; 
					q_count <= q_count+1;
				end
				else begin
					state <= s5; 
					q_count <= 1;
				end
			end
			
			s5: begin
				if(q_count<delay2) 
				begin 
					state <= s5; 
					q_count <= q_count+1;
				end
				else begin
					state <= s0; 
					q_count <= 1;
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
	always@(*) 
	begin
		case(state) 
			s0: begin
				lights = 6'b100001; //ew red 100 sn green 001
			end
			s1: begin
				lights = 6'b100010; //ew red 100 ns yellow 010
			end
			
			s2: begin
				lights = 6'b100100; //ew red 100 ns red 100
			end
			s3: begin
				lights = 6'b001100; //ew green 001 ns red 100
			end
			s4: begin
				lights = 6'b010100; //ew yellow 010 ns red 100
			end
			s5: begin
				lights = 6'b100100; //ew red 100 ns red 100
			end
			default: begin
				lights = 6'b100001;
			end
			
		endcase
	end
endmodule
