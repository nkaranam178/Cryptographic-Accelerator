module If(clk, rst_n, branch, target_pc, prev_pc, instr_to_write, ImemWrite, cur_pc, instr);

input clk, rst_n, branch, ImemWrite;
input[15:0] target_pc, prev_pc, instr_to_write;
output[15:0] instr;
output reg[15:0] cur_pc;


// Pc mux
always @(posedge clk, negedge rst_n) begin
	if (!rst_n) 
	  cur_pc <= 0;
	else if (branch)
	  cur_pc <= target_pc;
	else
	  cur_pc <= prev_pc + 2;
end



// TAKE OUT
assign instr = 16'h0;


// BRAM IP
BRAM Imem(.address(cur_pc[8:0]), .clock(clk), .data(instr_to_write), .wren(ImemWrite), .q(instr));


endmodule
