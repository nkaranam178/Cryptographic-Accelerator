module gp_cpu(clk, rst_n, H_done, E_done, D_done, ImemWrite, ImemData, writeToFile, H_int, E_int, D_int, index, cpu_done, addr_to_write);

// Top Level I/O
input clk, rst_n, H_done, E_done, D_done;
input wire ImemWrite;
input wire[15:0] ImemData;
input wire writeToFile;		// remove once we have SPART
input wire[8:0] addr_to_write;
output H_int, E_int, D_int, cpu_done;
output[10:0] index;

// Write Enables
wire IfId_WrEn, IdEx_WrEn, ExMem_WrEn, MemWb_WrEn;
wire side_channel_stall, side_channel_done;
reg side_channel_done_ff, side_channel_done_ff2;


// If Wires
wire[15:0] If_pc, If_instr;
wire ImemStall;

// If/Id Registers
reg[15:0] IfId_pc, IfId_instr;


// Id Wires
wire[15:0] Id_read_data1, Id_read_data2, Id_instr, target_pc;
wire Id_memRead, Id_memWrite, Id_memToReg, Id_aluSrc, Id_regWrite;
wire[2:0] Id_rd;
wire Branch;  // from Control Unit to Branching Module
wire branch;	// from Branching to Fetch Stage

// Id/Ex Registers
reg[15:0] IdEx_read_data1, IdEx_read_data2;
reg IdEx_memRead, IdEx_memWrite, IdEx_memToReg, IdEx_aluSrc, IdEx_regWrite;
reg[1:0] IdEx_aluOp;
reg[2:0] IdEx_rd;
reg[4:0] IdEx_opcode;
reg[10:0] IdEx_imm;


// Ex Wires
wire[15:0] Ex_alu_out, Ex_val_to_write;
wire[2:0] Ex_rd;
wire Ex_regWrite, Ex_memToReg, Ex_memRead, Ex_memWrite;
wire [2:0] flags;
wire[1:0] alu_in_1_src, alu_in_2_src;	// select input for alu data sources


// Ex/Mem Registers
reg[15:0] ExMem_alu_out, ExMem_val_to_write;
reg[2:0] ExMem_rd;
reg ExMem_regWrite, ExMem_memToReg, ExMem_memRead, ExMem_memWrite;
reg[4:0] ExMem_opcode;


// Mem Wires
wire[15:0] Mem_memOut;
wire dMemStall;

// Mem/Wb Registers
reg[15:0] MemWb_memOut, MemWb_alu_out;
reg[2:0] MemWb_rd; 
reg MemWb_regWrite, MemWb_memToReg;
reg[4:0] MemWb_opcode;


// Wb wires
wire[15:0] Wb_writeData;
wire wbhalt;

// remove when we instantiate
//TODO
//TODO
//omfg TODO
assign H_done = 0;
assign D_done = 0;

assign cpu_done = wbhalt;
assign side_channel_stall = H_int | E_int | D_int;
assign side_channel_done = H_done | E_done | D_done;

// TODO 422 these wires were declared but not driven. Tie them high for now.
assign IfId_WrEn = (~ImemStall & ~dMemStall & ~wbhalt & ~side_channel_stall) | side_channel_done_ff;
assign IdEx_WrEn = (~dMemStall & ~wbhalt & ~side_channel_stall) | side_channel_done_ff;
assign ExMem_WrEn = (~dMemStall & ~wbhalt & ~side_channel_stall) | side_channel_done_ff;
assign MemWb_WrEn = (~wbhalt & ~side_channel_stall) | side_channel_done_ff;

always @(posedge clk, negedge rst_n) begin
	if (!rst_n)
	  side_channel_done_ff <= 1'b0;
	else 
	  side_channel_done_ff <= side_channel_done;
end

always @(posedge clk, negedge rst_n) begin
	if (!rst_n)
	  side_channel_done_ff2 <= 1'b0;
	else 
	  side_channel_done_ff2 <= side_channel_done_ff;
end

// Fetch stage
/*
If If_stage(.clk(clk), .rst_n(rst_n), .branch(branch), .target_pc(target_pc),
	    .cur_pc(If_pc), .prev_pc(IfId_pc), .instr(If_instr));
		
*/		
If If_stage(.clk(clk), .rst_n(rst_n), .branch(branch), .target_pc(target_pc),
		.instr_to_write(ImemData), .ImemWrite(ImemWrite), .cur_pc(If_pc), .instr(If_instr),
		.ImemStall(ImemStall), .DmemStall(dMemStall | side_channel_stall), .addr_to_write(addr_to_write));
		// TODO replace ImemWrite with a real SPART signal


// IfId Pipeline Register
always @(posedge clk, negedge rst_n) begin
	if (!rst_n) begin
	  IfId_instr <= 16'h0;
	  IfId_pc <= 16'h0;
	end
	else if (IfId_WrEn) begin
	  IfId_instr <= If_instr;
	  IfId_pc <= If_pc;
	end
	else if (branch) begin
	  IfId_instr <= 16'h0;
	  IfId_pc <= 16'h0;
	end
end

// IfId Pipeline Register (negedge bc simulates combinational while allowing for WrEn 
// This has been absorbed into If stage
/*
always @(negedge clk, negedge rst_n) begin
	if (!rst_n) 
	  IfId_pc <= 16'h0;
	else if (IfId_WrEn)
	  IfId_pc <= If_pc;
end	
*/


decode De(.clk(clk), .rst_n(rst_n), .wbhalt(wbhalt), .H_done(H_done), .E_done(E_done), 
          .D_done(D_done), .wb_regWrite(MemWb_regWrite), .instruction_in(IfId_instr),
		  .write_data(Wb_writeData), .RegWrite(Id_regWrite), .Branch(Branch),
		  .MemWrite(Id_memWrite), .MemToReg(Id_memToReg), .ALUSrc(Id_aluSrc),
		  .H_int(H_int), .E_int(E_int), .D_int(D_int), .index(index),
		  .read_data_1(Id_read_data1), .read_data_2(Id_read_data2),
		  .instruction_out(Id_instr), .rd(Id_rd), .wb_rd(MemWb_rd));

branching Br(.clk(clk), .rst_n(rst_n), .Branch(Branch), .flags(flags),
	.instruction(IfId_instr), .pc_plus_two(IfId_pc + 16'h2), .branch(branch), .target_pc(target_pc));

// IdEx Pipeline Register
always @(posedge clk, negedge rst_n) begin
	if (!rst_n) begin
	  IdEx_read_data1 <= 16'h0;
	  IdEx_read_data2 <= 16'h0;
	  IdEx_memRead 	  <= 1'h0;
	  IdEx_memWrite   <= 1'h0;
	  IdEx_memToReg   <= 3'h0;
	  IdEx_aluSrc	  <= 1'h0;
	  IdEx_regWrite   <= 1'h0;
	  IdEx_aluOp	  <= 2'b0;
	  IdEx_rd	  	  <= 3'h0;
	  IdEx_opcode	  <= 5'h0;
	  IdEx_imm        <= 11'h000;
	end
	else if (IdEx_WrEn) begin
	  IdEx_read_data1 <= Id_read_data1;
	  IdEx_read_data2 <= Id_read_data2;
	  IdEx_memRead 	  <= Id_memRead;
	  IdEx_memWrite   <= Id_memWrite;
	  IdEx_memToReg   <= Id_memToReg;
	  IdEx_aluSrc	  <= Id_aluSrc;
	  IdEx_regWrite   <= Id_regWrite;
	  IdEx_aluOp	  <= Id_instr[1:0];
	  IdEx_rd	  	  <= Id_rd;
	  IdEx_opcode	  <= Id_instr[15:11];
	  IdEx_imm 		  <= Id_instr[10:0];
	end

end

execute Ex(.clk(clk), .rst_n(rst_n), .read_data_1(IdEx_read_data1), 
           .read_data_2(IdEx_read_data2), .imm(IdEx_imm), .opcode(IdEx_opcode),
		   .aluOp(IdEx_aluOp), .aluSrc(IdEx_aluSrc), .memwb_data(Wb_writeData),
		   .exmem_data(ExMem_alu_out), .flags(flags), .alu_out(Ex_alu_out),
		   .value_to_write(Ex_val_to_write), .alu_in_1_src(alu_in_1_src), .alu_in_2_src(alu_in_2_src));

forwarding Fo(.clk(clk), .rst_n(rst_n), .exmem_regWrite(ExMem_regWrite),
	.memwb_regWrite(MemWb_regWrite), .idex_rs(IdEx_imm[10:8]), .idex_rt(IdEx_imm[7:5]),
	.exmem_rd(ExMem_rd), .memwb_rd(MemWb_rd), .alu_in_1_src(alu_in_1_src), .alu_in_2_src(alu_in_2_src));

// ExMem Pipeline Register
always @(posedge clk, negedge rst_n) begin
	if (!rst_n) begin
	  ExMem_alu_out  <= 16'h0;
	  ExMem_val_to_write  <= 16'h0;
	  ExMem_memRead  <= 1'h0;
	  ExMem_memWrite <= 1'h0;
	  ExMem_regWrite <= 1'h0;
	  ExMem_memToReg <= 1'h0;
	  ExMem_rd 	 <= 3'h0;
	  ExMem_opcode <= 5'h00;
	end
	else if (ExMem_WrEn) begin
	  ExMem_alu_out  <= Ex_alu_out;
	  ExMem_val_to_write  <= Ex_val_to_write;
	  ExMem_memRead  <= IdEx_memRead;
	  ExMem_memWrite <= IdEx_memWrite;
	  ExMem_regWrite <= IdEx_regWrite;
	  ExMem_memToReg <= IdEx_memToReg;
	  ExMem_rd 	 <= IdEx_rd;
	  ExMem_opcode <= IdEx_opcode;
	end

end


// Memory Stage
Mem Mem_stage(.clk(clk), .rst_n(rst_n), .alu_out(ExMem_alu_out), .alu_in2(ExMem_val_to_write), 
	      .memRead(ExMem_memToReg), .DmemWrite(ExMem_memWrite), .mem_out(Mem_memOut), .DmemStall(dMemStall));

// MemWb Pipeline Register
always @(posedge clk, negedge rst_n) begin
	if (!rst_n) begin
	  MemWb_alu_out  <= 16'h0;
	  MemWb_memOut 	 <= 16'h0;
	  MemWb_regWrite <= 1'h0;
	  MemWb_memToReg <= 1'h0;
	  MemWb_rd 	 <= 3'h0;
	  MemWb_opcode <= 5'h00;
	end
	else if (MemWb_WrEn) begin
	  MemWb_alu_out  <= ExMem_alu_out;
	  MemWb_memOut 	 <= Mem_memOut;
	  MemWb_regWrite <= ExMem_regWrite;
	  MemWb_memToReg <= ExMem_memToReg;
	  MemWb_rd 	 <= ExMem_rd;
	  MemWb_opcode <= ExMem_opcode;
	end

end

// writeback mux
assign Wb_writeData = (MemWb_memToReg) ? MemWb_memOut : MemWb_alu_out;
assign wbhalt = &MemWb_opcode;




endmodule


