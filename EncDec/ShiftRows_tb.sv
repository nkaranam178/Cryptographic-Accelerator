module ShiftRows_tb();

reg clk, rst_n;
reg[7:0] cntr, shift;
reg[127:0] sbox_to_rows;
wire[127:0] rows_out, InvRows_to_InvSBox;

// DUTs
ShiftRows shift1(.sbox_to_rows(sbox_to_rows), .rows_out(rows_out));
InvShiftRows invShift(.xor_to_InvRows(rows_out), .InvRows_to_InvSBox(InvRows_to_InvSBox));

parameter intermediate = 128'h32211003312013023023120133221100;

initial begin

	clk = 0;
	rst_n = 0;
	//sbox_to_rows = 128'h33231303322212023121110130201000;
	#1;
	rst_n = 0;
	$display("Input  %h", sbox_to_rows);
	$display("Output %h", InvRows_to_InvSBox);
	$display("Expected Int: %h", intermediate);
	$display("Actual   Int: %h", rows_out);
	if (sbox_to_rows == InvRows_to_InvSBox && rows_out == intermediate)
		$display("Equal");
	else
		$display("Not Equal");
	$stop;
	rst_n = 1;
	// start cntr
	repeat(4097)@(negedge clk);
	$display("\nPassed\n");
	$stop;

end

// Shifts cntr to check each byte position
always @(posedge clk, negedge rst_n) begin
	if(!rst_n) begin
	  sbox_to_rows <= 128'h33231303322212023121110130201000;
	  cntr <= 0;
	  shift <= 0;
	end
	else begin  // increment shift
	  if (cntr == 8'hff) begin
		shift <= shift + 1;
	  end
	  cntr <= cntr + 1;
	  sbox_to_rows <= cntr << (shift * 8);
	end
end

// check for input == output every negedge
always @(negedge clk) begin
	$display("Input: %h 	Output: %h", sbox_to_rows, InvRows_to_InvSBox);
	if (sbox_to_rows == InvRows_to_InvSBox)
		$display("Equal");
	else if (rst_n) begin
		$display("Not Equal");
		$stop;
	end
end


always 
  #1 clk = ~clk;

endmodule
