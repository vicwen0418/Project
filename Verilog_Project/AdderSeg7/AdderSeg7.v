// ===================================================
//	Date : 2023/2/22	

// Project : seg7_Counter	

// Author : Vic
// ===================================================


module AdderSeg7(
	input clk, rst,
	input [3:0] key_col,
	output [3:0] key_row,
	output [3:0] sel,
	output [7:0] dig
);

	genvar i;
	generate
		for(i=0;i<4;i=i+1) begin: nKey 
			Key Key(clk, rst, key_col[i], key_row[i]); // thoudsand hundred ten one
		end
	endgenerate
	/*Key Key1(clk, rst, key_col[0], key_row[0]); //thousand
	Key Key2(clk, rst, key_col[1], key_row[1]); //hundred
	Key Key3(clk, rst, key_col[2], key_row[2]); //ten
	Key Key4(clk, rst, key_col[3], key_row[3]); //one
	*/
	seg_driver seg_driver(
		.clk(clk),
		.rst(rst),
		.key_in(key_row),
		.sel(sel),
		.dig(dig)
	);
	
	
endmodule


// ===================================================

				
module Key(								// debounce ?
	input clk, rst, key_col,
	output key_row
);

	assign key_row = key_col;

endmodule


// ===================================================


module seg_driver(
	input clk, rst,
	input [3:0] key_in,
	output reg [3:0] sel,
	output reg [7:0] dig
);
	
	reg [3:0] num_cnt [3:0];
	reg [7:0] dic [9:0]; /* = {8'b1111_1100, //0	
								  8'b0110_0000, //1
								  8'b1101_1010, //2
								  8'b1111_0010, //3
								  8'b0110_0110, //4
								  8'b1011_0110, //5
								  8'b1011_1110, //6
								  8'b1110_0000, //7
								  8'b1111_1110, //8
								  8'b1111_0110}; //9 */
	
	initial begin
		dic[0] <= 8'b1111_1100;
	
	end
	
	// left shift
	always @(posedge clk, negedge rst) begin
		if(!rst)
			sel <= 4'b1110;
		else 
			sel <= {sel[2:0], sel[3]};
	end
	
	// Key add
	always @(posedge clk, negedge rst) begin
		if(!rst) begin
			integer i;
			for(i=0;i<4;i=i+1)
				num_cnt[i] <= 4'b0000;
		end
		else begin
			case(key_in)
				4'b0001: num_cnt[0] <= num_cnt[0] + 1'b1;
				4'b0010: num_cnt[1] <= num_cnt[1] + 1'b1;
				4'b0100: num_cnt[2] <= num_cnt[2] + 1'b1;
				4'b1000: num_cnt[3] <= num_cnt[3] + 1'b1;
				default: ;
			endcase
		end
	end
	
	// check overflow
	always @(posedge clk) begin
		integer i;
		for(i=0;i<4;i=i+1) begin
			if(num_cnt[i] > 4'b1001)
				num_cnt[i] <= 4'b0000;
		end
	end
	
	// binary num to digital num
	always @(posedge clk, negedge rst) begin
		if(!rst) 
			dig <= 8'b0000_0000;
		else begin
			integer i;
			for(i=0;i<4;i=i+1) begin
				case(num_cnt[i])
					4'd0: dig <= dic[0];
					4'd1: dig <= dic[1];
					4'd2: dig <= dic[2];
					4'd3: dig <= dic[3];
					4'd4: dig <= dic[4];
					4'd5: dig <= dic[5];
					4'd6: dig <= dic[6];
					4'd7: dig <= dic[7];
					4'd8: dig <= dic[8];
					4'd9: dig <= dic[9];
					default: dig <= 8'b0000_0000;
				endcase
			end
		end
	end
	
endmodule
