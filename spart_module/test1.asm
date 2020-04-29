ADD r0, r1, r2
SUB r3, r4, r5
AND r6, r7, r0
OR r1, r2, r3
XOR r4, r5, r6
NOT r7, r0, r1
  
ADDI R0, r1, #1
SUBI r2, r3, #2
SLL r4, r5, #3
SRL r6, r7, #4
SRA r0, r1, #5
MOV R2, r3

ENC LOLOLO
ADDI R5, R0, #1
ADDI R6, R1, #1
ADDI R7, R2, #1
ENC waveform
ADDI R2, R4, #1
ADDI R3, R2, #1
ENC covid19
HALT
