module Spart_Control_TL(clk, rst_n, to_IMEM, to_HASH_a, to_HASH_b, to_DEC, to_ENC, cpu_start,
						to_IMEM_en, to_HASH_en, to_DEC_en, to_ENC_en, imem_addr, hash_addr_a, 
						hash_addr_b, encrypt_addr, decrypt_addr);
	
	input clk, rst_n;
	
	// TODO: connect to sc instantiation 
	output cpu_start, to_IMEM_en, to_HASH_en, to_DEC_en, to_ENC_en; // tell cpu to begin excecution, read next instruction in from program loader
	output [15:0] to_IMEM;	// dataline that gets written into IMEM BRAM, addr to read from program loader
	output [255:0] to_HASH_a, to_HASH_b; // dataline that gets written into HASH BRAM
	output [127:0] to_ENC, to_DEC; //datalines that get written into ENC and DEC BRAM
	output [8:0] imem_addr;
	output [3:0] hash_addr_a, hash_addr_b;
	output [4:0] encrypt_addr, decrypt_addr;
	
	//internal transfer lines
	reg [15:0] dataline, addr_line, imem_line;
	reg [511:0] hash_line;
	reg [127:0] encrypt_line, decrypt_line;
	
	reg [8:0] imem_addr_line;
	reg [3:0] hash_addr_a_line, hash_addr_b_line;
	reg [4:0] encrypt_addr_line, decrypt_addr_line;
	
	reg cpu_start_line, to_IMEM_en_line, to_HASH_en_line, to_DEC_en_line, to_ENC_en_line;
	
	
	//dataline assignments
	assign to_IMEM = imem_line;
	assign to_HASH_a = hash_line[255:0];
	assign to_HASH_b = hash_line[511:256];
	assign to_ENC = encrypt_line;
	assign to_DEC = decrypt_line;
	//address assignments
	assign imem_addr = imem_addr_line;
	assign hash_addr_a = hash_addr_a_line;
	assign hash_addr_b = hash_addr_b_line + 1;
	assign encrypt_addr = encrypt_addr_line;
	assign decrypt_addr = decrypt_addr_line;
	//enable assignments
	assign to_IMEM_en = to_IMEM_en_line;
	assign to_HASH_en = to_HASH_en_line;
	assign to_ENC_en = to_ENC_en_line;
	assign to_DEC_en = to_DEC_en_line;
	assign cpu_start = cpu_start_line;

	Spart_Control sc(.clk(clk), .rst_n(rst_n), .data_in(dataline), 
						.to_IMEM(imem_line), 
						.to_HASH(hash_line), 
						.to_ENC(encrypt_line), 
						.to_DEC(decrypt_line), 
						.cpu_start(cpu_start_line), 
						.r_addr(addr_line), 
						.to_IMEM_en(to_IMEM_en_line), 
						.to_HASH_en(to_HASH_en_line), 
						.to_DEC_en(to_DEC_en_line), 
						.to_ENC_en(to_ENC_en_line),
						.imem_addr(imem_addr_line), 
						.hash_addr_a(hash_addr_a_line), 
						.hash_addr_b(hash_addr_b_line),
						.encrypt_addr(encrypt_addr_line), 
						.decrypt_addr(decrypt_addr_line));
	
	program_loader pl(.data_out(dataline), .addr(addr_line), .enable(1'b1), .wr(1'b0), .clk(clk), .rst(~rst_n));
	
endmodule

