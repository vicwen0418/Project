// ===================================================
//	Date : 2023/3/1

// Project : AdderSeg7_Dip

// Author : Vic
// ===================================================

module AdderSeg7_Dip(
	input clk_50Mhz,
	input [7:0] dip,
	output [7:0] dig_out,
	output [3:0] sel_out
);

	wire [11:0] bcd;
	wire clk_1khz;
	
	
	freq_divider freq_divider(
		.clk_in(clk_50Mhz),
		.clk_out(clk_1khz)
	);
	
	dip_switch dip_switch(
		.clk(clk_1khz),
		.dip(dip),
		.bcd(bcd)
	);
	
	seg_driver seg_driver(
		.clk_50Mhz(clk_50Mhz),
		.clk_1khz(clk_1khz),
		.bcd(bcd),
		.dig_out(dig_out),
		.sel_out(sel_out)
	);
	


endmodule


// ===================================================


module freq_divider(
	input clk_in,
	output reg clk_out
);

	parameter N = 50_000;		// 1khz
	parameter WIDTH = 26;
	reg [WIDTH-1:0] cnt;
	
	always @(posedge clk_in) begin
		if(cnt == (N-1))
			cnt <= 0;
		else
			cnt <= cnt + 1'b1;
	end
	
	always @(posedge clk_in) begin
		if(cnt < (N>>1))
			clk_out <= 1'b1;
		else
			clk_out <= 0;
	end
	

endmodule


// ===================================================


module dip_switch(
	input clk,
	input [7:0] dip,
	output [11:0] bcd
);
	
	reg [19:0] bin;	// binary
	integer i;
	
	assign bcd = {bin[19:16], bin[15:12], bin[11:8]};
	
	// bcd <- binary (Double Dabble algorithm)
	always @(posedge clk) begin
	
		bin = {12'b0, dip};
		
		for(i=0;i<8;i=i+1) begin
		
			if(bin[11:8] > 4'd4)  bin[11:8]  = bin[11:8]  + 4'd3;
			
			if(bin[15:12] > 4'd4) bin[15:12] = bin[15:12] + 4'd3; 
			
			if(bin[19:16] > 4'd4) bin[19:16] = bin[19:16] + 4'd3;
			
			bin = {bin[18:0], 1'b0};
			
		end
	end
	
endmodule


// ===================================================


module seg_driver(
	input clk_50Mhz,
	input clk_1khz,
	input [11:0] bcd,
	output reg [7:0] dig_out, 
	output reg [3:0] sel_out
);

	integer i;
	wire [3:0] hundred, ten, one;
	
	parameter ZERO    =7'b1111110,
             ONE     =7'b0110000,
             TWO     =7'b1101101,
             THREE   =7'b1111001,
             FOUR    =7'b0110011,
             FIVE    =7'b1011011,
             SIX     =7'b1011111,
             SEVEN   =7'b1110000,
             EIGHT   =7'b1111111,
             NINE    =7'b1111011,
				 DOT		=1'b0;
				 
	assign {hundred, ten, one} = bcd[11:0];
	
	// initial
	initial
		sel_out = 4'b1110;
	
	// segment left_shift
	always @(posedge clk_1khz) begin
		case(sel_out)
			4'b1110: sel_out = 4'b1101;
			4'b1101: sel_out = 4'b1011;
			4'b1011: sel_out = 4'b0111;
			4'b0111: sel_out = 4'b1110;
		endcase
	end
	



	// sum to digital num
	always @(posedge clk_50Mhz) begin
		case(sel_out)
			4'b1110: choose_num(one, dig_out);
			
			4'b1101: choose_num(ten, dig_out);
			
			4'b1011: choose_num(hundred, dig_out);
			
			4'b0111: dig_out = {ZERO, DOT};
		endcase
	end
	
	//	choose seg7 number
	task choose_num(input [3:0] num, output reg [7:0] dig_out);
		case(num)
			4'd0: dig_out <= {ZERO, DOT};
			4'd1: dig_out <= {ONE,  DOT};
			4'd2: dig_out <= {TWO,  DOT};
			4'd3: dig_out <= {THREE,DOT};
			4'd4: dig_out <= {FOUR, DOT};
			4'd5: dig_out <= {FIVE, DOT};
			4'd6: dig_out <= {SIX,  DOT};
			4'd7: dig_out <= {SEVEN,DOT};
			4'd8: dig_out <= {EIGHT,DOT};
			4'd9: dig_out <= {NINE, DOT};
			default: dig_out <= 8'b0000_0000;
		endcase
	endtask
	
endmodule
