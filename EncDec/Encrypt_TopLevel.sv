
module Encrypt_TopLevel(clk, rst_n, E_int, plaintext, key, ciphertext, E_done);

input clk, rst_n, E_int;
input[127:0] plaintext, key;
output[127:0] ciphertext;
output logic E_done;

reg[3:0] cntr;
reg[127:0] state, ciphertext_reg;
wire[127:0] plaintext_flip, key_flip, roundKey, sbox_to_rows, rows_out, cols_out, xor_in, xor_out;
reg E_int_ff;

// Key Scheduler
KeyGen gen(.keyIn(key_flip), .round(cntr), .roundKey(roundKey));
// Combinational blocks
SBox sbox_1(.xor_to_sbox(state), .sbox_to_rows(sbox_to_rows));
ShiftRows rows_1(.sbox_to_rows(sbox_to_rows), .rows_out(rows_out));
MixCols cols_1(.rows_out(rows_out), .cols_out(cols_out));

// change endianess of key & plaintext
assign key_flip = {key[7:0], key[15:8], key[23:16], key[31:24], key[39:32], key[47:40], key[55:48], key[63:56], key[71:64], key[79:72], key[87:80], key[95:88], key[103:96], key[111:104], key[119:112], key[127:120]};
assign plaintext_flip = {plaintext[7:0], plaintext[15:8], plaintext[23:16], plaintext[31:24], plaintext[39:32], plaintext[47:40], plaintext[55:48], plaintext[63:56], plaintext[71:64], plaintext[79:72], plaintext[87:80], plaintext[95:88], plaintext[103:96], plaintext[111:104], plaintext[119:112], plaintext[127:120]};
assign ciphertext = {ciphertext_reg[7:0], ciphertext_reg[15:8], ciphertext_reg[23:16], ciphertext_reg[31:24], ciphertext_reg[39:32], ciphertext_reg[47:40], ciphertext_reg[55:48], ciphertext_reg[63:56], ciphertext_reg[71:64], ciphertext_reg[79:72], ciphertext_reg[87:80], ciphertext_reg[95:88], ciphertext_reg[103:96], ciphertext_reg[111:104], ciphertext_reg[119:112], ciphertext_reg[127:120]};

// 1st round single xor
assign xor_in = plaintext_flip ^ key_flip;
// last round single xor
assign xor_out = cols_out ^ roundKey;


typedef enum reg[1:0] {IDLE, COUNT, DONE} state_t;
state_t cur_state, next_state;

// flop E_int - cleared by next instruciton not setting E_int
always @(posedge clk, negedge rst_n) begin
	if (!rst_n)
	  E_int_ff <= 1'b0;
	else if (E_done)
	  E_int_ff <= 1'b0;
	else
	  E_int_ff <= E_int;
end

// update SM
always @(posedge clk, negedge rst_n) begin
	if (!rst_n)
	  cur_state <= IDLE;
	else
	  cur_state <= next_state;
end

// SM
always_comb begin
	E_done = 0;
	case(cur_state)
	  IDLE: begin
	    if (E_int_ff)
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
	    E_done = 1;
	  end
	endcase

end

// controls counter and state updating
always @(posedge clk, negedge rst_n) begin
	if(!rst_n) begin
		state <= 0;
		cntr <= 0;
	end
	else if (next_state == IDLE) begin  // if in idle or just getting done
	  cntr <= 0;
	  state <= 0;
	end
	else if (next_state == COUNT) begin  // if starting or continuing
	  if (cur_state == IDLE)  // first round
	    state <= xor_in;
          else			  // middle rounds
	    state <= xor_out;
	  cntr <= cntr + 1;	  // increment count
	end
	else if (next_state == DONE) begin  // last round move value into reg
	  state <= rows_out ^ roundKey;
	  ciphertext_reg <= rows_out ^ roundKey;
	end
end



endmodule