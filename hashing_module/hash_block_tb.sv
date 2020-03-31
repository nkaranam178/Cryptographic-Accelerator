module hash_block_tb();
	
	reg clk, rst_n, H_int, H_done;
	reg bram_done, spart_done, rounds_done;
	reg[7:0] msg_cnt;
	reg[10:0] index, hash_address;
	reg [159:0]	hh;
	reg [511:0] hash_data;
	
	hash_block hash_block0(	.clk(clk),
							.rst_n(rst_n),
							.H_int(H_int),
							.index(index),
							.hash_data(hash_data),
							.H_done(H_done),
							.hash_address(hash_address),
							.hh(hh),
							.bram_done( bram_done),
							//.ext_done(ext_done),
							.rounds_done(rounds_done),
							.spart_done(spart_done),
							.ext_en(ext_en),
							.rst_ext(rst_ext), 
							.rounds_en(rounds_en), 
							.rst_rounds(rst_rounds),
							.msg_cnt(msg_cnt));
							
	always 
		#1 clk = ~clk;
		
	initial begin
		// Set hash_data
		/* hash_data[0] = 32'h0;
		hash_data[1] = 32'h1;
		hash_data[2] = 32'h2;
		hash_data[3] = 32'h3;
		hash_data[4] = 32'h4;
		hash_data[5] = 32'h5;
		hash_data[6] = 32'h6;
		hash_data[7] = 32'h7;
		hash_data[8] = 32'h8;
		hash_data[9] = 32'h9;
		hash_data[10] = 32'd20;
		hash_data[11] = 32'hb;
		hash_data[12] = 32'hc;
		hash_data[13] = 32'hd;
		hash_data[14] = 32'he;
		hash_data[15] = 32'hf; */
		
		//hash_data = {32'h0,32'h1,32'h2,32'h3,32'h4,32'h5,32'h6,32'h7,32'h8,32'h9,32'd10,32'hb,32'hc,32'hd,32'he,32'hf};
		hash_data = 512'h30203120322033203420352036203720382039203020312032203320342035203620372038203920302031203220332034203520362037203820392030203120;
		
		clk = 0;
		rst_n = 0;
		
		#2 rst_n = 1;
		
		// IDLE to READ_BRAM
		#2 H_int = 1;
		#2 H_int = 0;
		
		// READ_BRAM to EXT
		// --> should see rst_ext go high
		#4 bram_done = 1;
		#2 bram_done = 0;
		// --> should see ext_en go high
		
		// EXT to ROUNDS
		// --> should see rst_rounds go high
		//#4 ext_done = 1;
		//#2 ext_done = 0;
		@(posedge rst_rounds);
		assert(msg_cnt == 79) $display("msg_cnt is 79");
			else $error("count is in wrong place");
		// --> should see rounds_en go high
		
		@(posedge rounds_done);
		assert(msg_cnt == 79) $display("msg_cnt is 79");
			else $error("count is in wrong place");
			
		#2 spart_done = 1; 
		#2 spart_done = 0;
		
		#4 $stop;
		
	end
endmodule