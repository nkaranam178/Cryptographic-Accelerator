module InvMixCols(InvSBox_out, InvCols_out);


input[127:0] InvSBox_out;
output[127:0] InvCols_out;

// 4 instances of InvMix columns transformation on 4 byte words

InvMix32 helper0(.dataIn(InvSBox_out[31:0]), .dataOut(InvCols_out[31:0]));
InvMix32 helper1(.dataIn(InvSBox_out[63:32]), .dataOut(InvCols_out[63:32]));
InvMix32 helper2(.dataIn(InvSBox_out[95:64]), .dataOut(InvCols_out[95:64]));
InvMix32 helper3(.dataIn(InvSBox_out[127:96]), .dataOut(InvCols_out[127:96]));


endmodule
