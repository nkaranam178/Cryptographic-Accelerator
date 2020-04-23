module InvMixCols(InvSBox_out, InvCols_out);


input[127:0] InvSBox_out;
wire[127:0] rev_input, InvCols_int;
output[127:0] InvCols_out;

// 4 instances of InvMix columns transformation on 4 byte words

InvMix32 helper0(.dataIn(rev_input[31:0]), .dataOut(InvCols_int[31:0]));
InvMix32 helper1(.dataIn(rev_input[63:32]), .dataOut(InvCols_int[63:32]));
InvMix32 helper2(.dataIn(rev_input[95:64]), .dataOut(InvCols_int[95:64]));
InvMix32 helper3(.dataIn(rev_input[127:96]), .dataOut(InvCols_int[127:96]));

assign rev_input = {InvSBox_out[7:0], InvSBox_out[15:8], InvSBox_out[23:16], InvSBox_out[31:24], InvSBox_out[39:32], InvSBox_out[47:40], InvSBox_out[55:48], InvSBox_out[63:56], InvSBox_out[71:64], InvSBox_out[79:72], InvSBox_out[87:80], InvSBox_out[95:88], InvSBox_out[103:96], InvSBox_out[111:104], InvSBox_out[119:112], InvSBox_out[127:120]};

assign InvCols_out = {InvCols_int[7:0], InvCols_int[15:8], InvCols_int[23:16], InvCols_int[31:24], InvCols_int[39:32], InvCols_int[47:40], InvCols_int[55:48], InvCols_int[63:56], InvCols_int[71:64], InvCols_int[79:72], InvCols_int[87:80], InvCols_int[95:88], InvCols_int[103:96], InvCols_int[111:104], InvCols_int[119:112], InvCols_int[127:120]};


endmodule
