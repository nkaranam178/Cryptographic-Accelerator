module Mem(clk, rst_n, alu_out, alu_in2, memRead, DmemWrite, mem_out);

input clk, rst_n, memRead, DmemWrite;
input[15:0] alu_out, alu_in2;
output mem_out;



// BRAM IP
BRAM Dmem(.address(alu_out), .clock(clk), .data(alu_in2), .wren(DmemWrite), .q(mem_out));



endmodule
