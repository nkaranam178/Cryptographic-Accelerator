module Spart_Control(clk, rst_n, data_in, to_IMEM, to_HASH, to_ENC, to_DEC, cpu_start, r_addr, 
						to_IMEM_en, to_HASH_en, to_DEC_en, to_ENC_en, imem_addr, 
						hash_addr_a, hash_addr_b, encrypt_addr, decrypt_addr);
	
	////////////////////
	//external signals//
	////////////////////
	input clk, rst_n;
	input [15:0] data_in; // instruction from program loader;
	output cpu_start, to_IMEM_en, to_HASH_en, to_DEC_en, to_ENC_en; // tell cpu to begin excecution, read next instruction in from program loader
	output [15:0] to_IMEM, r_addr;	// dataline that gets written into IMEM BRAM, addr to read from program loader
	output [511:0] to_HASH; // dataline that gets written into HASH BRAM
	output [127:0] to_ENC, to_DEC; //datalines that get written into ENC and DEC BRAM
	output [8:0] imem_addr;
	output [3:0] hash_addr_a, hash_addr_b;
	output [4:0] encrypt_addr, decrypt_addr;

	////////////////////
	//internal signals//
	////////////////////
	reg [15:0] address;
	reg [3:0] nxt_ins;
	reg fetch_ins, ins_rdy, count_hash, count_en_de, gen_en, write_hash, write_enc, write_dec, write_imem, start_cpu;
	reg [3:0] hash_addr_count;
	reg [8:0] imem_addr_count;
	reg [4:0] decrypt_addr_count, encrypt_addr_count;
	reg [511:0] hash_buffer; // dataline that gets written into HASH BRAM
	reg [127:0] enc_buffer, dec_buffer;
	
	
	
	
	
	
	///////////////
	//assignments//
	///////////////
	assign cpu_start = (start_cpu) ? 1'b1 : 1'b0;
	assign r_addr = address;
	assign fetch_ins = &nxt_ins;
	assign gen_en = (nxt_ins == 4'b0001);
	/////////// line always the instruction, write enables write into BRAM
	assign to_IMEM = data_in; 
	assign to_HASH = hash_buffer;
	assign to_DEC = dec_buffer;
	assign to_ENC = enc_buffer;
	
	assign to_IMEM_en = (gen_en & write_imem);
	assign to_HASH_en = (gen_en & write_hash);
	assign to_DEC_en = (gen_en & write_dec);
	assign to_ENC_en = (gen_en & write_enc);
	/////////
	assign hash_addr_a = hash_addr_count - 2;
	assign hash_addr_b = hash_addr_count - 2;
	assign imem_addr = imem_addr_count - 2;
	assign encrypt_addr = encrypt_addr_count - 1;
	assign decrypt_addr = decrypt_addr_count - 1;
	///////////////////////////////////////////////////////////////////////
	
	
	always @(posedge gen_en, negedge rst_n) begin
		if (~rst_n)
			hash_addr_count <= 4'b0000;
		else if (write_hash)
			hash_addr_count <= hash_addr_count + 2;
	end
	
	
	always @(posedge gen_en, negedge rst_n) begin
		if (~rst_n)
			imem_addr_count <= 9'b000000000;
		else if (write_imem)
			imem_addr_count <= imem_addr_count + 2;
	end
	
	
	always @(posedge gen_en, negedge rst_n) begin
		if (~rst_n)
			encrypt_addr_count <= 5'b00000;
		else if (write_enc)
			encrypt_addr_count <= encrypt_addr_count + 1;
	end
	
	
	always @(posedge gen_en, negedge rst_n) begin
		if (~rst_n)
			decrypt_addr_count <= 5'b00000;
		else if (write_dec)
			decrypt_addr_count <= decrypt_addr_count + 1;
	end	
	
	
	// increment to fetch the next instruction	// TODO: Slow this down maybe?
	always @(posedge clk) begin
		if (~rst_n)
			address <= 16'h0000;
		else if (fetch_ins)
			address <= address + 16'h0002;
	end
	
	// hi when a new instruction comes in
	always @(posedge clk) begin
		if (~rst_n)	// ins reading being immediatley
			ins_rdy = 1;
		else if (fetch_ins)
			ins_rdy <= 1;
		else
			ins_rdy <= 0;
	end
	
	// signal to fetch new instruction every 4 clock cycles (can adjust timing always)
	always @(posedge clk) begin
		if (~rst_n)
			nxt_ins <= 0;
		else
			nxt_ins <= nxt_ins + 1;
	end
	
	reg [5:0] hash_count;
	// hash counter
	always @(posedge ins_rdy) begin
		if (~rst_n)
			hash_count <= 0;
		else if (~count_hash)
			hash_count <= 0;
		else
			hash_count <= hash_count + 1;
	end
	
	reg [4:0] enc_dec_count;
	// en_de counter
	always @(posedge ins_rdy) begin
		if (~rst_n)
			enc_dec_count <= 0;
		else if (~count_en_de)
			enc_dec_count <= 0;
		else
			enc_dec_count <= enc_dec_count + 1;
	end
	
	
	// case assignments to differnet data lines
	localparam IDLE = 5'b00000;
	localparam HASH = 5'b11100;
	localparam ENCR = 5'b11101;
	localparam DECR = 5'b11110;
	localparam HALT = 5'b11111;
	reg[4:0] state, nxt_state;
	
	always @ (posedge clk, negedge rst_n) begin
		if (~rst_n)
			state <= IDLE;
		else
			state <= nxt_state;	
	end
	
	// buffer code
	always @ (posedge ins_rdy, negedge rst_n) begin
		if (~rst_n)
			hash_buffer = 0;
		else if (count_hash & (hash_count < 32))
			hash_buffer = {hash_buffer[495:0], data_in};
	end
	
	always @ (posedge ins_rdy, negedge rst_n) begin
		if (~rst_n)
			dec_buffer = 0;
		else if (count_en_de & (enc_dec_count < 8))
			dec_buffer = {dec_buffer[111:0], data_in};
	end
	
	always @ (posedge ins_rdy, negedge rst_n) begin
		if (~rst_n)
			enc_buffer = 0;
		else if (count_en_de & (enc_dec_count < 8))
			enc_buffer = {enc_buffer[111:0], data_in};
	end
	
	always @(posedge clk) begin			//make snappier!!!
		if (ins_rdy) begin
			nxt_state = IDLE;
			count_hash = 0;
			count_en_de = 0;
			write_hash = 0;
			write_dec = 0;
			write_enc = 0;
			write_imem = 0;
			start_cpu = 0;
			case (state)
				IDLE : begin // reading in standard instructions
					write_imem = 1;
					count_hash = 0;
					count_en_de = 0;
					write_hash = 0;
					write_dec = 0;
					write_enc = 0;
					start_cpu = 0;
					case(data_in[15:11])
						HASH : begin
							nxt_state = HASH;
							count_hash = 1;
						end
						ENCR : begin
							nxt_state = ENCR;
							count_en_de = 1;
						end
						DECR : begin
							nxt_state = DECR;
							count_en_de = 1;
						end
						HALT : begin
							nxt_state = HALT;
						end
					endcase
				
				end
				//// HASH ////
				HASH : begin
					count_hash = 1;
					write_imem = 0;
					count_en_de = 0;
					write_hash = 0;
					write_dec = 0;
					write_enc = 0;
					write_imem = 0;
					start_cpu = 0;
					if (hash_count < 33) begin
						nxt_state = HASH;
						//write_hash = 0; //building 512 bit buffer
					end
					else begin
						write_hash = 1;
						count_hash = 0;
						case(data_in[15:11])
							HASH : begin
								nxt_state = HASH;
								count_hash = 1;
								write_imem = 1;
							end
							ENCR : begin
								nxt_state = ENCR;
								write_imem = 1;
								count_en_de = 1;
							end
							DECR : begin
								nxt_state = DECR;
								write_imem = 1;
								count_en_de = 1;
							end
							HALT : begin
								nxt_state = HALT;
								write_imem = 1;
							end
							default : begin
								nxt_state = IDLE;
								write_imem = 1;
							end
						endcase
					end

				end
				//// ENCRYPT ////
				ENCR : begin
					count_en_de = 1;
					count_hash = 0;
					write_hash = 0;
					write_dec = 0;
					write_enc = 0;
					write_imem = 0;
					start_cpu = 0;
					if (enc_dec_count < 9) begin
						nxt_state = ENCR;
						write_enc = 0; //building 128 bit buffer
					end
					else begin
						write_enc = 1;
						count_en_de = 0;
						case(data_in[15:11])
							HASH : begin
								nxt_state = HASH;
								count_hash = 1;
								write_imem = 1;
							end
							ENCR : begin
								nxt_state = ENCR;
								write_imem = 1;
								count_en_de = 1;
							end
							DECR : begin
								nxt_state = DECR;
								write_imem = 1;
								count_en_de = 1;
							end
							HALT : begin
								nxt_state = HALT;
								write_imem = 1;
							end
							default : begin 
								nxt_state = IDLE;
								write_imem = 1;
							end
						endcase
					end
				end
				//// DECRYPT ////
				DECR : begin
					count_en_de = 1;
					count_hash = 0;
					write_hash = 0;
					write_dec = 0;
					write_enc = 0;
					write_imem = 0;
					start_cpu = 0;
					if (enc_dec_count < 9) begin
						nxt_state = DECR;
						//write_dec = 0; //building 128 bit buffer
					end
					else begin
						write_dec = 1;
						count_en_de = 0;
						case(data_in[15:11])
							HASH : begin
								nxt_state = HASH;
								count_hash = 1;
								write_imem = 1;
							end
							ENCR : begin
								nxt_state = ENCR;
								write_imem = 1;
							end
							DECR : begin
								nxt_state = DECR;
								write_imem = 1;
							end
							HALT : begin
								nxt_state = HALT;
								write_imem = 1;
							end
							default : begin 
								nxt_state = IDLE;
								write_imem = 1;
							end
						endcase
					end
				end
				
				HALT : begin
					//TODO: Handle this (disable reading?)
					nxt_state = HALT;
					start_cpu = 1;
				end
			endcase
		end
	end
	
endmodule

