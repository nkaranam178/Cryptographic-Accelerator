module execute_tb();

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
	
	// for testing SRA sign extension - see right before the $stop
	wire signed[15:0] vec;	// this works but not for read_data_1
	assign vec = 16'hf0f0;
	
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
		expected_alu_out = 16'h00ff;	// default
		expected_flags = 3'b000;		// reset condition
		
		// Let reset propagate
		@(posedge clk);
		@(negedge clk);
		rst_n = 1;
		
		// Note that ALU is all combinational, so alu_out can be read in the
		// same cycle that the inputs are asserted. Wait until the next clock cycle
		// to see the flags
		
// ADD tests
	begin // begin ADD
		// pos + pos
		
		@(posedge clk);
		read_data_1 = 16'h1234;
		read_data_2 = 16'h1111;
		imm = 16'hzzzz;	// should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'h2345;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end

		
		// pos + pos (flipped operands)		
		@(posedge clk);
		read_data_1 = 16'h1111;
		read_data_2 = 16'h1234;
		imm = 16'hzzzz;	// should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'h2345;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end		
		
		// pos + neg
		@(posedge clk);
		read_data_1 = 16'h0032;
		read_data_2 = 16'hffb5;
		imm = 16'hzzzz;	// should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'hffe7;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// neg + pos
		@(posedge clk);
		read_data_1 = 16'hffb5;
		read_data_2 = 16'h0032;
		imm = 16'hzzzz;	// should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'hffe7;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// neg + neg
		@(posedge clk);
		read_data_1 = 16'hffe2;
		read_data_2 = 16'hffba;
		imm = 16'hzzzz;	// should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'hff9c;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// neg + neg (operands flipped)
		@(posedge clk);
		read_data_1 = 16'hffba;
		read_data_2 = 16'hffe2;
		imm = 16'hzzzz;	// should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'hff9c;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// pos + zero
		@(posedge clk);
		read_data_1 = 16'h0303;
		read_data_2 = 16'h0000;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'h0303;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// zero + pos
		@(posedge clk);
		read_data_1 = 16'h0000;
		read_data_2 = 16'h6060;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'h6060;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// neg + zero
		@(posedge clk);
		read_data_1 = 16'haaaa;
		read_data_2 = 16'h0000;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'haaaa;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// zero + neg
		@(posedge clk);
		read_data_1 = 16'h0000;
		read_data_2 = 16'haaaa;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'haaaa;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// zero + zero
		@(posedge clk);
		read_data_1 = 16'h0000;
		read_data_2 = 16'h0000;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'h0000;
		expected_flags = 3'b100;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// min + max
		@(posedge clk);
		read_data_1 = 16'h8000;
		read_data_2 = 16'h7FFF;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'hFFFF;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// max + min
		@(posedge clk);
		read_data_1 = 16'h7FFF;
		read_data_2 = 16'h8000;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'hFFFF;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// max + 0
		@(posedge clk);
		read_data_1 = 16'h7FFF;
		read_data_2 = 16'h0000;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'h7FFF;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// min + 0
		@(posedge clk);
		read_data_1 = 16'h8000;
		read_data_2 = 16'h0000;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'h8000;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// min + min (should overflow)
		@(posedge clk);
		read_data_1 = 16'h8000;
		read_data_2 = 16'h8000;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'h0000;
		expected_flags = 3'b110;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// min + -1 (should overflow)
		@(posedge clk);
		read_data_1 = 16'h8000;
		read_data_2 = 16'hFFFF;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'h7fff;
		expected_flags = 3'b010;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// max + max (should overflow)
		@(posedge clk);
		read_data_1 = 16'h7fff;
		read_data_2 = 16'h7fff;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'hfffe;
		expected_flags = 3'b011;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// max + 1 (should overflow)
		@(posedge clk);
		read_data_1 = 16'h7fff;
		read_data_2 = 16'h0001;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'h8000;
		expected_flags = 3'b011;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
	end	// end ADD
	
// ADDI tests
	begin // begin ADDI
		// pos + pos
		@(posedge clk);
		read_data_1 = 16'h1234;
		read_data_2 = 16'hzzzz;	// should be ignored
		imm = 16'h1111;
		opcode = 5'b00100;
		aluOp = 2'bzz;	// should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h2345;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// pos + pos (flipped operands)
		@(posedge clk);
		read_data_1 = 16'h1111;
		read_data_2 = 16'hzzzz;	// should be ignored
		imm = 16'h1234;
		opcode = 5'b00100;
		aluOp = 2'bzz;	// should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h2345;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// pos + neg
		@(posedge clk);
		read_data_1 = 16'h0032;
		read_data_2 = 16'hzzzz;	// should be ignored
		imm = 16'hffb5;
		opcode = 5'b00100;
		aluOp = 2'bzz;	// should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hffe7;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// neg + pos
		@(posedge clk);
		read_data_1 = 16'hffb5;
		read_data_2 = 16'hzzzz;	// should be ignored
		imm = 16'h0032;
		opcode = 5'b00100;
		aluOp = 2'bzz;	// should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hffe7;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// neg + neg
		@(posedge clk);
		read_data_1 = 16'hffe2;
		read_data_2 = 16'hzzzz;	// should be ignored
		imm = 16'hffba;
		opcode = 5'b00100;
		aluOp = 2'bzz;	// should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hff9c;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// neg + neg (operands flipped)
		@(posedge clk);
		read_data_1 = 16'hffba;
		read_data_2 = 16'hzzzz;	// should be ignored
		imm = 16'hffe2;
		opcode = 5'b00100;
		aluOp = 2'bzz;	// should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hff9c;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// pos + zero
		@(posedge clk);
		read_data_1 = 16'h0303;
		read_data_2 = 16'hzzzz;	// should be ignored
		imm = 16'h0000;
		opcode = 5'b00100;
		aluOp = 2'bzz;	// should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0303;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// zero + pos
		@(posedge clk);
		read_data_1 = 16'h0000;
		read_data_2 = 16'hzzzz;	// should be ignored
		imm = 16'h0060;
		opcode = 5'b00100;
		aluOp = 2'bzz;	// should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0060;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// neg + zero
		@(posedge clk);
		read_data_1 = 16'haaaa;
		read_data_2 = 16'hzzzz;	// should be ignored
		imm = 16'h0000;
		opcode = 5'b00100;
		aluOp = 2'bzz;	// should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'haaaa;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// zero + neg
		@(posedge clk);
		read_data_1 = 16'h0000;
		read_data_2 = 16'hzzzz;	// should be ignored
		imm = 16'hffaa;
		opcode = 5'b00100;
		aluOp = 2'bzz;	// should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hffaa;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// zero + zero
		@(posedge clk);
		read_data_1 = 16'h0000;
		read_data_2 = 16'hzzzz;	// should be ignored
		imm = 16'h0000;
		opcode = 5'b00100;
		aluOp = 2'bzz;	// should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0000;
		expected_flags = 3'b100;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h + %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
	end	// end ADDI
		
// SUB tests
	begin // begin SUB
		// pos - pos
		@(posedge clk);
		read_data_1 = 16'h1234;
		read_data_2 = 16'h1111;
		imm = 16'hzzzz;	// should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'h0123;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// pos - pos (flipped operands)
		@(posedge clk);
		read_data_1 = 16'h1111;
		read_data_2 = 16'h1234;
		imm = 16'hzzzz;	// should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'hFEDD;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// pos - neg
		@(posedge clk);
		read_data_1 = 16'h0032;
		read_data_2 = 16'hffb5;
		imm = 16'hzzzz;	// should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'h007d;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// neg - pos
		@(posedge clk);
		read_data_1 = 16'hffb5;
		read_data_2 = 16'h0032;
		imm = 16'hzzzz;	// should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'hff83;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// neg - neg
		@(posedge clk);
		read_data_1 = 16'hffe2;	// -30
		read_data_2 = 16'hffba;	// -70
		imm = 16'hzzzz;	// should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'h0028;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// neg - neg (operands flipped)
		@(posedge clk);
		read_data_1 = 16'hffba;
		read_data_2 = 16'hffe2;
		imm = 16'hzzzz;	// should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'hffd8;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// pos - zero
		@(posedge clk);
		read_data_1 = 16'h0303;
		read_data_2 = 16'h0000;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'h0303;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// zero - pos
		@(posedge clk);
		read_data_1 = 16'h0000;
		read_data_2 = 16'h6060;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'h9fa0;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// neg - zero
		@(posedge clk);
		read_data_1 = 16'haaaa;
		read_data_2 = 16'h0000;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'haaaa;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// zero - neg
		@(posedge clk);
		read_data_1 = 16'h0000;
		read_data_2 = 16'haaaa;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'h5556;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// zero - zero
		@(posedge clk);
		read_data_1 = 16'h0000;
		read_data_2 = 16'h0000;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'h0000;
		expected_flags = 3'b100;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// min - max (should overflow)
		@(posedge clk);
		read_data_1 = 16'h8000;
		read_data_2 = 16'h7FFF;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'h0001;
		expected_flags = 3'b010;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// max - min (should overflow)
		@(posedge clk);
		read_data_1 = 16'h7FFF;
		read_data_2 = 16'h8000;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'hFFFF;
		expected_flags = 3'b011;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// max - 0
		@(posedge clk);
		read_data_1 = 16'h7FFF;
		read_data_2 = 16'h0000;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'h7FFF;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// min - 0
		@(posedge clk);
		read_data_1 = 16'h8000;
		read_data_2 = 16'h0000;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'h8000;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// min - min
		@(posedge clk);
		read_data_1 = 16'h8000;
		read_data_2 = 16'h8000;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'h0000;
		expected_flags = 3'b100;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// min - -1 (should overflow)
		@(posedge clk);
		read_data_1 = 16'h8000;
		read_data_2 = 16'hFFFF;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'h8001;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// max - max
		@(posedge clk);
		read_data_1 = 16'h7fff;
		read_data_2 = 16'h7fff;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'h0000;
		expected_flags = 3'b100;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// max - 1
		@(posedge clk);
		read_data_1 = 16'h7fff;
		read_data_2 = 16'h0001;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00110;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'h7ffe;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
	end	// end SUB
	
// SUBI tests
	begin // begin SUBI
		// pos - pos
		@(posedge clk);
		read_data_1 = 16'h1234;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h1111;
		opcode = 5'b00101;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0123;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// pos - pos (flipped operands)
		@(posedge clk);
		read_data_1 = 16'h1111;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h1234;
		opcode = 5'b00101;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hFEDD;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// pos - neg
		@(posedge clk);
		read_data_1 = 16'h0032;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'hffb5;
		opcode = 5'b00101;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h007d;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// neg - pos
		@(posedge clk);
		read_data_1 = 16'hffb5;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0032;
		opcode = 5'b00101;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hff83;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// neg - neg
		@(posedge clk);
		read_data_1 = 16'hffe2;	// -30
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'hffba;	// -70
		opcode = 5'b00101;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0028;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// neg - neg (operands flipped)
		@(posedge clk);
		read_data_1 = 16'hffba;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'hffe2;
		opcode = 5'b00101;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hffd8;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out != expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// pos - zero
		@(posedge clk);
		read_data_1 = 16'h0303;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0000;
		opcode = 5'b00101;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0303;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// zero - pos
		@(posedge clk);
		read_data_1 = 16'h0000;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h6060;
		opcode = 5'b00101;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h9fa0;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// neg - zero
		@(posedge clk);
		read_data_1 = 16'haaaa;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0000;
		opcode = 5'b00101;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'haaaa;
		expected_flags = 3'b001;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// zero - neg
		@(posedge clk);
		read_data_1 = 16'h0000;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'haaaa;
		opcode = 5'b00101;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h5556;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// zero - zero
		@(posedge clk);
		read_data_1 = 16'h0000;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0000;
		opcode = 5'b00101;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0000;
		expected_flags = 3'b100;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h - %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
	end	// end SUBI
	
		// Done testing Overflow and Sign flag, so reset flags
		// In preparation for the next tests, this test ^ must set flags to x00
		
// AND tests
	begin // begin AND
	
		// Can test entire truth table in one test vector
		@(posedge clk);
		read_data_1 = 16'hF0F0;
		read_data_2 = 16'hFF00;
		imm = 16'hzzzz; // should be ignored
		aluSrc = 1'b0;
		opcode = 5'b00111;
		aluOp = 2'b00;
		expected_alu_out = 16'hF000;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h & %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Zero Flag test
		@(posedge clk);
		read_data_1 = 16'hF0F0;
		read_data_2 = 16'h0F0F;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00111;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		expected_alu_out = 16'h0000;
		expected_flags = 3'b100;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h & %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
	end // end AND
	
// OR tests
	begin // begin OR
	
		// Can test entire truth table in one test vector
		@(posedge clk);
		read_data_1 = 16'hF0F0;
		read_data_2 = 16'hFF00;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00111;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'hFFF0;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h | %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Zero Flag test
		@(posedge clk);
		read_data_1 = 16'h0000;
		read_data_2 = 16'h0000;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00111;
		aluOp = 2'b01;
		aluSrc = 1'b0;
		expected_alu_out = 16'h0000;
		expected_flags = 3'b100;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h | %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
	end // end OR	
	
// XOR tests
	begin // begin XOR
	
		// Can test entire truth table in one test vector
		@(posedge clk);
		read_data_1 = 16'hF0F0;
		read_data_2 = 16'hFF00;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00111;
		aluOp = 2'b10;
		aluSrc = 1'b0;
		expected_alu_out = 16'h0FF0;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h ^ %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Zero Flag test
		@(posedge clk);
		read_data_1 = 16'hFF00;
		read_data_2 = 16'hFF00;
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00111;
		aluOp = 2'b10;
		aluSrc = 1'b0;
		expected_alu_out = 16'h0000;
		expected_flags = 3'b100;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h ^ %h == %h, NOT %h", $time, read_data_1, read_data_2, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
	end // end XOR
	
	
// NOT tests
	begin // begin NOT
	
		// Can test entire truth table in one test vector
		@(posedge clk);
		read_data_1 = 16'hF0F0;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00111;
		aluOp = 2'b11;
		aluSrc = 1'b0;
		expected_alu_out = 16'h0F0F;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: ~%h == %h, NOT %h", $time, read_data_1, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Zero Flag test
		@(posedge clk);
		read_data_1 = 16'hFFFF;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00111;
		aluOp = 2'b11;
		aluSrc = 1'b0;
		expected_alu_out = 16'h0000;
		expected_flags = 3'b100;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: ~%h == %h, NOT %h", $time, read_data_1, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
	end // end NOT
	
// SLL tests
	begin // begin SLL
	
		// Shift 0 (and no Negative flag update)
		@(posedge clk);
		read_data_1 = 16'hF0F0;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0000;	// This is a (sign extended?) 5 bit value
		opcode = 5'b01000;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hF0F0;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h << %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Shift 1
		@(posedge clk);
		read_data_1 = 16'hF00F;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0001;	// This is a (sign extended?) 5 bit value
		opcode = 5'b01000;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hE01E;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h << %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Shift 8
		@(posedge clk);
		read_data_1 = 16'hF00F;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0008;	// This is a (sign extended?) 5 bit value
		opcode = 5'b01000;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0F00;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h << %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Shift 31 (largest imm value if unsigned) (and Zero flag)
		@(posedge clk);
		read_data_1 = 16'hF00F;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h001F;	// This is a (sign extended?) 5 bit value
		opcode = 5'b01000;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0000;
		expected_flags = 3'b100;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h << %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
	end // end SLL
	
// SRL tests
	begin // begin SRL
	
		// Shift 0 (and no Negative flag update)
		@(posedge clk);
		read_data_1 = 16'hF0F0;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0000;	// This is a (sign extended?) 5 bit value
		opcode = 5'b01001;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hF0F0;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h >> %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Shift 1
		@(posedge clk);
		read_data_1 = 16'hF00F;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0001;	// This is a (sign extended?) 5 bit value
		opcode = 5'b01001;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h7807;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h >> %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Shift 8
		@(posedge clk);
		read_data_1 = 16'hF00F;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0008;	// This is a (sign extended?) 5 bit value
		opcode = 5'b01001;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h00F0;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h >> %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Shift 31 (largest imm value if unsigned) (and Zero flag)
		@(posedge clk);
		read_data_1 = 16'hF00F;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h001F;	// This is a (sign extended?) 5 bit value
		opcode = 5'b01001;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0000;
		expected_flags = 3'b100;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h >> %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
	end // end SRL	
	
	
// SRA tests
	begin // begin SRA
	
		// Shift 0 (and no Negative flag update)
		@(posedge clk);
		read_data_1 = 16'hF0F0;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0000;	// This is a (sign extended?) 5 bit value
		opcode = 5'b01010;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hF0F0;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h >>> %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Shift 1
		@(posedge clk);
		read_data_1 = 16'hF00F;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0001;	// This is a (sign extended?) 5 bit value
		opcode = 5'b01010;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hF807;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h >>> %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Shift 8
		@(posedge clk);
		read_data_1 = 16'hF00F;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0008;	// This is a (sign extended?) 5 bit value
		opcode = 5'b01010;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hFFF0;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h >>> %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Shift 31 (largest imm value if unsigned)
		@(posedge clk);
		read_data_1 = 16'hF00F;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h001F;	// This is a (sign extended?) 5 bit value
		opcode = 5'b01010;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hFFFF;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h >>> %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Shift 4 (leading 0)
		@(posedge clk);
		read_data_1 = 16'h00F0;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0004;	// This is a (sign extended?) 5 bit value
		opcode = 5'b01010;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h000F;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h >>> %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Shift 16 (leading 0) (Zero flag)
		@(posedge clk);
		read_data_1 = 16'h00F0;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0010;	// This is a (sign extended?) 5 bit value
		opcode = 5'b01010;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0000;
		expected_flags = 3'b100;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h >>> %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Shift 0 (leading 0) (Zero flag)
		@(posedge clk);
		read_data_1 = 16'h00F0;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0000;	// This is a (sign extended?) 5 bit value
		opcode = 5'b01010;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h00F0;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: %h >>> %h == %h, NOT %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
	end // end SRA	
	
	
	// Done testing Zero, Overflow, and Sign flag, so reset flags
	// In preparation for the next tests, this test ^ must set flags to 000
	
// MOV tests
	begin // begin MOV
	
		// Negative Flag test
		@(posedge clk);
		read_data_1 = 16'hF0F0;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b01011;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b0;
		expected_alu_out = 16'hF0F0;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: MOV %h == %h, NOT %h", $time, read_data_1, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Zero Flag test
		@(posedge clk);
		read_data_1 = 16'h0000;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b01011;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b0;
		expected_alu_out = 16'h0000;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: MOV %h == %h, NOT %h", $time, read_data_1, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
	end // end MOV
	
// B tests
	begin // begin B
	
		// General test to see if imm gets passed through
		@(posedge clk);
		read_data_1 = 16'hzzzz; // should be ignored
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0006;
		opcode = 5'b10zzz; // conditional should be ignored
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0006;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: B %h == %h, NOT %h", $time, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Zero Flag test (should not set)
		@(posedge clk);
		read_data_1 = 16'hzzzz; // should be ignored
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0000;
		opcode = 5'b10zzz; // conditional should be ignored
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0000;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: B %h == %h, NOT %h", $time, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Negative Flag test (should not set)
		@(posedge clk);
		read_data_1 = 16'hzzzz; // should be ignored
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'hFFFF;
		opcode = 5'b10zzz; // conditional should be ignored
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hFFFF;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: B %h == %h, NOT %h", $time, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
	end // end B

// ST tests
	begin // begin ST
	
		// General test
		@(posedge clk);
		read_data_1 = 16'h0002;
		read_data_2 = 16'habab; // value to write
		imm = 16'h0006;
		opcode = 5'b01100;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0008;
		expected_flags = 3'b000;
		expected_valToWrite_out = 16'habab;
		@(negedge clk);
		if (alu_out !== expected_alu_out || value_to_write !== expected_valToWrite_out) begin
			$display("%t: ST %h at %h + %h == write %h to %h, NOT write %h to %h",
				$time, read_data_2, read_data_1, imm, expected_valToWrite_out, expected_alu_out, value_to_write, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Zero Flag test (should not set)
		@(posedge clk);
		read_data_1 = 16'h0000;
		read_data_2 = 16'hbeef; // value to write
		imm = 16'h0000;
		opcode = 5'b01100;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0000;
		expected_flags = 3'b000;
		expected_valToWrite_out = 16'hbeef;
		@(negedge clk);
		if (alu_out !== expected_alu_out || value_to_write !== expected_valToWrite_out) begin
			$display("%t: ST %h at %h + %h == write %h to %h, NOT write %h to %h",
				$time, read_data_2, read_data_1, imm, expected_valToWrite_out, expected_alu_out, value_to_write, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Negative Flag test (should not set)
		@(posedge clk);
		read_data_1 = 16'hffff;
		read_data_2 = 16'hbeef; // value to write
		imm = 16'h0000;
		opcode = 5'b01100;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hffff;
		expected_flags = 3'b000;
		expected_valToWrite_out = 16'hbeef;
		@(negedge clk);
		if (alu_out !== expected_alu_out || value_to_write !== expected_valToWrite_out) begin
			$display("%t: ST %h at %h + %h == write %h to %h, NOT write %h to %h",
				$time, read_data_2, read_data_1, imm, expected_valToWrite_out, expected_alu_out, value_to_write, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
	end // end ST	
	
// LD tests
	begin // begin LD
	
		// General test
		@(posedge clk);
		read_data_1 = 16'h0002;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0006;
		opcode = 5'b01101;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0008;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: LD from %h + %h == addr of %h, NOT addr of %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Zero Flag test (should not set)
		@(posedge clk);
		read_data_1 = 16'h0000;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0000;
		opcode = 5'b01101;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'h0000;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: LD from %h + %h == addr of %h, NOT addr of %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// Negative Flag test (should not set)
		@(posedge clk);
		read_data_1 = 16'h0000;
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'hffff;
		opcode = 5'b01101;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'b1;
		expected_alu_out = 16'hffff;
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: LD from %h + %h == addr of %h, NOT addr of %h", $time, read_data_1, imm, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
	end // end LD
	
// HLT, NOP, HASH, ENC, DEC tests. Note: Add the DUT waves and see the flags_WE for opcodes.
	begin // begin nonALU tests
	
		// HLT
		@(posedge clk);
		read_data_1 = 16'hzzzz; // should be ignored
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b11111;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'bz; // should be ignored
		expected_alu_out = 16'h0fff; // default
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: HLT == %h, NOT %h", $time, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// NOP
		@(posedge clk);
		read_data_1 = 16'hzzzz; // should be ignored
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'hzzzz; // should be ignored
		opcode = 5'b00000;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'bz; // should be ignored
		expected_alu_out = 16'h0fff; // default
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: NOP == %h, NOT %h", $time, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// HASH (should not raise Zero Flag)
		@(posedge clk);
		read_data_1 = 16'hzzzz; // should be ignored
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0000;
		opcode = 5'b11100;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'bz; // should be ignored
		expected_alu_out = 16'h0fff; // default
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: HASH == %h, NOT %h", $time, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// ENC (should not raise Zero Flag)
		@(posedge clk);
		read_data_1 = 16'hzzzz; // should be ignored
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0000;
		opcode = 5'b11101;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'bz; // should be ignored
		expected_alu_out = 16'h0fff; // default
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: ENC == %h, NOT %h", $time, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
		
		// DEC (should not raise Zero Flag)
		@(posedge clk);
		read_data_1 = 16'hzzzz; // should be ignored
		read_data_2 = 16'hzzzz; // should be ignored
		imm = 16'h0000;
		opcode = 5'b11110;
		aluOp = 2'bzz; // should be ignored
		aluSrc = 1'bz; // should be ignored
		expected_alu_out = 16'h0fff; // default
		expected_flags = 3'b000;
		@(negedge clk);
		if (alu_out !== expected_alu_out) begin
			$display("%t: DEC == %h, NOT %h", $time, expected_alu_out, alu_out);
		end
		@(negedge clk);
		if (flags !== expected_flags) begin
			$display("%t: Flags should be %b, NOT %b", $time, expected_flags, flags);
		end
	end // end nonALU tests

		$display("If this is the only output, all tests pass!");
		$stop;
	
	end

endmodule