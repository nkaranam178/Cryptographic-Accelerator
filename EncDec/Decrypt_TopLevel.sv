module Decrypt_TopLevel(clk, rst_n, D_int, ciphertext, key, plaintext, D_done);

input clk, rst_n, D_int;
input[127:0] ciphertext, key;
output[127:0] plaintext;
output logic D_done;

reg[3:0] cntr;
reg[127:0] state, plaintext_reg;
wire[127:0] key_flip, ciphertext_flip, roundKey;
wire[127:0] InvSBox_out, InvRows_out, InvCols_out, xor_in, xor_out;

// inversions for endianess
assign key_flip = {key[7:0], key[15:8], key[23:16], key[31:24], key[39:32], key[47:40], key[55:48], key[63:56], key[71:64], key[79:72], key[87:80], key[95:88], key[103:96], key[111:104], key[119:112], key[127:120]};
assign ciphertext_flip = {ciphertext[7:0], ciphertext[15:8], ciphertext[23:16], ciphertext[31:24], ciphertext[39:32], ciphertext[47:40], ciphertext[55:48], ciphertext[63:56], ciphertext[71:64], ciphertext[79:72], ciphertext[87:80], ciphertext[95:88], ciphertext[103:96], ciphertext[111:104], ciphertext[119:112], ciphertext[127:120]};
assign plaintext = {plaintext_reg[7:0], plaintext_reg[15:8], plaintext_reg[23:16], plaintext_reg[31:24], plaintext_reg[39:32], plaintext_reg[47:40], plaintext_reg[55:48], plaintext_reg[63:56], plaintext_reg[71:64], plaintext_reg[79:72], plaintext_reg[87:80], plaintext_reg[95:88], plaintext_reg[103:96], plaintext_reg[111:104], plaintext_reg[119:112], plaintext_reg[127:120]};

KeyGen gen(.keyIn(key_flip), .round(4'd10 - cntr[3:0]), .roundKey(roundKey));  // this keygen decrements starting at round 10

// xor for 1st round, and end of round
assign xor_in = ciphertext_flip ^ roundKey;
assign xor_out = InvSBox_out ^ roundKey;

// Combinational blocks
InvShiftRows invRow(.xor_to_InvRows(state), .InvRows_to_InvSBox(InvRows_out));
InvSBox invBox(.InvRows_to_InvSbox(InvRows_out), .InvSBox_out(InvSBox_out));
InvMixCols invMix(.InvSBox_out(xor_out), .InvCols_out(InvCols_out));


typedef enum reg[1:0] {IDLE, COUNT, DONE} state_t;
state_t cur_state, next_state;

// update SM
always @(posedge clk, negedge rst_n) begin
	if (!rst_n)
	  cur_state <= IDLE;
	else
	  cur_state <= next_state;
end

// SM
always_comb begin
	D_done = 0;
	case(cur_state)
	  IDLE: begin
	    if (D_int)
	      next_state = COUNT;
	    else
	      next_state = IDLE;
	  end
	  COUNT: begin
	    if (cntr != 4'ha)
	      next_state = COUNT;
	    else
	      next_state = DONE;	      
	  end
	  DONE: begin
	    next_state = IDLE;
	    D_done = 1;
	  end
	endcase

end


// controls counter and state updating
always @(posedge clk, negedge rst_n) begin
	if(!rst_n) begin
	  cntr <= 0;
	  state <= 0;
	end
	else if (next_state == IDLE) begin  // if in idle or just getting done
	  cntr <= 0;
	  state <= 0;
	end
	else if (next_state == COUNT) begin  // if starting or continuing
	  if (cur_state == IDLE)  // first round
	    state <= xor_in;
          else			  // middle rounds
	    state <= InvCols_out;
	  cntr <= cntr + 1;	  // increment count
	end
	else if (next_state == DONE) begin  // last round move value into reg
	  state <= InvSBox_out ^ roundKey;
	  plaintext_reg <= xor_out;
	end
end


endmodule
