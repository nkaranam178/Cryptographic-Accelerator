module MixCols(rows_out, cols_out);


input[127:0] rows_out;
wire[127:0] rows_out_int, cols_out_int;
output[127:0] cols_out;


// 4 instances of mix columns transformation on 4 byte words

Mix32 helper0(.dataIn(rows_out_int[31:0]), .dataOut(cols_out_int[31:0]));
Mix32 helper1(.dataIn(rows_out_int[63:32]), .dataOut(cols_out_int[63:32]));
Mix32 helper2(.dataIn(rows_out_int[95:64]), .dataOut(cols_out_int[95:64]));
Mix32 helper3(.dataIn(rows_out_int[127:96]), .dataOut(cols_out_int[127:96]));


assign rows_out_int = {rows_out[7:0], rows_out[15:8], rows_out[23:16], rows_out[31:24], rows_out[39:32], rows_out[47:40], rows_out[55:48], rows_out[63:56], rows_out[71:64], rows_out[79:72], rows_out[87:80], rows_out[95:88], rows_out[103:96], rows_out[111:104], rows_out[119:112], rows_out[127:120]};

assign cols_out = {cols_out_int[7:0], cols_out_int[15:8], cols_out_int[23:16], cols_out_int[31:24], cols_out_int[39:32], cols_out_int[47:40], cols_out_int[55:48], cols_out_int[63:56], cols_out_int[71:64], cols_out_int[79:72], cols_out_int[87:80], cols_out_int[95:88], cols_out_int[103:96], cols_out_int[111:104], cols_out_int[119:112], cols_out_int[127:120]};

endmodule

// Test Vectors and Look up tables
//https://cryptography.fandom.com/wiki/Rijndael_mix_columns
//https://en.wikipedia.org/wiki/Rijndael_MixColumns#Galois_Multiplication_lookup_tables
