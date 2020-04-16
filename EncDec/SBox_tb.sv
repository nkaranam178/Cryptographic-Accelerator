module SBox_tb();

reg clk, rst_n;
reg[127:0] xor_to_sbox;
reg[7:0] cntr, shift;
wire[127:0] sbox_to_rows;
wire[127:0] InvSBox_out;

// SBox output to InvSbox 
SBox s1(.xor_to_sbox(xor_to_sbox), .sbox_to_rows(sbox_to_rows));
InvSBox inv1(.InvRows_to_InvSbox(sbox_to_rows), .InvSBox_out(InvSBox_out));



// increments counter and shifts once hitting 0xFF
always @(posedge clk, negedge rst_n) begin
	if(!rst_n) begin
		xor_to_sbox <= 0;
		cntr <= 0;
		shift <= 0;
	end
	else begin  // increment shift
	  if (cntr == 8'hff) begin
		shift <= shift + 1;
	  end
	  cntr <= cntr + 1;
	  xor_to_sbox <= cntr << (shift * 8);
	end
end

// check for input == output every negedge
always @(negedge clk) begin
	$display("Input: %h 	Output: %h", xor_to_sbox, InvSBox_out);
	if (xor_to_sbox == InvSBox_out)
		$display("Equal");
	else if (rst_n) begin
		$display("Not Equal");
		$stop;
	end
end
initial begin
	
	// reset blocks
	clk = 0;
	rst_n = 0;
	@(posedge clk);
	@(negedge clk);
	rst_n = 1;
	// cycle through 0xFF on each of the 16 bytes
	repeat(4097)@(negedge clk);
	$display("\nPassed\n");
	$stop;

end

always
	#1 clk = ~clk;

endmodule
