module InvMix32(dataIn, dataOut);

input[31:0] dataIn;
output[31:0] dataOut;
wire[7:0] a0, a1, a2, a3, a0_9, a0_11, a0_13, a0_14, a1_9, a1_11, a1_13, a1_14, a2_9, a2_11, a2_13, a2_14, a3_9, a3_11, a3_13, a3_14;

// Little endian assignment to input word
assign a0 = dataIn[31:24];
assign a1 = dataIn[23:16];
assign a2 = dataIn[15:8];
assign a3 = dataIn[7:0];

// InvMixColumns Matrix Multiplication
assign dataOut[31:24] = a0_14 ^ a1_11 ^ a2_13 ^ a3_9;
assign dataOut[23:16] = a0_9 ^ a1_14 ^ a2_11 ^ a3_13;
assign dataOut[15:8] = a0_13 ^ a1_9 ^ a2_14 ^ a3_11;  
assign dataOut[7:0] = a0_11 ^ a1_13 ^ a2_9 ^ a3_14;

// Galois Field Multiplication Index Table_9
Mul_9 a0_mul_9(.index(a0), .data(a0_9));
Mul_9 a1_mul_9(.index(a1), .data(a1_9));
Mul_9 a2_mul_9(.index(a2), .data(a2_9));
Mul_9 a3_mul_9(.index(a3), .data(a3_9));

// Galois Field Multiplication Index Table_11
Mul_11 a0_mul_11(.index(a0), .data(a0_11));
Mul_11 a1_mul_11(.index(a1), .data(a1_11));
Mul_11 a2_mul_11(.index(a2), .data(a2_11));
Mul_11 a3_mul_11(.index(a3), .data(a3_11));

// Galois Field Multiplication Index Table_13
Mul_13 a0_mul_13(.index(a0), .data(a0_13));
Mul_13 a1_mul_13(.index(a1), .data(a1_13));
Mul_13 a2_mul_13(.index(a2), .data(a2_13));
Mul_13 a3_mul_13(.index(a3), .data(a3_13));

// Galois Field Multiplication Index Table_14
Mul_14 a0_mul_14(.index(a0), .data(a0_14));
Mul_14 a1_mul_14(.index(a1), .data(a1_14));
Mul_14 a2_mul_14(.index(a2), .data(a2_14));
Mul_14 a3_mul_14(.index(a3), .data(a3_14));


endmodule
