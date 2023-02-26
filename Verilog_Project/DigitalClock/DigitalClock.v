// ===================================================
//	Date : 2023/2/23

// Project : DigitalClock	

// Author : Vic
// ===================================================


module DigitalClock(clk, rst, key_in, seg, sel);

	input clk, rst;
	input [2:0] key_in;
	output [7:0] seg;
	output [3:0] sel;
	
	wire [2:0] key_out;
	
	KeyDebounce KeyDebounce0(	// setting
		.clk(clk),
		.rst(rst),
		.key_in(key_in[0]),
		.key_out(key_out[0])
	);
	
	KeyDebounce KeyDebounce1(	// abstract 1
		.clk(clk),
		.rst(rst),
		.key_in(key_in[1]),
		.key_out(key_out[1])
	);
	
	KeyDebounce KeyDebounce2( // add 1
		.clk(clk),
		.rst(rst),
		.key_in(key_in[2]),
		.key_out(key_out[2])
	);

endmodule


// ===================================================


// ===================================================


module KeyDebounce(clk, rst, key_in, key_out);

	parameter deb_num = 4;
	parameter deb_rst = 4'b1111;
	parameter deb_set = 4'b0000;
	
	input wire clk, rst;
	input wire key_in;
	output reg key_out;
	
	reg [deb_num-1:0] bounce;
	
	always @(posedge clk, negedge rst) begin
		if(!rst)
			bounce <= deb_rst;
		else begin
			integer i;
			bounce <= key_in;
			for(i=0;i<deb_num-1;i=i+1)
				bounce[i+1] <= bounce[i];
		end
		
		case(bounce)
			deb_set:	key_out <= 1'b0;
			default: key_out <= 1'b1;
		endcase
	end
	

endmodule


// ===================================================


// ===================================================


module Counter();


endmodule


// ===================================================


// ===================================================


module seg_driver(clk, rst, time_in, sel, seg);

	parameter    ZERO    =7'b100_0000,
                ONE     =7'b111_1001,
                TWO     =7'b010_0100,
                THREE   =7'b011_0000,
                FOUR    =7'b001_1001,
                FIVE    =7'b001_0010,
                SIX     =7'b000_0010,
                SEVEN   =7'b111_1000,
                EIGHT   =7'b000_0000,
                NINE    =7'b001_0000,
					 MAX_CNT =50_000;
					 
	input clk, rst;
	input [12:0] time_in;
	output reg [3:0] sel;
	output reg [7:0] seg;
	
	reg [15:0] cnt;
	wire add_cnt = 1'b1;
	wire end_cnt = add_cnt && cnt == MAX_CNT - 1;
	
	reg dot;
	reg [3:0] seg_flag;
	
	
	// === Timer ===
	
	always @(posedge clk, negedge rst) begin
		if(!rst)
			cnt <= 0;
		else if(add_cnt) begin
			if(end_cnt) cnt <= 0;
			else cnt <= cnt + 1;
		end
			
	end
	

	
	// === left_shift ===
	
	always @(posedge clk, negedge rst) begin
		if(!rst)
			sel <= 4'b1110;
		else if(cnt == MAX_CNT-1)
			sel <= {sel[2:0], sel[3]};						// left_shift
	end

	
	
	// === give digital number ===
	
	always @(posedge clk, negedge rst) begin
		if(!rst)
			seg_flag <= 0;
		else begin
			case(sel)
				4'b1110: begin seg_flag <= time_in[12:11]; dot <= 1'b1; end
				4'b1101: begin seg_flag <= time_in[10:7]; dot <= 1'b0; end
				4'b1011: begin seg_flag <= time_in[6:4]; dot <= 1'b1; end
				4'b0111: begin seg_flag <= time_in[3:0]; dot <= 1'b0; end
				default:	seg_flag <= 0;
			endcase
		end
						
	end
	
	
	
	// === Translate digital number to seg_number ===
	
	always @(posedge clk, negedge rst) begin
		if(!rst)
			seg <= 8'b1111_1111;
		
		else begin
			case(seg_flag)
				4'd0: seg <= {dot,ZERO};
				4'd1: seg <= {dot,ONE};
				4'd2: seg <= {dot,TWO};
				4'd3: seg <= {dot,THREE};
				4'd4: seg <= {dot,FOUR};
				4'd5: seg <= {dot,FIVE};
				4'd6: seg <= {dot,SIX};
				4'd7: seg <= {dot,SEVEN};
				4'd8: seg <= {dot,EIGHT};
				4'd9: seg <= {dot,NINE};
				default: seg <= 8'b1111_1111;
			endcase
		end
			
	end

endmodule


// ===================================================