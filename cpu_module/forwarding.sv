module forwarding(clk, rst_n, exmem_regWrite, memwb_regWrite, idex_rs, idex_rt, exmem_rd, memwb_rd, alu_in_1_src, alu_in_2_src);

input clk, rst_n;
input exmem_regWrite, memwb_regWrite;	// control sig
input [2:0] idex_rs, idex_rt, exmem_rd, memwb_rd;	// reg num to be compared

output [1:0] alu_in_1_src, alu_in_2_src;	// select input for alu data sources

assign alu_in_1_src = (exmem_regWrite && (exmem_rd == idex_rs)) ? 2'b00 :	// ex-mem forwarding: has priority
			(memwb_regWrite && (memwb_rd == idex_rs)) ? 2'b01 :	// mem-wb forwarding
				2'b10;						// read_data_1

assign alu_in_2_src = (exmem_regWrite && (exmem_rd == idex_rt)) ? 2'b00 :	// ex-mem forwarding: has priority
			(memwb_regWrite && (memwb_rd == idex_rt)) ? 2'b01 :	// mem-wb forwarding
				2'b10;						// read_data_2

endmodule
