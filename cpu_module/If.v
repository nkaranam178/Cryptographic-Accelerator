// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module If(clk, rst_n, branch, target_pc, instr_to_write, ImemWrite, cur_pc, instr, ImemStall, DmemStall);

input clk, rst_n, branch, ImemWrite, DmemStall;
input[15:0] target_pc, instr_to_write;
output[15:0] instr, instr;
reg stall, stall2, DmemStall2, DmemStall3;
reg[15:0] addr, stallReg;
wire[15:0] instrOut;
output reg[15:0] cur_pc;
output ImemStall;

// Pc stall signal
assign ImemStall = (stall | stall2);
// show instruction unless during a stall which shows captured value
assign instr = ((DmemStall2 | DmemStall3) == 1'b1) ? stallReg : instrOut;


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
	else if (DmemStall) begin
	  stall <= 1;
	  cur_pc <= cur_pc;
	  addr <= addr - 4;
	end
	else begin
	  stall <= 0;
	  cur_pc <= cur_pc + 2;
	  addr <= addr + 2;
	end
end


// register for stall delay
always @(posedge clk)
	stall2 <= stall;

// allows for Dmem stalls by holding last instr and startup like a rst/branch
always @(posedge clk) begin
	DmemStall2 <= DmemStall;
	DmemStall3 <= DmemStall2;
	if (DmemStall)
	  stallReg <= instrOut;
	else if (!rst_n)
	  stallReg <= 16'h0;

end


// BRAM IP
BRAM Imem(.address(addr[8:0]), .clock(clk), .data(instr_to_write), .wren(ImemWrite), .q(instrOut));


endmodule
