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
		
		// Let reset propagate
		@(posedge clk);
		@(negedge clk);
		rst_n = 1;
		
		// Note that ALU is all combinational, so alu_out can be read in the
		// same cycle that the inputs are asserted. Wait until the next clock cycle
		// to see the flags
		
		@(posedge clk);
		read_data_1 = 16'h1234;
		read_data_2 = 16'h1111;
		imm = 16'hzzzz;
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		
		@(posedge clk);
		read_data_1 = 16'h0303;
		read_data_2 = 16'h0000;
		imm = 16'hzzzz;
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		
		@(posedge clk);
		read_data_1 = 16'h0000;
		read_data_2 = 16'h0000;
		imm = 16'hzzzz;
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		
		@(posedge clk);
		read_data_1 = 16'h0303;
		read_data_2 = 16'h0000;
		imm = 16'hzzzz;
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		
		@(posedge clk);
		read_data_1 = 16'hffff;
		read_data_2 = 16'h0000;
		imm = 16'hzzzz;
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		
		@(posedge clk);
		read_data_1 = 16'h7fff;
		read_data_2 = 16'h7fff;
		imm = 16'hzzzz;
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		
		@(posedge clk);
		read_data_1 = 16'h1111;
		read_data_2 = 16'h0000;
		imm = 16'hzzzz;
		opcode = 5'b00110;
		aluOp = 2'b00;
		aluSrc = 1'b0;
		
		@(posedge clk);
		$stop;
		
		
	end
	
endmodule