module Decrypt_TopLevel_tb();

reg clk, rst_n, D_int;
reg[127:0] ciphertext, key;
wire[127:0] plaintext;
wire D_done;

Decrypt_TopLevel dec(.clk(clk), .rst_n(rst_n), .D_int(D_int), .ciphertext(ciphertext), .key(key), .plaintext(plaintext), .D_done(D_done));

parameter numTests = 5;

wire[127:0] cipher_arr[numTests-1:0];
wire[127:0] key_arr[numTests-1:0];
wire[127:0] expected[numTests-1:0];

// Test 0
assign cipher_arr[0] = 128'h69c4e0d86a7b0430d8cdb78070b4c55a;
assign key_arr[0] = 128'h000102030405060708090a0b0c0d0e0f;
assign expected[0] = 128'h00112233445566778899aabbccddeeff;
// Test 1
assign cipher_arr[1] = 128'h3ad77bb40d7a3660a89ecaf32466ef97;
assign key_arr[1] = 128'h2b7e151628aed2a6abf7158809cf4f3c;
assign expected[1] = 128'h6bc1bee22e409f96e93d7e117393172a;
// Test 2
assign cipher_arr[2] = 128'hf5d3d58503b9699de785895a96fdbaaf;
assign key_arr[2] = 128'h2b7e151628aed2a6abf7158809cf4f3c;
assign expected[2] = 128'hae2d8a571e03ac9c9eb76fac45af8e51;
// Test 3 
assign cipher_arr[3] = 128'h43b1cd7f598ece23881b00e3ed030688;
assign key_arr[3] = 128'h2b7e151628aed2a6abf7158809cf4f3c;
assign expected[3] = 128'h30c81c46a35ce411e5fbc1191a0a52ef;
// Test 4
assign cipher_arr[4] = 128'h7b0c785e27e8ad3f8223207104725dd4;
assign key_arr[4] = 128'h2b7e151628aed2a6abf7158809cf4f3c;
assign expected[4] = 128'hf69f2445df4f9b17ad2b417be66c3710;

/*
// Test 
assign cipher_arr[] = 128'h;
assign key_arr[] = 128'h;
assign expected[] = 128'h;
*/
int i;

initial begin

	clk = 0;
	rst_n = 0;
	@(posedge clk);
	@(negedge clk);
	rst_n = 1;
	for (i = 0; i < numTests; i++) begin
	  ciphertext = cipher_arr[i];
	  key = key_arr[i]; 
	  @(posedge clk);
	  @(posedge clk);
	  @(negedge clk);
	  D_int = 1;
	  @(posedge D_done);
	  $display("%d  Ciphertext: %H    Decrypted: %H", i, ciphertext, plaintext);
	  if (plaintext != expected[i]) begin
	    $display("Not Equal");
	    $stop;
	  end
	end
	$display("\nPassed\n");
	$stop;
end

always
	#1 clk = ~clk;

endmodule
