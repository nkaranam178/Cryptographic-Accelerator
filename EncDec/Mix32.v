module Mix32(dataIn, dataOut);

input[31:0] dataIn;
output[31:0] dataOut;
wire[7:0] a0, a1, a2, a3, a0_3, a1_3, a2_3, a3_3, a0_2, a1_2, a2_2, a3_2;

// Little endian assignment to input word
assign a0 = dataIn[31:24];
assign a1 = dataIn[23:16];
assign a2 = dataIn[15:8];
assign a3 = dataIn[7:0];	

// MixColumns Matrix Multiplication
assign dataOut[31:24] = a0_2 ^ a1_3 ^ a2 ^ a3;
assign dataOut[23:16] = a0 ^ a1_2 ^ a2_3 ^ a3;
assign dataOut[15:8] = a0 ^ a1 ^ a2_2 ^ a3_3;
assign dataOut[7:0] = a0_3 ^ a1 ^ a2 ^ a3_2;

// Galois Field Multiplication Index Table_3
Mul_3 a0_mul_3(.index(a0), .data(a0_3));
Mul_3 a1_mul_3(.index(a1), .data(a1_3));
Mul_3 a2_mul_3(.index(a2), .data(a2_3));
Mul_3 a3_mul_3(.index(a3), .data(a3_3));

// Galois Field Multiplication Index Table_2
Mul_2 a0_mul_2(.index(a0), .data(a0_2));
Mul_2 a1_mul_2(.index(a1), .data(a1_2));
Mul_2 a2_mul_2(.index(a2), .data(a2_2));
Mul_2 a3_mul_2(.index(a3), .data(a3_2));

endmodule
