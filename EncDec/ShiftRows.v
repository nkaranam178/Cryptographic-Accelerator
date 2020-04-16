module ShiftRows(sbox_to_rows, rows_out);

input[127:0] sbox_to_rows;
output[127:0] rows_out;

// move rows according to algorithm
assign rows_out[127:96] = {sbox_to_rows[95:88], sbox_to_rows[55:48], sbox_to_rows[15:8], sbox_to_rows[103:96]};
assign rows_out[95:64] = {sbox_to_rows[63:56], sbox_to_rows[23:16], sbox_to_rows[111:104], sbox_to_rows[71:64]};
assign rows_out[63:32] = {sbox_to_rows[31:24], sbox_to_rows[119:112], sbox_to_rows[79:72], sbox_to_rows[39:32]};
assign rows_out[31:0] = {sbox_to_rows[127:120], sbox_to_rows[87:80], sbox_to_rows[47:40], sbox_to_rows[7:0]};

endmodule
