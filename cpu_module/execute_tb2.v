module execute_tb2();

	// Input Signals
	reg clk, rst_n;
	reg[15:0] read_data_1, read_data_2, imm;
	reg[4:0] opcode;
	reg[1:0] aluOp;
	reg aluSrc;

	// For forwarding
	reg[15:0] exmem_data;
	reg[15:0] memwb_data;

	// Output Signals
	wire[2:0] flags;			// The destination of this is this reg itself
								// Note: Flags format is {Z, V, N} == {Zero, Overflow, Negative}
	wire[15:0] alu_out;			// can be used as an addr into Data Memory
	wire[15:0] value_to_write;	// can be used as the value to write to Data Memory
	
	// Internal testing signals
	reg[15:0] expected_alu_out;
	reg[2:0] expected_flags;
	reg[15:0] expected_valToWrite_out;
	
	// Instantiate DUT
	execute ex(.clk(clk), .rst_n(rst_n), .read_data_1(read_data_1), .read_data_2(read_data_2), 
		.imm(imm), .opcode(opcode), .aluOp(aluOp), .aluSrc(aluSrc), .memwb_data(memwb_data), 
		.exmem_data(exmem_data), .flags(flags), .alu_out(alu_out), .value_to_write(value_to_write));

	
	always
		#10 clk = ~clk;
		
	initial begin
	
		clk = 1'b0;
		rst_n = 1'b0;
		read_data_1 = 16'h0000;
		read_data_2 = 16'h0000;
		imm = 16'h0000;
		opcode = 5'h00;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		exmem_data = 16'h0000;
		memwb_data = 16'h0000;
		expected_alu_out = 16'h0fff;		// Default
		expected_flags = 3'b000;			// Default {Z, V, N}
		expected_valToWrite_out = 16'hzzzz;	// Default
		
		// Let reset propagate
		@(posedge clk);
		@(negedge clk);
		rst_n = 1;
		
		// Note that ALU is all combinational, so alu_out can be read in the
		// same cycle that the inputs are asserted. Wait until the next clock cycle
		// to see the flags
		
		// ADD
		@(posedge clk);
		read_data_1 = 16'h1234;
		read_data_2 = 16'h1111;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'h2345;	// ADD
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: ADD alu error", $time);
		end
		
		// SUB
		@(posedge clk);
		read_data_1 = 16'h0303;
		read_data_2 = 16'h0304;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'hFFFF;	// SUB
		expected_flags = 3'b000;		// ADD should raise no flags
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: SUB alu error", $time);
		end
		if (flags !== expected_flags) begin
			$display("%t: ADD flags error", $time);
		end
		
		// ADDI
		@(posedge clk);
		read_data_1 = 16'h7FFF;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0001;
		opcode = 5'b00100;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h8000;	// ADDI
		expected_flags = 3'b001;		// SUB should raise N
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: ADDI alu error", $time);
		end
		if (flags !== expected_flags) begin
			$display("%t: SUB flags error", $time);
		end
		
		// SUBI
		@(posedge clk);
		read_data_1 = 16'hFFE2; // -30
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'hFFBA; // -70
		opcode = 5'b00101;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0028;	// SUBI
		expected_flags = 3'b011;		// ADDI should raise V, N
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: SUBI alu error", $time);
		end
		if (flags !== expected_flags) begin
			$display("%t: ADDI flags error", $time);
		end
		
		// AND
		@(posedge clk);
		read_data_1 = 16'hF0F0;
		read_data_2 = 16'hFF00;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00111;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'hF000;	// AND
		expected_flags = 3'b000;		// SUBI should raise no flags
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: AND alu error", $time);
		end
		if (flags !== expected_flags) begin
			$display("%t: SUBI flags error", $time);
		end
		
		// OR
		@(posedge clk);
		read_data_1 = 16'hF0F0;
		read_data_2 = 16'hFF00;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00111;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'hFFF0;	// OR
		expected_flags = 3'b000;		// AND should raise no flags (not even N)
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: OR alu error", $time);
		end
		if (flags !== expected_flags) begin
			$display("%t: AND flags error", $time);
		end
		
		// XOR
		@(posedge clk);
		read_data_1 = 16'hF0F0;
		read_data_2 = 16'hFF00;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00111;
		aluOp = 2'b10;
		aluSrc = 1'b0;
		expected_alu_out = 16'h0FF0;	// XOR
		expected_flags = 3'b000;		// OR should raise no flags (not even N)
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: XOR alu error", $time);
		end
		if (flags !== expected_flags) begin
			$display("%t: OR flags error", $time);
		end
		
		// NOT
		@(posedge clk);
		read_data_1 = 16'hFFFF;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00111;
		aluOp = 2'b11;
		aluSrc = 1'b0;
		expected_alu_out = 16'h0000;	// NOT
		expected_flags = 3'b000;		// OR should raise no flags (not even N)
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: NOT alu error", $time);
		end
		if (flags !== expected_flags) begin
			$display("%t: XOR flags error", $time);
		end
		
		// SLL
		@(posedge clk);
		read_data_1 = 16'hF00F;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0001;
		opcode = 5'b01000;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hE01E;	// SLL
		expected_flags = 3'b100;		// NOT should raise Z
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: SLL alu error", $time);
		end
		if (flags !== expected_flags) begin
			$display("%t: NOT flags error", $time);
		end
		
		// SRL
		@(posedge clk);
		read_data_1 = 16'hF00F;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0004;
		opcode = 5'b01001;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0F00;	// SRL
		expected_flags = 3'b000;		// SLL should lower Z, not set N
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: SRL alu error", $time);
		end
		if (flags !== expected_flags) begin
			$display("%t: SLL flags error", $time);
		end
		
		// SRA
		@(posedge clk);
		read_data_1 = 16'hF00F;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0004;
		opcode = 5'b01010;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hFF00;	// SRA
		expected_flags = 3'b000;		// SRL should not raise any flags
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: SRA alu error", $time);
		end
		if (flags !== expected_flags) begin
			$display("%t: SRL flags error", $time);
		end
		
		// MOV
		@(posedge clk);
		read_data_1 = 16'hBEEF;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b01011;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b0;
		expected_alu_out = 16'hBEEF;	// MOV
		expected_flags = 3'b000;		// SRA should not raise any flags (not N)
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: MOV alu error", $time);
		end
		if (flags !== expected_flags) begin
			$display("%t: SRA flags error", $time);
		end
		
		// B
		@(posedge clk);
		read_data_1 = 16'hzzzz; // should be ignored
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0000;
		opcode = 5'b10zzz; // ccc should be ignored
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0000;	// B
		expected_flags = 3'b000;		// MOV should not raise any flags (not N)
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: B alu error", $time);
		end
		if (flags !== expected_flags) begin
			$display("%t: MOV flags error", $time);
		end
		
		// ST
		@(posedge clk);
		read_data_1 = 16'h0002;
		read_data_2 = 16'hABAB;
		imm = 16'h0006;
		opcode = 5'b01100;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0008;	// ST
		expected_flags = 3'b000;		// B should not raise any flags (not Z)
		expected_valToWrite_out = 16'hABAB;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: ST alu error (addr)", $time);
		end
		if (value_to_write !== expected_valToWrite_out) begin
			$display("%t: ST alu error (val to write)", $time);
		end
		if (flags !== expected_flags) begin
			$display("%t: B flags error", $time);
		end
		
		// LD
		@(posedge clk);
		read_data_1 = 16'h0002;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0006;
		opcode = 5'b01101;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0008;	// LD
		expected_flags = 3'b000;		// ST should not raise any flags
		expected_valToWrite_out = 16'hzzzz;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: LD alu error", $time);
		end
		if (flags !== expected_flags) begin
			$display("%t: ST flags error", $time);
		end
		
		// HASH
		@(posedge clk);
		read_data_1 = 16'hzzzz; // should be ignored
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'hzzzz; // should be ingored
		opcode = 5'b11100;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b0;
		expected_alu_out = 16'h0FFF;	// HASH (default ALU val)
		expected_flags = 3'b000;		// LD should not raise any flags
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: HASH alu error", $time);
		end
		if (flags !== expected_flags) begin
			$display("%t: LD flags error", $time);
		end
		
		// ENC
		@(posedge clk);
		read_data_1 = 16'hzzzz; // should be ignored
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'hzzzz; // should be ingored
		opcode = 5'b11101;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b0;
		expected_alu_out = 16'h0FFF;	// ENC (default ALU val)
		expected_flags = 3'b000;		// HASH should not raise any flags
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: ENC alu error", $time);
		end
		if (flags !== expected_flags) begin
			$display("%t: HASH flags error", $time);
		end
		
		// DEC
		@(posedge clk);
		read_data_1 = 16'hzzzz; // should be ignored
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'hzzzz; // should be ingored
		opcode = 5'b11110;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b0;
		expected_alu_out = 16'h0FFF;	// DEC (default ALU val)
		expected_flags = 3'b000;		// ENC should not raise any flags
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: DEC alu error", $time);
		end
		if (flags !== expected_flags) begin
			$display("%t: ENC flags error", $time);
		end
		
		// NOP
		@(posedge clk);
		read_data_1 = 16'hzzzz; // should be ignored
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'hzzzz; // should be ingored
		opcode = 5'b00000;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b0;
		expected_alu_out = 16'h0FFF;	// NOP (default ALU val)
		expected_flags = 3'b000;		// DEC should not raise any flags
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: NOP alu error", $time);
		end
		if (flags !== expected_flags) begin
			$display("%t: DEC flags error", $time);
		end
		
		// HALT
		@(posedge clk);
		read_data_1 = 16'hzzzz; // should be ignored
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'hzzzz; // should be ingored
		opcode = 5'b11111;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b0;
		expected_alu_out = 16'h0FFF;	// HALT (default ALU val)
		expected_flags = 3'b000;		// NOP should not raise any flags
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: HALT alu error", $time);
		end
		if (flags !== expected_flags) begin
			$display("%t: NOP flags error", $time);
		end
		
		
		// HALT flags
		@(posedge clk);
		expected_flags = 3'b000;		// HALT should not raise any flags
		if (flags !== expected_flags) begin
			$display("%t: HALT flags error", $time);
		end
		
		$display("If this is the only output, all tests pass!");
		$stop;
		
		
	end
	
endmodule