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

NOP
BNE #100
BEQ #101
BOV #102
BVAL #103
BNEG #-104
BPOS #105
BUNU #106
BUNC #107

HASH TEST_STR
ENC LOLOLO
HASH HELLO_WORLD
HALT
