module Spart_Control_TL(clk, rst_n, to_IMEM, to_HASH, to_DEC, to_ENC, cpu_start);
	
	input clk, rst_n;
	
	// TODO: connect to sc instantiation 
	output cpu_start; // tell cpu to begin excecution, read next instruction in from program loader
	output [15:0] to_IMEM;	// dataline that gets written into IMEM BRAM, addr to read from program loader
	output [511:0] to_HASH; // dataline that gets written into HASH BRAM
	output [127:0] to_ENC, to_DEC; //datalines that get written into ENC and DEC BRAM
	
	reg [15:0] dataline, addr_line;

	Spart_Control sc(.clk(clk), .rst_n(rst_n), .data_in(dataline), .to_IMEM(), .to_HASH(), 
						.to_ENC(), .to_DEC(), .cpu_start(), .r_addr(addr_line), 
						.to_IMEM_en(), .to_HASH_en(), .to_DEC_en(), .to_ENC_en());
	
	program_loader pl(.data_out(dataline), .addr(addr_line), .enable(1'b1), .wr(1'b0), .clk(clk), .rst(~rst_n));
	
endmodule

