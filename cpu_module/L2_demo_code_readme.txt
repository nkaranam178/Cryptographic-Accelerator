L2 CPU demo program:

I0:  0x2027 ADDI R0 R1 #7 ([R1] <- [R0] + 7)		Normal ALU op
I1:  0x2265 ADDI R2 R3 #5 ([R3] <- [R2] + 5)		Normal ALU op
I2:  0x3175 SUB R1 R3 R5 ([R5] <- [R1] - [R3])		EX-to-EX and MEM-to-EX forwarded ALU op
I3:  0x8FF8 BEQ -8									Conditional branch that is NOT taken
I4:  0x6562 ST R5 R3 2 (Dmem[[R5] + 2] <- [R3])		Normal Store op
I5:  0x6DE2 LD R2 R7 2 ([R7] <- (Dmem[[R5] + 2]))	Load from the same addr
I6:  0x8006 BNE 6									Cond. branch that IS taken
I7:  0x0000 NOP										NOP that gets branched over
I8:  0x0000 NOP										NOP that gets branched over
I9:  0x0000 NOP										NOP that gets branched over
I10: 0xFFFF HLT										HLT
I11: 0x2266 ADDI R2 R3 #6 ([R3] <- [R2] + 6)		ALU op that should NOT writeback


Register File contents after correct execution:

R0:		0x0000
R1:		0x0007		I0 writes this
R2:		0x0000
R3:		0x0005		I1 writes this, processor HALTs before I11 can write 0x0006
R4:		0x0000
R5:		0x0002
R6:		0x0000
R7:		0x0005