module MixCols_tb();


reg[127:0] rows_out;
wire[127:0] cols_out, InvCols_out;

// MixColumns takes input and outputs to InvMixCols
MixCols mix(.rows_out(rows_out), .cols_out(cols_out));
InvMixCols invMix(.InvSBox_out(cols_out), .InvCols_out(InvCols_out));

// Expected value after MixCols is applied
parameter intermediate0 = 128'h4d7ebdf84d7ebdf84d7ebdf84d7ebdf8;
parameter intermediate1 = 128'h01010101010101010101010101010101;
parameter intermediate2 = 128'hc6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6;
parameter intermediate3 = 128'h9fdc589d9fdc589d9fdc589d9fdc589d;
parameter intermediate4 = 128'hd5d5d7d6c6c6c6c6d5d5d7d6c6c6c6c6;
parameter intermediate5 = 128'h8e4da1bc9fdc589dd5d5d7d64d7ebdf8;

// Test vectors
// Input: 128'h2d26314c2d26314c2d26314c2d26314c
// intermediate: h4d7ebdf84d7ebdf84d7ebdf84d7ebdf8
//
// Input: 128'h01010101010101010101010101010101
// intermediate: 128'h01010101010101010101010101010101
//
// Input: 128'hc6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6
// intermediate: 128'hc6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6
//
// Input: 128'hf20a225cf20a225cf20a225cf20a225c
// intermediate: 128'hd5d5d7d6c6c6c6c6d5d5d7d6c6c6c6c6
//
// Input: 128'hdb135345f20a225cd4d4d4d52d26314c
// intermediate: 128'h8e4da1bc9fdc589dd5d5d7d64d7ebdf8

initial begin

	rows_out = 128'h2d26314c2d26314c2d26314c2d26314c;  // Test #1
	#1;
	$display("Input  %h", rows_out);
	$display("Output %h", InvCols_out);
	$display("Expected Int: %h", intermediate0);
	$display("Actual   Int: %h", cols_out);
	if (rows_out == InvCols_out && cols_out == intermediate0)
		$display("Equal");
	else begin
		$display("Not Equal");
		$stop;
	end
	#1;

	rows_out = 128'h01010101010101010101010101010101;  // Test #2
	#1;
	$display("Input  %h", rows_out);
	$display("Output %h", InvCols_out);
	$display("Expected Int: %h", intermediate1);
	$display("Actual   Int: %h", cols_out);
	if (rows_out == InvCols_out && cols_out == intermediate1)
		$display("Equal");
	else begin
		$display("Not Equal");
		$stop;
	end
 #1;
	rows_out = 128'hc6c6c6c6c6c6c6c6c6c6c6c6c6c6c6c6;  // Test #3
	#1;
	$display("Input  %h", rows_out);
	$display("Output %h", InvCols_out);
	$display("Expected Int: %h", intermediate2);
	$display("Actual   Int: %h", cols_out);
	if ((rows_out == InvCols_out && cols_out == intermediate2))
		$display("Equal");
	else begin
		$display("Not Equal");
		$stop;
	end
 #1;
	rows_out = 128'hf20a225cf20a225cf20a225cf20a225c;  // Test #4
	#1;
	$display("Input  %h", rows_out);
	$display("Output %h", InvCols_out);
	$display("Expected Int: %h", intermediate3);
	$display("Actual   Int: %h", cols_out);
	if ((rows_out == InvCols_out && cols_out == intermediate3))
		$display("Equal");
	else begin
		$display("Not Equal");
		$stop;
	end

 #1;
	rows_out = 128'hd4d4d4d5c6c6c6c6d4d4d4d5c6c6c6c6;  // Test #5
	#1;
	$display("Input  %h", rows_out);
	$display("Output %h", InvCols_out);
	$display("Expected Int: %h", intermediate4);
	$display("Actual   Int: %h", cols_out);
	if ((rows_out == InvCols_out && cols_out == intermediate4))
		$display("Equal");
	else begin
		$display("Not Equal");
		$stop;
	end

 #1;
	rows_out = 128'hdb135345f20a225cd4d4d4d52d26314c;  // Test #6
	#1;
	$display("Input  %h", rows_out);
	$display("Output %h", InvCols_out);
	$display("Expected Int: %h", intermediate5);
	$display("Actual   Int: %h", cols_out);
	if ((rows_out == InvCols_out && cols_out == intermediate5))
		$display("Equal");
	else begin
		$display("Not Equal");
		$stop;
	end
	$display("\nPASSED\n");
	$stop;

end

endmodule
