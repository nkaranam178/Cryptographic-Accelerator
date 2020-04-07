module decode (
	clk, 
	rst_n, 
	wbhalt,
	H_done, 
	E_done, 
	D_done,
	wb_regWrite,
	instruction_in, 
	write_data, 
	RegWrite, 
	Branch, 
	MemWrite, 
	MemToReg, 
	ALUSrc,
	H_int, 
	E_int, 
	D_int, 
	index,
	read_data_1, 
	read_data_2,
	instruction_out);

input clk, rst_n, wbhalt, H_done, E_done, D_done, wb_regWrite; 
input [15:0] instruction_in, write_data;
output RegWrite, Branch, MemWrite, MemToReg, ALUSrc, H_int, E_int, D_int;
output [10:0] index; 
output [15:0] read_data_1, read_data_2, instruction_out;
wire regWrite;
wire [2:0] rd;

assign regWrite = !wbhalt && wb_regWrite;	// the actual rf write enable signal
assign rd = instruction_in[15:13] == 3'b011 ? instruction_in[7:5] : instruction_in[4:2];
assign index = instruction_in[10:0];
assign instruction_out = instruction_in;

// instantiate reg file
regFile rf (
	.clk(clk), 
	.rst_n(rst_n), 
	.regWrite(regWrite), 
	.rs(instruction_in[10:8]), 
	.rt(instruction_in[7:5]), 
	.rd(rd), 
	.write_data(write_data), 
	.read_data_1(read_data_1), 
	.read_data_2(read_data_2)
	);

// instantiate control unit
control cntrl (
	.clk(clk), 
	.rst_n(rst_n), 
	.opcode(instruction_in[15:11]), 
	.Branch(Branch), 
	.MemWrite(MemWrite), 
	.MemToReg(MemToReg), 
	.RegWrite(RegWrite), 
	.ALUSrc(ALUSrc),
	.H_int(H_int), 
	.E_int(E_int), 
	.D_int(D_int)
	);
// instantiate branch unit TODO

endmodule
