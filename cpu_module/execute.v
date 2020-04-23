module execute(clk, rst_n, read_data_1, read_data_2, imm, opcode, aluOp, aluSrc, memwb_data, exmem_data, flags, alu_out, value_to_write, alu_in_1_src, alu_in_2_src);
	// X stage (currently) without forwarding
	
	// Note: imm isn't in our microarchitecture docs, but should be. I'm adding a MUX to handle this
	// Note: aluSrc isn't in our X stage microarchitecture docs, but should be. - no. aluSrc is for deciphering ADD vs ADDI which is encompassed by opcode.
		// so remove aluSrc from the Control Unit
	// Note: the MA (microarch.) slides have the Data Mem being addressed by alu_in_2 and written with alu_out, these signals are flipped.
	
	// Note: we need the control unit to have Store, Load, Branch use the immediate - should happen by opcode already?
	
	// Active Question: What if we get a negative immediate for an addr? We could handle it anywhere in the stack?
	// 2: What if someone shifts more than 16 bits? Could handle that anywhere, too, or saturate the immediate
	// Seems like the verilog shift operators don't care, so no need to handle it unless we want to.
	
	// Big Note: Logical is >> or << and Arithmetic is >>>. We have this backwards in the ISA.
	
	// Note: Right now the X stage for a Branch instruction will output just the immediate
	// So we'll either need to get PC+2 into the X stage so we can output PC+2 + imm from the X stage,
	// or we just have an extra adder in the branching module.
	
	
	// Note: architecture doc: SUB should be Rd <= Rs - Rt if possible? otherwise I can change
	
	// Note: Normally read_data_1 is for Rs value
	//       Normally read_data_2 is for Rt value
	//		 Normally imm is for sign-extended immediate
	//			Opcode will decipher if we need to use read_data_2 or imm in the ALU
	// For ST, I expect 'Rd' - the value to write to DMem, to come over read_data_2
	// Not sure if there is an easier way to do this, will need to talk to Jing and Paul
	// Hook up the x stage for happy path first and then talk.
	
	// *** important:
	// Also, we could completely ignore value_to_write and bypass the ALU... We should consider this if it gets messy
	
	// Arch. Doc has NVZ flags instead of ZVN - either this or the doc can change.
	
	// Arch doc has some immediates being sign extended and some not. Need to figure out
	
	// Interface
	input wire clk, rst_n;	// From top level overall
	input wire[15:0] read_data_1, read_data_2;	// From ID/EX Pipeline Reg. Meant for rd1 ~ Rd, rd2 ~ Rs or Imm
	input wire[10:0] imm;
	input wire[4:0] opcode;	// From ID/EX Pipeline Reg
	input wire[1:0] aluOp;	// From ID/EX Pipeline Reg
	input wire aluSrc;		// From ID/EX Pipeline Reg
	input wire[15:0] exmem_data;	// For Ex-to-Ex Forwarding, from the EX/MEM Pipeline Reg
	input wire[15:0] memwb_data;	// For Mem-to-Ex Forwarding, from the MEM/Walu_in_2 Pipeline Reg
	input wire[1:0] alu_in_1_src, alu_in_2_src;
	
	output reg[2:0] flags;		// The destination of this is this reg itself
								// Note: Flags format is {Z, V, N} == {Zero, Overflow, Negative}
	output wire[15:0] alu_out;	// For the EX/MEM Pipeline Reg, can be used as an addr into Data Memory
	output wire[15:0] value_to_write;	// For the EX/MEM Piepline Reg, can be used as the value to write to Data Memory
	
	// Internal Signals
	wire[15:0] alu_in_1, alu_in_2;	// Actual inputs to the ALU, assign to these for forwarding
	wire shouldAdd, shouldSub;		// Used for cleanliness
	wire ovflAdd, ovflSub;
	wire[2:0] flags_d, flags_WE;	// Control signals for the flags register
	wire[15:0] sraTemp0, sraTemp1, sraTemp2, sraResult;
	wire[10:0] imm_use;
	
	// Interpret immediate - sign extend 5 bit imm unless it's a Branch
	assign imm_use = opcode[4:3] == 2'b10 ? imm : {{6{imm[4]}}, imm[4:0]};
	
	// Handle forwarding // TODO
	assign alu_in_1 = alu_in_1_src[1:0] == 2'b00 ? exmem_data : 
					  alu_in_1_src[1:0] == 2'b01 ? memwb_data : read_data_1;
	// Immediates used in ADDI, SUBI, SLL, SRL, SRA, ST, LD, B
	assign alu_in_2 = alu_in_2_src[1:0] == 2'b00 ? exmem_data : 
					  alu_in_2_src[1:0] == 2'b01 ? memwb_data : 
					  aluSrc ? imm_use : read_data_2;
	// aluSrc replaced `(opcode[4:1] == 4'b0010 || (opcode[4:2] == 3'b010 && opcode[1:0] != 2'b11) || opcode[4:1] == 4'b0110 || opcode[4:3] == 2'b10)`
	
	
	// This is for ADD, ADDI, as well as LD, ST addr calculation
	assign shouldAdd = (opcode == 5'b00110 && aluOp == 2'b00) | opcode == 5'b00100 | opcode[4:2] == 3'b011;
	// This is for SUB, SUBI
	assign shouldSub = (opcode == 5'b00110 && aluOp == 2'b01) | opcode == 5'b00101;
	assign value_to_write = read_data_2;	// Aliased for cleanliness, note NOT alu_in_2

	// Note that R format insutructions use aluOp, others do not
	assign alu_out = (shouldAdd) ? alu_in_1 + alu_in_2 :											// ADD and ADDI												// ADD, ADDI ST, and LD
					 (shouldSub) ? alu_in_1 - alu_in_2 :											// SUB and SUBI
					 (opcode == 5'b00111 && aluOp == 2'b00) ? alu_in_1 & alu_in_2 :					// AND
					 (opcode == 5'b00111 && aluOp == 2'b01) ? alu_in_1 | alu_in_2 :					// OR
					 (opcode == 5'b00111 && aluOp == 2'b10) ? alu_in_1 ^ alu_in_2 :					// XOR
					 (opcode == 5'b00111 && aluOp == 2'b11) ? ~alu_in_1 :							// NOT
					 (opcode == 5'b01000) ? alu_in_1 << alu_in_2 :									// SLL
					 (opcode == 5'b01001) ? alu_in_1 >> alu_in_2 :									// SRL
					 (opcode == 5'b01010) ? ( alu_in_1[15] ? sraResult : alu_in_1 >> alu_in_2) : 	// SRA
					 (opcode == 5'b01011) ? alu_in_1 :												// MOV
					 (opcode[4:3] == 2'b10) ? alu_in_2 :											// B
					 16'h0FFF;	// Default that won't trigger any flags																				// Default value
					 
	// Zero Flag Signals
	// Only written by ADD, ADDI, SUB, SUBI, bitwise ops, and shifts
	// shouldAdd encompasses ADD, ADDI, LD, ST, so add logic to prevent LD, ST from updating flags
	assign flags_WE[2] = ((shouldAdd && opcode[4:2] != 3'b011) | shouldSub | opcode == 5'b00111 | (opcode[4:2] == 3'b010 && opcode[1:0] != 2'b11));
	assign flags_d[2] = ~|alu_out;

	// Zero Flag Flop
	always @(posedge clk or negedge rst_n) begin
		if (~rst_n)
			flags[2] <= 1'b0;
		else if (flags_WE[2])
			flags[2] <= flags_d[2];
		// Implicit else
	end	
	
	// Assign overflow for ADD, ADDI, SUB, SUBI
	assign ovflAdd = shouldAdd & ((~alu_in_1[15] & ~alu_in_2[15] & alu_out[15]) | (alu_in_1[15] & alu_in_2[15] & ~alu_out[15]));
	assign ovflSub = shouldSub & ((alu_in_1[15] & ~alu_in_2[15] & ~alu_out[15]) | (~alu_in_1[15] & alu_in_2[15] & alu_out[15]));

	// Overflow Flag Signals
	// Only written by ADD, ADDI, SUB, SUBI
	// shouldAdd encompasses ADD, ADDI, LD, ST, so add logic to prevent LD, ST from updating flags
	assign flags_WE[1] = (shouldAdd && opcode[4:2] != 3'b011) | shouldSub;
	assign flags_d[1] = ovflAdd | ovflSub;

	// Overflow Flag Flop
	always @(posedge clk or negedge rst_n) begin
		if (~rst_n)
			flags[1] <= 1'b0;
		else if (flags_WE[1])
			flags[1] <= flags_d[1];
		// Implicit else
	end
	
	// Negative Flag Signals
///	// Changed after talking with Jing and Paul:
///	// Only NOT written by LD, ST, MOV, all other ALU operations may write
	// Now only written by ADD, ADDI, SUB, SUBI
	// Influenced by the WISC ISA
	// shouldAdd encompasses ADD, ADDI, LD, ST, so add logic to prevent LD, ST from updating flags	
	assign flags_WE[0] = (shouldAdd && opcode[4:2] != 3'b011) | shouldSub;
	assign flags_d[0] = alu_out[15];

	// Negative Flag Flop
	always @(posedge clk or negedge rst_n) begin
		if (~rst_n)
			flags[0] <= 1'b0;
		else if (flags_WE[0])
			flags[0] <= flags_d[0];
		// Implicit else
	end
	
	// Manual SRA (to get the sign extension to work)
	assign sraTemp0 = alu_in_2[3] ? (alu_in_1 >> 4'h8) | {{8{alu_in_1[15]}}, 8'h00} : alu_in_1;
	assign sraTemp1 =  alu_in_2[2] ? (sraTemp0 >> 4'h4) | {{4{sraTemp0[15]}}, 12'h000} :  sraTemp0;
	assign sraTemp2 = alu_in_2[1] ? (sraTemp1 >> 4'h2) | {{2{sraTemp1[15]}}, 14'h0000} : sraTemp1;
	assign sraResult =  alu_in_2[0] ? (sraTemp2 >> 4'h1) | {sraTemp2[15], 15'h0000} : sraTemp2;
	
	

endmodule