module hash_block(
	input wire clk, 
	input wire rst_n,
	input wire H_int,
	input reg [3:0] index,
	//input [511:0] hash_data,
	output reg H_done,
	//output reg [3:0] hash_address,
	output reg [159:0] hh,
	//TEST INPUTS
	//output bram_en,
	//input bram_done,
	//input ext_done,
	output rounds_done,
	input spart_done,
	//TEST OUTPUTS
	output reg[7:0] msg_cnt,
	output logic ext_en,
	output logic rst_ext, 
	output logic rounds_en, 
	output logic rst_rounds
	);

/*========= Declarations ==========*/
//--- message extension
	//TEST COMMENTED OUT reg[7:0] msg_cnt;
//--- rounds loop	
	reg [31:0] msg [79:0];
	
/*========= State Machine ==========*/
	//reg ext_en, rst_ext, rounds_en, rst_rounds;
	//	,bram_done, ext_done, rounds_done, spart_done;
	reg ext_done, bram_en, bram_done;
	reg [511:0] hash_data;

	typedef enum reg[2:0] {IDLE, READ_BRAM, EXT, ROUNDS, SPART_TRANSMIT} state_t;
	state_t state, nxt_state;

	// Change state
	always @(posedge clk, negedge rst_n) begin
		if (!rst_n) 
			state <= IDLE;
		else 
			state <= nxt_state;
	end
	
	// State machine case statement
	always_comb begin
		rst_ext = 1'b0;
		ext_en = 1'b0;
		rst_rounds = 1'b0;
		rounds_en = 1'b0;
		H_done = 1'b0;
		bram_en = 1'b0;
		nxt_state = IDLE;
		
		case(state)
			IDLE: begin
				nxt_state = IDLE;
				
				if (H_int)
					nxt_state = READ_BRAM;
			end
			
			READ_BRAM: begin
				bram_en = 1'b1;
				nxt_state = READ_BRAM;
				
				if (bram_done) begin
					nxt_state = EXT;
					rst_ext = 1'b1;
				end
			end
			
			EXT: begin
				nxt_state = EXT;
				ext_en = 1'b1;
				
				// TESTING COUNTER WITH EXT STAGE
				/* if (msg_cnt == 79) begin
					nxt_state = ROUNDS;
					rst_rounds = 1'b1;
				end */
				if (ext_done) begin
					nxt_state = ROUNDS;
					rst_rounds = 1'b1;
				end
			end
			
			ROUNDS: begin
				nxt_state = ROUNDS;
				rounds_en = 1'b1;
				
				if (rounds_done) begin
					nxt_state = SPART_TRANSMIT;
				end
			end
			
			SPART_TRANSMIT: begin
				nxt_state = SPART_TRANSMIT;
				
				if (spart_done) begin
					nxt_state = IDLE;
					H_done = 1'b1;
				end
			end
			
			default: begin
				nxt_state = IDLE;
			end
		endcase
	end

/*========= bram interface =========*/
	bram_interface bram(
	.clk(clk),
	.hash_address(index),
	.hash_data(hash_data),
	.bram_done(bram_done),
	.bram_en(bram_en));
	
/*========= msg extension ==========*/	
	// Break input into 16 32 bit words
	reg [31:0] split_data[15:0];	
	
	assign split_data[15] = hash_data[31:0];
	assign split_data[14] = hash_data[63:32];
	assign split_data[13] = hash_data[95:64];
	assign split_data[12] = hash_data[127:96];
	assign split_data[11] = hash_data[159:128];
	assign split_data[10] = hash_data[191:160];
	assign split_data[9] = hash_data[223:192];
	assign split_data[8] = hash_data[255:224];
	assign split_data[7] = hash_data[287:256];
	assign split_data[6] = hash_data[319:288];
	assign split_data[5] = hash_data[351:320];
	assign split_data[4] = hash_data[383:352];
	assign split_data[3] = hash_data[415:384];
	assign split_data[2] = hash_data[447:416];
	assign split_data[1] = hash_data[479:448];
	assign split_data[0] = hash_data[511:480];
	
	// Message counter block
	msg_counter msg_counter0( 	.rst_ext(rst_ext),
								.rst_rounds(rst_rounds),
								.clk(clk),
								.msg_cnt(msg_cnt));
								
	msg_extend msg_extend0(	.clk(clk),
							.ext_en(ext_en),
							.msg_cnt(msg_cnt),
							.hash_data(split_data),
							.ext_done(ext_done),
							.msg(msg));
	
	// When side channel is activated, begin processing data.
/* 	// Message counter is reset by posedge of ext_en
	reg prev_ext_en;
	
	always @(posedge clk) begin
		if (prev_ext_en == 0 && ext_en == 1)
			rst_ext_en <= 1'b1;
		else
			rst_ext_en <= 1'b0;
		prev_ext_en <= ext_en;		
	end */
	
	
	
	
/*========= rounds loop ==========*/
	//reg [319:0] h;
	rounds_loop rounds_loop0(	.clk(clk),
								.rst_n(rst_n),
								.rounds_en(rounds_en),
								.rounds_cnt(msg_cnt),
								.msg(msg),
								.rounds_done(rounds_done),
								//.h(h),
								.hh(hh));

endmodule
