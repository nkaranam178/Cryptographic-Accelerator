module KeyGen(keyIn, round, roundKey);

input[3:0] round;
input[127:0] keyIn;

wire[127:0] keyMap[10:0];
wire[127:0] roundKey_int0, roundKey_int1;
output[127:0] roundKey;

wire[7:0] lowGP;
wire[7:0] rc_1, rc_2, rc_3, rc_4, rc_5, rc_6, rc_7, rc_8, rc_9, rc_10;
wire[31:0] rcon_1, rcon_2, rcon_3, rcon_4, rcon_5, rcon_6, rcon_7, rcon_8, rcon_9, rcon_10;

wire[127:0] w4out, w8out, w12out, w16out, w20out, w24out, w28out, w32out, w36out, w40out;
wire[31:0] rot_w4, rot_w8, rot_w12, rot_w16, rot_w20, rot_w24, rot_w28, rot_w32, rot_w36, rot_w40;

// 11 round keys needed, 10 round constants / 44 round words (32 bits)
assign rcon_1 =  {rc_1, 8'h0, 8'h0, 8'h0};
assign rcon_2 =  {rc_2, 8'h0, 8'h0, 8'h0};
assign rcon_3 =  {rc_3, 8'h0, 8'h0, 8'h0};
assign rcon_4 =  {rc_4, 8'h0, 8'h0, 8'h0};
assign rcon_5 =  {rc_5, 8'h0, 8'h0, 8'h0};
assign rcon_6 =  {rc_6, 8'h0, 8'h0, 8'h0};
assign rcon_7 =  {rc_7, 8'h0, 8'h0, 8'h0};
assign rcon_8 =  {rc_8, 8'h0, 8'h0, 8'h0};
assign rcon_9 =  {rc_9, 8'h0, 8'h0, 8'h0};
assign rcon_10 ={rc_10, 8'h0, 8'h0, 8'h0};

// round constant bytes
assign rc_1 = 8'h01;  
assign rc_2 = 8'h02;  
assign rc_3 = 8'h04;  
assign rc_4 = 8'h08;  
assign rc_5 = 8'h10;  
assign rc_6 = 8'h20;  
assign rc_7 = 8'h40;  
assign rc_8 = 8'h80;  
assign rc_9 = 8'h1b;  
assign rc_10 = 8'h36;  


assign roundKey = (round != 4'h0) ? roundKey_int1 : {roundKey_int1[7:0], roundKey_int1[15:8], roundKey_int1[23:16], roundKey_int1[31:24], roundKey_int1[39:32], roundKey_int1[47:40], roundKey_int1[55:48], roundKey_int1[63:56], roundKey_int1[71:64], roundKey_int1[79:72], roundKey_int1[87:80], roundKey_int1[95:88], roundKey_int1[103:96], roundKey_int1[111:104], roundKey_int1[119:112], roundKey_int1[127:120]};


assign roundKey_int1 = (round == 4'h0) ? roundKey_int0 :
			{roundKey_int0[103:96], roundKey_int0[111:104], roundKey_int0[119:112], roundKey_int0[127:120], roundKey_int0[71:64], roundKey_int0[79:72], roundKey_int0[87:80], roundKey_int0[95:88], roundKey_int0[39:32], roundKey_int0[47:40], roundKey_int0[55:48], roundKey_int0[63:56], roundKey_int0[7:0], roundKey_int0[15:8], roundKey_int0[23:16], roundKey_int0[31:24]};


// round key determined by round, extracted from keyMap
assign roundKey_int0 = (round == 4'h0) ? keyMap[0] :	// 1st round is original key
	    	  (round == 4'h1) ? keyMap[1] :	  
	    	  (round == 4'h2) ? keyMap[2] :
	    	  (round == 4'h3) ? keyMap[3] :	
	  	  (round == 4'h4) ? keyMap[4] :
	    	  (round == 4'h5) ? keyMap[5] :	  
	    	  (round == 4'h6) ? keyMap[6] :
	    	  (round == 4'h7) ? keyMap[7] :	
	    	  (round == 4'h8) ? keyMap[8] :
	    	  (round == 4'h9) ? keyMap[9] :	  
	    	  (round == 4'ha) ? keyMap[10] : 8'hxx;


// 0th round original key
//assign keyMap[0] = keyIn;
assign keyMap[0] = {keyIn[7:0], keyIn[15:8], keyIn[23:16], keyIn[31:24], keyIn[39:32], keyIn[47:40], keyIn[55:48], keyIn[63:56], keyIn[71:64], keyIn[79:72], keyIn[87:80], keyIn[95:88], keyIn[103:96], keyIn[111:104], keyIn[119:112], keyIn[127:120]};


// Round 1 Key
assign keyMap[1][127:96] = keyMap[1][95:64] ^ keyMap[0][31:0];
assign keyMap[1][95:64] = keyMap[1][63:32] ^ keyMap[0][63:32];
assign keyMap[1][63:32] = keyMap[1][31:0] ^ keyMap[0][95:64];
assign keyMap[1][31:0] = keyMap[0][127:96] ^ w4out[31:0] ^ rcon_1;


assign rot_w4 = {keyMap[0][23:0], keyMap[0][31:24]};

SBox w4(.xor_to_sbox({96'h0, rot_w4}), .sbox_to_rows(w4out));
//

// Round 2 Key
assign keyMap[2][127:96] = keyMap[2][95:64] ^ keyMap[1][127:96];
assign keyMap[2][95:64] = keyMap[2][63:32] ^ keyMap[1][95:64];
assign keyMap[2][63:32] = keyMap[2][31:0] ^ keyMap[1][63:32];
assign keyMap[2][31:0] = keyMap[1][31:0] ^ w8out[31:0] ^ rcon_2;

assign rot_w8 = {keyMap[1][119:96], keyMap[1][127:120]};

SBox w8(.xor_to_sbox({96'h0, rot_w8}), .sbox_to_rows(w8out));
// 

// Round 3 Key	
assign keyMap[3][127:96] = keyMap[3][95:64] ^ keyMap[2][127:96];
assign keyMap[3][95:64] = keyMap[3][63:32] ^ keyMap[2][95:64];
assign keyMap[3][63:32] = keyMap[3][31:0] ^ keyMap[2][63:32];
assign keyMap[3][31:0] = keyMap[2][31:0] ^ w12out[31:0] ^ rcon_3;

assign rot_w12 = {keyMap[2][119:96], keyMap[2][127:120]};

SBox w12(.xor_to_sbox({96'h0, rot_w12}), .sbox_to_rows(w12out));
// 

// Round 4 Key	
assign keyMap[4][127:96] = keyMap[4][95:64] ^ keyMap[3][127:96];
assign keyMap[4][95:64] = keyMap[4][63:32] ^ keyMap[3][95:64];
assign keyMap[4][63:32] = keyMap[4][31:0] ^ keyMap[3][63:32];
assign keyMap[4][31:0] = keyMap[3][31:0] ^ w16out[31:0] ^ rcon_4;

assign rot_w16 = {keyMap[3][119:96], keyMap[3][127:120]};

SBox w16(.xor_to_sbox({96'h0, rot_w16}), .sbox_to_rows(w16out));
//

// Round 5 Key	
assign keyMap[5][127:96] = keyMap[5][95:64] ^ keyMap[4][127:96];
assign keyMap[5][95:64] = keyMap[5][63:32] ^ keyMap[4][95:64];
assign keyMap[5][63:32] = keyMap[5][31:0] ^ keyMap[4][63:32];
assign keyMap[5][31:0] = keyMap[4][31:0] ^ w20out[31:0] ^ rcon_5;

assign rot_w20 = {keyMap[4][119:96], keyMap[4][127:120]};

SBox w20(.xor_to_sbox({96'h0, rot_w20}), .sbox_to_rows(w20out));
//

// Round 6 Key	
assign keyMap[6][127:96] = keyMap[6][95:64] ^ keyMap[5][127:96];
assign keyMap[6][95:64] = keyMap[6][63:32] ^ keyMap[5][95:64];
assign keyMap[6][63:32] = keyMap[6][31:0] ^ keyMap[5][63:32];
assign keyMap[6][31:0] = keyMap[5][31:0] ^ w24out[31:0] ^ rcon_6;

assign rot_w24 = {keyMap[5][119:96], keyMap[5][127:120]};

SBox w24(.xor_to_sbox({96'h0, rot_w24}), .sbox_to_rows(w24out));
//

// Round 7 Key	
assign keyMap[7][127:96] = keyMap[7][95:64] ^ keyMap[6][127:96];
assign keyMap[7][95:64] = keyMap[7][63:32] ^ keyMap[6][95:64];
assign keyMap[7][63:32] = keyMap[7][31:0] ^ keyMap[6][63:32];
assign keyMap[7][31:0] = keyMap[6][31:0] ^ w28out[31:0] ^ rcon_7;

assign rot_w28 = {keyMap[6][119:96], keyMap[6][127:120]};

SBox w28(.xor_to_sbox({96'h0, rot_w28}), .sbox_to_rows(w28out));
//

// Round 8 Key	
assign keyMap[8][127:96] = keyMap[8][95:64] ^ keyMap[7][127:96];
assign keyMap[8][95:64] = keyMap[8][63:32] ^ keyMap[7][95:64];
assign keyMap[8][63:32] = keyMap[8][31:0] ^ keyMap[7][63:32];
assign keyMap[8][31:0] = keyMap[7][31:0] ^ w32out[31:0] ^ rcon_8;

assign rot_w32 = {keyMap[7][119:96], keyMap[7][127:120]};

SBox w32(.xor_to_sbox({96'h0, rot_w32}), .sbox_to_rows(w32out));
//

// Round 9 Key	
assign keyMap[9][127:96] = keyMap[9][95:64] ^ keyMap[8][127:96];
assign keyMap[9][95:64] = keyMap[9][63:32] ^ keyMap[8][95:64];
assign keyMap[9][63:32] = keyMap[9][31:0] ^ keyMap[8][63:32];
assign keyMap[9][31:0] = keyMap[8][31:0] ^ w36out[31:0] ^ rcon_9;

assign rot_w36 = {keyMap[8][119:96], keyMap[8][127:120]};

SBox w36(.xor_to_sbox({96'h0, rot_w36}), .sbox_to_rows(w36out));
//

// Round 10 Key	
assign keyMap[10][127:96] = keyMap[10][95:64] ^ keyMap[9][127:96];
assign keyMap[10][95:64] = keyMap[10][63:32] ^ keyMap[9][95:64];
assign keyMap[10][63:32] = keyMap[10][31:0] ^ keyMap[9][63:32];
assign keyMap[10][31:0] = keyMap[9][31:0] ^ w40out[31:0] ^ rcon_10;

assign rot_w40 = {keyMap[9][119:96], keyMap[9][127:120]};

SBox w40(.xor_to_sbox({96'h0, rot_w40}), .sbox_to_rows(w40out));

endmodule
