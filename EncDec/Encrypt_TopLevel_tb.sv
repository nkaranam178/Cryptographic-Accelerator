
module Encrypt_TopLevel_tb();

reg clk, rst_n, E_int;
wire E_done;
reg[127:0] plaintext, key;
wire[127:0] ciphertext;

Encrypt_TopLevel enc(.clk(clk), .rst_n(rst_n), .E_int(E_int), .plaintext(plaintext), .key(key), .ciphertext(ciphertext), .E_done(E_done));

parameter numTests = 5;

wire[127:0] plain_arr[numTests-1:0];
wire[127:0] key_arr[numTests-1:0];
wire[127:0] expected[numTests-1:0];

// Test 0
assign plain_arr[0] = 128'h00112233445566778899aabbccddeeff;
assign key_arr[0] = 128'h000102030405060708090a0b0c0d0e0f;
assign expected[0] = 128'h69c4e0d86a7b0430d8cdb78070b4c55a;
// Test 1
assign plain_arr[1] = 128'h6bc1bee22e409f96e93d7e117393172a;
assign key_arr[1] = 128'h2b7e151628aed2a6abf7158809cf4f3c;
assign expected[1] = 128'h3ad77bb40d7a3660a89ecaf32466ef97;
// Test 2
assign plain_arr[2] = 128'hae2d8a571e03ac9c9eb76fac45af8e51;
assign key_arr[2] = 128'h2b7e151628aed2a6abf7158809cf4f3c;
assign expected[2] = 128'hf5d3d58503b9699de785895a96fdbaaf;
// Test 3
assign plain_arr[3] = 128'h30c81c46a35ce411e5fbc1191a0a52ef;
assign key_arr[3] = 128'h2b7e151628aed2a6abf7158809cf4f3c;
assign expected[3] = 128'h43b1cd7f598ece23881b00e3ed030688;
// Test 4
assign plain_arr[4] = 128'hf69f2445df4f9b17ad2b417be66c3710;
assign key_arr[4] = 128'h2b7e151628aed2a6abf7158809cf4f3c;
assign expected[4] = 128'h7b0c785e27e8ad3f8223207104725dd4;

/*
assign key = 128'h2b7e151628aed2a6abf7158809cf4f3c;
assign plaintext = 128'h3243f6a8885a308d313198a2e0370734;
// 2. assign plaintext = 128'h6bc1bee22e409f96e93d7e117393172a;    
// 3. assign plaintext = 128'h30c81c46a35ce411e5fbc1191a0a52ef;

// Test from appendix C.1
// assign key = 128'h000102030405060708090a0b0c0d0e0f;
// assign plaintext = 128'h00112233445566778899aabbccddeeff;
*/

// python cmd .\Scripts\activate	
// more test vectors @ https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-38a.pdf

int i;

initial begin

	clk = 0;
	rst_n = 0;
	@(posedge clk);
	@(negedge clk);
	rst_n = 1;
	for (i = 0; i < numTests; i++) begin
	  plaintext = plain_arr[i];
	  key = key_arr[i]; 
	  @(posedge clk);
	  @(posedge clk);
	  @(negedge clk);
	  E_int = 1;
	  @(posedge E_done);
	  $display("%d  Plaintext: %H    Encrypted: %H", i, plaintext, ciphertext);
	  if (ciphertext != expected[i]) begin
	    $display("Not Equal");
	    $stop;
	  end
	end
	$display("\nPassed\n");
	$stop;

	/*clk = 0;
	rst_n = 0;
	@(posedge clk);
	@(negedge clk);
	rst_n = 1;
	@(posedge clk);
	repeat(11)@(negedge clk);
	$display("Encrypted Output: %H", ciphertext);
	$stop;*/

end

always
	#1 clk = ~clk;

endmodule