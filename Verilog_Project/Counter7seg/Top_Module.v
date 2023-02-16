module Top_Module(
	clk,
	reset,
	sel_out,
	dig_out
);
	input clk, reset;
	output [5:0] sel_out;
	output [7:0] dig_out;
	wire [3:0] cnt_up;
	wire clk_1hz;
	
	freq_divider freq_divider_1Hz(
		.clk(clk),
		.reset(reset),
		.clk_out(clk_1hz)
	);
	
	up_counter up_counter(
		.clk(clk),
		.reset(reset),
		.cnt(cnt_up)
	);
	
	seg7 seg7(
		.sel_in(cnt_up),
		.dig_in(cnt_up),
		.sel_out(sel_out),
		.dig_out(dig_out)
	);
	
	
endmodule

// Freq_Divider
module freq_divider(
	clk,
	reset,
	clk_out
);

	// 50MHz -> 1Hz
	parameter div  		= 26'd50_000_000;
	parameter div2 		= 26'd25_000_000;
	parameter div_width 	= 26;
	
	input 					clk,reset;
	output reg 				clk_out;
	reg [div_width-1:0] 	clk_cnt = 0;
	
	always @(posedge clk or negedge reset) begin
		
		if(!reset)
			clk_cnt <= 0;
			
		else if(clk_cnt <= div2-1)
			clk_cnt <= 0;
			
		else 
			clk_cnt <= clk_cnt + 1'b1;
	end
	
	always @(posedge clk or negedge reset) begin
		
		if(!reset)
			clk_out <= 0;
			
		else if(clk_cnt <= div2-1)
			clk_out <= 0;
			
		else 
			clk_out <= 1'b1;
		
	end

endmodule


// Up_Counter
module up_counter(
	clk,
	reset,
	cnt
);

	parameter cnt_width = 4;		
	parameter cnt_up    = 1'b1;
	parameter cnt_max   = 4'd8;	
	parameter cnt_min   = 4'd0;
	
	input clk, reset;
	output reg [cnt_width-1:0] cnt = cnt_min;
	
	always @(posedge clk or negedge reset) begin
		
		if(!reset)
			cnt <= cnt_min;
			
		else if(cnt == cnt_max)
			cnt <= cnt_min;
			
		else
			cnt <= cnt + cnt_up;
	end
endmodule


// Seg7
module seg7(
	sel_in,
	dig_in,
	sel_out,
	dig_out,
);
	input [2:0] 		sel_in;
	input [3:0] 		dig_in;
	output reg [7:0] 	dig_out;
	output reg [5:0] 	sel_out;
	
	always @(sel_in) begin
		case(sel_in)
			3'b000: sel_out <= 6'b000000;	// all on
			3'b001: sel_out <= 6'b111110; // 1
			3'b010: sel_out <= 6'b111101; // 2
			3'b011: sel_out <= 6'b111011; // 3
			3'b100: sel_out <= 6'b110111; // 4
			3'b101: sel_out <= 6'b101111; // 5
			3'b110: sel_out <= 6'b011111; // 6
			3'b111: sel_out <= 6'b111111;	// all off
		endcase
	end
	
	always @(dig_in) begin
		case(dig_in)
				4'b0000:    dig_out <= 8'b11000000;    // 0
            4'b0001:    dig_out <= 8'b11111001;    // 1
            4'b0010:    dig_out <= 8'b10100100;    // 2
            4'b0011:    dig_out <= 8'b10110000;    // 3
            4'b0100:    dig_out <= 8'b10011001;    // 4
            4'b0101:    dig_out <= 8'b10010010;    // 5
            4'b0110:    dig_out <= 8'b10000011;    // 6
            4'b0111:    dig_out <= 8'b11111000;    // 7
            4'b1000:    dig_out <= 8'b10000000;    // 8
            4'b1001:    dig_out <= 8'b10010000;    // 9
            4'b1010:    dig_out <= 8'b01111111;    // dp
            default:    dig_out <= 8'b11111111;    // off
		endcase
	end
	
endmodule