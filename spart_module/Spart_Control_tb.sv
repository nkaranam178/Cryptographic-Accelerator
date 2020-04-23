`include "BRAM.v"
`timescale 1 ps / 1 ps


module Spart_Control_tb();

	// synopsys translate_off

	// synopsys translate_on

	
	// GENERAL/GLOBAL //
	reg rst_n; 
	reg clk;
	reg cpu_start;
	// IMEM //
	reg imem_en;
	reg[8:0] imem_addr;
	reg[15:0] imem_d;
	wire[15:0] imem_q;
	// HASH_MEM //
	reg	[3:0] hash_address_a;
	reg	[3:0] hash_address_b;
	reg	[255:0] hash_data_a;
	reg	[255:0] hash_data_b;
	reg hash_en;
	wire [255:0] hash_q_a;
	wire [255:0] hash_q_b;
	// ENCRYPT_MEM //
	reg	[4:0] encrypt_addr;
	reg	[127:0] encrypt_d;
	reg encrypt_en;
	wire [127:0] encrypt_q;
	// DECRYPTMEM //
	reg	[4:0] decrypt_addr;
	reg	[127:0] decrypt_d;
	reg decrypt_en;
	wire [127:0] decrypt_q;

	Spart_Control_TL sc(.clk(clk), 
		.rst_n(rst_n), 
		.to_IMEM(imem_d), 
		.to_HASH_a(hash_data_a), 
		.to_HASH_b(hash_data_b), 
		.to_DEC(decrypt_d), 
		.to_ENC(encrypt_d), 
		.cpu_start(cpu_start),
		.to_IMEM_en(imem_en), 
		.to_HASH_en(hash_en), 
		.to_DEC_en(decrypt_en), 
		.to_ENC_en(encrypt_en), 
		.imem_addr(imem_addr), 
		.hash_addr_a(hash_address_a),
		.hash_addr_b(hash_address_b), 
		.encrypt_addr(encrypt_addr), 
		.decrypt_addr(decrypt_addr));
	
	BRAM imem(
		.address(imem_addr),
		.clock(clk),
		.data(imem_d),
		.wren(imem_en),
		.q(imem_q));
		
	ram128_32 encrypt_mem(
		.address(encrypt_addr),
		.clock(clk),
		.data(encrypt_d),
		.wren(encrypt_en),
		.q(encrypt_q));
		
	ram128_32 decrypt_mem(
		.address(decrypt_addr),
		.clock(clk),
		.data(decrypt_d),
		.wren(decrypt_en),
		.q(decrypt_q));
		
	ram256x2_16 hash_mem(
		.address_a(hash_address_a),
		.address_b(hash_address_b),
		.clock(clk),
		.data_a(hash_data_a),
		.data_b(hash_data_b),
		.wren_a(hash_en),
		.wren_b(hash_en),
		.q_a(hash_q_a),
		.q_b(hash_q_b));

	always
		#10 clk = ~clk;
		
	initial begin
		rst_n = 0;
		clk = 0;
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		rst_n = 1;
	end
endmodule
