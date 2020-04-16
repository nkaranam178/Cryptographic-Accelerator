module KeyGen_tb();

reg clk, rst_n;
reg[3:0] round;
reg[127:0] keyIn;
reg[127:0] expected[10:0];
wire[127:0] roundKey;


KeyGen generator(.keyIn(keyIn), .round(round), .roundKey(roundKey));

assign expected[0] = 128'h2b7e151628aed2a6abf7158809cf4f3c;
assign expected[1] = 128'h2a6c760523a3393988542cb1a0fafe17;
assign expected[2] = 128'h7359f67f5935807a7a96b943f2c295f2;
assign expected[3] = 128'h6d7a883b1e237e444716fe3e3d80477d;
assign expected[4] = 128'hdb0bad00b671253ba8525b7fef44a541;
assign expected[5] = 128'h11f915bccaf2b8bc7c839d87d4d1c6f8;
assign expected[6] = 128'hca0093fddbf98641110b3efd6d88a37a;
assign expected[7] = 128'h4ea6dc4f84a64fb25f5fc9f34e54f70e;
assign expected[8] = 128'h7f8d292f312bf560b58dbad2ead27321;
assign expected[9] = 128'h575c006e28d1294119fadc21ac7766f3;
assign expected[10]= 128'hb6630ca6e13f0cc8c9ee2589d014f9a8;



initial begin

	keyIn = 128'h2b7e151628aed2a6abf7158809cf4f3c;
	rst_n = 0;
	clk = 1;
	@(posedge clk);
	rst_n = 1;
	@(negedge clk);
	repeat(11)@(posedge clk);
	$display("\nPassed\n");
	$stop;
	



end


// round counter
always @(posedge clk, negedge rst_n) begin
	if(!rst_n)
	  round <= 0;
	else
	  round <= round + 1;
end


// check for input == output every negedge
always @(negedge clk) begin
	if (rst_n) begin
		$display("RoundKey: %h 	Expected: %h", roundKey, expected[round]);
		if (roundKey == expected[round])
			$display("Round:%d  Equal", round);
		else begin
			$display("Round:%d  Not Equal", round);
			$stop;
		end
	end
end

always
	#1 clk = ~clk;

endmodule
