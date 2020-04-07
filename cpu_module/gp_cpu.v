module gp_cpu(clk, rst_n, H_done, E_done, D_done, H_int, E_int, D_int, index, cpu_done);

// Top Level I/O
input clk, rst_n, H_done, E_done, D_done;
output H_int, E_int, D_int, cpu_done;
output[10:0] index;

// Write Enables
wire IfId_WrEn, IdEx_WrEn, ExMem_WrEn, MemWb_WrEn;


// If Wires
wire[15:0] If_pc, If_instr;

// If/Id Registers
reg[15:0] IfId_pc, IfId_instr;


// Id Wires
wire[15:0] Id_read_data1, Id_read_data2, Id_instr;
wire Id_memRead, Id_memWrite, Id_memToReg, Id_aluSrc, Id_regWrite;

// Id/Ex Registers
reg[15:0] IdEx_read_data1, IdEx_read_data2;
reg IdEx_memRead, IdEx_memWrite, IdEx_memToReg, IdEx_aluSrc, IdEx_regWrite;
reg[1:0] IdEx_aluOp;
reg[2:0] IdEx_rd;
reg[5:0] IdEx_opcode;
reg[10:0] IdEx_imm;


// Ex Wires
wire[15:0] Ex_alu_out, Ex_val_to_write;
wire[2:0] Ex_rd;
wire Ex_regWrite, Ex_memToReg, Ex_memRead, Ex_memWrite;
wire [2:0] flags;

// Ex/Mem Registers
reg[15:0] ExMem_alu_out, ExMem_val_to_write;
reg[2:0] ExMem_rd;
reg ExMem_regWrite, ExMem_memToReg, ExMem_memRead, ExMem_memWrite;


// Mem Wires
wire[15:0] Mem_memOut;

// Mem/Wb Registers
reg[15:0] MemWb_memOut, MemWb_alu_out;
reg[2:0] MemWb_rd; 
reg MemWb_regWrite, MemWb_memToReg;


// Wb wires
wire[15:0] Wb_writeData;


// Fetch stage
If If_stage(.clk(clk), .rst_n(rst_n), .branch(branch), .target_pc(target_pc),
	    .cur_pc(If_pc), .prev_pc(IfId_pc), .instr(If_instr));


// IfId Pipeline Register
always @(posedge clk, negedge rst_n) begin
	if (!rst_n)
	  IfId_instr <= 16'h0;
	else if (IfId_WrEn)
	  IfId_instr <= If_instr;
end

// IfId Pipeline Register (negedge bc simulates combinational while allowing for WrEn 
always @(negedge clk, negedge rst_n) begin
	if (!rst_n) 
	  IfId_pc <= 16'h0;
	else if (IfId_WrEn)
	  IfId_pc <= If_pc;
end	

decode De(.clk(clk), .rst_n(rst_n), .wbhalt(1'bx), .H_done(H_done), .E_done(E_done), 
          .D_done(D_done), .wb_regWrite(MemWb_regWrite), .instruction_in(IfId_instr),
		  .write_data(Wb_writeData), .RegWrite(Id_regWrite), .Branch(branch),
		  .MemWrite(Id_memWrite), .MemToReg(Id_memToReg), .ALUSrc(Id_aluSrc),
		  .H_int(H_int), .E_int(E_int), .D_int(D_int), .index(index),
		  .read_data_1(Id_read_data1), .read_data_2(Id_read_data2), .instruction_out(Id_instr));

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
	  IdEx_rd	  	  <= Id_instr[10:8];
	  IdEx_opcode	  <= Id_instr[15:11];
	  IdEx_imm 		  <= Id_instr[10:0];
	end

end

execute Ex(.clk(clk), .rst_n(rst_n), .read_data_1(IdEx_read_data1), 
           .read_data_2(IdEx_read_data2), .imm(IdEx_imm), .opcode(IdEx_opcode),
		   .aluOp(IdEx_aluOp), .aluSrc(IdEx_aluSrc), .memwb_data(Wb_writeData),
		   .exmem_data(MemWb_alu_out), .flags(flags), .alu_out(Ex_alu_out),
		   .value_to_write(Ex_val_to_write));



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
	end
	else if (ExMem_WrEn) begin
	  ExMem_alu_out  <= Ex_alu_out;
	  ExMem_val_to_write  <= Ex_val_to_write;
	  ExMem_memRead  <= IdEx_memRead;
	  ExMem_memWrite <= IdEx_memWrite;
	  ExMem_regWrite <= IdEx_regWrite;
	  ExMem_memToReg <= IdEx_memToReg;
	  ExMem_rd 	 <= IdEx_rd;
	end

end


// Memory Stage
Mem Mem_stage(.clk(clk), .rst_n(rst_n), .alu_out(ExMem_alu_out), .alu_in2(ExMem_val_to_write), 
	      .memRead(ExMem_memRead), .memWrite(ExMem_memWrite), .mem_out(Mem_memOut));


// MemWb Pipeline Register
always @(posedge clk, negedge rst_n) begin
	if (!rst_n) begin
	  MemWb_alu_out  <= 16'h0;
	  MemWb_memOut 	 <= 16'h0;
	  MemWb_regWrite <= 1'h0;
	  MemWb_memToReg <= 1'h0;
	  MemWb_rd 	 <= 3'h0;
	end
	else if (MemWb_WrEn) begin
	  MemWb_alu_out  <= ExMem_alu_out;
	  MemWb_memOut 	 <= Mem_memOut;
	  MemWb_regWrite <= ExMem_regWrite;
	  MemWb_memToReg <= ExMem_memToReg;
	  MemWb_rd 	 <= ExMem_rd;
	end

end

// writeback mux
assign Wb_writeData = (MemWb_memToReg) ? MemWb_memOut : MemWb_alu_out;



endmodule

