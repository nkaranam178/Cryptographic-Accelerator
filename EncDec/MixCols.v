module MixCols(rows_out, cols_out);


input[127:0] rows_out;
output[127:0] cols_out;


// 4 instances of mix columns transformation on 4 byte words

Mix32 helper0(.dataIn(rows_out[31:0]), .dataOut(cols_out[31:0]));
Mix32 helper1(.dataIn(rows_out[63:32]), .dataOut(cols_out[63:32]));
Mix32 helper2(.dataIn(rows_out[95:64]), .dataOut(cols_out[95:64]));
Mix32 helper3(.dataIn(rows_out[127:96]), .dataOut(cols_out[127:96]));


endmodule

// Test Vectors and Look up tables
//https://cryptography.fandom.com/wiki/Rijndael_mix_columns
//https://en.wikipedia.org/wiki/Rijndael_MixColumns#Galois_Multiplication_lookup_tables
