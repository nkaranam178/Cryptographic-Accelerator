module If(clk, rst_n, branch, target_pc, instr_to_write, ImemWrite, cur_pc, instr, ImemStall, DmemStall);

input clk, rst_n, branch, ImemWrite, DmemStall;
input[15:0] target_pc, instr_to_write;
output[15:0] instr;
reg stall, stall2;
reg[15:0] addr;
output reg[15:0] cur_pc;
output ImemStall;

assign ImemStall = (stall | stall2);

// Pc mux
always @(posedge clk, negedge rst_n) begin
	if (!rst_n) begin
	  stall <= 1;
	  cur_pc <= 0;
	  addr <= 0;
	end
	else if (stall | stall2) begin
	  stall <= 0;
	  cur_pc <= cur_pc;
	  addr <= addr + 2;
	end
	else if (branch) begin
	  stall <= 1;
	  cur_pc <= target_pc;
	  addr <= target_pc;
	end
	else begin
	  stall <= 0;
	  cur_pc <= cur_pc + 2;
	  addr <= addr + 2;
	end
end



always @(posedge clk)
	stall2 <= stall;


// BRAM IP
BRAM Imem(.address(addr[8:0]), .clock(clk), .data(instr_to_write), .wren(ImemWrite), .q(instr));


endmodule
