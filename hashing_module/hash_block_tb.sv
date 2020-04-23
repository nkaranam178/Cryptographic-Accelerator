`timescale 1 ps / 1 ps
module hash_block_tb();
	
	reg clk, rst_n, H_int, H_done;
	reg bram_done, spart_done, rounds_done;
	reg[7:0] msg_cnt;
	reg[3:0] index;
	reg [159:0]	hh;
	reg [511:0] hash_data;
	
	hash_block hash_block0(	.clk(clk),
							.rst_n(rst_n),
							.H_int(H_int),
							.index(index),
							//.hash_data(hash_data),
							.H_done(H_done),
							//.hash_address(hash_address),
							.hh(hh),
							//.bram_done( bram_done),
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
		clk = 0;
		rst_n = 0;
		
		@(posedge clk);
		@(posedge clk);
		rst_n = 1;
		
		// Write into memory
		force hash_block0.bram.wren_a = 1'b1;
		force hash_block0.bram.wren_b = 1'b1;
		force hash_block0.bram.address_a = 4'b0;
		force hash_block0.bram.address_b = 4'b1;		
		force hash_block0.bram.data_b = 256'b0110000101100010011000111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
		force hash_block0.bram.data_a = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000;
		
		@(posedge clk);
		force hash_block0.bram.address_a = 4'b10;
		force hash_block0.bram.address_b = 4'b11;		
		force hash_block0.bram.data_b = 256'b0101010001000101010100110101010001011111010100110101010001010010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
		force hash_block0.bram.data_a = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000;
		
		@(posedge clk);
		force hash_block0.bram.wren_a = 1'b0;
		force hash_block0.bram.wren_b = 1'b0;
		force hash_block0.bram.address_a = 4'b11;
		force hash_block0.bram.address_b = 4'b100;
		@(posedge clk);
		release hash_block0.bram.data_a;
		release hash_block0.bram.data_b;
		release hash_block0.bram.wren_a;
		release hash_block0.bram.wren_b;
		release hash_block0.bram.address_a;
		release hash_block0.bram.address_b;	
		
		@(posedge clk);
		@(posedge clk);
// TEST 1
		
		// 'abc'
		//hash_data = 512'b01100001011000100110001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000;

		// IDLE to READ_BRAM
		#2 H_int = 1;
		#2 H_int = 0;
		index = 4'b0000;
		
		// READ_BRAM to EXT
		// --> should see rst_ext go high
		//#4 bram_done = 1;
		//#2 bram_done = 0;
		// --> should see ext_en go high
		
		// EXT to ROUNDS
		// --> should see rst_rounds go high
		// --> should see rounds_en go high
		
		@(posedge rounds_done);
		assert(hh == 160'ha9993e364706816aba3e25717850c26c9cd0d89d) $display("hash 'abc' matches: %h", hh);
			else $error("INCORRECT HASH FOR 'abc'");
		#2 spart_done = 1; 
		#2 spart_done = 0;
		
		// TEST 2
		// IDLE to READ_BRAM
		#2 H_int = 1;
		#2 H_int = 0;
		index = 4'b0010;
		@(posedge rounds_done);
		assert(hh == 160'h4d61c2e8067c8293fb328afe09ce626935553fc3) $display("hash 'TEST_STR' matches: %h", hh);
			else $error("INCORRECT HASH FOR 'TEST_STR'");
		#2 spart_done = 1; 
		#2 spart_done = 0;
		
// TEST 2
		
		/* // 'TEST_STR'
		hash_data = 512'b01010100010001010101001101010100010111110101001101010100010100101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000;
		
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
		// --> should see rounds_en go high
		
		@(posedge rounds_done);
		assert(hh == 160'h4d61c2e8067c8293fb328afe09ce626935553fc3) $display("hash 'TEST_STR' matches: %h", hh);
			else $error("INCORRECT HASH FOR 'TEST_STR'");
		#2 spart_done = 1; 
		#2 spart_done = 0;

// TEST 3
		
		// '0123456789012345678901234567890123456789012345678901234'
		hash_data = 512'b00110000001100010011001000110011001101000011010100110110001101110011100000111001001100000011000100110010001100110011010000110101001101100011011100111000001110010011000000110001001100100011001100110100001101010011011000110111001110000011100100110000001100010011001000110011001101000011010100110110001101110011100000111001001100000011000100110010001100110011010000110101001101100011011100111000001110010011000000110001001100100011001100110100100000000000000000000000000000000000000000000000000000000000000110111000;
		
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
		// --> should see rounds_en go high
		
		@(posedge rounds_done);
		assert(hh == 160'h9f3a4ce7f66b1b74c34da2c5d732c39f81e0f8df) $display("hash '0123456789012345678901234567890123456789012345678901234' matches: %h", hh);
			else $error("INCORRECT HASH FOR '0123456789012345678901234567890123456789012345678901234'");
		#2 spart_done = 1; 
		#2 spart_done = 0;		
		
// TEST 4
		
		// 'This is a test string'
		hash_data = 512'b01010100011010000110100101110011001000000110100101110011001000000110000100100000011101000110010101110011011101000010000001110011011101000111001001101001011011100110011110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010101000;
		
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
		// --> should see rounds_en go high
		
		@(posedge rounds_done);
		assert(hh == 160'he2f67c772368acdeee6a2242c535c6cc28d8e0ed) $display("hash 'This is a test string' matches: %h", hh);
			else $error("INCORRECT HASH FOR 'This is a test string'");
		#2 spart_done = 1; 
		#2 spart_done = 0;		
		
// TEST 5
		
		// 'ECE554 H@sh funct|0n []utput'
		hash_data = 512'b01000101010000110100010100110101001101010011010000100000010010000100000001110011011010000010000001100110011101010110111001100011011101000111110000110000011011100010000001011011010111010111010101110100011100000111010101110100100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011100000;
		
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
		// --> should see rounds_en go high
		
		@(posedge rounds_done);
		assert(hh == 160'hedb9c43fce6a2b767649eef553483796965ddfda) $display("hash 'ECE554 H@sh funct|0n []utput' matches: %h", hh);
			else $error("INCORRECT HASH FOR 'ECE554 H@sh funct|0n []utput'");
		#2 spart_done = 1; 
		#2 spart_done = 0;		
		
		 */
		#4 $stop;
		
		
	end
endmodule