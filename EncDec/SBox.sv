module SBox(xor_to_sbox, sbox_to_rows);

input[127:0] xor_to_sbox;
output[127:0] sbox_to_rows;

// output byte determined by Lookup Table
assign sbox_to_rows[0+7:0] = (xor_to_sbox[0+7:0] == 8'h00) ? 8'h63 :	// row 0
				     (xor_to_sbox[0+7:0] == 8'h01) ? 8'h7c : 
				     (xor_to_sbox[0+7:0] == 8'h02) ? 8'h77 : 
				     (xor_to_sbox[0+7:0] == 8'h03) ? 8'h7b : 
				     (xor_to_sbox[0+7:0] == 8'h04) ? 8'hf2 : 
				     (xor_to_sbox[0+7:0] == 8'h05) ? 8'h6b : 
				     (xor_to_sbox[0+7:0] == 8'h06) ? 8'h6f : 
				     (xor_to_sbox[0+7:0] == 8'h07) ? 8'hc5 : 
				     (xor_to_sbox[0+7:0] == 8'h08) ? 8'h30 : 
				     (xor_to_sbox[0+7:0] == 8'h09) ? 8'h01 : 
				     (xor_to_sbox[0+7:0] == 8'h0a) ? 8'h67 : 
				     (xor_to_sbox[0+7:0] == 8'h0b) ? 8'h2b : 
				     (xor_to_sbox[0+7:0] == 8'h0c) ? 8'hfe : 
				     (xor_to_sbox[0+7:0] == 8'h0d) ? 8'hd7 : 
				     (xor_to_sbox[0+7:0] == 8'h0e) ? 8'hab : 
				     (xor_to_sbox[0+7:0] == 8'h0f) ? 8'h76 : 

				     (xor_to_sbox[0+7:0] == 8'h10) ? 8'hca :	// row 1
				     (xor_to_sbox[0+7:0] == 8'h11) ? 8'h82 : 
				     (xor_to_sbox[0+7:0] == 8'h12) ? 8'hc9 : 
				     (xor_to_sbox[0+7:0] == 8'h13) ? 8'h7d : 
				     (xor_to_sbox[0+7:0] == 8'h14) ? 8'hfa : 
				     (xor_to_sbox[0+7:0] == 8'h15) ? 8'h59 : 
				     (xor_to_sbox[0+7:0] == 8'h16) ? 8'h47 : 
				     (xor_to_sbox[0+7:0] == 8'h17) ? 8'hf0 : 
				     (xor_to_sbox[0+7:0] == 8'h18) ? 8'had : 
				     (xor_to_sbox[0+7:0] == 8'h19) ? 8'hd4 : 
				     (xor_to_sbox[0+7:0] == 8'h1a) ? 8'ha2 : 
				     (xor_to_sbox[0+7:0] == 8'h1b) ? 8'haf : 
				     (xor_to_sbox[0+7:0] == 8'h1c) ? 8'h9c : 
				     (xor_to_sbox[0+7:0] == 8'h1d) ? 8'ha4 : 
				     (xor_to_sbox[0+7:0] == 8'h1e) ? 8'h72 : 
				     (xor_to_sbox[0+7:0] == 8'h1f) ? 8'hc0 : 

				     (xor_to_sbox[0+7:0] == 8'h20) ? 8'hb7 :	// row 2
				     (xor_to_sbox[0+7:0] == 8'h21) ? 8'hfd : 
				     (xor_to_sbox[0+7:0] == 8'h22) ? 8'h93 : 
				     (xor_to_sbox[0+7:0] == 8'h23) ? 8'h26 : 
				     (xor_to_sbox[0+7:0] == 8'h24) ? 8'h36 : 
				     (xor_to_sbox[0+7:0] == 8'h25) ? 8'h3f : 
				     (xor_to_sbox[0+7:0] == 8'h26) ? 8'hf7 : 
				     (xor_to_sbox[0+7:0] == 8'h27) ? 8'hcc : 
				     (xor_to_sbox[0+7:0] == 8'h28) ? 8'h34 : 
				     (xor_to_sbox[0+7:0] == 8'h29) ? 8'ha5 : 
				     (xor_to_sbox[0+7:0] == 8'h2a) ? 8'he5 : 
				     (xor_to_sbox[0+7:0] == 8'h2b) ? 8'hf1 : 
				     (xor_to_sbox[0+7:0] == 8'h2c) ? 8'h71 : 
				     (xor_to_sbox[0+7:0] == 8'h2d) ? 8'hd8 : 
				     (xor_to_sbox[0+7:0] == 8'h2e) ? 8'h31 : 
				     (xor_to_sbox[0+7:0] == 8'h2f) ? 8'h15 :

				     (xor_to_sbox[0+7:0] == 8'h30) ? 8'h04 : 	// row 3
				     (xor_to_sbox[0+7:0] == 8'h31) ? 8'hc7 : 
				     (xor_to_sbox[0+7:0] == 8'h32) ? 8'h23 : 
				     (xor_to_sbox[0+7:0] == 8'h33) ? 8'hc3 : 
				     (xor_to_sbox[0+7:0] == 8'h34) ? 8'h18 : 
				     (xor_to_sbox[0+7:0] == 8'h35) ? 8'h96 : 
				     (xor_to_sbox[0+7:0] == 8'h36) ? 8'h05 : 
				     (xor_to_sbox[0+7:0] == 8'h37) ? 8'h9a : 
				     (xor_to_sbox[0+7:0] == 8'h38) ? 8'h07 : 
				     (xor_to_sbox[0+7:0] == 8'h39) ? 8'h12 : 
				     (xor_to_sbox[0+7:0] == 8'h3a) ? 8'h80 : 
				     (xor_to_sbox[0+7:0] == 8'h3b) ? 8'he2 : 
				     (xor_to_sbox[0+7:0] == 8'h3c) ? 8'heb : 
				     (xor_to_sbox[0+7:0] == 8'h3d) ? 8'h27 : 
				     (xor_to_sbox[0+7:0] == 8'h3e) ? 8'hb2 : 
				     (xor_to_sbox[0+7:0] == 8'h3f) ? 8'h75 : 

				     (xor_to_sbox[0+7:0] == 8'h40) ? 8'h09 :	// row 4
				     (xor_to_sbox[0+7:0] == 8'h41) ? 8'h83 : 
				     (xor_to_sbox[0+7:0] == 8'h42) ? 8'h2c : 
				     (xor_to_sbox[0+7:0] == 8'h43) ? 8'h1a : 
				     (xor_to_sbox[0+7:0] == 8'h44) ? 8'h1b : 
				     (xor_to_sbox[0+7:0] == 8'h45) ? 8'h6e : 
				     (xor_to_sbox[0+7:0] == 8'h46) ? 8'h5a : 
				     (xor_to_sbox[0+7:0] == 8'h47) ? 8'ha0 : 
				     (xor_to_sbox[0+7:0] == 8'h48) ? 8'h52 : 
				     (xor_to_sbox[0+7:0] == 8'h49) ? 8'h3b : 
				     (xor_to_sbox[0+7:0] == 8'h4a) ? 8'hd6 : 
				     (xor_to_sbox[0+7:0] == 8'h4b) ? 8'hb3 : 
				     (xor_to_sbox[0+7:0] == 8'h4c) ? 8'h29 : 
				     (xor_to_sbox[0+7:0] == 8'h4d) ? 8'he3 : 
				     (xor_to_sbox[0+7:0] == 8'h4e) ? 8'h2f : 
				     (xor_to_sbox[0+7:0] == 8'h4f) ? 8'h84 : 

				     (xor_to_sbox[0+7:0] == 8'h50) ? 8'h53 :	// row 5
				     (xor_to_sbox[0+7:0] == 8'h51) ? 8'hd1 : 
				     (xor_to_sbox[0+7:0] == 8'h52) ? 8'h00 : 
				     (xor_to_sbox[0+7:0] == 8'h53) ? 8'hed : 
				     (xor_to_sbox[0+7:0] == 8'h54) ? 8'h20 : 
				     (xor_to_sbox[0+7:0] == 8'h55) ? 8'hfc : 
				     (xor_to_sbox[0+7:0] == 8'h56) ? 8'hb1 : 
				     (xor_to_sbox[0+7:0] == 8'h57) ? 8'h5b : 
				     (xor_to_sbox[0+7:0] == 8'h58) ? 8'h6a : 
				     (xor_to_sbox[0+7:0] == 8'h59) ? 8'hcb : 
				     (xor_to_sbox[0+7:0] == 8'h5a) ? 8'hbe : 
				     (xor_to_sbox[0+7:0] == 8'h5b) ? 8'h39 : 
				     (xor_to_sbox[0+7:0] == 8'h5c) ? 8'h4a : 
				     (xor_to_sbox[0+7:0] == 8'h5d) ? 8'h4c : 
				     (xor_to_sbox[0+7:0] == 8'h5e) ? 8'h58 : 
				     (xor_to_sbox[0+7:0] == 8'h5f) ? 8'hcf : 

				     (xor_to_sbox[0+7:0] == 8'h60) ? 8'hd0 :	// row 6
				     (xor_to_sbox[0+7:0] == 8'h61) ? 8'hef : 
				     (xor_to_sbox[0+7:0] == 8'h62) ? 8'haa : 
				     (xor_to_sbox[0+7:0] == 8'h63) ? 8'hfb : 
				     (xor_to_sbox[0+7:0] == 8'h64) ? 8'h43 : 
				     (xor_to_sbox[0+7:0] == 8'h65) ? 8'h4d : 
				     (xor_to_sbox[0+7:0] == 8'h66) ? 8'h33 : 
				     (xor_to_sbox[0+7:0] == 8'h67) ? 8'h85 : 
				     (xor_to_sbox[0+7:0] == 8'h68) ? 8'h45 : 
				     (xor_to_sbox[0+7:0] == 8'h69) ? 8'hf9 : 
				     (xor_to_sbox[0+7:0] == 8'h6a) ? 8'h02 : 
				     (xor_to_sbox[0+7:0] == 8'h6b) ? 8'h7f : 
				     (xor_to_sbox[0+7:0] == 8'h6c) ? 8'h50 : 
				     (xor_to_sbox[0+7:0] == 8'h6d) ? 8'h3c : 
				     (xor_to_sbox[0+7:0] == 8'h6e) ? 8'h9f : 
				     (xor_to_sbox[0+7:0] == 8'h6f) ? 8'ha8 : 

				     (xor_to_sbox[0+7:0] == 8'h70) ? 8'h51 :	// row 7
				     (xor_to_sbox[0+7:0] == 8'h71) ? 8'ha3 : 
				     (xor_to_sbox[0+7:0] == 8'h72) ? 8'h40 : 
				     (xor_to_sbox[0+7:0] == 8'h73) ? 8'h8f : 
				     (xor_to_sbox[0+7:0] == 8'h74) ? 8'h92 : 
				     (xor_to_sbox[0+7:0] == 8'h75) ? 8'h9d : 
				     (xor_to_sbox[0+7:0] == 8'h76) ? 8'h38 : 
				     (xor_to_sbox[0+7:0] == 8'h77) ? 8'hf5 : 
				     (xor_to_sbox[0+7:0] == 8'h78) ? 8'hbc : 
				     (xor_to_sbox[0+7:0] == 8'h79) ? 8'hb6 : 
				     (xor_to_sbox[0+7:0] == 8'h7a) ? 8'hda : 
				     (xor_to_sbox[0+7:0] == 8'h7b) ? 8'h21 : 
				     (xor_to_sbox[0+7:0] == 8'h7c) ? 8'h10 : 
				     (xor_to_sbox[0+7:0] == 8'h7d) ? 8'hff : 
				     (xor_to_sbox[0+7:0] == 8'h7e) ? 8'hf3 : 
				     (xor_to_sbox[0+7:0] == 8'h7f) ? 8'hd2 : 

				     (xor_to_sbox[0+7:0] == 8'h80) ? 8'hcd :	// row 8
				     (xor_to_sbox[0+7:0] == 8'h81) ? 8'h0c : 
				     (xor_to_sbox[0+7:0] == 8'h82) ? 8'h13 : 
				     (xor_to_sbox[0+7:0] == 8'h83) ? 8'hec : 
				     (xor_to_sbox[0+7:0] == 8'h84) ? 8'h5f : 
				     (xor_to_sbox[0+7:0] == 8'h85) ? 8'h97 : 
				     (xor_to_sbox[0+7:0] == 8'h86) ? 8'h44 : 
				     (xor_to_sbox[0+7:0] == 8'h87) ? 8'h17 : 
				     (xor_to_sbox[0+7:0] == 8'h88) ? 8'hc4 : 
				     (xor_to_sbox[0+7:0] == 8'h89) ? 8'ha7 : 
				     (xor_to_sbox[0+7:0] == 8'h8a) ? 8'h7e : 
				     (xor_to_sbox[0+7:0] == 8'h8b) ? 8'h3d : 
				     (xor_to_sbox[0+7:0] == 8'h8c) ? 8'h64 : 
				     (xor_to_sbox[0+7:0] == 8'h8d) ? 8'h5d : 
				     (xor_to_sbox[0+7:0] == 8'h8e) ? 8'h19 : 
				     (xor_to_sbox[0+7:0] == 8'h8f) ? 8'h73 : 

				     (xor_to_sbox[0+7:0] == 8'h90) ? 8'h60 :	// row 9
				     (xor_to_sbox[0+7:0] == 8'h91) ? 8'h81 : 
				     (xor_to_sbox[0+7:0] == 8'h92) ? 8'h4f : 
				     (xor_to_sbox[0+7:0] == 8'h93) ? 8'hdc : 
				     (xor_to_sbox[0+7:0] == 8'h94) ? 8'h22 : 
				     (xor_to_sbox[0+7:0] == 8'h95) ? 8'h2a : 
				     (xor_to_sbox[0+7:0] == 8'h96) ? 8'h90 : 
				     (xor_to_sbox[0+7:0] == 8'h97) ? 8'h88 : 
				     (xor_to_sbox[0+7:0] == 8'h98) ? 8'h46 : 
				     (xor_to_sbox[0+7:0] == 8'h99) ? 8'hee : 
				     (xor_to_sbox[0+7:0] == 8'h9a) ? 8'hb8 : 
				     (xor_to_sbox[0+7:0] == 8'h9b) ? 8'h14 : 
				     (xor_to_sbox[0+7:0] == 8'h9c) ? 8'hde : 
				     (xor_to_sbox[0+7:0] == 8'h9d) ? 8'h5e : 
				     (xor_to_sbox[0+7:0] == 8'h9e) ? 8'h0b : 
				     (xor_to_sbox[0+7:0] == 8'h9f) ? 8'hdb : 

				     (xor_to_sbox[0+7:0] == 8'ha0) ? 8'he0 :	// row a
				     (xor_to_sbox[0+7:0] == 8'ha1) ? 8'h32 : 
				     (xor_to_sbox[0+7:0] == 8'ha2) ? 8'h3a : 
				     (xor_to_sbox[0+7:0] == 8'ha3) ? 8'h0a : 
				     (xor_to_sbox[0+7:0] == 8'ha4) ? 8'h49 : 
				     (xor_to_sbox[0+7:0] == 8'ha5) ? 8'h06 : 
				     (xor_to_sbox[0+7:0] == 8'ha6) ? 8'h24 : 
				     (xor_to_sbox[0+7:0] == 8'ha7) ? 8'h5c : 
				     (xor_to_sbox[0+7:0] == 8'ha8) ? 8'hc2 : 
				     (xor_to_sbox[0+7:0] == 8'ha9) ? 8'hd3 : 
				     (xor_to_sbox[0+7:0] == 8'haa) ? 8'hac : 
				     (xor_to_sbox[0+7:0] == 8'hab) ? 8'h62 : 
				     (xor_to_sbox[0+7:0] == 8'hac) ? 8'h91 : 
				     (xor_to_sbox[0+7:0] == 8'had) ? 8'h95 : 
				     (xor_to_sbox[0+7:0] == 8'hae) ? 8'he4 : 
				     (xor_to_sbox[0+7:0] == 8'haf) ? 8'h79 : 

				     (xor_to_sbox[0+7:0] == 8'hb0) ? 8'he7 :	// row b
				     (xor_to_sbox[0+7:0] == 8'hb1) ? 8'hc8 : 
				     (xor_to_sbox[0+7:0] == 8'hb2) ? 8'h37 : 
				     (xor_to_sbox[0+7:0] == 8'hb3) ? 8'h6d : 
				     (xor_to_sbox[0+7:0] == 8'hb4) ? 8'h8d : 
				     (xor_to_sbox[0+7:0] == 8'hb5) ? 8'hd5 : 
				     (xor_to_sbox[0+7:0] == 8'hb6) ? 8'h4e : 
				     (xor_to_sbox[0+7:0] == 8'hb7) ? 8'ha9 : 
				     (xor_to_sbox[0+7:0] == 8'hb8) ? 8'h6c : 
				     (xor_to_sbox[0+7:0] == 8'hb9) ? 8'h56 : 
				     (xor_to_sbox[0+7:0] == 8'hba) ? 8'hf4 : 
				     (xor_to_sbox[0+7:0] == 8'hbb) ? 8'hea : 
				     (xor_to_sbox[0+7:0] == 8'hbc) ? 8'h65 : 
				     (xor_to_sbox[0+7:0] == 8'hbd) ? 8'h7a : 
				     (xor_to_sbox[0+7:0] == 8'hbe) ? 8'hae : 
				     (xor_to_sbox[0+7:0] == 8'hbf) ? 8'h08 : 

				     (xor_to_sbox[0+7:0] == 8'hc0) ? 8'hba :	// row c
				     (xor_to_sbox[0+7:0] == 8'hc1) ? 8'h78 : 
				     (xor_to_sbox[0+7:0] == 8'hc2) ? 8'h25 : 
				     (xor_to_sbox[0+7:0] == 8'hc3) ? 8'h2e : 
				     (xor_to_sbox[0+7:0] == 8'hc4) ? 8'h1c : 
				     (xor_to_sbox[0+7:0] == 8'hc5) ? 8'ha6 : 
				     (xor_to_sbox[0+7:0] == 8'hc6) ? 8'hb4 : 
				     (xor_to_sbox[0+7:0] == 8'hc7) ? 8'hc6 : 
				     (xor_to_sbox[0+7:0] == 8'hc8) ? 8'he8 : 
				     (xor_to_sbox[0+7:0] == 8'hc9) ? 8'hdd : 
				     (xor_to_sbox[0+7:0] == 8'hca) ? 8'h74 : 
				     (xor_to_sbox[0+7:0] == 8'hcb) ? 8'h1f : 
				     (xor_to_sbox[0+7:0] == 8'hcc) ? 8'h4b : 
				     (xor_to_sbox[0+7:0] == 8'hcd) ? 8'hbd : 
				     (xor_to_sbox[0+7:0] == 8'hce) ? 8'h8b : 
				     (xor_to_sbox[0+7:0] == 8'hcf) ? 8'h8a : 

				     (xor_to_sbox[0+7:0] == 8'hd0) ? 8'h70 :	// row d
				     (xor_to_sbox[0+7:0] == 8'hd1) ? 8'h3e : 
				     (xor_to_sbox[0+7:0] == 8'hd2) ? 8'hb5 : 
				     (xor_to_sbox[0+7:0] == 8'hd3) ? 8'h66 : 
				     (xor_to_sbox[0+7:0] == 8'hd4) ? 8'h48 : 
				     (xor_to_sbox[0+7:0] == 8'hd5) ? 8'h03 : 
				     (xor_to_sbox[0+7:0] == 8'hd6) ? 8'hf6 : 
				     (xor_to_sbox[0+7:0] == 8'hd7) ? 8'h0e : 
				     (xor_to_sbox[0+7:0] == 8'hd8) ? 8'h61 : 
				     (xor_to_sbox[0+7:0] == 8'hd9) ? 8'h35 : 
				     (xor_to_sbox[0+7:0] == 8'hda) ? 8'h57 : 
				     (xor_to_sbox[0+7:0] == 8'hdb) ? 8'hb9 : 
				     (xor_to_sbox[0+7:0] == 8'hdc) ? 8'h86 : 
				     (xor_to_sbox[0+7:0] == 8'hdd) ? 8'hc1 : 
				     (xor_to_sbox[0+7:0] == 8'hde) ? 8'h1d : 
				     (xor_to_sbox[0+7:0] == 8'hdf) ? 8'h9e : 

				     (xor_to_sbox[0+7:0] == 8'he0) ? 8'he1 :	// row e
				     (xor_to_sbox[0+7:0] == 8'he1) ? 8'hf8 : 
				     (xor_to_sbox[0+7:0] == 8'he2) ? 8'h98 : 
				     (xor_to_sbox[0+7:0] == 8'he3) ? 8'h11 : 
				     (xor_to_sbox[0+7:0] == 8'he4) ? 8'h69 : 
				     (xor_to_sbox[0+7:0] == 8'he5) ? 8'hd9 : 
				     (xor_to_sbox[0+7:0] == 8'he6) ? 8'h8e : 
				     (xor_to_sbox[0+7:0] == 8'he7) ? 8'h94 : 
				     (xor_to_sbox[0+7:0] == 8'he8) ? 8'h9b : 
				     (xor_to_sbox[0+7:0] == 8'he9) ? 8'h1e : 
				     (xor_to_sbox[0+7:0] == 8'hea) ? 8'h87 : 
				     (xor_to_sbox[0+7:0] == 8'heb) ? 8'he9 : 
				     (xor_to_sbox[0+7:0] == 8'hec) ? 8'hce : 
				     (xor_to_sbox[0+7:0] == 8'hed) ? 8'h55 : 
				     (xor_to_sbox[0+7:0] == 8'hee) ? 8'h28 : 
				     (xor_to_sbox[0+7:0] == 8'hef) ? 8'hdf : 

				     (xor_to_sbox[0+7:0] == 8'hf0) ? 8'h8c :	// row f
				     (xor_to_sbox[0+7:0] == 8'hf1) ? 8'ha1 : 
				     (xor_to_sbox[0+7:0] == 8'hf2) ? 8'h89 : 
				     (xor_to_sbox[0+7:0] == 8'hf3) ? 8'h0d : 
				     (xor_to_sbox[0+7:0] == 8'hf4) ? 8'hbf : 
				     (xor_to_sbox[0+7:0] == 8'hf5) ? 8'he6 : 
				     (xor_to_sbox[0+7:0] == 8'hf6) ? 8'h42 : 
				     (xor_to_sbox[0+7:0] == 8'hf7) ? 8'h68 : 
				     (xor_to_sbox[0+7:0] == 8'hf8) ? 8'h41 : 
				     (xor_to_sbox[0+7:0] == 8'hf9) ? 8'h99 : 
				     (xor_to_sbox[0+7:0] == 8'hfa) ? 8'h2d : 
				     (xor_to_sbox[0+7:0] == 8'hfb) ? 8'h0f : 
				     (xor_to_sbox[0+7:0] == 8'hfc) ? 8'hb0 : 
				     (xor_to_sbox[0+7:0] == 8'hfd) ? 8'h54 : 
				     (xor_to_sbox[0+7:0] == 8'hfe) ? 8'hbb : 
				     (xor_to_sbox[0+7:0] == 8'hff) ? 8'h16 : 8'hxx;


//end


assign sbox_to_rows[15:8] = (xor_to_sbox[15:8] == 8'h00) ? 8'h63 :	// row 0
				     (xor_to_sbox[15:8] == 8'h01) ? 8'h7c : 
				     (xor_to_sbox[15:8] == 8'h02) ? 8'h77 : 
				     (xor_to_sbox[15:8] == 8'h03) ? 8'h7b : 
				     (xor_to_sbox[15:8] == 8'h04) ? 8'hf2 : 
				     (xor_to_sbox[15:8] == 8'h05) ? 8'h6b : 
				     (xor_to_sbox[15:8] == 8'h06) ? 8'h6f : 
				     (xor_to_sbox[15:8] == 8'h07) ? 8'hc5 : 
				     (xor_to_sbox[15:8] == 8'h08) ? 8'h30 : 
				     (xor_to_sbox[15:8] == 8'h09) ? 8'h01 : 
				     (xor_to_sbox[15:8] == 8'h0a) ? 8'h67 : 
				     (xor_to_sbox[15:8] == 8'h0b) ? 8'h2b : 
				     (xor_to_sbox[15:8] == 8'h0c) ? 8'hfe : 
				     (xor_to_sbox[15:8] == 8'h0d) ? 8'hd7 : 
				     (xor_to_sbox[15:8] == 8'h0e) ? 8'hab : 
				     (xor_to_sbox[15:8] == 8'h0f) ? 8'h76 : 

				     (xor_to_sbox[15:8] == 8'h10) ? 8'hca :	// row 1
				     (xor_to_sbox[15:8] == 8'h11) ? 8'h82 : 
				     (xor_to_sbox[15:8] == 8'h12) ? 8'hc9 : 
				     (xor_to_sbox[15:8] == 8'h13) ? 8'h7d : 
				     (xor_to_sbox[15:8] == 8'h14) ? 8'hfa : 
				     (xor_to_sbox[15:8] == 8'h15) ? 8'h59 : 
				     (xor_to_sbox[15:8] == 8'h16) ? 8'h47 : 
				     (xor_to_sbox[15:8] == 8'h17) ? 8'hf0 : 
				     (xor_to_sbox[15:8] == 8'h18) ? 8'had : 
				     (xor_to_sbox[15:8] == 8'h19) ? 8'hd4 : 
				     (xor_to_sbox[15:8] == 8'h1a) ? 8'ha2 : 
				     (xor_to_sbox[15:8] == 8'h1b) ? 8'haf : 
				     (xor_to_sbox[15:8] == 8'h1c) ? 8'h9c : 
				     (xor_to_sbox[15:8] == 8'h1d) ? 8'ha4 : 
				     (xor_to_sbox[15:8] == 8'h1e) ? 8'h72 : 
				     (xor_to_sbox[15:8] == 8'h1f) ? 8'hc0 : 

				     (xor_to_sbox[15:8] == 8'h20) ? 8'hb7 :	// row 2
				     (xor_to_sbox[15:8] == 8'h21) ? 8'hfd : 
				     (xor_to_sbox[15:8] == 8'h22) ? 8'h93 : 
				     (xor_to_sbox[15:8] == 8'h23) ? 8'h26 : 
				     (xor_to_sbox[15:8] == 8'h24) ? 8'h36 : 
				     (xor_to_sbox[15:8] == 8'h25) ? 8'h3f : 
				     (xor_to_sbox[15:8] == 8'h26) ? 8'hf7 : 
				     (xor_to_sbox[15:8] == 8'h27) ? 8'hcc : 
				     (xor_to_sbox[15:8] == 8'h28) ? 8'h34 : 
				     (xor_to_sbox[15:8] == 8'h29) ? 8'ha5 : 
				     (xor_to_sbox[15:8] == 8'h2a) ? 8'he5 : 
				     (xor_to_sbox[15:8] == 8'h2b) ? 8'hf1 : 
				     (xor_to_sbox[15:8] == 8'h2c) ? 8'h71 : 
				     (xor_to_sbox[15:8] == 8'h2d) ? 8'hd8 : 
				     (xor_to_sbox[15:8] == 8'h2e) ? 8'h31 : 
				     (xor_to_sbox[15:8] == 8'h2f) ? 8'h15 :

				     (xor_to_sbox[15:8] == 8'h30) ? 8'h04 : 	// row 3
				     (xor_to_sbox[15:8] == 8'h31) ? 8'hc7 : 
				     (xor_to_sbox[15:8] == 8'h32) ? 8'h23 : 
				     (xor_to_sbox[15:8] == 8'h33) ? 8'hc3 : 
				     (xor_to_sbox[15:8] == 8'h34) ? 8'h18 : 
				     (xor_to_sbox[15:8] == 8'h35) ? 8'h96 : 
				     (xor_to_sbox[15:8] == 8'h36) ? 8'h05 : 
				     (xor_to_sbox[15:8] == 8'h37) ? 8'h9a : 
				     (xor_to_sbox[15:8] == 8'h38) ? 8'h07 : 
				     (xor_to_sbox[15:8] == 8'h39) ? 8'h12 : 
				     (xor_to_sbox[15:8] == 8'h3a) ? 8'h80 : 
				     (xor_to_sbox[15:8] == 8'h3b) ? 8'he2 : 
				     (xor_to_sbox[15:8] == 8'h3c) ? 8'heb : 
				     (xor_to_sbox[15:8] == 8'h3d) ? 8'h27 : 
				     (xor_to_sbox[15:8] == 8'h3e) ? 8'hb2 : 
				     (xor_to_sbox[15:8] == 8'h3f) ? 8'h75 : 

				     (xor_to_sbox[15:8] == 8'h40) ? 8'h09 :	// row 4
				     (xor_to_sbox[15:8] == 8'h41) ? 8'h83 : 
				     (xor_to_sbox[15:8] == 8'h42) ? 8'h2c : 
				     (xor_to_sbox[15:8] == 8'h43) ? 8'h1a : 
				     (xor_to_sbox[15:8] == 8'h44) ? 8'h1b : 
				     (xor_to_sbox[15:8] == 8'h45) ? 8'h6e : 
				     (xor_to_sbox[15:8] == 8'h46) ? 8'h5a : 
				     (xor_to_sbox[15:8] == 8'h47) ? 8'ha0 : 
				     (xor_to_sbox[15:8] == 8'h48) ? 8'h52 : 
				     (xor_to_sbox[15:8] == 8'h49) ? 8'h3b : 
				     (xor_to_sbox[15:8] == 8'h4a) ? 8'hd6 : 
				     (xor_to_sbox[15:8] == 8'h4b) ? 8'hb3 : 
				     (xor_to_sbox[15:8] == 8'h4c) ? 8'h29 : 
				     (xor_to_sbox[15:8] == 8'h4d) ? 8'he3 : 
				     (xor_to_sbox[15:8] == 8'h4e) ? 8'h2f : 
				     (xor_to_sbox[15:8] == 8'h4f) ? 8'h84 : 

				     (xor_to_sbox[15:8] == 8'h50) ? 8'h53 :	// row 5
				     (xor_to_sbox[15:8] == 8'h51) ? 8'hd1 : 
				     (xor_to_sbox[15:8] == 8'h52) ? 8'h00 : 
				     (xor_to_sbox[15:8] == 8'h53) ? 8'hed : 
				     (xor_to_sbox[15:8] == 8'h54) ? 8'h20 : 
				     (xor_to_sbox[15:8] == 8'h55) ? 8'hfc : 
				     (xor_to_sbox[15:8] == 8'h56) ? 8'hb1 : 
				     (xor_to_sbox[15:8] == 8'h57) ? 8'h5b : 
				     (xor_to_sbox[15:8] == 8'h58) ? 8'h6a : 
				     (xor_to_sbox[15:8] == 8'h59) ? 8'hcb : 
				     (xor_to_sbox[15:8] == 8'h5a) ? 8'hbe : 
				     (xor_to_sbox[15:8] == 8'h5b) ? 8'h39 : 
				     (xor_to_sbox[15:8] == 8'h5c) ? 8'h4a : 
				     (xor_to_sbox[15:8] == 8'h5d) ? 8'h4c : 
				     (xor_to_sbox[15:8] == 8'h5e) ? 8'h58 : 
				     (xor_to_sbox[15:8] == 8'h5f) ? 8'hcf : 

				     (xor_to_sbox[15:8] == 8'h60) ? 8'hd0 :	// row 6
				     (xor_to_sbox[15:8] == 8'h61) ? 8'hef : 
				     (xor_to_sbox[15:8] == 8'h62) ? 8'haa : 
				     (xor_to_sbox[15:8] == 8'h63) ? 8'hfb : 
				     (xor_to_sbox[15:8] == 8'h64) ? 8'h43 : 
				     (xor_to_sbox[15:8] == 8'h65) ? 8'h4d : 
				     (xor_to_sbox[15:8] == 8'h66) ? 8'h33 : 
				     (xor_to_sbox[15:8] == 8'h67) ? 8'h85 : 
				     (xor_to_sbox[15:8] == 8'h68) ? 8'h45 : 
				     (xor_to_sbox[15:8] == 8'h69) ? 8'hf9 : 
				     (xor_to_sbox[15:8] == 8'h6a) ? 8'h02 : 
				     (xor_to_sbox[15:8] == 8'h6b) ? 8'h7f : 
				     (xor_to_sbox[15:8] == 8'h6c) ? 8'h50 : 
				     (xor_to_sbox[15:8] == 8'h6d) ? 8'h3c : 
				     (xor_to_sbox[15:8] == 8'h6e) ? 8'h9f : 
				     (xor_to_sbox[15:8] == 8'h6f) ? 8'ha8 : 

				     (xor_to_sbox[15:8] == 8'h70) ? 8'h51 :	// row 7
				     (xor_to_sbox[15:8] == 8'h71) ? 8'ha3 : 
				     (xor_to_sbox[15:8] == 8'h72) ? 8'h40 : 
				     (xor_to_sbox[15:8] == 8'h73) ? 8'h8f : 
				     (xor_to_sbox[15:8] == 8'h74) ? 8'h92 : 
				     (xor_to_sbox[15:8] == 8'h75) ? 8'h9d : 
				     (xor_to_sbox[15:8] == 8'h76) ? 8'h38 : 
				     (xor_to_sbox[15:8] == 8'h77) ? 8'hf5 : 
				     (xor_to_sbox[15:8] == 8'h78) ? 8'hbc : 
				     (xor_to_sbox[15:8] == 8'h79) ? 8'hb6 : 
				     (xor_to_sbox[15:8] == 8'h7a) ? 8'hda : 
				     (xor_to_sbox[15:8] == 8'h7b) ? 8'h21 : 
				     (xor_to_sbox[15:8] == 8'h7c) ? 8'h10 : 
				     (xor_to_sbox[15:8] == 8'h7d) ? 8'hff : 
				     (xor_to_sbox[15:8] == 8'h7e) ? 8'hf3 : 
				     (xor_to_sbox[15:8] == 8'h7f) ? 8'hd2 : 

				     (xor_to_sbox[15:8] == 8'h80) ? 8'hcd :	// row 8
				     (xor_to_sbox[15:8] == 8'h81) ? 8'h0c : 
				     (xor_to_sbox[15:8] == 8'h82) ? 8'h13 : 
				     (xor_to_sbox[15:8] == 8'h83) ? 8'hec : 
				     (xor_to_sbox[15:8] == 8'h84) ? 8'h5f : 
				     (xor_to_sbox[15:8] == 8'h85) ? 8'h97 : 
				     (xor_to_sbox[15:8] == 8'h86) ? 8'h44 : 
				     (xor_to_sbox[15:8] == 8'h87) ? 8'h17 : 
				     (xor_to_sbox[15:8] == 8'h88) ? 8'hc4 : 
				     (xor_to_sbox[15:8] == 8'h89) ? 8'ha7 : 
				     (xor_to_sbox[15:8] == 8'h8a) ? 8'h7e : 
				     (xor_to_sbox[15:8] == 8'h8b) ? 8'h3d : 
				     (xor_to_sbox[15:8] == 8'h8c) ? 8'h64 : 
				     (xor_to_sbox[15:8] == 8'h8d) ? 8'h5d : 
				     (xor_to_sbox[15:8] == 8'h8e) ? 8'h19 : 
				     (xor_to_sbox[15:8] == 8'h8f) ? 8'h73 : 

				     (xor_to_sbox[15:8] == 8'h90) ? 8'h60 :	// row 9
				     (xor_to_sbox[15:8] == 8'h91) ? 8'h81 : 
				     (xor_to_sbox[15:8] == 8'h92) ? 8'h4f : 
				     (xor_to_sbox[15:8] == 8'h93) ? 8'hdc : 
				     (xor_to_sbox[15:8] == 8'h94) ? 8'h22 : 
				     (xor_to_sbox[15:8] == 8'h95) ? 8'h2a : 
				     (xor_to_sbox[15:8] == 8'h96) ? 8'h90 : 
				     (xor_to_sbox[15:8] == 8'h97) ? 8'h88 : 
				     (xor_to_sbox[15:8] == 8'h98) ? 8'h46 : 
				     (xor_to_sbox[15:8] == 8'h99) ? 8'hee : 
				     (xor_to_sbox[15:8] == 8'h9a) ? 8'hb8 : 
				     (xor_to_sbox[15:8] == 8'h9b) ? 8'h14 : 
				     (xor_to_sbox[15:8] == 8'h9c) ? 8'hde : 
				     (xor_to_sbox[15:8] == 8'h9d) ? 8'h5e : 
				     (xor_to_sbox[15:8] == 8'h9e) ? 8'h0b : 
				     (xor_to_sbox[15:8] == 8'h9f) ? 8'hdb : 

				     (xor_to_sbox[15:8] == 8'ha0) ? 8'he0 :	// row a
				     (xor_to_sbox[15:8] == 8'ha1) ? 8'h32 : 
				     (xor_to_sbox[15:8] == 8'ha2) ? 8'h3a : 
				     (xor_to_sbox[15:8] == 8'ha3) ? 8'h0a : 
				     (xor_to_sbox[15:8] == 8'ha4) ? 8'h49 : 
				     (xor_to_sbox[15:8] == 8'ha5) ? 8'h06 : 
				     (xor_to_sbox[15:8] == 8'ha6) ? 8'h24 : 
				     (xor_to_sbox[15:8] == 8'ha7) ? 8'h5c : 
				     (xor_to_sbox[15:8] == 8'ha8) ? 8'hc2 : 
				     (xor_to_sbox[15:8] == 8'ha9) ? 8'hd3 : 
				     (xor_to_sbox[15:8] == 8'haa) ? 8'hac : 
				     (xor_to_sbox[15:8] == 8'hab) ? 8'h62 : 
				     (xor_to_sbox[15:8] == 8'hac) ? 8'h91 : 
				     (xor_to_sbox[15:8] == 8'had) ? 8'h95 : 
				     (xor_to_sbox[15:8] == 8'hae) ? 8'he4 : 
				     (xor_to_sbox[15:8] == 8'haf) ? 8'h79 : 

				     (xor_to_sbox[15:8] == 8'hb0) ? 8'he7 :	// row b
				     (xor_to_sbox[15:8] == 8'hb1) ? 8'hc8 : 
				     (xor_to_sbox[15:8] == 8'hb2) ? 8'h37 : 
				     (xor_to_sbox[15:8] == 8'hb3) ? 8'h6d : 
				     (xor_to_sbox[15:8] == 8'hb4) ? 8'h8d : 
				     (xor_to_sbox[15:8] == 8'hb5) ? 8'hd5 : 
				     (xor_to_sbox[15:8] == 8'hb6) ? 8'h4e : 
				     (xor_to_sbox[15:8] == 8'hb7) ? 8'ha9 : 
				     (xor_to_sbox[15:8] == 8'hb8) ? 8'h6c : 
				     (xor_to_sbox[15:8] == 8'hb9) ? 8'h56 : 
				     (xor_to_sbox[15:8] == 8'hba) ? 8'hf4 : 
				     (xor_to_sbox[15:8] == 8'hbb) ? 8'hea : 
				     (xor_to_sbox[15:8] == 8'hbc) ? 8'h65 : 
				     (xor_to_sbox[15:8] == 8'hbd) ? 8'h7a : 
				     (xor_to_sbox[15:8] == 8'hbe) ? 8'hae : 
				     (xor_to_sbox[15:8] == 8'hbf) ? 8'h08 : 

				     (xor_to_sbox[15:8] == 8'hc0) ? 8'hba :	// row c
				     (xor_to_sbox[15:8] == 8'hc1) ? 8'h78 : 
				     (xor_to_sbox[15:8] == 8'hc2) ? 8'h25 : 
				     (xor_to_sbox[15:8] == 8'hc3) ? 8'h2e : 
				     (xor_to_sbox[15:8] == 8'hc4) ? 8'h1c : 
				     (xor_to_sbox[15:8] == 8'hc5) ? 8'ha6 : 
				     (xor_to_sbox[15:8] == 8'hc6) ? 8'hb4 : 
				     (xor_to_sbox[15:8] == 8'hc7) ? 8'hc6 : 
				     (xor_to_sbox[15:8] == 8'hc8) ? 8'he8 : 
				     (xor_to_sbox[15:8] == 8'hc9) ? 8'hdd : 
				     (xor_to_sbox[15:8] == 8'hca) ? 8'h74 : 
				     (xor_to_sbox[15:8] == 8'hcb) ? 8'h1f : 
				     (xor_to_sbox[15:8] == 8'hcc) ? 8'h4b : 
				     (xor_to_sbox[15:8] == 8'hcd) ? 8'hbd : 
				     (xor_to_sbox[15:8] == 8'hce) ? 8'h8b : 
				     (xor_to_sbox[15:8] == 8'hcf) ? 8'h8a : 

				     (xor_to_sbox[15:8] == 8'hd0) ? 8'h70 :	// row d
				     (xor_to_sbox[15:8] == 8'hd1) ? 8'h3e : 
				     (xor_to_sbox[15:8] == 8'hd2) ? 8'hb5 : 
				     (xor_to_sbox[15:8] == 8'hd3) ? 8'h66 : 
				     (xor_to_sbox[15:8] == 8'hd4) ? 8'h48 : 
				     (xor_to_sbox[15:8] == 8'hd5) ? 8'h03 : 
				     (xor_to_sbox[15:8] == 8'hd6) ? 8'hf6 : 
				     (xor_to_sbox[15:8] == 8'hd7) ? 8'h0e : 
				     (xor_to_sbox[15:8] == 8'hd8) ? 8'h61 : 
				     (xor_to_sbox[15:8] == 8'hd9) ? 8'h35 : 
				     (xor_to_sbox[15:8] == 8'hda) ? 8'h57 : 
				     (xor_to_sbox[15:8] == 8'hdb) ? 8'hb9 : 
				     (xor_to_sbox[15:8] == 8'hdc) ? 8'h86 : 
				     (xor_to_sbox[15:8] == 8'hdd) ? 8'hc1 : 
				     (xor_to_sbox[15:8] == 8'hde) ? 8'h1d : 
				     (xor_to_sbox[15:8] == 8'hdf) ? 8'h9e : 

				     (xor_to_sbox[15:8] == 8'he0) ? 8'he1 :	// row e
				     (xor_to_sbox[15:8] == 8'he1) ? 8'hf8 : 
				     (xor_to_sbox[15:8] == 8'he2) ? 8'h98 : 
				     (xor_to_sbox[15:8] == 8'he3) ? 8'h11 : 
				     (xor_to_sbox[15:8] == 8'he4) ? 8'h69 : 
				     (xor_to_sbox[15:8] == 8'he5) ? 8'hd9 : 
				     (xor_to_sbox[15:8] == 8'he6) ? 8'h8e : 
				     (xor_to_sbox[15:8] == 8'he7) ? 8'h94 : 
				     (xor_to_sbox[15:8] == 8'he8) ? 8'h9b : 
				     (xor_to_sbox[15:8] == 8'he9) ? 8'h1e : 
				     (xor_to_sbox[15:8] == 8'hea) ? 8'h87 : 
				     (xor_to_sbox[15:8] == 8'heb) ? 8'he9 : 
				     (xor_to_sbox[15:8] == 8'hec) ? 8'hce : 
				     (xor_to_sbox[15:8] == 8'hed) ? 8'h55 : 
				     (xor_to_sbox[15:8] == 8'hee) ? 8'h28 : 
				     (xor_to_sbox[15:8] == 8'hef) ? 8'hdf : 

				     (xor_to_sbox[15:8] == 8'hf0) ? 8'h8c :	// row f
				     (xor_to_sbox[15:8] == 8'hf1) ? 8'ha1 : 
				     (xor_to_sbox[15:8] == 8'hf2) ? 8'h89 : 
				     (xor_to_sbox[15:8] == 8'hf3) ? 8'h0d : 
				     (xor_to_sbox[15:8] == 8'hf4) ? 8'hbf : 
				     (xor_to_sbox[15:8] == 8'hf5) ? 8'he6 : 
				     (xor_to_sbox[15:8] == 8'hf6) ? 8'h42 : 
				     (xor_to_sbox[15:8] == 8'hf7) ? 8'h68 : 
				     (xor_to_sbox[15:8] == 8'hf8) ? 8'h41 : 
				     (xor_to_sbox[15:8] == 8'hf9) ? 8'h99 : 
				     (xor_to_sbox[15:8] == 8'hfa) ? 8'h2d : 
				     (xor_to_sbox[15:8] == 8'hfb) ? 8'h0f : 
				     (xor_to_sbox[15:8] == 8'hfc) ? 8'hb0 : 
				     (xor_to_sbox[15:8] == 8'hfd) ? 8'h54 : 
				     (xor_to_sbox[15:8] == 8'hfe) ? 8'hbb : 
				     (xor_to_sbox[15:8] == 8'hff) ? 8'h16 : 8'hxx;

					  
assign sbox_to_rows[23:16] = (xor_to_sbox[23:16] == 8'h00) ? 8'h63 :	// row 0
				     (xor_to_sbox[23:16] == 8'h01) ? 8'h7c : 
				     (xor_to_sbox[23:16] == 8'h02) ? 8'h77 : 
				     (xor_to_sbox[23:16] == 8'h03) ? 8'h7b : 
				     (xor_to_sbox[23:16] == 8'h04) ? 8'hf2 : 
				     (xor_to_sbox[23:16] == 8'h05) ? 8'h6b : 
				     (xor_to_sbox[23:16] == 8'h06) ? 8'h6f : 
				     (xor_to_sbox[23:16] == 8'h07) ? 8'hc5 : 
				     (xor_to_sbox[23:16] == 8'h08) ? 8'h30 : 
				     (xor_to_sbox[23:16] == 8'h09) ? 8'h01 : 
				     (xor_to_sbox[23:16] == 8'h0a) ? 8'h67 : 
				     (xor_to_sbox[23:16] == 8'h0b) ? 8'h2b : 
				     (xor_to_sbox[23:16] == 8'h0c) ? 8'hfe : 
				     (xor_to_sbox[23:16] == 8'h0d) ? 8'hd7 : 
				     (xor_to_sbox[23:16] == 8'h0e) ? 8'hab : 
				     (xor_to_sbox[23:16] == 8'h0f) ? 8'h76 : 

				     (xor_to_sbox[23:16] == 8'h10) ? 8'hca :	// row 1
				     (xor_to_sbox[23:16] == 8'h11) ? 8'h82 : 
				     (xor_to_sbox[23:16] == 8'h12) ? 8'hc9 : 
				     (xor_to_sbox[23:16] == 8'h13) ? 8'h7d : 
				     (xor_to_sbox[23:16] == 8'h14) ? 8'hfa : 
				     (xor_to_sbox[23:16] == 8'h15) ? 8'h59 : 
				     (xor_to_sbox[23:16] == 8'h16) ? 8'h47 : 
				     (xor_to_sbox[23:16] == 8'h17) ? 8'hf0 : 
				     (xor_to_sbox[23:16] == 8'h18) ? 8'had : 
				     (xor_to_sbox[23:16] == 8'h19) ? 8'hd4 : 
				     (xor_to_sbox[23:16] == 8'h1a) ? 8'ha2 : 
				     (xor_to_sbox[23:16] == 8'h1b) ? 8'haf : 
				     (xor_to_sbox[23:16] == 8'h1c) ? 8'h9c : 
				     (xor_to_sbox[23:16] == 8'h1d) ? 8'ha4 : 
				     (xor_to_sbox[23:16] == 8'h1e) ? 8'h72 : 
				     (xor_to_sbox[23:16] == 8'h1f) ? 8'hc0 : 

				     (xor_to_sbox[23:16] == 8'h20) ? 8'hb7 :	// row 2
				     (xor_to_sbox[23:16] == 8'h21) ? 8'hfd : 
				     (xor_to_sbox[23:16] == 8'h22) ? 8'h93 : 
				     (xor_to_sbox[23:16] == 8'h23) ? 8'h26 : 
				     (xor_to_sbox[23:16] == 8'h24) ? 8'h36 : 
				     (xor_to_sbox[23:16] == 8'h25) ? 8'h3f : 
				     (xor_to_sbox[23:16] == 8'h26) ? 8'hf7 : 
				     (xor_to_sbox[23:16] == 8'h27) ? 8'hcc : 
				     (xor_to_sbox[23:16] == 8'h28) ? 8'h34 : 
				     (xor_to_sbox[23:16] == 8'h29) ? 8'ha5 : 
				     (xor_to_sbox[23:16] == 8'h2a) ? 8'he5 : 
				     (xor_to_sbox[23:16] == 8'h2b) ? 8'hf1 : 
				     (xor_to_sbox[23:16] == 8'h2c) ? 8'h71 : 
				     (xor_to_sbox[23:16] == 8'h2d) ? 8'hd8 : 
				     (xor_to_sbox[23:16] == 8'h2e) ? 8'h31 : 
				     (xor_to_sbox[23:16] == 8'h2f) ? 8'h15 :

				     (xor_to_sbox[23:16] == 8'h30) ? 8'h04 : 	// row 3
				     (xor_to_sbox[23:16] == 8'h31) ? 8'hc7 : 
				     (xor_to_sbox[23:16] == 8'h32) ? 8'h23 : 
				     (xor_to_sbox[23:16] == 8'h33) ? 8'hc3 : 
				     (xor_to_sbox[23:16] == 8'h34) ? 8'h18 : 
				     (xor_to_sbox[23:16] == 8'h35) ? 8'h96 : 
				     (xor_to_sbox[23:16] == 8'h36) ? 8'h05 : 
				     (xor_to_sbox[23:16] == 8'h37) ? 8'h9a : 
				     (xor_to_sbox[23:16] == 8'h38) ? 8'h07 : 
				     (xor_to_sbox[23:16] == 8'h39) ? 8'h12 : 
				     (xor_to_sbox[23:16] == 8'h3a) ? 8'h80 : 
				     (xor_to_sbox[23:16] == 8'h3b) ? 8'he2 : 
				     (xor_to_sbox[23:16] == 8'h3c) ? 8'heb : 
				     (xor_to_sbox[23:16] == 8'h3d) ? 8'h27 : 
				     (xor_to_sbox[23:16] == 8'h3e) ? 8'hb2 : 
				     (xor_to_sbox[23:16] == 8'h3f) ? 8'h75 : 

				     (xor_to_sbox[23:16] == 8'h40) ? 8'h09 :	// row 4
				     (xor_to_sbox[23:16] == 8'h41) ? 8'h83 : 
				     (xor_to_sbox[23:16] == 8'h42) ? 8'h2c : 
				     (xor_to_sbox[23:16] == 8'h43) ? 8'h1a : 
				     (xor_to_sbox[23:16] == 8'h44) ? 8'h1b : 
				     (xor_to_sbox[23:16] == 8'h45) ? 8'h6e : 
				     (xor_to_sbox[23:16] == 8'h46) ? 8'h5a : 
				     (xor_to_sbox[23:16] == 8'h47) ? 8'ha0 : 
				     (xor_to_sbox[23:16] == 8'h48) ? 8'h52 : 
				     (xor_to_sbox[23:16] == 8'h49) ? 8'h3b : 
				     (xor_to_sbox[23:16] == 8'h4a) ? 8'hd6 : 
				     (xor_to_sbox[23:16] == 8'h4b) ? 8'hb3 : 
				     (xor_to_sbox[23:16] == 8'h4c) ? 8'h29 : 
				     (xor_to_sbox[23:16] == 8'h4d) ? 8'he3 : 
				     (xor_to_sbox[23:16] == 8'h4e) ? 8'h2f : 
				     (xor_to_sbox[23:16] == 8'h4f) ? 8'h84 : 

				     (xor_to_sbox[23:16] == 8'h50) ? 8'h53 :	// row 5
				     (xor_to_sbox[23:16] == 8'h51) ? 8'hd1 : 
				     (xor_to_sbox[23:16] == 8'h52) ? 8'h00 : 
				     (xor_to_sbox[23:16] == 8'h53) ? 8'hed : 
				     (xor_to_sbox[23:16] == 8'h54) ? 8'h20 : 
				     (xor_to_sbox[23:16] == 8'h55) ? 8'hfc : 
				     (xor_to_sbox[23:16] == 8'h56) ? 8'hb1 : 
				     (xor_to_sbox[23:16] == 8'h57) ? 8'h5b : 
				     (xor_to_sbox[23:16] == 8'h58) ? 8'h6a : 
				     (xor_to_sbox[23:16] == 8'h59) ? 8'hcb : 
				     (xor_to_sbox[23:16] == 8'h5a) ? 8'hbe : 
				     (xor_to_sbox[23:16] == 8'h5b) ? 8'h39 : 
				     (xor_to_sbox[23:16] == 8'h5c) ? 8'h4a : 
				     (xor_to_sbox[23:16] == 8'h5d) ? 8'h4c : 
				     (xor_to_sbox[23:16] == 8'h5e) ? 8'h58 : 
				     (xor_to_sbox[23:16] == 8'h5f) ? 8'hcf : 

				     (xor_to_sbox[23:16] == 8'h60) ? 8'hd0 :	// row 6
				     (xor_to_sbox[23:16] == 8'h61) ? 8'hef : 
				     (xor_to_sbox[23:16] == 8'h62) ? 8'haa : 
				     (xor_to_sbox[23:16] == 8'h63) ? 8'hfb : 
				     (xor_to_sbox[23:16] == 8'h64) ? 8'h43 : 
				     (xor_to_sbox[23:16] == 8'h65) ? 8'h4d : 
				     (xor_to_sbox[23:16] == 8'h66) ? 8'h33 : 
				     (xor_to_sbox[23:16] == 8'h67) ? 8'h85 : 
				     (xor_to_sbox[23:16] == 8'h68) ? 8'h45 : 
				     (xor_to_sbox[23:16] == 8'h69) ? 8'hf9 : 
				     (xor_to_sbox[23:16] == 8'h6a) ? 8'h02 : 
				     (xor_to_sbox[23:16] == 8'h6b) ? 8'h7f : 
				     (xor_to_sbox[23:16] == 8'h6c) ? 8'h50 : 
				     (xor_to_sbox[23:16] == 8'h6d) ? 8'h3c : 
				     (xor_to_sbox[23:16] == 8'h6e) ? 8'h9f : 
				     (xor_to_sbox[23:16] == 8'h6f) ? 8'ha8 : 

				     (xor_to_sbox[23:16] == 8'h70) ? 8'h51 :	// row 7
				     (xor_to_sbox[23:16] == 8'h71) ? 8'ha3 : 
				     (xor_to_sbox[23:16] == 8'h72) ? 8'h40 : 
				     (xor_to_sbox[23:16] == 8'h73) ? 8'h8f : 
				     (xor_to_sbox[23:16] == 8'h74) ? 8'h92 : 
				     (xor_to_sbox[23:16] == 8'h75) ? 8'h9d : 
				     (xor_to_sbox[23:16] == 8'h76) ? 8'h38 : 
				     (xor_to_sbox[23:16] == 8'h77) ? 8'hf5 : 
				     (xor_to_sbox[23:16] == 8'h78) ? 8'hbc : 
				     (xor_to_sbox[23:16] == 8'h79) ? 8'hb6 : 
				     (xor_to_sbox[23:16] == 8'h7a) ? 8'hda : 
				     (xor_to_sbox[23:16] == 8'h7b) ? 8'h21 : 
				     (xor_to_sbox[23:16] == 8'h7c) ? 8'h10 : 
				     (xor_to_sbox[23:16] == 8'h7d) ? 8'hff : 
				     (xor_to_sbox[23:16] == 8'h7e) ? 8'hf3 : 
				     (xor_to_sbox[23:16] == 8'h7f) ? 8'hd2 : 

				     (xor_to_sbox[23:16] == 8'h80) ? 8'hcd :	// row 8
				     (xor_to_sbox[23:16] == 8'h81) ? 8'h0c : 
				     (xor_to_sbox[23:16] == 8'h82) ? 8'h13 : 
				     (xor_to_sbox[23:16] == 8'h83) ? 8'hec : 
				     (xor_to_sbox[23:16] == 8'h84) ? 8'h5f : 
				     (xor_to_sbox[23:16] == 8'h85) ? 8'h97 : 
				     (xor_to_sbox[23:16] == 8'h86) ? 8'h44 : 
				     (xor_to_sbox[23:16] == 8'h87) ? 8'h17 : 
				     (xor_to_sbox[23:16] == 8'h88) ? 8'hc4 : 
				     (xor_to_sbox[23:16] == 8'h89) ? 8'ha7 : 
				     (xor_to_sbox[23:16] == 8'h8a) ? 8'h7e : 
				     (xor_to_sbox[23:16] == 8'h8b) ? 8'h3d : 
				     (xor_to_sbox[23:16] == 8'h8c) ? 8'h64 : 
				     (xor_to_sbox[23:16] == 8'h8d) ? 8'h5d : 
				     (xor_to_sbox[23:16] == 8'h8e) ? 8'h19 : 
				     (xor_to_sbox[23:16] == 8'h8f) ? 8'h73 : 

				     (xor_to_sbox[23:16] == 8'h90) ? 8'h60 :	// row 9
				     (xor_to_sbox[23:16] == 8'h91) ? 8'h81 : 
				     (xor_to_sbox[23:16] == 8'h92) ? 8'h4f : 
				     (xor_to_sbox[23:16] == 8'h93) ? 8'hdc : 
				     (xor_to_sbox[23:16] == 8'h94) ? 8'h22 : 
				     (xor_to_sbox[23:16] == 8'h95) ? 8'h2a : 
				     (xor_to_sbox[23:16] == 8'h96) ? 8'h90 : 
				     (xor_to_sbox[23:16] == 8'h97) ? 8'h88 : 
				     (xor_to_sbox[23:16] == 8'h98) ? 8'h46 : 
				     (xor_to_sbox[23:16] == 8'h99) ? 8'hee : 
				     (xor_to_sbox[23:16] == 8'h9a) ? 8'hb8 : 
				     (xor_to_sbox[23:16] == 8'h9b) ? 8'h14 : 
				     (xor_to_sbox[23:16] == 8'h9c) ? 8'hde : 
				     (xor_to_sbox[23:16] == 8'h9d) ? 8'h5e : 
				     (xor_to_sbox[23:16] == 8'h9e) ? 8'h0b : 
				     (xor_to_sbox[23:16] == 8'h9f) ? 8'hdb : 

				     (xor_to_sbox[23:16] == 8'ha0) ? 8'he0 :	// row a
				     (xor_to_sbox[23:16] == 8'ha1) ? 8'h32 : 
				     (xor_to_sbox[23:16] == 8'ha2) ? 8'h3a : 
				     (xor_to_sbox[23:16] == 8'ha3) ? 8'h0a : 
				     (xor_to_sbox[23:16] == 8'ha4) ? 8'h49 : 
				     (xor_to_sbox[23:16] == 8'ha5) ? 8'h06 : 
				     (xor_to_sbox[23:16] == 8'ha6) ? 8'h24 : 
				     (xor_to_sbox[23:16] == 8'ha7) ? 8'h5c : 
				     (xor_to_sbox[23:16] == 8'ha8) ? 8'hc2 : 
				     (xor_to_sbox[23:16] == 8'ha9) ? 8'hd3 : 
				     (xor_to_sbox[23:16] == 8'haa) ? 8'hac : 
				     (xor_to_sbox[23:16] == 8'hab) ? 8'h62 : 
				     (xor_to_sbox[23:16] == 8'hac) ? 8'h91 : 
				     (xor_to_sbox[23:16] == 8'had) ? 8'h95 : 
				     (xor_to_sbox[23:16] == 8'hae) ? 8'he4 : 
				     (xor_to_sbox[23:16] == 8'haf) ? 8'h79 : 

				     (xor_to_sbox[23:16] == 8'hb0) ? 8'he7 :	// row b
				     (xor_to_sbox[23:16] == 8'hb1) ? 8'hc8 : 
				     (xor_to_sbox[23:16] == 8'hb2) ? 8'h37 : 
				     (xor_to_sbox[23:16] == 8'hb3) ? 8'h6d : 
				     (xor_to_sbox[23:16] == 8'hb4) ? 8'h8d : 
				     (xor_to_sbox[23:16] == 8'hb5) ? 8'hd5 : 
				     (xor_to_sbox[23:16] == 8'hb6) ? 8'h4e : 
				     (xor_to_sbox[23:16] == 8'hb7) ? 8'ha9 : 
				     (xor_to_sbox[23:16] == 8'hb8) ? 8'h6c : 
				     (xor_to_sbox[23:16] == 8'hb9) ? 8'h56 : 
				     (xor_to_sbox[23:16] == 8'hba) ? 8'hf4 : 
				     (xor_to_sbox[23:16] == 8'hbb) ? 8'hea : 
				     (xor_to_sbox[23:16] == 8'hbc) ? 8'h65 : 
				     (xor_to_sbox[23:16] == 8'hbd) ? 8'h7a : 
				     (xor_to_sbox[23:16] == 8'hbe) ? 8'hae : 
				     (xor_to_sbox[23:16] == 8'hbf) ? 8'h08 : 

				     (xor_to_sbox[23:16] == 8'hc0) ? 8'hba :	// row c
				     (xor_to_sbox[23:16] == 8'hc1) ? 8'h78 : 
				     (xor_to_sbox[23:16] == 8'hc2) ? 8'h25 : 
				     (xor_to_sbox[23:16] == 8'hc3) ? 8'h2e : 
				     (xor_to_sbox[23:16] == 8'hc4) ? 8'h1c : 
				     (xor_to_sbox[23:16] == 8'hc5) ? 8'ha6 : 
				     (xor_to_sbox[23:16] == 8'hc6) ? 8'hb4 : 
				     (xor_to_sbox[23:16] == 8'hc7) ? 8'hc6 : 
				     (xor_to_sbox[23:16] == 8'hc8) ? 8'he8 : 
				     (xor_to_sbox[23:16] == 8'hc9) ? 8'hdd : 
				     (xor_to_sbox[23:16] == 8'hca) ? 8'h74 : 
				     (xor_to_sbox[23:16] == 8'hcb) ? 8'h1f : 
				     (xor_to_sbox[23:16] == 8'hcc) ? 8'h4b : 
				     (xor_to_sbox[23:16] == 8'hcd) ? 8'hbd : 
				     (xor_to_sbox[23:16] == 8'hce) ? 8'h8b : 
				     (xor_to_sbox[23:16] == 8'hcf) ? 8'h8a : 

				     (xor_to_sbox[23:16] == 8'hd0) ? 8'h70 :	// row d
				     (xor_to_sbox[23:16] == 8'hd1) ? 8'h3e : 
				     (xor_to_sbox[23:16] == 8'hd2) ? 8'hb5 : 
				     (xor_to_sbox[23:16] == 8'hd3) ? 8'h66 : 
				     (xor_to_sbox[23:16] == 8'hd4) ? 8'h48 : 
				     (xor_to_sbox[23:16] == 8'hd5) ? 8'h03 : 
				     (xor_to_sbox[23:16] == 8'hd6) ? 8'hf6 : 
				     (xor_to_sbox[23:16] == 8'hd7) ? 8'h0e : 
				     (xor_to_sbox[23:16] == 8'hd8) ? 8'h61 : 
				     (xor_to_sbox[23:16] == 8'hd9) ? 8'h35 : 
				     (xor_to_sbox[23:16] == 8'hda) ? 8'h57 : 
				     (xor_to_sbox[23:16] == 8'hdb) ? 8'hb9 : 
				     (xor_to_sbox[23:16] == 8'hdc) ? 8'h86 : 
				     (xor_to_sbox[23:16] == 8'hdd) ? 8'hc1 : 
				     (xor_to_sbox[23:16] == 8'hde) ? 8'h1d : 
				     (xor_to_sbox[23:16] == 8'hdf) ? 8'h9e : 

				     (xor_to_sbox[23:16] == 8'he0) ? 8'he1 :	// row e
				     (xor_to_sbox[23:16] == 8'he1) ? 8'hf8 : 
				     (xor_to_sbox[23:16] == 8'he2) ? 8'h98 : 
				     (xor_to_sbox[23:16] == 8'he3) ? 8'h11 : 
				     (xor_to_sbox[23:16] == 8'he4) ? 8'h69 : 
				     (xor_to_sbox[23:16] == 8'he5) ? 8'hd9 : 
				     (xor_to_sbox[23:16] == 8'he6) ? 8'h8e : 
				     (xor_to_sbox[23:16] == 8'he7) ? 8'h94 : 
				     (xor_to_sbox[23:16] == 8'he8) ? 8'h9b : 
				     (xor_to_sbox[23:16] == 8'he9) ? 8'h1e : 
				     (xor_to_sbox[23:16] == 8'hea) ? 8'h87 : 
				     (xor_to_sbox[23:16] == 8'heb) ? 8'he9 : 
				     (xor_to_sbox[23:16] == 8'hec) ? 8'hce : 
				     (xor_to_sbox[23:16] == 8'hed) ? 8'h55 : 
				     (xor_to_sbox[23:16] == 8'hee) ? 8'h28 : 
				     (xor_to_sbox[23:16] == 8'hef) ? 8'hdf : 

				     (xor_to_sbox[23:16] == 8'hf0) ? 8'h8c :	// row f
				     (xor_to_sbox[23:16] == 8'hf1) ? 8'ha1 : 
				     (xor_to_sbox[23:16] == 8'hf2) ? 8'h89 : 
				     (xor_to_sbox[23:16] == 8'hf3) ? 8'h0d : 
				     (xor_to_sbox[23:16] == 8'hf4) ? 8'hbf : 
				     (xor_to_sbox[23:16] == 8'hf5) ? 8'he6 : 
				     (xor_to_sbox[23:16] == 8'hf6) ? 8'h42 : 
				     (xor_to_sbox[23:16] == 8'hf7) ? 8'h68 : 
				     (xor_to_sbox[23:16] == 8'hf8) ? 8'h41 : 
				     (xor_to_sbox[23:16] == 8'hf9) ? 8'h99 : 
				     (xor_to_sbox[23:16] == 8'hfa) ? 8'h2d : 
				     (xor_to_sbox[23:16] == 8'hfb) ? 8'h0f : 
				     (xor_to_sbox[23:16] == 8'hfc) ? 8'hb0 : 
				     (xor_to_sbox[23:16] == 8'hfd) ? 8'h54 : 
				     (xor_to_sbox[23:16] == 8'hfe) ? 8'hbb : 
				     (xor_to_sbox[23:16] == 8'hff) ? 8'h16 : 8'hxx;
					  
assign sbox_to_rows[31:24] = (xor_to_sbox[31:24] == 8'h00) ? 8'h63 :	// row 0
				     (xor_to_sbox[31:24] == 8'h01) ? 8'h7c : 
				     (xor_to_sbox[31:24] == 8'h02) ? 8'h77 : 
				     (xor_to_sbox[31:24] == 8'h03) ? 8'h7b : 
				     (xor_to_sbox[31:24] == 8'h04) ? 8'hf2 : 
				     (xor_to_sbox[31:24] == 8'h05) ? 8'h6b : 
				     (xor_to_sbox[31:24] == 8'h06) ? 8'h6f : 
				     (xor_to_sbox[31:24] == 8'h07) ? 8'hc5 : 
				     (xor_to_sbox[31:24] == 8'h08) ? 8'h30 : 
				     (xor_to_sbox[31:24] == 8'h09) ? 8'h01 : 
				     (xor_to_sbox[31:24] == 8'h0a) ? 8'h67 : 
				     (xor_to_sbox[31:24] == 8'h0b) ? 8'h2b : 
				     (xor_to_sbox[31:24] == 8'h0c) ? 8'hfe : 
				     (xor_to_sbox[31:24] == 8'h0d) ? 8'hd7 : 
				     (xor_to_sbox[31:24] == 8'h0e) ? 8'hab : 
				     (xor_to_sbox[31:24] == 8'h0f) ? 8'h76 : 

				     (xor_to_sbox[31:24] == 8'h10) ? 8'hca :	// row 1
				     (xor_to_sbox[31:24] == 8'h11) ? 8'h82 : 
				     (xor_to_sbox[31:24] == 8'h12) ? 8'hc9 : 
				     (xor_to_sbox[31:24] == 8'h13) ? 8'h7d : 
				     (xor_to_sbox[31:24] == 8'h14) ? 8'hfa : 
				     (xor_to_sbox[31:24] == 8'h15) ? 8'h59 : 
				     (xor_to_sbox[31:24] == 8'h16) ? 8'h47 : 
				     (xor_to_sbox[31:24] == 8'h17) ? 8'hf0 : 
				     (xor_to_sbox[31:24] == 8'h18) ? 8'had : 
				     (xor_to_sbox[31:24] == 8'h19) ? 8'hd4 : 
				     (xor_to_sbox[31:24] == 8'h1a) ? 8'ha2 : 
				     (xor_to_sbox[31:24] == 8'h1b) ? 8'haf : 
				     (xor_to_sbox[31:24] == 8'h1c) ? 8'h9c : 
				     (xor_to_sbox[31:24] == 8'h1d) ? 8'ha4 : 
				     (xor_to_sbox[31:24] == 8'h1e) ? 8'h72 : 
				     (xor_to_sbox[31:24] == 8'h1f) ? 8'hc0 : 

				     (xor_to_sbox[31:24] == 8'h20) ? 8'hb7 :	// row 2
				     (xor_to_sbox[31:24] == 8'h21) ? 8'hfd : 
				     (xor_to_sbox[31:24] == 8'h22) ? 8'h93 : 
				     (xor_to_sbox[31:24] == 8'h23) ? 8'h26 : 
				     (xor_to_sbox[31:24] == 8'h24) ? 8'h36 : 
				     (xor_to_sbox[31:24] == 8'h25) ? 8'h3f : 
				     (xor_to_sbox[31:24] == 8'h26) ? 8'hf7 : 
				     (xor_to_sbox[31:24] == 8'h27) ? 8'hcc : 
				     (xor_to_sbox[31:24] == 8'h28) ? 8'h34 : 
				     (xor_to_sbox[31:24] == 8'h29) ? 8'ha5 : 
				     (xor_to_sbox[31:24] == 8'h2a) ? 8'he5 : 
				     (xor_to_sbox[31:24] == 8'h2b) ? 8'hf1 : 
				     (xor_to_sbox[31:24] == 8'h2c) ? 8'h71 : 
				     (xor_to_sbox[31:24] == 8'h2d) ? 8'hd8 : 
				     (xor_to_sbox[31:24] == 8'h2e) ? 8'h31 : 
				     (xor_to_sbox[31:24] == 8'h2f) ? 8'h15 :

				     (xor_to_sbox[31:24] == 8'h30) ? 8'h04 : 	// row 3
				     (xor_to_sbox[31:24] == 8'h31) ? 8'hc7 : 
				     (xor_to_sbox[31:24] == 8'h32) ? 8'h23 : 
				     (xor_to_sbox[31:24] == 8'h33) ? 8'hc3 : 
				     (xor_to_sbox[31:24] == 8'h34) ? 8'h18 : 
				     (xor_to_sbox[31:24] == 8'h35) ? 8'h96 : 
				     (xor_to_sbox[31:24] == 8'h36) ? 8'h05 : 
				     (xor_to_sbox[31:24] == 8'h37) ? 8'h9a : 
				     (xor_to_sbox[31:24] == 8'h38) ? 8'h07 : 
				     (xor_to_sbox[31:24] == 8'h39) ? 8'h12 : 
				     (xor_to_sbox[31:24] == 8'h3a) ? 8'h80 : 
				     (xor_to_sbox[31:24] == 8'h3b) ? 8'he2 : 
				     (xor_to_sbox[31:24] == 8'h3c) ? 8'heb : 
				     (xor_to_sbox[31:24] == 8'h3d) ? 8'h27 : 
				     (xor_to_sbox[31:24] == 8'h3e) ? 8'hb2 : 
				     (xor_to_sbox[31:24] == 8'h3f) ? 8'h75 : 

				     (xor_to_sbox[31:24] == 8'h40) ? 8'h09 :	// row 4
				     (xor_to_sbox[31:24] == 8'h41) ? 8'h83 : 
				     (xor_to_sbox[31:24] == 8'h42) ? 8'h2c : 
				     (xor_to_sbox[31:24] == 8'h43) ? 8'h1a : 
				     (xor_to_sbox[31:24] == 8'h44) ? 8'h1b : 
				     (xor_to_sbox[31:24] == 8'h45) ? 8'h6e : 
				     (xor_to_sbox[31:24] == 8'h46) ? 8'h5a : 
				     (xor_to_sbox[31:24] == 8'h47) ? 8'ha0 : 
				     (xor_to_sbox[31:24] == 8'h48) ? 8'h52 : 
				     (xor_to_sbox[31:24] == 8'h49) ? 8'h3b : 
				     (xor_to_sbox[31:24] == 8'h4a) ? 8'hd6 : 
				     (xor_to_sbox[31:24] == 8'h4b) ? 8'hb3 : 
				     (xor_to_sbox[31:24] == 8'h4c) ? 8'h29 : 
				     (xor_to_sbox[31:24] == 8'h4d) ? 8'he3 : 
				     (xor_to_sbox[31:24] == 8'h4e) ? 8'h2f : 
				     (xor_to_sbox[31:24] == 8'h4f) ? 8'h84 : 

				     (xor_to_sbox[31:24] == 8'h50) ? 8'h53 :	// row 5
				     (xor_to_sbox[31:24] == 8'h51) ? 8'hd1 : 
				     (xor_to_sbox[31:24] == 8'h52) ? 8'h00 : 
				     (xor_to_sbox[31:24] == 8'h53) ? 8'hed : 
				     (xor_to_sbox[31:24] == 8'h54) ? 8'h20 : 
				     (xor_to_sbox[31:24] == 8'h55) ? 8'hfc : 
				     (xor_to_sbox[31:24] == 8'h56) ? 8'hb1 : 
				     (xor_to_sbox[31:24] == 8'h57) ? 8'h5b : 
				     (xor_to_sbox[31:24] == 8'h58) ? 8'h6a : 
				     (xor_to_sbox[31:24] == 8'h59) ? 8'hcb : 
				     (xor_to_sbox[31:24] == 8'h5a) ? 8'hbe : 
				     (xor_to_sbox[31:24] == 8'h5b) ? 8'h39 : 
				     (xor_to_sbox[31:24] == 8'h5c) ? 8'h4a : 
				     (xor_to_sbox[31:24] == 8'h5d) ? 8'h4c : 
				     (xor_to_sbox[31:24] == 8'h5e) ? 8'h58 : 
				     (xor_to_sbox[31:24] == 8'h5f) ? 8'hcf : 

				     (xor_to_sbox[31:24] == 8'h60) ? 8'hd0 :	// row 6
				     (xor_to_sbox[31:24] == 8'h61) ? 8'hef : 
				     (xor_to_sbox[31:24] == 8'h62) ? 8'haa : 
				     (xor_to_sbox[31:24] == 8'h63) ? 8'hfb : 
				     (xor_to_sbox[31:24] == 8'h64) ? 8'h43 : 
				     (xor_to_sbox[31:24] == 8'h65) ? 8'h4d : 
				     (xor_to_sbox[31:24] == 8'h66) ? 8'h33 : 
				     (xor_to_sbox[31:24] == 8'h67) ? 8'h85 : 
				     (xor_to_sbox[31:24] == 8'h68) ? 8'h45 : 
				     (xor_to_sbox[31:24] == 8'h69) ? 8'hf9 : 
				     (xor_to_sbox[31:24] == 8'h6a) ? 8'h02 : 
				     (xor_to_sbox[31:24] == 8'h6b) ? 8'h7f : 
				     (xor_to_sbox[31:24] == 8'h6c) ? 8'h50 : 
				     (xor_to_sbox[31:24] == 8'h6d) ? 8'h3c : 
				     (xor_to_sbox[31:24] == 8'h6e) ? 8'h9f : 
				     (xor_to_sbox[31:24] == 8'h6f) ? 8'ha8 : 

				     (xor_to_sbox[31:24] == 8'h70) ? 8'h51 :	// row 7
				     (xor_to_sbox[31:24] == 8'h71) ? 8'ha3 : 
				     (xor_to_sbox[31:24] == 8'h72) ? 8'h40 : 
				     (xor_to_sbox[31:24] == 8'h73) ? 8'h8f : 
				     (xor_to_sbox[31:24] == 8'h74) ? 8'h92 : 
				     (xor_to_sbox[31:24] == 8'h75) ? 8'h9d : 
				     (xor_to_sbox[31:24] == 8'h76) ? 8'h38 : 
				     (xor_to_sbox[31:24] == 8'h77) ? 8'hf5 : 
				     (xor_to_sbox[31:24] == 8'h78) ? 8'hbc : 
				     (xor_to_sbox[31:24] == 8'h79) ? 8'hb6 : 
				     (xor_to_sbox[31:24] == 8'h7a) ? 8'hda : 
				     (xor_to_sbox[31:24] == 8'h7b) ? 8'h21 : 
				     (xor_to_sbox[31:24] == 8'h7c) ? 8'h10 : 
				     (xor_to_sbox[31:24] == 8'h7d) ? 8'hff : 
				     (xor_to_sbox[31:24] == 8'h7e) ? 8'hf3 : 
				     (xor_to_sbox[31:24] == 8'h7f) ? 8'hd2 : 

				     (xor_to_sbox[31:24] == 8'h80) ? 8'hcd :	// row 8
				     (xor_to_sbox[31:24] == 8'h81) ? 8'h0c : 
				     (xor_to_sbox[31:24] == 8'h82) ? 8'h13 : 
				     (xor_to_sbox[31:24] == 8'h83) ? 8'hec : 
				     (xor_to_sbox[31:24] == 8'h84) ? 8'h5f : 
				     (xor_to_sbox[31:24] == 8'h85) ? 8'h97 : 
				     (xor_to_sbox[31:24] == 8'h86) ? 8'h44 : 
				     (xor_to_sbox[31:24] == 8'h87) ? 8'h17 : 
				     (xor_to_sbox[31:24] == 8'h88) ? 8'hc4 : 
				     (xor_to_sbox[31:24] == 8'h89) ? 8'ha7 : 
				     (xor_to_sbox[31:24] == 8'h8a) ? 8'h7e : 
				     (xor_to_sbox[31:24] == 8'h8b) ? 8'h3d : 
				     (xor_to_sbox[31:24] == 8'h8c) ? 8'h64 : 
				     (xor_to_sbox[31:24] == 8'h8d) ? 8'h5d : 
				     (xor_to_sbox[31:24] == 8'h8e) ? 8'h19 : 
				     (xor_to_sbox[31:24] == 8'h8f) ? 8'h73 : 

				     (xor_to_sbox[31:24] == 8'h90) ? 8'h60 :	// row 9
				     (xor_to_sbox[31:24] == 8'h91) ? 8'h81 : 
				     (xor_to_sbox[31:24] == 8'h92) ? 8'h4f : 
				     (xor_to_sbox[31:24] == 8'h93) ? 8'hdc : 
				     (xor_to_sbox[31:24] == 8'h94) ? 8'h22 : 
				     (xor_to_sbox[31:24] == 8'h95) ? 8'h2a : 
				     (xor_to_sbox[31:24] == 8'h96) ? 8'h90 : 
				     (xor_to_sbox[31:24] == 8'h97) ? 8'h88 : 
				     (xor_to_sbox[31:24] == 8'h98) ? 8'h46 : 
				     (xor_to_sbox[31:24] == 8'h99) ? 8'hee : 
				     (xor_to_sbox[31:24] == 8'h9a) ? 8'hb8 : 
				     (xor_to_sbox[31:24] == 8'h9b) ? 8'h14 : 
				     (xor_to_sbox[31:24] == 8'h9c) ? 8'hde : 
				     (xor_to_sbox[31:24] == 8'h9d) ? 8'h5e : 
				     (xor_to_sbox[31:24] == 8'h9e) ? 8'h0b : 
				     (xor_to_sbox[31:24] == 8'h9f) ? 8'hdb : 

				     (xor_to_sbox[31:24] == 8'ha0) ? 8'he0 :	// row a
				     (xor_to_sbox[31:24] == 8'ha1) ? 8'h32 : 
				     (xor_to_sbox[31:24] == 8'ha2) ? 8'h3a : 
				     (xor_to_sbox[31:24] == 8'ha3) ? 8'h0a : 
				     (xor_to_sbox[31:24] == 8'ha4) ? 8'h49 : 
				     (xor_to_sbox[31:24] == 8'ha5) ? 8'h06 : 
				     (xor_to_sbox[31:24] == 8'ha6) ? 8'h24 : 
				     (xor_to_sbox[31:24] == 8'ha7) ? 8'h5c : 
				     (xor_to_sbox[31:24] == 8'ha8) ? 8'hc2 : 
				     (xor_to_sbox[31:24] == 8'ha9) ? 8'hd3 : 
				     (xor_to_sbox[31:24] == 8'haa) ? 8'hac : 
				     (xor_to_sbox[31:24] == 8'hab) ? 8'h62 : 
				     (xor_to_sbox[31:24] == 8'hac) ? 8'h91 : 
				     (xor_to_sbox[31:24] == 8'had) ? 8'h95 : 
				     (xor_to_sbox[31:24] == 8'hae) ? 8'he4 : 
				     (xor_to_sbox[31:24] == 8'haf) ? 8'h79 : 

				     (xor_to_sbox[31:24] == 8'hb0) ? 8'he7 :	// row b
				     (xor_to_sbox[31:24] == 8'hb1) ? 8'hc8 : 
				     (xor_to_sbox[31:24] == 8'hb2) ? 8'h37 : 
				     (xor_to_sbox[31:24] == 8'hb3) ? 8'h6d : 
				     (xor_to_sbox[31:24] == 8'hb4) ? 8'h8d : 
				     (xor_to_sbox[31:24] == 8'hb5) ? 8'hd5 : 
				     (xor_to_sbox[31:24] == 8'hb6) ? 8'h4e : 
				     (xor_to_sbox[31:24] == 8'hb7) ? 8'ha9 : 
				     (xor_to_sbox[31:24] == 8'hb8) ? 8'h6c : 
				     (xor_to_sbox[31:24] == 8'hb9) ? 8'h56 : 
				     (xor_to_sbox[31:24] == 8'hba) ? 8'hf4 : 
				     (xor_to_sbox[31:24] == 8'hbb) ? 8'hea : 
				     (xor_to_sbox[31:24] == 8'hbc) ? 8'h65 : 
				     (xor_to_sbox[31:24] == 8'hbd) ? 8'h7a : 
				     (xor_to_sbox[31:24] == 8'hbe) ? 8'hae : 
				     (xor_to_sbox[31:24] == 8'hbf) ? 8'h08 : 

				     (xor_to_sbox[31:24] == 8'hc0) ? 8'hba :	// row c
				     (xor_to_sbox[31:24] == 8'hc1) ? 8'h78 : 
				     (xor_to_sbox[31:24] == 8'hc2) ? 8'h25 : 
				     (xor_to_sbox[31:24] == 8'hc3) ? 8'h2e : 
				     (xor_to_sbox[31:24] == 8'hc4) ? 8'h1c : 
				     (xor_to_sbox[31:24] == 8'hc5) ? 8'ha6 : 
				     (xor_to_sbox[31:24] == 8'hc6) ? 8'hb4 : 
				     (xor_to_sbox[31:24] == 8'hc7) ? 8'hc6 : 
				     (xor_to_sbox[31:24] == 8'hc8) ? 8'he8 : 
				     (xor_to_sbox[31:24] == 8'hc9) ? 8'hdd : 
				     (xor_to_sbox[31:24] == 8'hca) ? 8'h74 : 
				     (xor_to_sbox[31:24] == 8'hcb) ? 8'h1f : 
				     (xor_to_sbox[31:24] == 8'hcc) ? 8'h4b : 
				     (xor_to_sbox[31:24] == 8'hcd) ? 8'hbd : 
				     (xor_to_sbox[31:24] == 8'hce) ? 8'h8b : 
				     (xor_to_sbox[31:24] == 8'hcf) ? 8'h8a : 

				     (xor_to_sbox[31:24] == 8'hd0) ? 8'h70 :	// row d
				     (xor_to_sbox[31:24] == 8'hd1) ? 8'h3e : 
				     (xor_to_sbox[31:24] == 8'hd2) ? 8'hb5 : 
				     (xor_to_sbox[31:24] == 8'hd3) ? 8'h66 : 
				     (xor_to_sbox[31:24] == 8'hd4) ? 8'h48 : 
				     (xor_to_sbox[31:24] == 8'hd5) ? 8'h03 : 
				     (xor_to_sbox[31:24] == 8'hd6) ? 8'hf6 : 
				     (xor_to_sbox[31:24] == 8'hd7) ? 8'h0e : 
				     (xor_to_sbox[31:24] == 8'hd8) ? 8'h61 : 
				     (xor_to_sbox[31:24] == 8'hd9) ? 8'h35 : 
				     (xor_to_sbox[31:24] == 8'hda) ? 8'h57 : 
				     (xor_to_sbox[31:24] == 8'hdb) ? 8'hb9 : 
				     (xor_to_sbox[31:24] == 8'hdc) ? 8'h86 : 
				     (xor_to_sbox[31:24] == 8'hdd) ? 8'hc1 : 
				     (xor_to_sbox[31:24] == 8'hde) ? 8'h1d : 
				     (xor_to_sbox[31:24] == 8'hdf) ? 8'h9e : 

				     (xor_to_sbox[31:24] == 8'he0) ? 8'he1 :	// row e
				     (xor_to_sbox[31:24] == 8'he1) ? 8'hf8 : 
				     (xor_to_sbox[31:24] == 8'he2) ? 8'h98 : 
				     (xor_to_sbox[31:24] == 8'he3) ? 8'h11 : 
				     (xor_to_sbox[31:24] == 8'he4) ? 8'h69 : 
				     (xor_to_sbox[31:24] == 8'he5) ? 8'hd9 : 
				     (xor_to_sbox[31:24] == 8'he6) ? 8'h8e : 
				     (xor_to_sbox[31:24] == 8'he7) ? 8'h94 : 
				     (xor_to_sbox[31:24] == 8'he8) ? 8'h9b : 
				     (xor_to_sbox[31:24] == 8'he9) ? 8'h1e : 
				     (xor_to_sbox[31:24] == 8'hea) ? 8'h87 : 
				     (xor_to_sbox[31:24] == 8'heb) ? 8'he9 : 
				     (xor_to_sbox[31:24] == 8'hec) ? 8'hce : 
				     (xor_to_sbox[31:24] == 8'hed) ? 8'h55 : 
				     (xor_to_sbox[31:24] == 8'hee) ? 8'h28 : 
				     (xor_to_sbox[31:24] == 8'hef) ? 8'hdf : 

				     (xor_to_sbox[31:24] == 8'hf0) ? 8'h8c :	// row f
				     (xor_to_sbox[31:24] == 8'hf1) ? 8'ha1 : 
				     (xor_to_sbox[31:24] == 8'hf2) ? 8'h89 : 
				     (xor_to_sbox[31:24] == 8'hf3) ? 8'h0d : 
				     (xor_to_sbox[31:24] == 8'hf4) ? 8'hbf : 
				     (xor_to_sbox[31:24] == 8'hf5) ? 8'he6 : 
				     (xor_to_sbox[31:24] == 8'hf6) ? 8'h42 : 
				     (xor_to_sbox[31:24] == 8'hf7) ? 8'h68 : 
				     (xor_to_sbox[31:24] == 8'hf8) ? 8'h41 : 
				     (xor_to_sbox[31:24] == 8'hf9) ? 8'h99 : 
				     (xor_to_sbox[31:24] == 8'hfa) ? 8'h2d : 
				     (xor_to_sbox[31:24] == 8'hfb) ? 8'h0f : 
				     (xor_to_sbox[31:24] == 8'hfc) ? 8'hb0 : 
				     (xor_to_sbox[31:24] == 8'hfd) ? 8'h54 : 
				     (xor_to_sbox[31:24] == 8'hfe) ? 8'hbb : 
				     (xor_to_sbox[31:24] == 8'hff) ? 8'h16 : 8'hxx;
					 
assign sbox_to_rows[39:32] = (xor_to_sbox[39:32] == 8'h00) ? 8'h63 :	// row 0
				     (xor_to_sbox[39:32] == 8'h01) ? 8'h7c : 
				     (xor_to_sbox[39:32] == 8'h02) ? 8'h77 : 
				     (xor_to_sbox[39:32] == 8'h03) ? 8'h7b : 
				     (xor_to_sbox[39:32] == 8'h04) ? 8'hf2 : 
				     (xor_to_sbox[39:32] == 8'h05) ? 8'h6b : 
				     (xor_to_sbox[39:32] == 8'h06) ? 8'h6f : 
				     (xor_to_sbox[39:32] == 8'h07) ? 8'hc5 : 
				     (xor_to_sbox[39:32] == 8'h08) ? 8'h30 : 
				     (xor_to_sbox[39:32] == 8'h09) ? 8'h01 : 
				     (xor_to_sbox[39:32] == 8'h0a) ? 8'h67 : 
				     (xor_to_sbox[39:32] == 8'h0b) ? 8'h2b : 
				     (xor_to_sbox[39:32] == 8'h0c) ? 8'hfe : 
				     (xor_to_sbox[39:32] == 8'h0d) ? 8'hd7 : 
				     (xor_to_sbox[39:32] == 8'h0e) ? 8'hab : 
				     (xor_to_sbox[39:32] == 8'h0f) ? 8'h76 : 

				     (xor_to_sbox[39:32] == 8'h10) ? 8'hca :	// row 1
				     (xor_to_sbox[39:32] == 8'h11) ? 8'h82 : 
				     (xor_to_sbox[39:32] == 8'h12) ? 8'hc9 : 
				     (xor_to_sbox[39:32] == 8'h13) ? 8'h7d : 
				     (xor_to_sbox[39:32] == 8'h14) ? 8'hfa : 
				     (xor_to_sbox[39:32] == 8'h15) ? 8'h59 : 
				     (xor_to_sbox[39:32] == 8'h16) ? 8'h47 : 
				     (xor_to_sbox[39:32] == 8'h17) ? 8'hf0 : 
				     (xor_to_sbox[39:32] == 8'h18) ? 8'had : 
				     (xor_to_sbox[39:32] == 8'h19) ? 8'hd4 : 
				     (xor_to_sbox[39:32] == 8'h1a) ? 8'ha2 : 
				     (xor_to_sbox[39:32] == 8'h1b) ? 8'haf : 
				     (xor_to_sbox[39:32] == 8'h1c) ? 8'h9c : 
				     (xor_to_sbox[39:32] == 8'h1d) ? 8'ha4 : 
				     (xor_to_sbox[39:32] == 8'h1e) ? 8'h72 : 
				     (xor_to_sbox[39:32] == 8'h1f) ? 8'hc0 : 

				     (xor_to_sbox[39:32] == 8'h20) ? 8'hb7 :	// row 2
				     (xor_to_sbox[39:32] == 8'h21) ? 8'hfd : 
				     (xor_to_sbox[39:32] == 8'h22) ? 8'h93 : 
				     (xor_to_sbox[39:32] == 8'h23) ? 8'h26 : 
				     (xor_to_sbox[39:32] == 8'h24) ? 8'h36 : 
				     (xor_to_sbox[39:32] == 8'h25) ? 8'h3f : 
				     (xor_to_sbox[39:32] == 8'h26) ? 8'hf7 : 
				     (xor_to_sbox[39:32] == 8'h27) ? 8'hcc : 
				     (xor_to_sbox[39:32] == 8'h28) ? 8'h34 : 
				     (xor_to_sbox[39:32] == 8'h29) ? 8'ha5 : 
				     (xor_to_sbox[39:32] == 8'h2a) ? 8'he5 : 
				     (xor_to_sbox[39:32] == 8'h2b) ? 8'hf1 : 
				     (xor_to_sbox[39:32] == 8'h2c) ? 8'h71 : 
				     (xor_to_sbox[39:32] == 8'h2d) ? 8'hd8 : 
				     (xor_to_sbox[39:32] == 8'h2e) ? 8'h31 : 
				     (xor_to_sbox[39:32] == 8'h2f) ? 8'h15 :

				     (xor_to_sbox[39:32] == 8'h30) ? 8'h04 : 	// row 3
				     (xor_to_sbox[39:32] == 8'h31) ? 8'hc7 : 
				     (xor_to_sbox[39:32] == 8'h32) ? 8'h23 : 
				     (xor_to_sbox[39:32] == 8'h33) ? 8'hc3 : 
				     (xor_to_sbox[39:32] == 8'h34) ? 8'h18 : 
				     (xor_to_sbox[39:32] == 8'h35) ? 8'h96 : 
				     (xor_to_sbox[39:32] == 8'h36) ? 8'h05 : 
				     (xor_to_sbox[39:32] == 8'h37) ? 8'h9a : 
				     (xor_to_sbox[39:32] == 8'h38) ? 8'h07 : 
				     (xor_to_sbox[39:32] == 8'h39) ? 8'h12 : 
				     (xor_to_sbox[39:32] == 8'h3a) ? 8'h80 : 
				     (xor_to_sbox[39:32] == 8'h3b) ? 8'he2 : 
				     (xor_to_sbox[39:32] == 8'h3c) ? 8'heb : 
				     (xor_to_sbox[39:32] == 8'h3d) ? 8'h27 : 
				     (xor_to_sbox[39:32] == 8'h3e) ? 8'hb2 : 
				     (xor_to_sbox[39:32] == 8'h3f) ? 8'h75 : 

				     (xor_to_sbox[39:32] == 8'h40) ? 8'h09 :	// row 4
				     (xor_to_sbox[39:32] == 8'h41) ? 8'h83 : 
				     (xor_to_sbox[39:32] == 8'h42) ? 8'h2c : 
				     (xor_to_sbox[39:32] == 8'h43) ? 8'h1a : 
				     (xor_to_sbox[39:32] == 8'h44) ? 8'h1b : 
				     (xor_to_sbox[39:32] == 8'h45) ? 8'h6e : 
				     (xor_to_sbox[39:32] == 8'h46) ? 8'h5a : 
				     (xor_to_sbox[39:32] == 8'h47) ? 8'ha0 : 
				     (xor_to_sbox[39:32] == 8'h48) ? 8'h52 : 
				     (xor_to_sbox[39:32] == 8'h49) ? 8'h3b : 
				     (xor_to_sbox[39:32] == 8'h4a) ? 8'hd6 : 
				     (xor_to_sbox[39:32] == 8'h4b) ? 8'hb3 : 
				     (xor_to_sbox[39:32] == 8'h4c) ? 8'h29 : 
				     (xor_to_sbox[39:32] == 8'h4d) ? 8'he3 : 
				     (xor_to_sbox[39:32] == 8'h4e) ? 8'h2f : 
				     (xor_to_sbox[39:32] == 8'h4f) ? 8'h84 : 

				     (xor_to_sbox[39:32] == 8'h50) ? 8'h53 :	// row 5
				     (xor_to_sbox[39:32] == 8'h51) ? 8'hd1 : 
				     (xor_to_sbox[39:32] == 8'h52) ? 8'h00 : 
				     (xor_to_sbox[39:32] == 8'h53) ? 8'hed : 
				     (xor_to_sbox[39:32] == 8'h54) ? 8'h20 : 
				     (xor_to_sbox[39:32] == 8'h55) ? 8'hfc : 
				     (xor_to_sbox[39:32] == 8'h56) ? 8'hb1 : 
				     (xor_to_sbox[39:32] == 8'h57) ? 8'h5b : 
				     (xor_to_sbox[39:32] == 8'h58) ? 8'h6a : 
				     (xor_to_sbox[39:32] == 8'h59) ? 8'hcb : 
				     (xor_to_sbox[39:32] == 8'h5a) ? 8'hbe : 
				     (xor_to_sbox[39:32] == 8'h5b) ? 8'h39 : 
				     (xor_to_sbox[39:32] == 8'h5c) ? 8'h4a : 
				     (xor_to_sbox[39:32] == 8'h5d) ? 8'h4c : 
				     (xor_to_sbox[39:32] == 8'h5e) ? 8'h58 : 
				     (xor_to_sbox[39:32] == 8'h5f) ? 8'hcf : 

				     (xor_to_sbox[39:32] == 8'h60) ? 8'hd0 :	// row 6
				     (xor_to_sbox[39:32] == 8'h61) ? 8'hef : 
				     (xor_to_sbox[39:32] == 8'h62) ? 8'haa : 
				     (xor_to_sbox[39:32] == 8'h63) ? 8'hfb : 
				     (xor_to_sbox[39:32] == 8'h64) ? 8'h43 : 
				     (xor_to_sbox[39:32] == 8'h65) ? 8'h4d : 
				     (xor_to_sbox[39:32] == 8'h66) ? 8'h33 : 
				     (xor_to_sbox[39:32] == 8'h67) ? 8'h85 : 
				     (xor_to_sbox[39:32] == 8'h68) ? 8'h45 : 
				     (xor_to_sbox[39:32] == 8'h69) ? 8'hf9 : 
				     (xor_to_sbox[39:32] == 8'h6a) ? 8'h02 : 
				     (xor_to_sbox[39:32] == 8'h6b) ? 8'h7f : 
				     (xor_to_sbox[39:32] == 8'h6c) ? 8'h50 : 
				     (xor_to_sbox[39:32] == 8'h6d) ? 8'h3c : 
				     (xor_to_sbox[39:32] == 8'h6e) ? 8'h9f : 
				     (xor_to_sbox[39:32] == 8'h6f) ? 8'ha8 : 

				     (xor_to_sbox[39:32] == 8'h70) ? 8'h51 :	// row 7
				     (xor_to_sbox[39:32] == 8'h71) ? 8'ha3 : 
				     (xor_to_sbox[39:32] == 8'h72) ? 8'h40 : 
				     (xor_to_sbox[39:32] == 8'h73) ? 8'h8f : 
				     (xor_to_sbox[39:32] == 8'h74) ? 8'h92 : 
				     (xor_to_sbox[39:32] == 8'h75) ? 8'h9d : 
				     (xor_to_sbox[39:32] == 8'h76) ? 8'h38 : 
				     (xor_to_sbox[39:32] == 8'h77) ? 8'hf5 : 
				     (xor_to_sbox[39:32] == 8'h78) ? 8'hbc : 
				     (xor_to_sbox[39:32] == 8'h79) ? 8'hb6 : 
				     (xor_to_sbox[39:32] == 8'h7a) ? 8'hda : 
				     (xor_to_sbox[39:32] == 8'h7b) ? 8'h21 : 
				     (xor_to_sbox[39:32] == 8'h7c) ? 8'h10 : 
				     (xor_to_sbox[39:32] == 8'h7d) ? 8'hff : 
				     (xor_to_sbox[39:32] == 8'h7e) ? 8'hf3 : 
				     (xor_to_sbox[39:32] == 8'h7f) ? 8'hd2 : 

				     (xor_to_sbox[39:32] == 8'h80) ? 8'hcd :	// row 8
				     (xor_to_sbox[39:32] == 8'h81) ? 8'h0c : 
				     (xor_to_sbox[39:32] == 8'h82) ? 8'h13 : 
				     (xor_to_sbox[39:32] == 8'h83) ? 8'hec : 
				     (xor_to_sbox[39:32] == 8'h84) ? 8'h5f : 
				     (xor_to_sbox[39:32] == 8'h85) ? 8'h97 : 
				     (xor_to_sbox[39:32] == 8'h86) ? 8'h44 : 
				     (xor_to_sbox[39:32] == 8'h87) ? 8'h17 : 
				     (xor_to_sbox[39:32] == 8'h88) ? 8'hc4 : 
				     (xor_to_sbox[39:32] == 8'h89) ? 8'ha7 : 
				     (xor_to_sbox[39:32] == 8'h8a) ? 8'h7e : 
				     (xor_to_sbox[39:32] == 8'h8b) ? 8'h3d : 
				     (xor_to_sbox[39:32] == 8'h8c) ? 8'h64 : 
				     (xor_to_sbox[39:32] == 8'h8d) ? 8'h5d : 
				     (xor_to_sbox[39:32] == 8'h8e) ? 8'h19 : 
				     (xor_to_sbox[39:32] == 8'h8f) ? 8'h73 : 

				     (xor_to_sbox[39:32] == 8'h90) ? 8'h60 :	// row 9
				     (xor_to_sbox[39:32] == 8'h91) ? 8'h81 : 
				     (xor_to_sbox[39:32] == 8'h92) ? 8'h4f : 
				     (xor_to_sbox[39:32] == 8'h93) ? 8'hdc : 
				     (xor_to_sbox[39:32] == 8'h94) ? 8'h22 : 
				     (xor_to_sbox[39:32] == 8'h95) ? 8'h2a : 
				     (xor_to_sbox[39:32] == 8'h96) ? 8'h90 : 
				     (xor_to_sbox[39:32] == 8'h97) ? 8'h88 : 
				     (xor_to_sbox[39:32] == 8'h98) ? 8'h46 : 
				     (xor_to_sbox[39:32] == 8'h99) ? 8'hee : 
				     (xor_to_sbox[39:32] == 8'h9a) ? 8'hb8 : 
				     (xor_to_sbox[39:32] == 8'h9b) ? 8'h14 : 
				     (xor_to_sbox[39:32] == 8'h9c) ? 8'hde : 
				     (xor_to_sbox[39:32] == 8'h9d) ? 8'h5e : 
				     (xor_to_sbox[39:32] == 8'h9e) ? 8'h0b : 
				     (xor_to_sbox[39:32] == 8'h9f) ? 8'hdb : 

				     (xor_to_sbox[39:32] == 8'ha0) ? 8'he0 :	// row a
				     (xor_to_sbox[39:32] == 8'ha1) ? 8'h32 : 
				     (xor_to_sbox[39:32] == 8'ha2) ? 8'h3a : 
				     (xor_to_sbox[39:32] == 8'ha3) ? 8'h0a : 
				     (xor_to_sbox[39:32] == 8'ha4) ? 8'h49 : 
				     (xor_to_sbox[39:32] == 8'ha5) ? 8'h06 : 
				     (xor_to_sbox[39:32] == 8'ha6) ? 8'h24 : 
				     (xor_to_sbox[39:32] == 8'ha7) ? 8'h5c : 
				     (xor_to_sbox[39:32] == 8'ha8) ? 8'hc2 : 
				     (xor_to_sbox[39:32] == 8'ha9) ? 8'hd3 : 
				     (xor_to_sbox[39:32] == 8'haa) ? 8'hac : 
				     (xor_to_sbox[39:32] == 8'hab) ? 8'h62 : 
				     (xor_to_sbox[39:32] == 8'hac) ? 8'h91 : 
				     (xor_to_sbox[39:32] == 8'had) ? 8'h95 : 
				     (xor_to_sbox[39:32] == 8'hae) ? 8'he4 : 
				     (xor_to_sbox[39:32] == 8'haf) ? 8'h79 : 

				     (xor_to_sbox[39:32] == 8'hb0) ? 8'he7 :	// row b
				     (xor_to_sbox[39:32] == 8'hb1) ? 8'hc8 : 
				     (xor_to_sbox[39:32] == 8'hb2) ? 8'h37 : 
				     (xor_to_sbox[39:32] == 8'hb3) ? 8'h6d : 
				     (xor_to_sbox[39:32] == 8'hb4) ? 8'h8d : 
				     (xor_to_sbox[39:32] == 8'hb5) ? 8'hd5 : 
				     (xor_to_sbox[39:32] == 8'hb6) ? 8'h4e : 
				     (xor_to_sbox[39:32] == 8'hb7) ? 8'ha9 : 
				     (xor_to_sbox[39:32] == 8'hb8) ? 8'h6c : 
				     (xor_to_sbox[39:32] == 8'hb9) ? 8'h56 : 
				     (xor_to_sbox[39:32] == 8'hba) ? 8'hf4 : 
				     (xor_to_sbox[39:32] == 8'hbb) ? 8'hea : 
				     (xor_to_sbox[39:32] == 8'hbc) ? 8'h65 : 
				     (xor_to_sbox[39:32] == 8'hbd) ? 8'h7a : 
				     (xor_to_sbox[39:32] == 8'hbe) ? 8'hae : 
				     (xor_to_sbox[39:32] == 8'hbf) ? 8'h08 : 

				     (xor_to_sbox[39:32] == 8'hc0) ? 8'hba :	// row c
				     (xor_to_sbox[39:32] == 8'hc1) ? 8'h78 : 
				     (xor_to_sbox[39:32] == 8'hc2) ? 8'h25 : 
				     (xor_to_sbox[39:32] == 8'hc3) ? 8'h2e : 
				     (xor_to_sbox[39:32] == 8'hc4) ? 8'h1c : 
				     (xor_to_sbox[39:32] == 8'hc5) ? 8'ha6 : 
				     (xor_to_sbox[39:32] == 8'hc6) ? 8'hb4 : 
				     (xor_to_sbox[39:32] == 8'hc7) ? 8'hc6 : 
				     (xor_to_sbox[39:32] == 8'hc8) ? 8'he8 : 
				     (xor_to_sbox[39:32] == 8'hc9) ? 8'hdd : 
				     (xor_to_sbox[39:32] == 8'hca) ? 8'h74 : 
				     (xor_to_sbox[39:32] == 8'hcb) ? 8'h1f : 
				     (xor_to_sbox[39:32] == 8'hcc) ? 8'h4b : 
				     (xor_to_sbox[39:32] == 8'hcd) ? 8'hbd : 
				     (xor_to_sbox[39:32] == 8'hce) ? 8'h8b : 
				     (xor_to_sbox[39:32] == 8'hcf) ? 8'h8a : 

				     (xor_to_sbox[39:32] == 8'hd0) ? 8'h70 :	// row d
				     (xor_to_sbox[39:32] == 8'hd1) ? 8'h3e : 
				     (xor_to_sbox[39:32] == 8'hd2) ? 8'hb5 : 
				     (xor_to_sbox[39:32] == 8'hd3) ? 8'h66 : 
				     (xor_to_sbox[39:32] == 8'hd4) ? 8'h48 : 
				     (xor_to_sbox[39:32] == 8'hd5) ? 8'h03 : 
				     (xor_to_sbox[39:32] == 8'hd6) ? 8'hf6 : 
				     (xor_to_sbox[39:32] == 8'hd7) ? 8'h0e : 
				     (xor_to_sbox[39:32] == 8'hd8) ? 8'h61 : 
				     (xor_to_sbox[39:32] == 8'hd9) ? 8'h35 : 
				     (xor_to_sbox[39:32] == 8'hda) ? 8'h57 : 
				     (xor_to_sbox[39:32] == 8'hdb) ? 8'hb9 : 
				     (xor_to_sbox[39:32] == 8'hdc) ? 8'h86 : 
				     (xor_to_sbox[39:32] == 8'hdd) ? 8'hc1 : 
				     (xor_to_sbox[39:32] == 8'hde) ? 8'h1d : 
				     (xor_to_sbox[39:32] == 8'hdf) ? 8'h9e : 

				     (xor_to_sbox[39:32] == 8'he0) ? 8'he1 :	// row e
				     (xor_to_sbox[39:32] == 8'he1) ? 8'hf8 : 
				     (xor_to_sbox[39:32] == 8'he2) ? 8'h98 : 
				     (xor_to_sbox[39:32] == 8'he3) ? 8'h11 : 
				     (xor_to_sbox[39:32] == 8'he4) ? 8'h69 : 
				     (xor_to_sbox[39:32] == 8'he5) ? 8'hd9 : 
				     (xor_to_sbox[39:32] == 8'he6) ? 8'h8e : 
				     (xor_to_sbox[39:32] == 8'he7) ? 8'h94 : 
				     (xor_to_sbox[39:32] == 8'he8) ? 8'h9b : 
				     (xor_to_sbox[39:32] == 8'he9) ? 8'h1e : 
				     (xor_to_sbox[39:32] == 8'hea) ? 8'h87 : 
				     (xor_to_sbox[39:32] == 8'heb) ? 8'he9 : 
				     (xor_to_sbox[39:32] == 8'hec) ? 8'hce : 
				     (xor_to_sbox[39:32] == 8'hed) ? 8'h55 : 
				     (xor_to_sbox[39:32] == 8'hee) ? 8'h28 : 
				     (xor_to_sbox[39:32] == 8'hef) ? 8'hdf : 

				     (xor_to_sbox[39:32] == 8'hf0) ? 8'h8c :	// row f
				     (xor_to_sbox[39:32] == 8'hf1) ? 8'ha1 : 
				     (xor_to_sbox[39:32] == 8'hf2) ? 8'h89 : 
				     (xor_to_sbox[39:32] == 8'hf3) ? 8'h0d : 
				     (xor_to_sbox[39:32] == 8'hf4) ? 8'hbf : 
				     (xor_to_sbox[39:32] == 8'hf5) ? 8'he6 : 
				     (xor_to_sbox[39:32] == 8'hf6) ? 8'h42 : 
				     (xor_to_sbox[39:32] == 8'hf7) ? 8'h68 : 
				     (xor_to_sbox[39:32] == 8'hf8) ? 8'h41 : 
				     (xor_to_sbox[39:32] == 8'hf9) ? 8'h99 : 
				     (xor_to_sbox[39:32] == 8'hfa) ? 8'h2d : 
				     (xor_to_sbox[39:32] == 8'hfb) ? 8'h0f : 
				     (xor_to_sbox[39:32] == 8'hfc) ? 8'hb0 : 
				     (xor_to_sbox[39:32] == 8'hfd) ? 8'h54 : 
				     (xor_to_sbox[39:32] == 8'hfe) ? 8'hbb : 
				     (xor_to_sbox[39:32] == 8'hff) ? 8'h16 : 8'hxx;


assign sbox_to_rows[47:40] = (xor_to_sbox[47:40] == 8'h00) ? 8'h63 :	// row 0
				     (xor_to_sbox[47:40] == 8'h01) ? 8'h7c : 
				     (xor_to_sbox[47:40] == 8'h02) ? 8'h77 : 
				     (xor_to_sbox[47:40] == 8'h03) ? 8'h7b : 
				     (xor_to_sbox[47:40] == 8'h04) ? 8'hf2 : 
				     (xor_to_sbox[47:40] == 8'h05) ? 8'h6b : 
				     (xor_to_sbox[47:40] == 8'h06) ? 8'h6f : 
				     (xor_to_sbox[47:40] == 8'h07) ? 8'hc5 : 
				     (xor_to_sbox[47:40] == 8'h08) ? 8'h30 : 
				     (xor_to_sbox[47:40] == 8'h09) ? 8'h01 : 
				     (xor_to_sbox[47:40] == 8'h0a) ? 8'h67 : 
				     (xor_to_sbox[47:40] == 8'h0b) ? 8'h2b : 
				     (xor_to_sbox[47:40] == 8'h0c) ? 8'hfe : 
				     (xor_to_sbox[47:40] == 8'h0d) ? 8'hd7 : 
				     (xor_to_sbox[47:40] == 8'h0e) ? 8'hab : 
				     (xor_to_sbox[47:40] == 8'h0f) ? 8'h76 : 

				     (xor_to_sbox[47:40] == 8'h10) ? 8'hca :	// row 1
				     (xor_to_sbox[47:40] == 8'h11) ? 8'h82 : 
				     (xor_to_sbox[47:40] == 8'h12) ? 8'hc9 : 
				     (xor_to_sbox[47:40] == 8'h13) ? 8'h7d : 
				     (xor_to_sbox[47:40] == 8'h14) ? 8'hfa : 
				     (xor_to_sbox[47:40] == 8'h15) ? 8'h59 : 
				     (xor_to_sbox[47:40] == 8'h16) ? 8'h47 : 
				     (xor_to_sbox[47:40] == 8'h17) ? 8'hf0 : 
				     (xor_to_sbox[47:40] == 8'h18) ? 8'had : 
				     (xor_to_sbox[47:40] == 8'h19) ? 8'hd4 : 
				     (xor_to_sbox[47:40] == 8'h1a) ? 8'ha2 : 
				     (xor_to_sbox[47:40] == 8'h1b) ? 8'haf : 
				     (xor_to_sbox[47:40] == 8'h1c) ? 8'h9c : 
				     (xor_to_sbox[47:40] == 8'h1d) ? 8'ha4 : 
				     (xor_to_sbox[47:40] == 8'h1e) ? 8'h72 : 
				     (xor_to_sbox[47:40] == 8'h1f) ? 8'hc0 : 

				     (xor_to_sbox[47:40] == 8'h20) ? 8'hb7 :	// row 2
				     (xor_to_sbox[47:40] == 8'h21) ? 8'hfd : 
				     (xor_to_sbox[47:40] == 8'h22) ? 8'h93 : 
				     (xor_to_sbox[47:40] == 8'h23) ? 8'h26 : 
				     (xor_to_sbox[47:40] == 8'h24) ? 8'h36 : 
				     (xor_to_sbox[47:40] == 8'h25) ? 8'h3f : 
				     (xor_to_sbox[47:40] == 8'h26) ? 8'hf7 : 
				     (xor_to_sbox[47:40] == 8'h27) ? 8'hcc : 
				     (xor_to_sbox[47:40] == 8'h28) ? 8'h34 : 
				     (xor_to_sbox[47:40] == 8'h29) ? 8'ha5 : 
				     (xor_to_sbox[47:40] == 8'h2a) ? 8'he5 : 
				     (xor_to_sbox[47:40] == 8'h2b) ? 8'hf1 : 
				     (xor_to_sbox[47:40] == 8'h2c) ? 8'h71 : 
				     (xor_to_sbox[47:40] == 8'h2d) ? 8'hd8 : 
				     (xor_to_sbox[47:40] == 8'h2e) ? 8'h31 : 
				     (xor_to_sbox[47:40] == 8'h2f) ? 8'h15 :

				     (xor_to_sbox[47:40] == 8'h30) ? 8'h04 : 	// row 3
				     (xor_to_sbox[47:40] == 8'h31) ? 8'hc7 : 
				     (xor_to_sbox[47:40] == 8'h32) ? 8'h23 : 
				     (xor_to_sbox[47:40] == 8'h33) ? 8'hc3 : 
				     (xor_to_sbox[47:40] == 8'h34) ? 8'h18 : 
				     (xor_to_sbox[47:40] == 8'h35) ? 8'h96 : 
				     (xor_to_sbox[47:40] == 8'h36) ? 8'h05 : 
				     (xor_to_sbox[47:40] == 8'h37) ? 8'h9a : 
				     (xor_to_sbox[47:40] == 8'h38) ? 8'h07 : 
				     (xor_to_sbox[47:40] == 8'h39) ? 8'h12 : 
				     (xor_to_sbox[47:40] == 8'h3a) ? 8'h80 : 
				     (xor_to_sbox[47:40] == 8'h3b) ? 8'he2 : 
				     (xor_to_sbox[47:40] == 8'h3c) ? 8'heb : 
				     (xor_to_sbox[47:40] == 8'h3d) ? 8'h27 : 
				     (xor_to_sbox[47:40] == 8'h3e) ? 8'hb2 : 
				     (xor_to_sbox[47:40] == 8'h3f) ? 8'h75 : 

				     (xor_to_sbox[47:40] == 8'h40) ? 8'h09 :	// row 4
				     (xor_to_sbox[47:40] == 8'h41) ? 8'h83 : 
				     (xor_to_sbox[47:40] == 8'h42) ? 8'h2c : 
				     (xor_to_sbox[47:40] == 8'h43) ? 8'h1a : 
				     (xor_to_sbox[47:40] == 8'h44) ? 8'h1b : 
				     (xor_to_sbox[47:40] == 8'h45) ? 8'h6e : 
				     (xor_to_sbox[47:40] == 8'h46) ? 8'h5a : 
				     (xor_to_sbox[47:40] == 8'h47) ? 8'ha0 : 
				     (xor_to_sbox[47:40] == 8'h48) ? 8'h52 : 
				     (xor_to_sbox[47:40] == 8'h49) ? 8'h3b : 
				     (xor_to_sbox[47:40] == 8'h4a) ? 8'hd6 : 
				     (xor_to_sbox[47:40] == 8'h4b) ? 8'hb3 : 
				     (xor_to_sbox[47:40] == 8'h4c) ? 8'h29 : 
				     (xor_to_sbox[47:40] == 8'h4d) ? 8'he3 : 
				     (xor_to_sbox[47:40] == 8'h4e) ? 8'h2f : 
				     (xor_to_sbox[47:40] == 8'h4f) ? 8'h84 : 

				     (xor_to_sbox[47:40] == 8'h50) ? 8'h53 :	// row 5
				     (xor_to_sbox[47:40] == 8'h51) ? 8'hd1 : 
				     (xor_to_sbox[47:40] == 8'h52) ? 8'h00 : 
				     (xor_to_sbox[47:40] == 8'h53) ? 8'hed : 
				     (xor_to_sbox[47:40] == 8'h54) ? 8'h20 : 
				     (xor_to_sbox[47:40] == 8'h55) ? 8'hfc : 
				     (xor_to_sbox[47:40] == 8'h56) ? 8'hb1 : 
				     (xor_to_sbox[47:40] == 8'h57) ? 8'h5b : 
				     (xor_to_sbox[47:40] == 8'h58) ? 8'h6a : 
				     (xor_to_sbox[47:40] == 8'h59) ? 8'hcb : 
				     (xor_to_sbox[47:40] == 8'h5a) ? 8'hbe : 
				     (xor_to_sbox[47:40] == 8'h5b) ? 8'h39 : 
				     (xor_to_sbox[47:40] == 8'h5c) ? 8'h4a : 
				     (xor_to_sbox[47:40] == 8'h5d) ? 8'h4c : 
				     (xor_to_sbox[47:40] == 8'h5e) ? 8'h58 : 
				     (xor_to_sbox[47:40] == 8'h5f) ? 8'hcf : 

				     (xor_to_sbox[47:40] == 8'h60) ? 8'hd0 :	// row 6
				     (xor_to_sbox[47:40] == 8'h61) ? 8'hef : 
				     (xor_to_sbox[47:40] == 8'h62) ? 8'haa : 
				     (xor_to_sbox[47:40] == 8'h63) ? 8'hfb : 
				     (xor_to_sbox[47:40] == 8'h64) ? 8'h43 : 
				     (xor_to_sbox[47:40] == 8'h65) ? 8'h4d : 
				     (xor_to_sbox[47:40] == 8'h66) ? 8'h33 : 
				     (xor_to_sbox[47:40] == 8'h67) ? 8'h85 : 
				     (xor_to_sbox[47:40] == 8'h68) ? 8'h45 : 
				     (xor_to_sbox[47:40] == 8'h69) ? 8'hf9 : 
				     (xor_to_sbox[47:40] == 8'h6a) ? 8'h02 : 
				     (xor_to_sbox[47:40] == 8'h6b) ? 8'h7f : 
				     (xor_to_sbox[47:40] == 8'h6c) ? 8'h50 : 
				     (xor_to_sbox[47:40] == 8'h6d) ? 8'h3c : 
				     (xor_to_sbox[47:40] == 8'h6e) ? 8'h9f : 
				     (xor_to_sbox[47:40] == 8'h6f) ? 8'ha8 : 

				     (xor_to_sbox[47:40] == 8'h70) ? 8'h51 :	// row 7
				     (xor_to_sbox[47:40] == 8'h71) ? 8'ha3 : 
				     (xor_to_sbox[47:40] == 8'h72) ? 8'h40 : 
				     (xor_to_sbox[47:40] == 8'h73) ? 8'h8f : 
				     (xor_to_sbox[47:40] == 8'h74) ? 8'h92 : 
				     (xor_to_sbox[47:40] == 8'h75) ? 8'h9d : 
				     (xor_to_sbox[47:40] == 8'h76) ? 8'h38 : 
				     (xor_to_sbox[47:40] == 8'h77) ? 8'hf5 : 
				     (xor_to_sbox[47:40] == 8'h78) ? 8'hbc : 
				     (xor_to_sbox[47:40] == 8'h79) ? 8'hb6 : 
				     (xor_to_sbox[47:40] == 8'h7a) ? 8'hda : 
				     (xor_to_sbox[47:40] == 8'h7b) ? 8'h21 : 
				     (xor_to_sbox[47:40] == 8'h7c) ? 8'h10 : 
				     (xor_to_sbox[47:40] == 8'h7d) ? 8'hff : 
				     (xor_to_sbox[47:40] == 8'h7e) ? 8'hf3 : 
				     (xor_to_sbox[47:40] == 8'h7f) ? 8'hd2 : 

				     (xor_to_sbox[47:40] == 8'h80) ? 8'hcd :	// row 8
				     (xor_to_sbox[47:40] == 8'h81) ? 8'h0c : 
				     (xor_to_sbox[47:40] == 8'h82) ? 8'h13 : 
				     (xor_to_sbox[47:40] == 8'h83) ? 8'hec : 
				     (xor_to_sbox[47:40] == 8'h84) ? 8'h5f : 
				     (xor_to_sbox[47:40] == 8'h85) ? 8'h97 : 
				     (xor_to_sbox[47:40] == 8'h86) ? 8'h44 : 
				     (xor_to_sbox[47:40] == 8'h87) ? 8'h17 : 
				     (xor_to_sbox[47:40] == 8'h88) ? 8'hc4 : 
				     (xor_to_sbox[47:40] == 8'h89) ? 8'ha7 : 
				     (xor_to_sbox[47:40] == 8'h8a) ? 8'h7e : 
				     (xor_to_sbox[47:40] == 8'h8b) ? 8'h3d : 
				     (xor_to_sbox[47:40] == 8'h8c) ? 8'h64 : 
				     (xor_to_sbox[47:40] == 8'h8d) ? 8'h5d : 
				     (xor_to_sbox[47:40] == 8'h8e) ? 8'h19 : 
				     (xor_to_sbox[47:40] == 8'h8f) ? 8'h73 : 

				     (xor_to_sbox[47:40] == 8'h90) ? 8'h60 :	// row 9
				     (xor_to_sbox[47:40] == 8'h91) ? 8'h81 : 
				     (xor_to_sbox[47:40] == 8'h92) ? 8'h4f : 
				     (xor_to_sbox[47:40] == 8'h93) ? 8'hdc : 
				     (xor_to_sbox[47:40] == 8'h94) ? 8'h22 : 
				     (xor_to_sbox[47:40] == 8'h95) ? 8'h2a : 
				     (xor_to_sbox[47:40] == 8'h96) ? 8'h90 : 
				     (xor_to_sbox[47:40] == 8'h97) ? 8'h88 : 
				     (xor_to_sbox[47:40] == 8'h98) ? 8'h46 : 
				     (xor_to_sbox[47:40] == 8'h99) ? 8'hee : 
				     (xor_to_sbox[47:40] == 8'h9a) ? 8'hb8 : 
				     (xor_to_sbox[47:40] == 8'h9b) ? 8'h14 : 
				     (xor_to_sbox[47:40] == 8'h9c) ? 8'hde : 
				     (xor_to_sbox[47:40] == 8'h9d) ? 8'h5e : 
				     (xor_to_sbox[47:40] == 8'h9e) ? 8'h0b : 
				     (xor_to_sbox[47:40] == 8'h9f) ? 8'hdb : 

				     (xor_to_sbox[47:40] == 8'ha0) ? 8'he0 :	// row a
				     (xor_to_sbox[47:40] == 8'ha1) ? 8'h32 : 
				     (xor_to_sbox[47:40] == 8'ha2) ? 8'h3a : 
				     (xor_to_sbox[47:40] == 8'ha3) ? 8'h0a : 
				     (xor_to_sbox[47:40] == 8'ha4) ? 8'h49 : 
				     (xor_to_sbox[47:40] == 8'ha5) ? 8'h06 : 
				     (xor_to_sbox[47:40] == 8'ha6) ? 8'h24 : 
				     (xor_to_sbox[47:40] == 8'ha7) ? 8'h5c : 
				     (xor_to_sbox[47:40] == 8'ha8) ? 8'hc2 : 
				     (xor_to_sbox[47:40] == 8'ha9) ? 8'hd3 : 
				     (xor_to_sbox[47:40] == 8'haa) ? 8'hac : 
				     (xor_to_sbox[47:40] == 8'hab) ? 8'h62 : 
				     (xor_to_sbox[47:40] == 8'hac) ? 8'h91 : 
				     (xor_to_sbox[47:40] == 8'had) ? 8'h95 : 
				     (xor_to_sbox[47:40] == 8'hae) ? 8'he4 : 
				     (xor_to_sbox[47:40] == 8'haf) ? 8'h79 : 

				     (xor_to_sbox[47:40] == 8'hb0) ? 8'he7 :	// row b
				     (xor_to_sbox[47:40] == 8'hb1) ? 8'hc8 : 
				     (xor_to_sbox[47:40] == 8'hb2) ? 8'h37 : 
				     (xor_to_sbox[47:40] == 8'hb3) ? 8'h6d : 
				     (xor_to_sbox[47:40] == 8'hb4) ? 8'h8d : 
				     (xor_to_sbox[47:40] == 8'hb5) ? 8'hd5 : 
				     (xor_to_sbox[47:40] == 8'hb6) ? 8'h4e : 
				     (xor_to_sbox[47:40] == 8'hb7) ? 8'ha9 : 
				     (xor_to_sbox[47:40] == 8'hb8) ? 8'h6c : 
				     (xor_to_sbox[47:40] == 8'hb9) ? 8'h56 : 
				     (xor_to_sbox[47:40] == 8'hba) ? 8'hf4 : 
				     (xor_to_sbox[47:40] == 8'hbb) ? 8'hea : 
				     (xor_to_sbox[47:40] == 8'hbc) ? 8'h65 : 
				     (xor_to_sbox[47:40] == 8'hbd) ? 8'h7a : 
				     (xor_to_sbox[47:40] == 8'hbe) ? 8'hae : 
				     (xor_to_sbox[47:40] == 8'hbf) ? 8'h08 : 

				     (xor_to_sbox[47:40] == 8'hc0) ? 8'hba :	// row c
				     (xor_to_sbox[47:40] == 8'hc1) ? 8'h78 : 
				     (xor_to_sbox[47:40] == 8'hc2) ? 8'h25 : 
				     (xor_to_sbox[47:40] == 8'hc3) ? 8'h2e : 
				     (xor_to_sbox[47:40] == 8'hc4) ? 8'h1c : 
				     (xor_to_sbox[47:40] == 8'hc5) ? 8'ha6 : 
				     (xor_to_sbox[47:40] == 8'hc6) ? 8'hb4 : 
				     (xor_to_sbox[47:40] == 8'hc7) ? 8'hc6 : 
				     (xor_to_sbox[47:40] == 8'hc8) ? 8'he8 : 
				     (xor_to_sbox[47:40] == 8'hc9) ? 8'hdd : 
				     (xor_to_sbox[47:40] == 8'hca) ? 8'h74 : 
				     (xor_to_sbox[47:40] == 8'hcb) ? 8'h1f : 
				     (xor_to_sbox[47:40] == 8'hcc) ? 8'h4b : 
				     (xor_to_sbox[47:40] == 8'hcd) ? 8'hbd : 
				     (xor_to_sbox[47:40] == 8'hce) ? 8'h8b : 
				     (xor_to_sbox[47:40] == 8'hcf) ? 8'h8a : 

				     (xor_to_sbox[47:40] == 8'hd0) ? 8'h70 :	// row d
				     (xor_to_sbox[47:40] == 8'hd1) ? 8'h3e : 
				     (xor_to_sbox[47:40] == 8'hd2) ? 8'hb5 : 
				     (xor_to_sbox[47:40] == 8'hd3) ? 8'h66 : 
				     (xor_to_sbox[47:40] == 8'hd4) ? 8'h48 : 
				     (xor_to_sbox[47:40] == 8'hd5) ? 8'h03 : 
				     (xor_to_sbox[47:40] == 8'hd6) ? 8'hf6 : 
				     (xor_to_sbox[47:40] == 8'hd7) ? 8'h0e : 
				     (xor_to_sbox[47:40] == 8'hd8) ? 8'h61 : 
				     (xor_to_sbox[47:40] == 8'hd9) ? 8'h35 : 
				     (xor_to_sbox[47:40] == 8'hda) ? 8'h57 : 
				     (xor_to_sbox[47:40] == 8'hdb) ? 8'hb9 : 
				     (xor_to_sbox[47:40] == 8'hdc) ? 8'h86 : 
				     (xor_to_sbox[47:40] == 8'hdd) ? 8'hc1 : 
				     (xor_to_sbox[47:40] == 8'hde) ? 8'h1d : 
				     (xor_to_sbox[47:40] == 8'hdf) ? 8'h9e : 

				     (xor_to_sbox[47:40] == 8'he0) ? 8'he1 :	// row e
				     (xor_to_sbox[47:40] == 8'he1) ? 8'hf8 : 
				     (xor_to_sbox[47:40] == 8'he2) ? 8'h98 : 
				     (xor_to_sbox[47:40] == 8'he3) ? 8'h11 : 
				     (xor_to_sbox[47:40] == 8'he4) ? 8'h69 : 
				     (xor_to_sbox[47:40] == 8'he5) ? 8'hd9 : 
				     (xor_to_sbox[47:40] == 8'he6) ? 8'h8e : 
				     (xor_to_sbox[47:40] == 8'he7) ? 8'h94 : 
				     (xor_to_sbox[47:40] == 8'he8) ? 8'h9b : 
				     (xor_to_sbox[47:40] == 8'he9) ? 8'h1e : 
				     (xor_to_sbox[47:40] == 8'hea) ? 8'h87 : 
				     (xor_to_sbox[47:40] == 8'heb) ? 8'he9 : 
				     (xor_to_sbox[47:40] == 8'hec) ? 8'hce : 
				     (xor_to_sbox[47:40] == 8'hed) ? 8'h55 : 
				     (xor_to_sbox[47:40] == 8'hee) ? 8'h28 : 
				     (xor_to_sbox[47:40] == 8'hef) ? 8'hdf : 

				     (xor_to_sbox[47:40] == 8'hf0) ? 8'h8c :	// row f
				     (xor_to_sbox[47:40] == 8'hf1) ? 8'ha1 : 
				     (xor_to_sbox[47:40] == 8'hf2) ? 8'h89 : 
				     (xor_to_sbox[47:40] == 8'hf3) ? 8'h0d : 
				     (xor_to_sbox[47:40] == 8'hf4) ? 8'hbf : 
				     (xor_to_sbox[47:40] == 8'hf5) ? 8'he6 : 
				     (xor_to_sbox[47:40] == 8'hf6) ? 8'h42 : 
				     (xor_to_sbox[47:40] == 8'hf7) ? 8'h68 : 
				     (xor_to_sbox[47:40] == 8'hf8) ? 8'h41 : 
				     (xor_to_sbox[47:40] == 8'hf9) ? 8'h99 : 
				     (xor_to_sbox[47:40] == 8'hfa) ? 8'h2d : 
				     (xor_to_sbox[47:40] == 8'hfb) ? 8'h0f : 
				     (xor_to_sbox[47:40] == 8'hfc) ? 8'hb0 : 
				     (xor_to_sbox[47:40] == 8'hfd) ? 8'h54 : 
				     (xor_to_sbox[47:40] == 8'hfe) ? 8'hbb : 
				     (xor_to_sbox[47:40] == 8'hff) ? 8'h16 : 8'hxx;

					  
assign sbox_to_rows[55:48] = (xor_to_sbox[55:48] == 8'h00) ? 8'h63 :	// row 0
				     (xor_to_sbox[55:48] == 8'h01) ? 8'h7c : 
				     (xor_to_sbox[55:48] == 8'h02) ? 8'h77 : 
				     (xor_to_sbox[55:48] == 8'h03) ? 8'h7b : 
				     (xor_to_sbox[55:48] == 8'h04) ? 8'hf2 : 
				     (xor_to_sbox[55:48] == 8'h05) ? 8'h6b : 
				     (xor_to_sbox[55:48] == 8'h06) ? 8'h6f : 
				     (xor_to_sbox[55:48] == 8'h07) ? 8'hc5 : 
				     (xor_to_sbox[55:48] == 8'h08) ? 8'h30 : 
				     (xor_to_sbox[55:48] == 8'h09) ? 8'h01 : 
				     (xor_to_sbox[55:48] == 8'h0a) ? 8'h67 : 
				     (xor_to_sbox[55:48] == 8'h0b) ? 8'h2b : 
				     (xor_to_sbox[55:48] == 8'h0c) ? 8'hfe : 
				     (xor_to_sbox[55:48] == 8'h0d) ? 8'hd7 : 
				     (xor_to_sbox[55:48] == 8'h0e) ? 8'hab : 
				     (xor_to_sbox[55:48] == 8'h0f) ? 8'h76 : 

				     (xor_to_sbox[55:48] == 8'h10) ? 8'hca :	// row 1
				     (xor_to_sbox[55:48] == 8'h11) ? 8'h82 : 
				     (xor_to_sbox[55:48] == 8'h12) ? 8'hc9 : 
				     (xor_to_sbox[55:48] == 8'h13) ? 8'h7d : 
				     (xor_to_sbox[55:48] == 8'h14) ? 8'hfa : 
				     (xor_to_sbox[55:48] == 8'h15) ? 8'h59 : 
				     (xor_to_sbox[55:48] == 8'h16) ? 8'h47 : 
				     (xor_to_sbox[55:48] == 8'h17) ? 8'hf0 : 
				     (xor_to_sbox[55:48] == 8'h18) ? 8'had : 
				     (xor_to_sbox[55:48] == 8'h19) ? 8'hd4 : 
				     (xor_to_sbox[55:48] == 8'h1a) ? 8'ha2 : 
				     (xor_to_sbox[55:48] == 8'h1b) ? 8'haf : 
				     (xor_to_sbox[55:48] == 8'h1c) ? 8'h9c : 
				     (xor_to_sbox[55:48] == 8'h1d) ? 8'ha4 : 
				     (xor_to_sbox[55:48] == 8'h1e) ? 8'h72 : 
				     (xor_to_sbox[55:48] == 8'h1f) ? 8'hc0 : 

				     (xor_to_sbox[55:48] == 8'h20) ? 8'hb7 :	// row 2
				     (xor_to_sbox[55:48] == 8'h21) ? 8'hfd : 
				     (xor_to_sbox[55:48] == 8'h22) ? 8'h93 : 
				     (xor_to_sbox[55:48] == 8'h23) ? 8'h26 : 
				     (xor_to_sbox[55:48] == 8'h24) ? 8'h36 : 
				     (xor_to_sbox[55:48] == 8'h25) ? 8'h3f : 
				     (xor_to_sbox[55:48] == 8'h26) ? 8'hf7 : 
				     (xor_to_sbox[55:48] == 8'h27) ? 8'hcc : 
				     (xor_to_sbox[55:48] == 8'h28) ? 8'h34 : 
				     (xor_to_sbox[55:48] == 8'h29) ? 8'ha5 : 
				     (xor_to_sbox[55:48] == 8'h2a) ? 8'he5 : 
				     (xor_to_sbox[55:48] == 8'h2b) ? 8'hf1 : 
				     (xor_to_sbox[55:48] == 8'h2c) ? 8'h71 : 
				     (xor_to_sbox[55:48] == 8'h2d) ? 8'hd8 : 
				     (xor_to_sbox[55:48] == 8'h2e) ? 8'h31 : 
				     (xor_to_sbox[55:48] == 8'h2f) ? 8'h15 :

				     (xor_to_sbox[55:48] == 8'h30) ? 8'h04 : 	// row 3
				     (xor_to_sbox[55:48] == 8'h31) ? 8'hc7 : 
				     (xor_to_sbox[55:48] == 8'h32) ? 8'h23 : 
				     (xor_to_sbox[55:48] == 8'h33) ? 8'hc3 : 
				     (xor_to_sbox[55:48] == 8'h34) ? 8'h18 : 
				     (xor_to_sbox[55:48] == 8'h35) ? 8'h96 : 
				     (xor_to_sbox[55:48] == 8'h36) ? 8'h05 : 
				     (xor_to_sbox[55:48] == 8'h37) ? 8'h9a : 
				     (xor_to_sbox[55:48] == 8'h38) ? 8'h07 : 
				     (xor_to_sbox[55:48] == 8'h39) ? 8'h12 : 
				     (xor_to_sbox[55:48] == 8'h3a) ? 8'h80 : 
				     (xor_to_sbox[55:48] == 8'h3b) ? 8'he2 : 
				     (xor_to_sbox[55:48] == 8'h3c) ? 8'heb : 
				     (xor_to_sbox[55:48] == 8'h3d) ? 8'h27 : 
				     (xor_to_sbox[55:48] == 8'h3e) ? 8'hb2 : 
				     (xor_to_sbox[55:48] == 8'h3f) ? 8'h75 : 

				     (xor_to_sbox[55:48] == 8'h40) ? 8'h09 :	// row 4
				     (xor_to_sbox[55:48] == 8'h41) ? 8'h83 : 
				     (xor_to_sbox[55:48] == 8'h42) ? 8'h2c : 
				     (xor_to_sbox[55:48] == 8'h43) ? 8'h1a : 
				     (xor_to_sbox[55:48] == 8'h44) ? 8'h1b : 
				     (xor_to_sbox[55:48] == 8'h45) ? 8'h6e : 
				     (xor_to_sbox[55:48] == 8'h46) ? 8'h5a : 
				     (xor_to_sbox[55:48] == 8'h47) ? 8'ha0 : 
				     (xor_to_sbox[55:48] == 8'h48) ? 8'h52 : 
				     (xor_to_sbox[55:48] == 8'h49) ? 8'h3b : 
				     (xor_to_sbox[55:48] == 8'h4a) ? 8'hd6 : 
				     (xor_to_sbox[55:48] == 8'h4b) ? 8'hb3 : 
				     (xor_to_sbox[55:48] == 8'h4c) ? 8'h29 : 
				     (xor_to_sbox[55:48] == 8'h4d) ? 8'he3 : 
				     (xor_to_sbox[55:48] == 8'h4e) ? 8'h2f : 
				     (xor_to_sbox[55:48] == 8'h4f) ? 8'h84 : 

				     (xor_to_sbox[55:48] == 8'h50) ? 8'h53 :	// row 5
				     (xor_to_sbox[55:48] == 8'h51) ? 8'hd1 : 
				     (xor_to_sbox[55:48] == 8'h52) ? 8'h00 : 
				     (xor_to_sbox[55:48] == 8'h53) ? 8'hed : 
				     (xor_to_sbox[55:48] == 8'h54) ? 8'h20 : 
				     (xor_to_sbox[55:48] == 8'h55) ? 8'hfc : 
				     (xor_to_sbox[55:48] == 8'h56) ? 8'hb1 : 
				     (xor_to_sbox[55:48] == 8'h57) ? 8'h5b : 
				     (xor_to_sbox[55:48] == 8'h58) ? 8'h6a : 
				     (xor_to_sbox[55:48] == 8'h59) ? 8'hcb : 
				     (xor_to_sbox[55:48] == 8'h5a) ? 8'hbe : 
				     (xor_to_sbox[55:48] == 8'h5b) ? 8'h39 : 
				     (xor_to_sbox[55:48] == 8'h5c) ? 8'h4a : 
				     (xor_to_sbox[55:48] == 8'h5d) ? 8'h4c : 
				     (xor_to_sbox[55:48] == 8'h5e) ? 8'h58 : 
				     (xor_to_sbox[55:48] == 8'h5f) ? 8'hcf : 

				     (xor_to_sbox[55:48] == 8'h60) ? 8'hd0 :	// row 6
				     (xor_to_sbox[55:48] == 8'h61) ? 8'hef : 
				     (xor_to_sbox[55:48] == 8'h62) ? 8'haa : 
				     (xor_to_sbox[55:48] == 8'h63) ? 8'hfb : 
				     (xor_to_sbox[55:48] == 8'h64) ? 8'h43 : 
				     (xor_to_sbox[55:48] == 8'h65) ? 8'h4d : 
				     (xor_to_sbox[55:48] == 8'h66) ? 8'h33 : 
				     (xor_to_sbox[55:48] == 8'h67) ? 8'h85 : 
				     (xor_to_sbox[55:48] == 8'h68) ? 8'h45 : 
				     (xor_to_sbox[55:48] == 8'h69) ? 8'hf9 : 
				     (xor_to_sbox[55:48] == 8'h6a) ? 8'h02 : 
				     (xor_to_sbox[55:48] == 8'h6b) ? 8'h7f : 
				     (xor_to_sbox[55:48] == 8'h6c) ? 8'h50 : 
				     (xor_to_sbox[55:48] == 8'h6d) ? 8'h3c : 
				     (xor_to_sbox[55:48] == 8'h6e) ? 8'h9f : 
				     (xor_to_sbox[55:48] == 8'h6f) ? 8'ha8 : 

				     (xor_to_sbox[55:48] == 8'h70) ? 8'h51 :	// row 7
				     (xor_to_sbox[55:48] == 8'h71) ? 8'ha3 : 
				     (xor_to_sbox[55:48] == 8'h72) ? 8'h40 : 
				     (xor_to_sbox[55:48] == 8'h73) ? 8'h8f : 
				     (xor_to_sbox[55:48] == 8'h74) ? 8'h92 : 
				     (xor_to_sbox[55:48] == 8'h75) ? 8'h9d : 
				     (xor_to_sbox[55:48] == 8'h76) ? 8'h38 : 
				     (xor_to_sbox[55:48] == 8'h77) ? 8'hf5 : 
				     (xor_to_sbox[55:48] == 8'h78) ? 8'hbc : 
				     (xor_to_sbox[55:48] == 8'h79) ? 8'hb6 : 
				     (xor_to_sbox[55:48] == 8'h7a) ? 8'hda : 
				     (xor_to_sbox[55:48] == 8'h7b) ? 8'h21 : 
				     (xor_to_sbox[55:48] == 8'h7c) ? 8'h10 : 
				     (xor_to_sbox[55:48] == 8'h7d) ? 8'hff : 
				     (xor_to_sbox[55:48] == 8'h7e) ? 8'hf3 : 
				     (xor_to_sbox[55:48] == 8'h7f) ? 8'hd2 : 

				     (xor_to_sbox[55:48] == 8'h80) ? 8'hcd :	// row 8
				     (xor_to_sbox[55:48] == 8'h81) ? 8'h0c : 
				     (xor_to_sbox[55:48] == 8'h82) ? 8'h13 : 
				     (xor_to_sbox[55:48] == 8'h83) ? 8'hec : 
				     (xor_to_sbox[55:48] == 8'h84) ? 8'h5f : 
				     (xor_to_sbox[55:48] == 8'h85) ? 8'h97 : 
				     (xor_to_sbox[55:48] == 8'h86) ? 8'h44 : 
				     (xor_to_sbox[55:48] == 8'h87) ? 8'h17 : 
				     (xor_to_sbox[55:48] == 8'h88) ? 8'hc4 : 
				     (xor_to_sbox[55:48] == 8'h89) ? 8'ha7 : 
				     (xor_to_sbox[55:48] == 8'h8a) ? 8'h7e : 
				     (xor_to_sbox[55:48] == 8'h8b) ? 8'h3d : 
				     (xor_to_sbox[55:48] == 8'h8c) ? 8'h64 : 
				     (xor_to_sbox[55:48] == 8'h8d) ? 8'h5d : 
				     (xor_to_sbox[55:48] == 8'h8e) ? 8'h19 : 
				     (xor_to_sbox[55:48] == 8'h8f) ? 8'h73 : 

				     (xor_to_sbox[55:48] == 8'h90) ? 8'h60 :	// row 9
				     (xor_to_sbox[55:48] == 8'h91) ? 8'h81 : 
				     (xor_to_sbox[55:48] == 8'h92) ? 8'h4f : 
				     (xor_to_sbox[55:48] == 8'h93) ? 8'hdc : 
				     (xor_to_sbox[55:48] == 8'h94) ? 8'h22 : 
				     (xor_to_sbox[55:48] == 8'h95) ? 8'h2a : 
				     (xor_to_sbox[55:48] == 8'h96) ? 8'h90 : 
				     (xor_to_sbox[55:48] == 8'h97) ? 8'h88 : 
				     (xor_to_sbox[55:48] == 8'h98) ? 8'h46 : 
				     (xor_to_sbox[55:48] == 8'h99) ? 8'hee : 
				     (xor_to_sbox[55:48] == 8'h9a) ? 8'hb8 : 
				     (xor_to_sbox[55:48] == 8'h9b) ? 8'h14 : 
				     (xor_to_sbox[55:48] == 8'h9c) ? 8'hde : 
				     (xor_to_sbox[55:48] == 8'h9d) ? 8'h5e : 
				     (xor_to_sbox[55:48] == 8'h9e) ? 8'h0b : 
				     (xor_to_sbox[55:48] == 8'h9f) ? 8'hdb : 

				     (xor_to_sbox[55:48] == 8'ha0) ? 8'he0 :	// row a
				     (xor_to_sbox[55:48] == 8'ha1) ? 8'h32 : 
				     (xor_to_sbox[55:48] == 8'ha2) ? 8'h3a : 
				     (xor_to_sbox[55:48] == 8'ha3) ? 8'h0a : 
				     (xor_to_sbox[55:48] == 8'ha4) ? 8'h49 : 
				     (xor_to_sbox[55:48] == 8'ha5) ? 8'h06 : 
				     (xor_to_sbox[55:48] == 8'ha6) ? 8'h24 : 
				     (xor_to_sbox[55:48] == 8'ha7) ? 8'h5c : 
				     (xor_to_sbox[55:48] == 8'ha8) ? 8'hc2 : 
				     (xor_to_sbox[55:48] == 8'ha9) ? 8'hd3 : 
				     (xor_to_sbox[55:48] == 8'haa) ? 8'hac : 
				     (xor_to_sbox[55:48] == 8'hab) ? 8'h62 : 
				     (xor_to_sbox[55:48] == 8'hac) ? 8'h91 : 
				     (xor_to_sbox[55:48] == 8'had) ? 8'h95 : 
				     (xor_to_sbox[55:48] == 8'hae) ? 8'he4 : 
				     (xor_to_sbox[55:48] == 8'haf) ? 8'h79 : 

				     (xor_to_sbox[55:48] == 8'hb0) ? 8'he7 :	// row b
				     (xor_to_sbox[55:48] == 8'hb1) ? 8'hc8 : 
				     (xor_to_sbox[55:48] == 8'hb2) ? 8'h37 : 
				     (xor_to_sbox[55:48] == 8'hb3) ? 8'h6d : 
				     (xor_to_sbox[55:48] == 8'hb4) ? 8'h8d : 
				     (xor_to_sbox[55:48] == 8'hb5) ? 8'hd5 : 
				     (xor_to_sbox[55:48] == 8'hb6) ? 8'h4e : 
				     (xor_to_sbox[55:48] == 8'hb7) ? 8'ha9 : 
				     (xor_to_sbox[55:48] == 8'hb8) ? 8'h6c : 
				     (xor_to_sbox[55:48] == 8'hb9) ? 8'h56 : 
				     (xor_to_sbox[55:48] == 8'hba) ? 8'hf4 : 
				     (xor_to_sbox[55:48] == 8'hbb) ? 8'hea : 
				     (xor_to_sbox[55:48] == 8'hbc) ? 8'h65 : 
				     (xor_to_sbox[55:48] == 8'hbd) ? 8'h7a : 
				     (xor_to_sbox[55:48] == 8'hbe) ? 8'hae : 
				     (xor_to_sbox[55:48] == 8'hbf) ? 8'h08 : 

				     (xor_to_sbox[55:48] == 8'hc0) ? 8'hba :	// row c
				     (xor_to_sbox[55:48] == 8'hc1) ? 8'h78 : 
				     (xor_to_sbox[55:48] == 8'hc2) ? 8'h25 : 
				     (xor_to_sbox[55:48] == 8'hc3) ? 8'h2e : 
				     (xor_to_sbox[55:48] == 8'hc4) ? 8'h1c : 
				     (xor_to_sbox[55:48] == 8'hc5) ? 8'ha6 : 
				     (xor_to_sbox[55:48] == 8'hc6) ? 8'hb4 : 
				     (xor_to_sbox[55:48] == 8'hc7) ? 8'hc6 : 
				     (xor_to_sbox[55:48] == 8'hc8) ? 8'he8 : 
				     (xor_to_sbox[55:48] == 8'hc9) ? 8'hdd : 
				     (xor_to_sbox[55:48] == 8'hca) ? 8'h74 : 
				     (xor_to_sbox[55:48] == 8'hcb) ? 8'h1f : 
				     (xor_to_sbox[55:48] == 8'hcc) ? 8'h4b : 
				     (xor_to_sbox[55:48] == 8'hcd) ? 8'hbd : 
				     (xor_to_sbox[55:48] == 8'hce) ? 8'h8b : 
				     (xor_to_sbox[55:48] == 8'hcf) ? 8'h8a : 

				     (xor_to_sbox[55:48] == 8'hd0) ? 8'h70 :	// row d
				     (xor_to_sbox[55:48] == 8'hd1) ? 8'h3e : 
				     (xor_to_sbox[55:48] == 8'hd2) ? 8'hb5 : 
				     (xor_to_sbox[55:48] == 8'hd3) ? 8'h66 : 
				     (xor_to_sbox[55:48] == 8'hd4) ? 8'h48 : 
				     (xor_to_sbox[55:48] == 8'hd5) ? 8'h03 : 
				     (xor_to_sbox[55:48] == 8'hd6) ? 8'hf6 : 
				     (xor_to_sbox[55:48] == 8'hd7) ? 8'h0e : 
				     (xor_to_sbox[55:48] == 8'hd8) ? 8'h61 : 
				     (xor_to_sbox[55:48] == 8'hd9) ? 8'h35 : 
				     (xor_to_sbox[55:48] == 8'hda) ? 8'h57 : 
				     (xor_to_sbox[55:48] == 8'hdb) ? 8'hb9 : 
				     (xor_to_sbox[55:48] == 8'hdc) ? 8'h86 : 
				     (xor_to_sbox[55:48] == 8'hdd) ? 8'hc1 : 
				     (xor_to_sbox[55:48] == 8'hde) ? 8'h1d : 
				     (xor_to_sbox[55:48] == 8'hdf) ? 8'h9e : 

				     (xor_to_sbox[55:48] == 8'he0) ? 8'he1 :	// row e
				     (xor_to_sbox[55:48] == 8'he1) ? 8'hf8 : 
				     (xor_to_sbox[55:48] == 8'he2) ? 8'h98 : 
				     (xor_to_sbox[55:48] == 8'he3) ? 8'h11 : 
				     (xor_to_sbox[55:48] == 8'he4) ? 8'h69 : 
				     (xor_to_sbox[55:48] == 8'he5) ? 8'hd9 : 
				     (xor_to_sbox[55:48] == 8'he6) ? 8'h8e : 
				     (xor_to_sbox[55:48] == 8'he7) ? 8'h94 : 
				     (xor_to_sbox[55:48] == 8'he8) ? 8'h9b : 
				     (xor_to_sbox[55:48] == 8'he9) ? 8'h1e : 
				     (xor_to_sbox[55:48] == 8'hea) ? 8'h87 : 
				     (xor_to_sbox[55:48] == 8'heb) ? 8'he9 : 
				     (xor_to_sbox[55:48] == 8'hec) ? 8'hce : 
				     (xor_to_sbox[55:48] == 8'hed) ? 8'h55 : 
				     (xor_to_sbox[55:48] == 8'hee) ? 8'h28 : 
				     (xor_to_sbox[55:48] == 8'hef) ? 8'hdf : 

				     (xor_to_sbox[55:48] == 8'hf0) ? 8'h8c :	// row f
				     (xor_to_sbox[55:48] == 8'hf1) ? 8'ha1 : 
				     (xor_to_sbox[55:48] == 8'hf2) ? 8'h89 : 
				     (xor_to_sbox[55:48] == 8'hf3) ? 8'h0d : 
				     (xor_to_sbox[55:48] == 8'hf4) ? 8'hbf : 
				     (xor_to_sbox[55:48] == 8'hf5) ? 8'he6 : 
				     (xor_to_sbox[55:48] == 8'hf6) ? 8'h42 : 
				     (xor_to_sbox[55:48] == 8'hf7) ? 8'h68 : 
				     (xor_to_sbox[55:48] == 8'hf8) ? 8'h41 : 
				     (xor_to_sbox[55:48] == 8'hf9) ? 8'h99 : 
				     (xor_to_sbox[55:48] == 8'hfa) ? 8'h2d : 
				     (xor_to_sbox[55:48] == 8'hfb) ? 8'h0f : 
				     (xor_to_sbox[55:48] == 8'hfc) ? 8'hb0 : 
				     (xor_to_sbox[55:48] == 8'hfd) ? 8'h54 : 
				     (xor_to_sbox[55:48] == 8'hfe) ? 8'hbb : 
				     (xor_to_sbox[55:48] == 8'hff) ? 8'h16 : 8'hxx;
					  
assign sbox_to_rows[63:56] = (xor_to_sbox[63:56] == 8'h00) ? 8'h63 :	// row 0
				     (xor_to_sbox[63:56] == 8'h01) ? 8'h7c : 
				     (xor_to_sbox[63:56] == 8'h02) ? 8'h77 : 
				     (xor_to_sbox[63:56] == 8'h03) ? 8'h7b : 
				     (xor_to_sbox[63:56] == 8'h04) ? 8'hf2 : 
				     (xor_to_sbox[63:56] == 8'h05) ? 8'h6b : 
				     (xor_to_sbox[63:56] == 8'h06) ? 8'h6f : 
				     (xor_to_sbox[63:56] == 8'h07) ? 8'hc5 : 
				     (xor_to_sbox[63:56] == 8'h08) ? 8'h30 : 
				     (xor_to_sbox[63:56] == 8'h09) ? 8'h01 : 
				     (xor_to_sbox[63:56] == 8'h0a) ? 8'h67 : 
				     (xor_to_sbox[63:56] == 8'h0b) ? 8'h2b : 
				     (xor_to_sbox[63:56] == 8'h0c) ? 8'hfe : 
				     (xor_to_sbox[63:56] == 8'h0d) ? 8'hd7 : 
				     (xor_to_sbox[63:56] == 8'h0e) ? 8'hab : 
				     (xor_to_sbox[63:56] == 8'h0f) ? 8'h76 : 

				     (xor_to_sbox[63:56] == 8'h10) ? 8'hca :	// row 1
				     (xor_to_sbox[63:56] == 8'h11) ? 8'h82 : 
				     (xor_to_sbox[63:56] == 8'h12) ? 8'hc9 : 
				     (xor_to_sbox[63:56] == 8'h13) ? 8'h7d : 
				     (xor_to_sbox[63:56] == 8'h14) ? 8'hfa : 
				     (xor_to_sbox[63:56] == 8'h15) ? 8'h59 : 
				     (xor_to_sbox[63:56] == 8'h16) ? 8'h47 : 
				     (xor_to_sbox[63:56] == 8'h17) ? 8'hf0 : 
				     (xor_to_sbox[63:56] == 8'h18) ? 8'had : 
				     (xor_to_sbox[63:56] == 8'h19) ? 8'hd4 : 
				     (xor_to_sbox[63:56] == 8'h1a) ? 8'ha2 : 
				     (xor_to_sbox[63:56] == 8'h1b) ? 8'haf : 
				     (xor_to_sbox[63:56] == 8'h1c) ? 8'h9c : 
				     (xor_to_sbox[63:56] == 8'h1d) ? 8'ha4 : 
				     (xor_to_sbox[63:56] == 8'h1e) ? 8'h72 : 
				     (xor_to_sbox[63:56] == 8'h1f) ? 8'hc0 : 

				     (xor_to_sbox[63:56] == 8'h20) ? 8'hb7 :	// row 2
				     (xor_to_sbox[63:56] == 8'h21) ? 8'hfd : 
				     (xor_to_sbox[63:56] == 8'h22) ? 8'h93 : 
				     (xor_to_sbox[63:56] == 8'h23) ? 8'h26 : 
				     (xor_to_sbox[63:56] == 8'h24) ? 8'h36 : 
				     (xor_to_sbox[63:56] == 8'h25) ? 8'h3f : 
				     (xor_to_sbox[63:56] == 8'h26) ? 8'hf7 : 
				     (xor_to_sbox[63:56] == 8'h27) ? 8'hcc : 
				     (xor_to_sbox[63:56] == 8'h28) ? 8'h34 : 
				     (xor_to_sbox[63:56] == 8'h29) ? 8'ha5 : 
				     (xor_to_sbox[63:56] == 8'h2a) ? 8'he5 : 
				     (xor_to_sbox[63:56] == 8'h2b) ? 8'hf1 : 
				     (xor_to_sbox[63:56] == 8'h2c) ? 8'h71 : 
				     (xor_to_sbox[63:56] == 8'h2d) ? 8'hd8 : 
				     (xor_to_sbox[63:56] == 8'h2e) ? 8'h31 : 
				     (xor_to_sbox[63:56] == 8'h2f) ? 8'h15 :

				     (xor_to_sbox[63:56] == 8'h30) ? 8'h04 : 	// row 3
				     (xor_to_sbox[63:56] == 8'h31) ? 8'hc7 : 
				     (xor_to_sbox[63:56] == 8'h32) ? 8'h23 : 
				     (xor_to_sbox[63:56] == 8'h33) ? 8'hc3 : 
				     (xor_to_sbox[63:56] == 8'h34) ? 8'h18 : 
				     (xor_to_sbox[63:56] == 8'h35) ? 8'h96 : 
				     (xor_to_sbox[63:56] == 8'h36) ? 8'h05 : 
				     (xor_to_sbox[63:56] == 8'h37) ? 8'h9a : 
				     (xor_to_sbox[63:56] == 8'h38) ? 8'h07 : 
				     (xor_to_sbox[63:56] == 8'h39) ? 8'h12 : 
				     (xor_to_sbox[63:56] == 8'h3a) ? 8'h80 : 
				     (xor_to_sbox[63:56] == 8'h3b) ? 8'he2 : 
				     (xor_to_sbox[63:56] == 8'h3c) ? 8'heb : 
				     (xor_to_sbox[63:56] == 8'h3d) ? 8'h27 : 
				     (xor_to_sbox[63:56] == 8'h3e) ? 8'hb2 : 
				     (xor_to_sbox[63:56] == 8'h3f) ? 8'h75 : 

				     (xor_to_sbox[63:56] == 8'h40) ? 8'h09 :	// row 4
				     (xor_to_sbox[63:56] == 8'h41) ? 8'h83 : 
				     (xor_to_sbox[63:56] == 8'h42) ? 8'h2c : 
				     (xor_to_sbox[63:56] == 8'h43) ? 8'h1a : 
				     (xor_to_sbox[63:56] == 8'h44) ? 8'h1b : 
				     (xor_to_sbox[63:56] == 8'h45) ? 8'h6e : 
				     (xor_to_sbox[63:56] == 8'h46) ? 8'h5a : 
				     (xor_to_sbox[63:56] == 8'h47) ? 8'ha0 : 
				     (xor_to_sbox[63:56] == 8'h48) ? 8'h52 : 
				     (xor_to_sbox[63:56] == 8'h49) ? 8'h3b : 
				     (xor_to_sbox[63:56] == 8'h4a) ? 8'hd6 : 
				     (xor_to_sbox[63:56] == 8'h4b) ? 8'hb3 : 
				     (xor_to_sbox[63:56] == 8'h4c) ? 8'h29 : 
				     (xor_to_sbox[63:56] == 8'h4d) ? 8'he3 : 
				     (xor_to_sbox[63:56] == 8'h4e) ? 8'h2f : 
				     (xor_to_sbox[63:56] == 8'h4f) ? 8'h84 : 

				     (xor_to_sbox[63:56] == 8'h50) ? 8'h53 :	// row 5
				     (xor_to_sbox[63:56] == 8'h51) ? 8'hd1 : 
				     (xor_to_sbox[63:56] == 8'h52) ? 8'h00 : 
				     (xor_to_sbox[63:56] == 8'h53) ? 8'hed : 
				     (xor_to_sbox[63:56] == 8'h54) ? 8'h20 : 
				     (xor_to_sbox[63:56] == 8'h55) ? 8'hfc : 
				     (xor_to_sbox[63:56] == 8'h56) ? 8'hb1 : 
				     (xor_to_sbox[63:56] == 8'h57) ? 8'h5b : 
				     (xor_to_sbox[63:56] == 8'h58) ? 8'h6a : 
				     (xor_to_sbox[63:56] == 8'h59) ? 8'hcb : 
				     (xor_to_sbox[63:56] == 8'h5a) ? 8'hbe : 
				     (xor_to_sbox[63:56] == 8'h5b) ? 8'h39 : 
				     (xor_to_sbox[63:56] == 8'h5c) ? 8'h4a : 
				     (xor_to_sbox[63:56] == 8'h5d) ? 8'h4c : 
				     (xor_to_sbox[63:56] == 8'h5e) ? 8'h58 : 
				     (xor_to_sbox[63:56] == 8'h5f) ? 8'hcf : 

				     (xor_to_sbox[63:56] == 8'h60) ? 8'hd0 :	// row 6
				     (xor_to_sbox[63:56] == 8'h61) ? 8'hef : 
				     (xor_to_sbox[63:56] == 8'h62) ? 8'haa : 
				     (xor_to_sbox[63:56] == 8'h63) ? 8'hfb : 
				     (xor_to_sbox[63:56] == 8'h64) ? 8'h43 : 
				     (xor_to_sbox[63:56] == 8'h65) ? 8'h4d : 
				     (xor_to_sbox[63:56] == 8'h66) ? 8'h33 : 
				     (xor_to_sbox[63:56] == 8'h67) ? 8'h85 : 
				     (xor_to_sbox[63:56] == 8'h68) ? 8'h45 : 
				     (xor_to_sbox[63:56] == 8'h69) ? 8'hf9 : 
				     (xor_to_sbox[63:56] == 8'h6a) ? 8'h02 : 
				     (xor_to_sbox[63:56] == 8'h6b) ? 8'h7f : 
				     (xor_to_sbox[63:56] == 8'h6c) ? 8'h50 : 
				     (xor_to_sbox[63:56] == 8'h6d) ? 8'h3c : 
				     (xor_to_sbox[63:56] == 8'h6e) ? 8'h9f : 
				     (xor_to_sbox[63:56] == 8'h6f) ? 8'ha8 : 

				     (xor_to_sbox[63:56] == 8'h70) ? 8'h51 :	// row 7
				     (xor_to_sbox[63:56] == 8'h71) ? 8'ha3 : 
				     (xor_to_sbox[63:56] == 8'h72) ? 8'h40 : 
				     (xor_to_sbox[63:56] == 8'h73) ? 8'h8f : 
				     (xor_to_sbox[63:56] == 8'h74) ? 8'h92 : 
				     (xor_to_sbox[63:56] == 8'h75) ? 8'h9d : 
				     (xor_to_sbox[63:56] == 8'h76) ? 8'h38 : 
				     (xor_to_sbox[63:56] == 8'h77) ? 8'hf5 : 
				     (xor_to_sbox[63:56] == 8'h78) ? 8'hbc : 
				     (xor_to_sbox[63:56] == 8'h79) ? 8'hb6 : 
				     (xor_to_sbox[63:56] == 8'h7a) ? 8'hda : 
				     (xor_to_sbox[63:56] == 8'h7b) ? 8'h21 : 
				     (xor_to_sbox[63:56] == 8'h7c) ? 8'h10 : 
				     (xor_to_sbox[63:56] == 8'h7d) ? 8'hff : 
				     (xor_to_sbox[63:56] == 8'h7e) ? 8'hf3 : 
				     (xor_to_sbox[63:56] == 8'h7f) ? 8'hd2 : 

				     (xor_to_sbox[63:56] == 8'h80) ? 8'hcd :	// row 8
				     (xor_to_sbox[63:56] == 8'h81) ? 8'h0c : 
				     (xor_to_sbox[63:56] == 8'h82) ? 8'h13 : 
				     (xor_to_sbox[63:56] == 8'h83) ? 8'hec : 
				     (xor_to_sbox[63:56] == 8'h84) ? 8'h5f : 
				     (xor_to_sbox[63:56] == 8'h85) ? 8'h97 : 
				     (xor_to_sbox[63:56] == 8'h86) ? 8'h44 : 
				     (xor_to_sbox[63:56] == 8'h87) ? 8'h17 : 
				     (xor_to_sbox[63:56] == 8'h88) ? 8'hc4 : 
				     (xor_to_sbox[63:56] == 8'h89) ? 8'ha7 : 
				     (xor_to_sbox[63:56] == 8'h8a) ? 8'h7e : 
				     (xor_to_sbox[63:56] == 8'h8b) ? 8'h3d : 
				     (xor_to_sbox[63:56] == 8'h8c) ? 8'h64 : 
				     (xor_to_sbox[63:56] == 8'h8d) ? 8'h5d : 
				     (xor_to_sbox[63:56] == 8'h8e) ? 8'h19 : 
				     (xor_to_sbox[63:56] == 8'h8f) ? 8'h73 : 

				     (xor_to_sbox[63:56] == 8'h90) ? 8'h60 :	// row 9
				     (xor_to_sbox[63:56] == 8'h91) ? 8'h81 : 
				     (xor_to_sbox[63:56] == 8'h92) ? 8'h4f : 
				     (xor_to_sbox[63:56] == 8'h93) ? 8'hdc : 
				     (xor_to_sbox[63:56] == 8'h94) ? 8'h22 : 
				     (xor_to_sbox[63:56] == 8'h95) ? 8'h2a : 
				     (xor_to_sbox[63:56] == 8'h96) ? 8'h90 : 
				     (xor_to_sbox[63:56] == 8'h97) ? 8'h88 : 
				     (xor_to_sbox[63:56] == 8'h98) ? 8'h46 : 
				     (xor_to_sbox[63:56] == 8'h99) ? 8'hee : 
				     (xor_to_sbox[63:56] == 8'h9a) ? 8'hb8 : 
				     (xor_to_sbox[63:56] == 8'h9b) ? 8'h14 : 
				     (xor_to_sbox[63:56] == 8'h9c) ? 8'hde : 
				     (xor_to_sbox[63:56] == 8'h9d) ? 8'h5e : 
				     (xor_to_sbox[63:56] == 8'h9e) ? 8'h0b : 
				     (xor_to_sbox[63:56] == 8'h9f) ? 8'hdb : 

				     (xor_to_sbox[63:56] == 8'ha0) ? 8'he0 :	// row a
				     (xor_to_sbox[63:56] == 8'ha1) ? 8'h32 : 
				     (xor_to_sbox[63:56] == 8'ha2) ? 8'h3a : 
				     (xor_to_sbox[63:56] == 8'ha3) ? 8'h0a : 
				     (xor_to_sbox[63:56] == 8'ha4) ? 8'h49 : 
				     (xor_to_sbox[63:56] == 8'ha5) ? 8'h06 : 
				     (xor_to_sbox[63:56] == 8'ha6) ? 8'h24 : 
				     (xor_to_sbox[63:56] == 8'ha7) ? 8'h5c : 
				     (xor_to_sbox[63:56] == 8'ha8) ? 8'hc2 : 
				     (xor_to_sbox[63:56] == 8'ha9) ? 8'hd3 : 
				     (xor_to_sbox[63:56] == 8'haa) ? 8'hac : 
				     (xor_to_sbox[63:56] == 8'hab) ? 8'h62 : 
				     (xor_to_sbox[63:56] == 8'hac) ? 8'h91 : 
				     (xor_to_sbox[63:56] == 8'had) ? 8'h95 : 
				     (xor_to_sbox[63:56] == 8'hae) ? 8'he4 : 
				     (xor_to_sbox[63:56] == 8'haf) ? 8'h79 : 

				     (xor_to_sbox[63:56] == 8'hb0) ? 8'he7 :	// row b
				     (xor_to_sbox[63:56] == 8'hb1) ? 8'hc8 : 
				     (xor_to_sbox[63:56] == 8'hb2) ? 8'h37 : 
				     (xor_to_sbox[63:56] == 8'hb3) ? 8'h6d : 
				     (xor_to_sbox[63:56] == 8'hb4) ? 8'h8d : 
				     (xor_to_sbox[63:56] == 8'hb5) ? 8'hd5 : 
				     (xor_to_sbox[63:56] == 8'hb6) ? 8'h4e : 
				     (xor_to_sbox[63:56] == 8'hb7) ? 8'ha9 : 
				     (xor_to_sbox[63:56] == 8'hb8) ? 8'h6c : 
				     (xor_to_sbox[63:56] == 8'hb9) ? 8'h56 : 
				     (xor_to_sbox[63:56] == 8'hba) ? 8'hf4 : 
				     (xor_to_sbox[63:56] == 8'hbb) ? 8'hea : 
				     (xor_to_sbox[63:56] == 8'hbc) ? 8'h65 : 
				     (xor_to_sbox[63:56] == 8'hbd) ? 8'h7a : 
				     (xor_to_sbox[63:56] == 8'hbe) ? 8'hae : 
				     (xor_to_sbox[63:56] == 8'hbf) ? 8'h08 : 

				     (xor_to_sbox[63:56] == 8'hc0) ? 8'hba :	// row c
				     (xor_to_sbox[63:56] == 8'hc1) ? 8'h78 : 
				     (xor_to_sbox[63:56] == 8'hc2) ? 8'h25 : 
				     (xor_to_sbox[63:56] == 8'hc3) ? 8'h2e : 
				     (xor_to_sbox[63:56] == 8'hc4) ? 8'h1c : 
				     (xor_to_sbox[63:56] == 8'hc5) ? 8'ha6 : 
				     (xor_to_sbox[63:56] == 8'hc6) ? 8'hb4 : 
				     (xor_to_sbox[63:56] == 8'hc7) ? 8'hc6 : 
				     (xor_to_sbox[63:56] == 8'hc8) ? 8'he8 : 
				     (xor_to_sbox[63:56] == 8'hc9) ? 8'hdd : 
				     (xor_to_sbox[63:56] == 8'hca) ? 8'h74 : 
				     (xor_to_sbox[63:56] == 8'hcb) ? 8'h1f : 
				     (xor_to_sbox[63:56] == 8'hcc) ? 8'h4b : 
				     (xor_to_sbox[63:56] == 8'hcd) ? 8'hbd : 
				     (xor_to_sbox[63:56] == 8'hce) ? 8'h8b : 
				     (xor_to_sbox[63:56] == 8'hcf) ? 8'h8a : 

				     (xor_to_sbox[63:56] == 8'hd0) ? 8'h70 :	// row d
				     (xor_to_sbox[63:56] == 8'hd1) ? 8'h3e : 
				     (xor_to_sbox[63:56] == 8'hd2) ? 8'hb5 : 
				     (xor_to_sbox[63:56] == 8'hd3) ? 8'h66 : 
				     (xor_to_sbox[63:56] == 8'hd4) ? 8'h48 : 
				     (xor_to_sbox[63:56] == 8'hd5) ? 8'h03 : 
				     (xor_to_sbox[63:56] == 8'hd6) ? 8'hf6 : 
				     (xor_to_sbox[63:56] == 8'hd7) ? 8'h0e : 
				     (xor_to_sbox[63:56] == 8'hd8) ? 8'h61 : 
				     (xor_to_sbox[63:56] == 8'hd9) ? 8'h35 : 
				     (xor_to_sbox[63:56] == 8'hda) ? 8'h57 : 
				     (xor_to_sbox[63:56] == 8'hdb) ? 8'hb9 : 
				     (xor_to_sbox[63:56] == 8'hdc) ? 8'h86 : 
				     (xor_to_sbox[63:56] == 8'hdd) ? 8'hc1 : 
				     (xor_to_sbox[63:56] == 8'hde) ? 8'h1d : 
				     (xor_to_sbox[63:56] == 8'hdf) ? 8'h9e : 

				     (xor_to_sbox[63:56] == 8'he0) ? 8'he1 :	// row e
				     (xor_to_sbox[63:56] == 8'he1) ? 8'hf8 : 
				     (xor_to_sbox[63:56] == 8'he2) ? 8'h98 : 
				     (xor_to_sbox[63:56] == 8'he3) ? 8'h11 : 
				     (xor_to_sbox[63:56] == 8'he4) ? 8'h69 : 
				     (xor_to_sbox[63:56] == 8'he5) ? 8'hd9 : 
				     (xor_to_sbox[63:56] == 8'he6) ? 8'h8e : 
				     (xor_to_sbox[63:56] == 8'he7) ? 8'h94 : 
				     (xor_to_sbox[63:56] == 8'he8) ? 8'h9b : 
				     (xor_to_sbox[63:56] == 8'he9) ? 8'h1e : 
				     (xor_to_sbox[63:56] == 8'hea) ? 8'h87 : 
				     (xor_to_sbox[63:56] == 8'heb) ? 8'he9 : 
				     (xor_to_sbox[63:56] == 8'hec) ? 8'hce : 
				     (xor_to_sbox[63:56] == 8'hed) ? 8'h55 : 
				     (xor_to_sbox[63:56] == 8'hee) ? 8'h28 : 
				     (xor_to_sbox[63:56] == 8'hef) ? 8'hdf : 

				     (xor_to_sbox[63:56] == 8'hf0) ? 8'h8c :	// row f
				     (xor_to_sbox[63:56] == 8'hf1) ? 8'ha1 : 
				     (xor_to_sbox[63:56] == 8'hf2) ? 8'h89 : 
				     (xor_to_sbox[63:56] == 8'hf3) ? 8'h0d : 
				     (xor_to_sbox[63:56] == 8'hf4) ? 8'hbf : 
				     (xor_to_sbox[63:56] == 8'hf5) ? 8'he6 : 
				     (xor_to_sbox[63:56] == 8'hf6) ? 8'h42 : 
				     (xor_to_sbox[63:56] == 8'hf7) ? 8'h68 : 
				     (xor_to_sbox[63:56] == 8'hf8) ? 8'h41 : 
				     (xor_to_sbox[63:56] == 8'hf9) ? 8'h99 : 
				     (xor_to_sbox[63:56] == 8'hfa) ? 8'h2d : 
				     (xor_to_sbox[63:56] == 8'hfb) ? 8'h0f : 
				     (xor_to_sbox[63:56] == 8'hfc) ? 8'hb0 : 
				     (xor_to_sbox[63:56] == 8'hfd) ? 8'h54 : 
				     (xor_to_sbox[63:56] == 8'hfe) ? 8'hbb : 
				     (xor_to_sbox[63:56] == 8'hff) ? 8'h16 : 8'hxx;
					  
///////////////////////////////////
// HALFWAY
///////////////////////////////////

assign sbox_to_rows[71:64] = (xor_to_sbox[71:64] == 8'h00) ? 8'h63 :	// row 0
				     (xor_to_sbox[71:64] == 8'h01) ? 8'h7c : 
				     (xor_to_sbox[71:64] == 8'h02) ? 8'h77 : 
				     (xor_to_sbox[71:64] == 8'h03) ? 8'h7b : 
				     (xor_to_sbox[71:64] == 8'h04) ? 8'hf2 : 
				     (xor_to_sbox[71:64] == 8'h05) ? 8'h6b : 
				     (xor_to_sbox[71:64] == 8'h06) ? 8'h6f : 
				     (xor_to_sbox[71:64] == 8'h07) ? 8'hc5 : 
				     (xor_to_sbox[71:64] == 8'h08) ? 8'h30 : 
				     (xor_to_sbox[71:64] == 8'h09) ? 8'h01 : 
				     (xor_to_sbox[71:64] == 8'h0a) ? 8'h67 : 
				     (xor_to_sbox[71:64] == 8'h0b) ? 8'h2b : 
				     (xor_to_sbox[71:64] == 8'h0c) ? 8'hfe : 
				     (xor_to_sbox[71:64] == 8'h0d) ? 8'hd7 : 
				     (xor_to_sbox[71:64] == 8'h0e) ? 8'hab : 
				     (xor_to_sbox[71:64] == 8'h0f) ? 8'h76 : 

				     (xor_to_sbox[71:64] == 8'h10) ? 8'hca :	// row 1
				     (xor_to_sbox[71:64] == 8'h11) ? 8'h82 : 
				     (xor_to_sbox[71:64] == 8'h12) ? 8'hc9 : 
				     (xor_to_sbox[71:64] == 8'h13) ? 8'h7d : 
				     (xor_to_sbox[71:64] == 8'h14) ? 8'hfa : 
				     (xor_to_sbox[71:64] == 8'h15) ? 8'h59 : 
				     (xor_to_sbox[71:64] == 8'h16) ? 8'h47 : 
				     (xor_to_sbox[71:64] == 8'h17) ? 8'hf0 : 
				     (xor_to_sbox[71:64] == 8'h18) ? 8'had : 
				     (xor_to_sbox[71:64] == 8'h19) ? 8'hd4 : 
				     (xor_to_sbox[71:64] == 8'h1a) ? 8'ha2 : 
				     (xor_to_sbox[71:64] == 8'h1b) ? 8'haf : 
				     (xor_to_sbox[71:64] == 8'h1c) ? 8'h9c : 
				     (xor_to_sbox[71:64] == 8'h1d) ? 8'ha4 : 
				     (xor_to_sbox[71:64] == 8'h1e) ? 8'h72 : 
				     (xor_to_sbox[71:64] == 8'h1f) ? 8'hc0 : 

				     (xor_to_sbox[71:64] == 8'h20) ? 8'hb7 :	// row 2
				     (xor_to_sbox[71:64] == 8'h21) ? 8'hfd : 
				     (xor_to_sbox[71:64] == 8'h22) ? 8'h93 : 
				     (xor_to_sbox[71:64] == 8'h23) ? 8'h26 : 
				     (xor_to_sbox[71:64] == 8'h24) ? 8'h36 : 
				     (xor_to_sbox[71:64] == 8'h25) ? 8'h3f : 
				     (xor_to_sbox[71:64] == 8'h26) ? 8'hf7 : 
				     (xor_to_sbox[71:64] == 8'h27) ? 8'hcc : 
				     (xor_to_sbox[71:64] == 8'h28) ? 8'h34 : 
				     (xor_to_sbox[71:64] == 8'h29) ? 8'ha5 : 
				     (xor_to_sbox[71:64] == 8'h2a) ? 8'he5 : 
				     (xor_to_sbox[71:64] == 8'h2b) ? 8'hf1 : 
				     (xor_to_sbox[71:64] == 8'h2c) ? 8'h71 : 
				     (xor_to_sbox[71:64] == 8'h2d) ? 8'hd8 : 
				     (xor_to_sbox[71:64] == 8'h2e) ? 8'h31 : 
				     (xor_to_sbox[71:64] == 8'h2f) ? 8'h15 :

				     (xor_to_sbox[71:64] == 8'h30) ? 8'h04 : 	// row 3
				     (xor_to_sbox[71:64] == 8'h31) ? 8'hc7 : 
				     (xor_to_sbox[71:64] == 8'h32) ? 8'h23 : 
				     (xor_to_sbox[71:64] == 8'h33) ? 8'hc3 : 
				     (xor_to_sbox[71:64] == 8'h34) ? 8'h18 : 
				     (xor_to_sbox[71:64] == 8'h35) ? 8'h96 : 
				     (xor_to_sbox[71:64] == 8'h36) ? 8'h05 : 
				     (xor_to_sbox[71:64] == 8'h37) ? 8'h9a : 
				     (xor_to_sbox[71:64] == 8'h38) ? 8'h07 : 
				     (xor_to_sbox[71:64] == 8'h39) ? 8'h12 : 
				     (xor_to_sbox[71:64] == 8'h3a) ? 8'h80 : 
				     (xor_to_sbox[71:64] == 8'h3b) ? 8'he2 : 
				     (xor_to_sbox[71:64] == 8'h3c) ? 8'heb : 
				     (xor_to_sbox[71:64] == 8'h3d) ? 8'h27 : 
				     (xor_to_sbox[71:64] == 8'h3e) ? 8'hb2 : 
				     (xor_to_sbox[71:64] == 8'h3f) ? 8'h75 : 

				     (xor_to_sbox[71:64] == 8'h40) ? 8'h09 :	// row 4
				     (xor_to_sbox[71:64] == 8'h41) ? 8'h83 : 
				     (xor_to_sbox[71:64] == 8'h42) ? 8'h2c : 
				     (xor_to_sbox[71:64] == 8'h43) ? 8'h1a : 
				     (xor_to_sbox[71:64] == 8'h44) ? 8'h1b : 
				     (xor_to_sbox[71:64] == 8'h45) ? 8'h6e : 
				     (xor_to_sbox[71:64] == 8'h46) ? 8'h5a : 
				     (xor_to_sbox[71:64] == 8'h47) ? 8'ha0 : 
				     (xor_to_sbox[71:64] == 8'h48) ? 8'h52 : 
				     (xor_to_sbox[71:64] == 8'h49) ? 8'h3b : 
				     (xor_to_sbox[71:64] == 8'h4a) ? 8'hd6 : 
				     (xor_to_sbox[71:64] == 8'h4b) ? 8'hb3 : 
				     (xor_to_sbox[71:64] == 8'h4c) ? 8'h29 : 
				     (xor_to_sbox[71:64] == 8'h4d) ? 8'he3 : 
				     (xor_to_sbox[71:64] == 8'h4e) ? 8'h2f : 
				     (xor_to_sbox[71:64] == 8'h4f) ? 8'h84 : 

				     (xor_to_sbox[71:64] == 8'h50) ? 8'h53 :	// row 5
				     (xor_to_sbox[71:64] == 8'h51) ? 8'hd1 : 
				     (xor_to_sbox[71:64] == 8'h52) ? 8'h00 : 
				     (xor_to_sbox[71:64] == 8'h53) ? 8'hed : 
				     (xor_to_sbox[71:64] == 8'h54) ? 8'h20 : 
				     (xor_to_sbox[71:64] == 8'h55) ? 8'hfc : 
				     (xor_to_sbox[71:64] == 8'h56) ? 8'hb1 : 
				     (xor_to_sbox[71:64] == 8'h57) ? 8'h5b : 
				     (xor_to_sbox[71:64] == 8'h58) ? 8'h6a : 
				     (xor_to_sbox[71:64] == 8'h59) ? 8'hcb : 
				     (xor_to_sbox[71:64] == 8'h5a) ? 8'hbe : 
				     (xor_to_sbox[71:64] == 8'h5b) ? 8'h39 : 
				     (xor_to_sbox[71:64] == 8'h5c) ? 8'h4a : 
				     (xor_to_sbox[71:64] == 8'h5d) ? 8'h4c : 
				     (xor_to_sbox[71:64] == 8'h5e) ? 8'h58 : 
				     (xor_to_sbox[71:64] == 8'h5f) ? 8'hcf : 

				     (xor_to_sbox[71:64] == 8'h60) ? 8'hd0 :	// row 6
				     (xor_to_sbox[71:64] == 8'h61) ? 8'hef : 
				     (xor_to_sbox[71:64] == 8'h62) ? 8'haa : 
				     (xor_to_sbox[71:64] == 8'h63) ? 8'hfb : 
				     (xor_to_sbox[71:64] == 8'h64) ? 8'h43 : 
				     (xor_to_sbox[71:64] == 8'h65) ? 8'h4d : 
				     (xor_to_sbox[71:64] == 8'h66) ? 8'h33 : 
				     (xor_to_sbox[71:64] == 8'h67) ? 8'h85 : 
				     (xor_to_sbox[71:64] == 8'h68) ? 8'h45 : 
				     (xor_to_sbox[71:64] == 8'h69) ? 8'hf9 : 
				     (xor_to_sbox[71:64] == 8'h6a) ? 8'h02 : 
				     (xor_to_sbox[71:64] == 8'h6b) ? 8'h7f : 
				     (xor_to_sbox[71:64] == 8'h6c) ? 8'h50 : 
				     (xor_to_sbox[71:64] == 8'h6d) ? 8'h3c : 
				     (xor_to_sbox[71:64] == 8'h6e) ? 8'h9f : 
				     (xor_to_sbox[71:64] == 8'h6f) ? 8'ha8 : 

				     (xor_to_sbox[71:64] == 8'h70) ? 8'h51 :	// row 7
				     (xor_to_sbox[71:64] == 8'h71) ? 8'ha3 : 
				     (xor_to_sbox[71:64] == 8'h72) ? 8'h40 : 
				     (xor_to_sbox[71:64] == 8'h73) ? 8'h8f : 
				     (xor_to_sbox[71:64] == 8'h74) ? 8'h92 : 
				     (xor_to_sbox[71:64] == 8'h75) ? 8'h9d : 
				     (xor_to_sbox[71:64] == 8'h76) ? 8'h38 : 
				     (xor_to_sbox[71:64] == 8'h77) ? 8'hf5 : 
				     (xor_to_sbox[71:64] == 8'h78) ? 8'hbc : 
				     (xor_to_sbox[71:64] == 8'h79) ? 8'hb6 : 
				     (xor_to_sbox[71:64] == 8'h7a) ? 8'hda : 
				     (xor_to_sbox[71:64] == 8'h7b) ? 8'h21 : 
				     (xor_to_sbox[71:64] == 8'h7c) ? 8'h10 : 
				     (xor_to_sbox[71:64] == 8'h7d) ? 8'hff : 
				     (xor_to_sbox[71:64] == 8'h7e) ? 8'hf3 : 
				     (xor_to_sbox[71:64] == 8'h7f) ? 8'hd2 : 

				     (xor_to_sbox[71:64] == 8'h80) ? 8'hcd :	// row 8
				     (xor_to_sbox[71:64] == 8'h81) ? 8'h0c : 
				     (xor_to_sbox[71:64] == 8'h82) ? 8'h13 : 
				     (xor_to_sbox[71:64] == 8'h83) ? 8'hec : 
				     (xor_to_sbox[71:64] == 8'h84) ? 8'h5f : 
				     (xor_to_sbox[71:64] == 8'h85) ? 8'h97 : 
				     (xor_to_sbox[71:64] == 8'h86) ? 8'h44 : 
				     (xor_to_sbox[71:64] == 8'h87) ? 8'h17 : 
				     (xor_to_sbox[71:64] == 8'h88) ? 8'hc4 : 
				     (xor_to_sbox[71:64] == 8'h89) ? 8'ha7 : 
				     (xor_to_sbox[71:64] == 8'h8a) ? 8'h7e : 
				     (xor_to_sbox[71:64] == 8'h8b) ? 8'h3d : 
				     (xor_to_sbox[71:64] == 8'h8c) ? 8'h64 : 
				     (xor_to_sbox[71:64] == 8'h8d) ? 8'h5d : 
				     (xor_to_sbox[71:64] == 8'h8e) ? 8'h19 : 
				     (xor_to_sbox[71:64] == 8'h8f) ? 8'h73 : 

				     (xor_to_sbox[71:64] == 8'h90) ? 8'h60 :	// row 9
				     (xor_to_sbox[71:64] == 8'h91) ? 8'h81 : 
				     (xor_to_sbox[71:64] == 8'h92) ? 8'h4f : 
				     (xor_to_sbox[71:64] == 8'h93) ? 8'hdc : 
				     (xor_to_sbox[71:64] == 8'h94) ? 8'h22 : 
				     (xor_to_sbox[71:64] == 8'h95) ? 8'h2a : 
				     (xor_to_sbox[71:64] == 8'h96) ? 8'h90 : 
				     (xor_to_sbox[71:64] == 8'h97) ? 8'h88 : 
				     (xor_to_sbox[71:64] == 8'h98) ? 8'h46 : 
				     (xor_to_sbox[71:64] == 8'h99) ? 8'hee : 
				     (xor_to_sbox[71:64] == 8'h9a) ? 8'hb8 : 
				     (xor_to_sbox[71:64] == 8'h9b) ? 8'h14 : 
				     (xor_to_sbox[71:64] == 8'h9c) ? 8'hde : 
				     (xor_to_sbox[71:64] == 8'h9d) ? 8'h5e : 
				     (xor_to_sbox[71:64] == 8'h9e) ? 8'h0b : 
				     (xor_to_sbox[71:64] == 8'h9f) ? 8'hdb : 

				     (xor_to_sbox[71:64] == 8'ha0) ? 8'he0 :	// row a
				     (xor_to_sbox[71:64] == 8'ha1) ? 8'h32 : 
				     (xor_to_sbox[71:64] == 8'ha2) ? 8'h3a : 
				     (xor_to_sbox[71:64] == 8'ha3) ? 8'h0a : 
				     (xor_to_sbox[71:64] == 8'ha4) ? 8'h49 : 
				     (xor_to_sbox[71:64] == 8'ha5) ? 8'h06 : 
				     (xor_to_sbox[71:64] == 8'ha6) ? 8'h24 : 
				     (xor_to_sbox[71:64] == 8'ha7) ? 8'h5c : 
				     (xor_to_sbox[71:64] == 8'ha8) ? 8'hc2 : 
				     (xor_to_sbox[71:64] == 8'ha9) ? 8'hd3 : 
				     (xor_to_sbox[71:64] == 8'haa) ? 8'hac : 
				     (xor_to_sbox[71:64] == 8'hab) ? 8'h62 : 
				     (xor_to_sbox[71:64] == 8'hac) ? 8'h91 : 
				     (xor_to_sbox[71:64] == 8'had) ? 8'h95 : 
				     (xor_to_sbox[71:64] == 8'hae) ? 8'he4 : 
				     (xor_to_sbox[71:64] == 8'haf) ? 8'h79 : 

				     (xor_to_sbox[71:64] == 8'hb0) ? 8'he7 :	// row b
				     (xor_to_sbox[71:64] == 8'hb1) ? 8'hc8 : 
				     (xor_to_sbox[71:64] == 8'hb2) ? 8'h37 : 
				     (xor_to_sbox[71:64] == 8'hb3) ? 8'h6d : 
				     (xor_to_sbox[71:64] == 8'hb4) ? 8'h8d : 
				     (xor_to_sbox[71:64] == 8'hb5) ? 8'hd5 : 
				     (xor_to_sbox[71:64] == 8'hb6) ? 8'h4e : 
				     (xor_to_sbox[71:64] == 8'hb7) ? 8'ha9 : 
				     (xor_to_sbox[71:64] == 8'hb8) ? 8'h6c : 
				     (xor_to_sbox[71:64] == 8'hb9) ? 8'h56 : 
				     (xor_to_sbox[71:64] == 8'hba) ? 8'hf4 : 
				     (xor_to_sbox[71:64] == 8'hbb) ? 8'hea : 
				     (xor_to_sbox[71:64] == 8'hbc) ? 8'h65 : 
				     (xor_to_sbox[71:64] == 8'hbd) ? 8'h7a : 
				     (xor_to_sbox[71:64] == 8'hbe) ? 8'hae : 
				     (xor_to_sbox[71:64] == 8'hbf) ? 8'h08 : 

				     (xor_to_sbox[71:64] == 8'hc0) ? 8'hba :	// row c
				     (xor_to_sbox[71:64] == 8'hc1) ? 8'h78 : 
				     (xor_to_sbox[71:64] == 8'hc2) ? 8'h25 : 
				     (xor_to_sbox[71:64] == 8'hc3) ? 8'h2e : 
				     (xor_to_sbox[71:64] == 8'hc4) ? 8'h1c : 
				     (xor_to_sbox[71:64] == 8'hc5) ? 8'ha6 : 
				     (xor_to_sbox[71:64] == 8'hc6) ? 8'hb4 : 
				     (xor_to_sbox[71:64] == 8'hc7) ? 8'hc6 : 
				     (xor_to_sbox[71:64] == 8'hc8) ? 8'he8 : 
				     (xor_to_sbox[71:64] == 8'hc9) ? 8'hdd : 
				     (xor_to_sbox[71:64] == 8'hca) ? 8'h74 : 
				     (xor_to_sbox[71:64] == 8'hcb) ? 8'h1f : 
				     (xor_to_sbox[71:64] == 8'hcc) ? 8'h4b : 
				     (xor_to_sbox[71:64] == 8'hcd) ? 8'hbd : 
				     (xor_to_sbox[71:64] == 8'hce) ? 8'h8b : 
				     (xor_to_sbox[71:64] == 8'hcf) ? 8'h8a : 

				     (xor_to_sbox[71:64] == 8'hd0) ? 8'h70 :	// row d
				     (xor_to_sbox[71:64] == 8'hd1) ? 8'h3e : 
				     (xor_to_sbox[71:64] == 8'hd2) ? 8'hb5 : 
				     (xor_to_sbox[71:64] == 8'hd3) ? 8'h66 : 
				     (xor_to_sbox[71:64] == 8'hd4) ? 8'h48 : 
				     (xor_to_sbox[71:64] == 8'hd5) ? 8'h03 : 
				     (xor_to_sbox[71:64] == 8'hd6) ? 8'hf6 : 
				     (xor_to_sbox[71:64] == 8'hd7) ? 8'h0e : 
				     (xor_to_sbox[71:64] == 8'hd8) ? 8'h61 : 
				     (xor_to_sbox[71:64] == 8'hd9) ? 8'h35 : 
				     (xor_to_sbox[71:64] == 8'hda) ? 8'h57 : 
				     (xor_to_sbox[71:64] == 8'hdb) ? 8'hb9 : 
				     (xor_to_sbox[71:64] == 8'hdc) ? 8'h86 : 
				     (xor_to_sbox[71:64] == 8'hdd) ? 8'hc1 : 
				     (xor_to_sbox[71:64] == 8'hde) ? 8'h1d : 
				     (xor_to_sbox[71:64] == 8'hdf) ? 8'h9e : 

				     (xor_to_sbox[71:64] == 8'he0) ? 8'he1 :	// row e
				     (xor_to_sbox[71:64] == 8'he1) ? 8'hf8 : 
				     (xor_to_sbox[71:64] == 8'he2) ? 8'h98 : 
				     (xor_to_sbox[71:64] == 8'he3) ? 8'h11 : 
				     (xor_to_sbox[71:64] == 8'he4) ? 8'h69 : 
				     (xor_to_sbox[71:64] == 8'he5) ? 8'hd9 : 
				     (xor_to_sbox[71:64] == 8'he6) ? 8'h8e : 
				     (xor_to_sbox[71:64] == 8'he7) ? 8'h94 : 
				     (xor_to_sbox[71:64] == 8'he8) ? 8'h9b : 
				     (xor_to_sbox[71:64] == 8'he9) ? 8'h1e : 
				     (xor_to_sbox[71:64] == 8'hea) ? 8'h87 : 
				     (xor_to_sbox[71:64] == 8'heb) ? 8'he9 : 
				     (xor_to_sbox[71:64] == 8'hec) ? 8'hce : 
				     (xor_to_sbox[71:64] == 8'hed) ? 8'h55 : 
				     (xor_to_sbox[71:64] == 8'hee) ? 8'h28 : 
				     (xor_to_sbox[71:64] == 8'hef) ? 8'hdf : 

				     (xor_to_sbox[71:64] == 8'hf0) ? 8'h8c :	// row f
				     (xor_to_sbox[71:64] == 8'hf1) ? 8'ha1 : 
				     (xor_to_sbox[71:64] == 8'hf2) ? 8'h89 : 
				     (xor_to_sbox[71:64] == 8'hf3) ? 8'h0d : 
				     (xor_to_sbox[71:64] == 8'hf4) ? 8'hbf : 
				     (xor_to_sbox[71:64] == 8'hf5) ? 8'he6 : 
				     (xor_to_sbox[71:64] == 8'hf6) ? 8'h42 : 
				     (xor_to_sbox[71:64] == 8'hf7) ? 8'h68 : 
				     (xor_to_sbox[71:64] == 8'hf8) ? 8'h41 : 
				     (xor_to_sbox[71:64] == 8'hf9) ? 8'h99 : 
				     (xor_to_sbox[71:64] == 8'hfa) ? 8'h2d : 
				     (xor_to_sbox[71:64] == 8'hfb) ? 8'h0f : 
				     (xor_to_sbox[71:64] == 8'hfc) ? 8'hb0 : 
				     (xor_to_sbox[71:64] == 8'hfd) ? 8'h54 : 
				     (xor_to_sbox[71:64] == 8'hfe) ? 8'hbb : 
				     (xor_to_sbox[71:64] == 8'hff) ? 8'h16 : 8'hxx;




assign sbox_to_rows[79:72] = (xor_to_sbox[79:72] == 8'h00) ? 8'h63 :	// row 0
				     (xor_to_sbox[79:72] == 8'h01) ? 8'h7c : 
				     (xor_to_sbox[79:72] == 8'h02) ? 8'h77 : 
				     (xor_to_sbox[79:72] == 8'h03) ? 8'h7b : 
				     (xor_to_sbox[79:72] == 8'h04) ? 8'hf2 : 
				     (xor_to_sbox[79:72] == 8'h05) ? 8'h6b : 
				     (xor_to_sbox[79:72] == 8'h06) ? 8'h6f : 
				     (xor_to_sbox[79:72] == 8'h07) ? 8'hc5 : 
				     (xor_to_sbox[79:72] == 8'h08) ? 8'h30 : 
				     (xor_to_sbox[79:72] == 8'h09) ? 8'h01 : 
				     (xor_to_sbox[79:72] == 8'h0a) ? 8'h67 : 
				     (xor_to_sbox[79:72] == 8'h0b) ? 8'h2b : 
				     (xor_to_sbox[79:72] == 8'h0c) ? 8'hfe : 
				     (xor_to_sbox[79:72] == 8'h0d) ? 8'hd7 : 
				     (xor_to_sbox[79:72] == 8'h0e) ? 8'hab : 
				     (xor_to_sbox[79:72] == 8'h0f) ? 8'h76 : 

				     (xor_to_sbox[79:72] == 8'h10) ? 8'hca :	// row 1
				     (xor_to_sbox[79:72] == 8'h11) ? 8'h82 : 
				     (xor_to_sbox[79:72] == 8'h12) ? 8'hc9 : 
				     (xor_to_sbox[79:72] == 8'h13) ? 8'h7d : 
				     (xor_to_sbox[79:72] == 8'h14) ? 8'hfa : 
				     (xor_to_sbox[79:72] == 8'h15) ? 8'h59 : 
				     (xor_to_sbox[79:72] == 8'h16) ? 8'h47 : 
				     (xor_to_sbox[79:72] == 8'h17) ? 8'hf0 : 
				     (xor_to_sbox[79:72] == 8'h18) ? 8'had : 
				     (xor_to_sbox[79:72] == 8'h19) ? 8'hd4 : 
				     (xor_to_sbox[79:72] == 8'h1a) ? 8'ha2 : 
				     (xor_to_sbox[79:72] == 8'h1b) ? 8'haf : 
				     (xor_to_sbox[79:72] == 8'h1c) ? 8'h9c : 
				     (xor_to_sbox[79:72] == 8'h1d) ? 8'ha4 : 
				     (xor_to_sbox[79:72] == 8'h1e) ? 8'h72 : 
				     (xor_to_sbox[79:72] == 8'h1f) ? 8'hc0 : 

				     (xor_to_sbox[79:72] == 8'h20) ? 8'hb7 :	// row 2
				     (xor_to_sbox[79:72] == 8'h21) ? 8'hfd : 
				     (xor_to_sbox[79:72] == 8'h22) ? 8'h93 : 
				     (xor_to_sbox[79:72] == 8'h23) ? 8'h26 : 
				     (xor_to_sbox[79:72] == 8'h24) ? 8'h36 : 
				     (xor_to_sbox[79:72] == 8'h25) ? 8'h3f : 
				     (xor_to_sbox[79:72] == 8'h26) ? 8'hf7 : 
				     (xor_to_sbox[79:72] == 8'h27) ? 8'hcc : 
				     (xor_to_sbox[79:72] == 8'h28) ? 8'h34 : 
				     (xor_to_sbox[79:72] == 8'h29) ? 8'ha5 : 
				     (xor_to_sbox[79:72] == 8'h2a) ? 8'he5 : 
				     (xor_to_sbox[79:72] == 8'h2b) ? 8'hf1 : 
				     (xor_to_sbox[79:72] == 8'h2c) ? 8'h71 : 
				     (xor_to_sbox[79:72] == 8'h2d) ? 8'hd8 : 
				     (xor_to_sbox[79:72] == 8'h2e) ? 8'h31 : 
				     (xor_to_sbox[79:72] == 8'h2f) ? 8'h15 :

				     (xor_to_sbox[79:72] == 8'h30) ? 8'h04 : 	// row 3
				     (xor_to_sbox[79:72] == 8'h31) ? 8'hc7 : 
				     (xor_to_sbox[79:72] == 8'h32) ? 8'h23 : 
				     (xor_to_sbox[79:72] == 8'h33) ? 8'hc3 : 
				     (xor_to_sbox[79:72] == 8'h34) ? 8'h18 : 
				     (xor_to_sbox[79:72] == 8'h35) ? 8'h96 : 
				     (xor_to_sbox[79:72] == 8'h36) ? 8'h05 : 
				     (xor_to_sbox[79:72] == 8'h37) ? 8'h9a : 
				     (xor_to_sbox[79:72] == 8'h38) ? 8'h07 : 
				     (xor_to_sbox[79:72] == 8'h39) ? 8'h12 : 
				     (xor_to_sbox[79:72] == 8'h3a) ? 8'h80 : 
				     (xor_to_sbox[79:72] == 8'h3b) ? 8'he2 : 
				     (xor_to_sbox[79:72] == 8'h3c) ? 8'heb : 
				     (xor_to_sbox[79:72] == 8'h3d) ? 8'h27 : 
				     (xor_to_sbox[79:72] == 8'h3e) ? 8'hb2 : 
				     (xor_to_sbox[79:72] == 8'h3f) ? 8'h75 : 

				     (xor_to_sbox[79:72] == 8'h40) ? 8'h09 :	// row 4
				     (xor_to_sbox[79:72] == 8'h41) ? 8'h83 : 
				     (xor_to_sbox[79:72] == 8'h42) ? 8'h2c : 
				     (xor_to_sbox[79:72] == 8'h43) ? 8'h1a : 
				     (xor_to_sbox[79:72] == 8'h44) ? 8'h1b : 
				     (xor_to_sbox[79:72] == 8'h45) ? 8'h6e : 
				     (xor_to_sbox[79:72] == 8'h46) ? 8'h5a : 
				     (xor_to_sbox[79:72] == 8'h47) ? 8'ha0 : 
				     (xor_to_sbox[79:72] == 8'h48) ? 8'h52 : 
				     (xor_to_sbox[79:72] == 8'h49) ? 8'h3b : 
				     (xor_to_sbox[79:72] == 8'h4a) ? 8'hd6 : 
				     (xor_to_sbox[79:72] == 8'h4b) ? 8'hb3 : 
				     (xor_to_sbox[79:72] == 8'h4c) ? 8'h29 : 
				     (xor_to_sbox[79:72] == 8'h4d) ? 8'he3 : 
				     (xor_to_sbox[79:72] == 8'h4e) ? 8'h2f : 
				     (xor_to_sbox[79:72] == 8'h4f) ? 8'h84 : 

				     (xor_to_sbox[79:72] == 8'h50) ? 8'h53 :	// row 5
				     (xor_to_sbox[79:72] == 8'h51) ? 8'hd1 : 
				     (xor_to_sbox[79:72] == 8'h52) ? 8'h00 : 
				     (xor_to_sbox[79:72] == 8'h53) ? 8'hed : 
				     (xor_to_sbox[79:72] == 8'h54) ? 8'h20 : 
				     (xor_to_sbox[79:72] == 8'h55) ? 8'hfc : 
				     (xor_to_sbox[79:72] == 8'h56) ? 8'hb1 : 
				     (xor_to_sbox[79:72] == 8'h57) ? 8'h5b : 
				     (xor_to_sbox[79:72] == 8'h58) ? 8'h6a : 
				     (xor_to_sbox[79:72] == 8'h59) ? 8'hcb : 
				     (xor_to_sbox[79:72] == 8'h5a) ? 8'hbe : 
				     (xor_to_sbox[79:72] == 8'h5b) ? 8'h39 : 
				     (xor_to_sbox[79:72] == 8'h5c) ? 8'h4a : 
				     (xor_to_sbox[79:72] == 8'h5d) ? 8'h4c : 
				     (xor_to_sbox[79:72] == 8'h5e) ? 8'h58 : 
				     (xor_to_sbox[79:72] == 8'h5f) ? 8'hcf : 

				     (xor_to_sbox[79:72] == 8'h60) ? 8'hd0 :	// row 6
				     (xor_to_sbox[79:72] == 8'h61) ? 8'hef : 
				     (xor_to_sbox[79:72] == 8'h62) ? 8'haa : 
				     (xor_to_sbox[79:72] == 8'h63) ? 8'hfb : 
				     (xor_to_sbox[79:72] == 8'h64) ? 8'h43 : 
				     (xor_to_sbox[79:72] == 8'h65) ? 8'h4d : 
				     (xor_to_sbox[79:72] == 8'h66) ? 8'h33 : 
				     (xor_to_sbox[79:72] == 8'h67) ? 8'h85 : 
				     (xor_to_sbox[79:72] == 8'h68) ? 8'h45 : 
				     (xor_to_sbox[79:72] == 8'h69) ? 8'hf9 : 
				     (xor_to_sbox[79:72] == 8'h6a) ? 8'h02 : 
				     (xor_to_sbox[79:72] == 8'h6b) ? 8'h7f : 
				     (xor_to_sbox[79:72] == 8'h6c) ? 8'h50 : 
				     (xor_to_sbox[79:72] == 8'h6d) ? 8'h3c : 
				     (xor_to_sbox[79:72] == 8'h6e) ? 8'h9f : 
				     (xor_to_sbox[79:72] == 8'h6f) ? 8'ha8 : 

				     (xor_to_sbox[79:72] == 8'h70) ? 8'h51 :	// row 7
				     (xor_to_sbox[79:72] == 8'h71) ? 8'ha3 : 
				     (xor_to_sbox[79:72] == 8'h72) ? 8'h40 : 
				     (xor_to_sbox[79:72] == 8'h73) ? 8'h8f : 
				     (xor_to_sbox[79:72] == 8'h74) ? 8'h92 : 
				     (xor_to_sbox[79:72] == 8'h75) ? 8'h9d : 
				     (xor_to_sbox[79:72] == 8'h76) ? 8'h38 : 
				     (xor_to_sbox[79:72] == 8'h77) ? 8'hf5 : 
				     (xor_to_sbox[79:72] == 8'h78) ? 8'hbc : 
				     (xor_to_sbox[79:72] == 8'h79) ? 8'hb6 : 
				     (xor_to_sbox[79:72] == 8'h7a) ? 8'hda : 
				     (xor_to_sbox[79:72] == 8'h7b) ? 8'h21 : 
				     (xor_to_sbox[79:72] == 8'h7c) ? 8'h10 : 
				     (xor_to_sbox[79:72] == 8'h7d) ? 8'hff : 
				     (xor_to_sbox[79:72] == 8'h7e) ? 8'hf3 : 
				     (xor_to_sbox[79:72] == 8'h7f) ? 8'hd2 : 

				     (xor_to_sbox[79:72] == 8'h80) ? 8'hcd :	// row 8
				     (xor_to_sbox[79:72] == 8'h81) ? 8'h0c : 
				     (xor_to_sbox[79:72] == 8'h82) ? 8'h13 : 
				     (xor_to_sbox[79:72] == 8'h83) ? 8'hec : 
				     (xor_to_sbox[79:72] == 8'h84) ? 8'h5f : 
				     (xor_to_sbox[79:72] == 8'h85) ? 8'h97 : 
				     (xor_to_sbox[79:72] == 8'h86) ? 8'h44 : 
				     (xor_to_sbox[79:72] == 8'h87) ? 8'h17 : 
				     (xor_to_sbox[79:72] == 8'h88) ? 8'hc4 : 
				     (xor_to_sbox[79:72] == 8'h89) ? 8'ha7 : 
				     (xor_to_sbox[79:72] == 8'h8a) ? 8'h7e : 
				     (xor_to_sbox[79:72] == 8'h8b) ? 8'h3d : 
				     (xor_to_sbox[79:72] == 8'h8c) ? 8'h64 : 
				     (xor_to_sbox[79:72] == 8'h8d) ? 8'h5d : 
				     (xor_to_sbox[79:72] == 8'h8e) ? 8'h19 : 
				     (xor_to_sbox[79:72] == 8'h8f) ? 8'h73 : 

				     (xor_to_sbox[79:72] == 8'h90) ? 8'h60 :	// row 9
				     (xor_to_sbox[79:72] == 8'h91) ? 8'h81 : 
				     (xor_to_sbox[79:72] == 8'h92) ? 8'h4f : 
				     (xor_to_sbox[79:72] == 8'h93) ? 8'hdc : 
				     (xor_to_sbox[79:72] == 8'h94) ? 8'h22 : 
				     (xor_to_sbox[79:72] == 8'h95) ? 8'h2a : 
				     (xor_to_sbox[79:72] == 8'h96) ? 8'h90 : 
				     (xor_to_sbox[79:72] == 8'h97) ? 8'h88 : 
				     (xor_to_sbox[79:72] == 8'h98) ? 8'h46 : 
				     (xor_to_sbox[79:72] == 8'h99) ? 8'hee : 
				     (xor_to_sbox[79:72] == 8'h9a) ? 8'hb8 : 
				     (xor_to_sbox[79:72] == 8'h9b) ? 8'h14 : 
				     (xor_to_sbox[79:72] == 8'h9c) ? 8'hde : 
				     (xor_to_sbox[79:72] == 8'h9d) ? 8'h5e : 
				     (xor_to_sbox[79:72] == 8'h9e) ? 8'h0b : 
				     (xor_to_sbox[79:72] == 8'h9f) ? 8'hdb : 

				     (xor_to_sbox[79:72] == 8'ha0) ? 8'he0 :	// row a
				     (xor_to_sbox[79:72] == 8'ha1) ? 8'h32 : 
				     (xor_to_sbox[79:72] == 8'ha2) ? 8'h3a : 
				     (xor_to_sbox[79:72] == 8'ha3) ? 8'h0a : 
				     (xor_to_sbox[79:72] == 8'ha4) ? 8'h49 : 
				     (xor_to_sbox[79:72] == 8'ha5) ? 8'h06 : 
				     (xor_to_sbox[79:72] == 8'ha6) ? 8'h24 : 
				     (xor_to_sbox[79:72] == 8'ha7) ? 8'h5c : 
				     (xor_to_sbox[79:72] == 8'ha8) ? 8'hc2 : 
				     (xor_to_sbox[79:72] == 8'ha9) ? 8'hd3 : 
				     (xor_to_sbox[79:72] == 8'haa) ? 8'hac : 
				     (xor_to_sbox[79:72] == 8'hab) ? 8'h62 : 
				     (xor_to_sbox[79:72] == 8'hac) ? 8'h91 : 
				     (xor_to_sbox[79:72] == 8'had) ? 8'h95 : 
				     (xor_to_sbox[79:72] == 8'hae) ? 8'he4 : 
				     (xor_to_sbox[79:72] == 8'haf) ? 8'h79 : 

				     (xor_to_sbox[79:72] == 8'hb0) ? 8'he7 :	// row b
				     (xor_to_sbox[79:72] == 8'hb1) ? 8'hc8 : 
				     (xor_to_sbox[79:72] == 8'hb2) ? 8'h37 : 
				     (xor_to_sbox[79:72] == 8'hb3) ? 8'h6d : 
				     (xor_to_sbox[79:72] == 8'hb4) ? 8'h8d : 
				     (xor_to_sbox[79:72] == 8'hb5) ? 8'hd5 : 
				     (xor_to_sbox[79:72] == 8'hb6) ? 8'h4e : 
				     (xor_to_sbox[79:72] == 8'hb7) ? 8'ha9 : 
				     (xor_to_sbox[79:72] == 8'hb8) ? 8'h6c : 
				     (xor_to_sbox[79:72] == 8'hb9) ? 8'h56 : 
				     (xor_to_sbox[79:72] == 8'hba) ? 8'hf4 : 
				     (xor_to_sbox[79:72] == 8'hbb) ? 8'hea : 
				     (xor_to_sbox[79:72] == 8'hbc) ? 8'h65 : 
				     (xor_to_sbox[79:72] == 8'hbd) ? 8'h7a : 
				     (xor_to_sbox[79:72] == 8'hbe) ? 8'hae : 
				     (xor_to_sbox[79:72] == 8'hbf) ? 8'h08 : 

				     (xor_to_sbox[79:72] == 8'hc0) ? 8'hba :	// row c
				     (xor_to_sbox[79:72] == 8'hc1) ? 8'h78 : 
				     (xor_to_sbox[79:72] == 8'hc2) ? 8'h25 : 
				     (xor_to_sbox[79:72] == 8'hc3) ? 8'h2e : 
				     (xor_to_sbox[79:72] == 8'hc4) ? 8'h1c : 
				     (xor_to_sbox[79:72] == 8'hc5) ? 8'ha6 : 
				     (xor_to_sbox[79:72] == 8'hc6) ? 8'hb4 : 
				     (xor_to_sbox[79:72] == 8'hc7) ? 8'hc6 : 
				     (xor_to_sbox[79:72] == 8'hc8) ? 8'he8 : 
				     (xor_to_sbox[79:72] == 8'hc9) ? 8'hdd : 
				     (xor_to_sbox[79:72] == 8'hca) ? 8'h74 : 
				     (xor_to_sbox[79:72] == 8'hcb) ? 8'h1f : 
				     (xor_to_sbox[79:72] == 8'hcc) ? 8'h4b : 
				     (xor_to_sbox[79:72] == 8'hcd) ? 8'hbd : 
				     (xor_to_sbox[79:72] == 8'hce) ? 8'h8b : 
				     (xor_to_sbox[79:72] == 8'hcf) ? 8'h8a : 

				     (xor_to_sbox[79:72] == 8'hd0) ? 8'h70 :	// row d
				     (xor_to_sbox[79:72] == 8'hd1) ? 8'h3e : 
				     (xor_to_sbox[79:72] == 8'hd2) ? 8'hb5 : 
				     (xor_to_sbox[79:72] == 8'hd3) ? 8'h66 : 
				     (xor_to_sbox[79:72] == 8'hd4) ? 8'h48 : 
				     (xor_to_sbox[79:72] == 8'hd5) ? 8'h03 : 
				     (xor_to_sbox[79:72] == 8'hd6) ? 8'hf6 : 
				     (xor_to_sbox[79:72] == 8'hd7) ? 8'h0e : 
				     (xor_to_sbox[79:72] == 8'hd8) ? 8'h61 : 
				     (xor_to_sbox[79:72] == 8'hd9) ? 8'h35 : 
				     (xor_to_sbox[79:72] == 8'hda) ? 8'h57 : 
				     (xor_to_sbox[79:72] == 8'hdb) ? 8'hb9 : 
				     (xor_to_sbox[79:72] == 8'hdc) ? 8'h86 : 
				     (xor_to_sbox[79:72] == 8'hdd) ? 8'hc1 : 
				     (xor_to_sbox[79:72] == 8'hde) ? 8'h1d : 
				     (xor_to_sbox[79:72] == 8'hdf) ? 8'h9e : 

				     (xor_to_sbox[79:72] == 8'he0) ? 8'he1 :	// row e
				     (xor_to_sbox[79:72] == 8'he1) ? 8'hf8 : 
				     (xor_to_sbox[79:72] == 8'he2) ? 8'h98 : 
				     (xor_to_sbox[79:72] == 8'he3) ? 8'h11 : 
				     (xor_to_sbox[79:72] == 8'he4) ? 8'h69 : 
				     (xor_to_sbox[79:72] == 8'he5) ? 8'hd9 : 
				     (xor_to_sbox[79:72] == 8'he6) ? 8'h8e : 
				     (xor_to_sbox[79:72] == 8'he7) ? 8'h94 : 
				     (xor_to_sbox[79:72] == 8'he8) ? 8'h9b : 
				     (xor_to_sbox[79:72] == 8'he9) ? 8'h1e : 
				     (xor_to_sbox[79:72] == 8'hea) ? 8'h87 : 
				     (xor_to_sbox[79:72] == 8'heb) ? 8'he9 : 
				     (xor_to_sbox[79:72] == 8'hec) ? 8'hce : 
				     (xor_to_sbox[79:72] == 8'hed) ? 8'h55 : 
				     (xor_to_sbox[79:72] == 8'hee) ? 8'h28 : 
				     (xor_to_sbox[79:72] == 8'hef) ? 8'hdf : 

				     (xor_to_sbox[79:72] == 8'hf0) ? 8'h8c :	// row f
				     (xor_to_sbox[79:72] == 8'hf1) ? 8'ha1 : 
				     (xor_to_sbox[79:72] == 8'hf2) ? 8'h89 : 
				     (xor_to_sbox[79:72] == 8'hf3) ? 8'h0d : 
				     (xor_to_sbox[79:72] == 8'hf4) ? 8'hbf : 
				     (xor_to_sbox[79:72] == 8'hf5) ? 8'he6 : 
				     (xor_to_sbox[79:72] == 8'hf6) ? 8'h42 : 
				     (xor_to_sbox[79:72] == 8'hf7) ? 8'h68 : 
				     (xor_to_sbox[79:72] == 8'hf8) ? 8'h41 : 
				     (xor_to_sbox[79:72] == 8'hf9) ? 8'h99 : 
				     (xor_to_sbox[79:72] == 8'hfa) ? 8'h2d : 
				     (xor_to_sbox[79:72] == 8'hfb) ? 8'h0f : 
				     (xor_to_sbox[79:72] == 8'hfc) ? 8'hb0 : 
				     (xor_to_sbox[79:72] == 8'hfd) ? 8'h54 : 
				     (xor_to_sbox[79:72] == 8'hfe) ? 8'hbb : 
				     (xor_to_sbox[79:72] == 8'hff) ? 8'h16 : 8'hxx;

					  
assign sbox_to_rows[87:80] = (xor_to_sbox[87:80] == 8'h00) ? 8'h63 :	// row 0
				     (xor_to_sbox[87:80] == 8'h01) ? 8'h7c : 
				     (xor_to_sbox[87:80] == 8'h02) ? 8'h77 : 
				     (xor_to_sbox[87:80] == 8'h03) ? 8'h7b : 
				     (xor_to_sbox[87:80] == 8'h04) ? 8'hf2 : 
				     (xor_to_sbox[87:80] == 8'h05) ? 8'h6b : 
				     (xor_to_sbox[87:80] == 8'h06) ? 8'h6f : 
				     (xor_to_sbox[87:80] == 8'h07) ? 8'hc5 : 
				     (xor_to_sbox[87:80] == 8'h08) ? 8'h30 : 
				     (xor_to_sbox[87:80] == 8'h09) ? 8'h01 : 
				     (xor_to_sbox[87:80] == 8'h0a) ? 8'h67 : 
				     (xor_to_sbox[87:80] == 8'h0b) ? 8'h2b : 
				     (xor_to_sbox[87:80] == 8'h0c) ? 8'hfe : 
				     (xor_to_sbox[87:80] == 8'h0d) ? 8'hd7 : 
				     (xor_to_sbox[87:80] == 8'h0e) ? 8'hab : 
				     (xor_to_sbox[87:80] == 8'h0f) ? 8'h76 : 

				     (xor_to_sbox[87:80] == 8'h10) ? 8'hca :	// row 1
				     (xor_to_sbox[87:80] == 8'h11) ? 8'h82 : 
				     (xor_to_sbox[87:80] == 8'h12) ? 8'hc9 : 
				     (xor_to_sbox[87:80] == 8'h13) ? 8'h7d : 
				     (xor_to_sbox[87:80] == 8'h14) ? 8'hfa : 
				     (xor_to_sbox[87:80] == 8'h15) ? 8'h59 : 
				     (xor_to_sbox[87:80] == 8'h16) ? 8'h47 : 
				     (xor_to_sbox[87:80] == 8'h17) ? 8'hf0 : 
				     (xor_to_sbox[87:80] == 8'h18) ? 8'had : 
				     (xor_to_sbox[87:80] == 8'h19) ? 8'hd4 : 
				     (xor_to_sbox[87:80] == 8'h1a) ? 8'ha2 : 
				     (xor_to_sbox[87:80] == 8'h1b) ? 8'haf : 
				     (xor_to_sbox[87:80] == 8'h1c) ? 8'h9c : 
				     (xor_to_sbox[87:80] == 8'h1d) ? 8'ha4 : 
				     (xor_to_sbox[87:80] == 8'h1e) ? 8'h72 : 
				     (xor_to_sbox[87:80] == 8'h1f) ? 8'hc0 : 

				     (xor_to_sbox[87:80] == 8'h20) ? 8'hb7 :	// row 2
				     (xor_to_sbox[87:80] == 8'h21) ? 8'hfd : 
				     (xor_to_sbox[87:80] == 8'h22) ? 8'h93 : 
				     (xor_to_sbox[87:80] == 8'h23) ? 8'h26 : 
				     (xor_to_sbox[87:80] == 8'h24) ? 8'h36 : 
				     (xor_to_sbox[87:80] == 8'h25) ? 8'h3f : 
				     (xor_to_sbox[87:80] == 8'h26) ? 8'hf7 : 
				     (xor_to_sbox[87:80] == 8'h27) ? 8'hcc : 
				     (xor_to_sbox[87:80] == 8'h28) ? 8'h34 : 
				     (xor_to_sbox[87:80] == 8'h29) ? 8'ha5 : 
				     (xor_to_sbox[87:80] == 8'h2a) ? 8'he5 : 
				     (xor_to_sbox[87:80] == 8'h2b) ? 8'hf1 : 
				     (xor_to_sbox[87:80] == 8'h2c) ? 8'h71 : 
				     (xor_to_sbox[87:80] == 8'h2d) ? 8'hd8 : 
				     (xor_to_sbox[87:80] == 8'h2e) ? 8'h31 : 
				     (xor_to_sbox[87:80] == 8'h2f) ? 8'h15 :

				     (xor_to_sbox[87:80] == 8'h30) ? 8'h04 : 	// row 3
				     (xor_to_sbox[87:80] == 8'h31) ? 8'hc7 : 
				     (xor_to_sbox[87:80] == 8'h32) ? 8'h23 : 
				     (xor_to_sbox[87:80] == 8'h33) ? 8'hc3 : 
				     (xor_to_sbox[87:80] == 8'h34) ? 8'h18 : 
				     (xor_to_sbox[87:80] == 8'h35) ? 8'h96 : 
				     (xor_to_sbox[87:80] == 8'h36) ? 8'h05 : 
				     (xor_to_sbox[87:80] == 8'h37) ? 8'h9a : 
				     (xor_to_sbox[87:80] == 8'h38) ? 8'h07 : 
				     (xor_to_sbox[87:80] == 8'h39) ? 8'h12 : 
				     (xor_to_sbox[87:80] == 8'h3a) ? 8'h80 : 
				     (xor_to_sbox[87:80] == 8'h3b) ? 8'he2 : 
				     (xor_to_sbox[87:80] == 8'h3c) ? 8'heb : 
				     (xor_to_sbox[87:80] == 8'h3d) ? 8'h27 : 
				     (xor_to_sbox[87:80] == 8'h3e) ? 8'hb2 : 
				     (xor_to_sbox[87:80] == 8'h3f) ? 8'h75 : 

				     (xor_to_sbox[87:80] == 8'h40) ? 8'h09 :	// row 4
				     (xor_to_sbox[87:80] == 8'h41) ? 8'h83 : 
				     (xor_to_sbox[87:80] == 8'h42) ? 8'h2c : 
				     (xor_to_sbox[87:80] == 8'h43) ? 8'h1a : 
				     (xor_to_sbox[87:80] == 8'h44) ? 8'h1b : 
				     (xor_to_sbox[87:80] == 8'h45) ? 8'h6e : 
				     (xor_to_sbox[87:80] == 8'h46) ? 8'h5a : 
				     (xor_to_sbox[87:80] == 8'h47) ? 8'ha0 : 
				     (xor_to_sbox[87:80] == 8'h48) ? 8'h52 : 
				     (xor_to_sbox[87:80] == 8'h49) ? 8'h3b : 
				     (xor_to_sbox[87:80] == 8'h4a) ? 8'hd6 : 
				     (xor_to_sbox[87:80] == 8'h4b) ? 8'hb3 : 
				     (xor_to_sbox[87:80] == 8'h4c) ? 8'h29 : 
				     (xor_to_sbox[87:80] == 8'h4d) ? 8'he3 : 
				     (xor_to_sbox[87:80] == 8'h4e) ? 8'h2f : 
				     (xor_to_sbox[87:80] == 8'h4f) ? 8'h84 : 

				     (xor_to_sbox[87:80] == 8'h50) ? 8'h53 :	// row 5
				     (xor_to_sbox[87:80] == 8'h51) ? 8'hd1 : 
				     (xor_to_sbox[87:80] == 8'h52) ? 8'h00 : 
				     (xor_to_sbox[87:80] == 8'h53) ? 8'hed : 
				     (xor_to_sbox[87:80] == 8'h54) ? 8'h20 : 
				     (xor_to_sbox[87:80] == 8'h55) ? 8'hfc : 
				     (xor_to_sbox[87:80] == 8'h56) ? 8'hb1 : 
				     (xor_to_sbox[87:80] == 8'h57) ? 8'h5b : 
				     (xor_to_sbox[87:80] == 8'h58) ? 8'h6a : 
				     (xor_to_sbox[87:80] == 8'h59) ? 8'hcb : 
				     (xor_to_sbox[87:80] == 8'h5a) ? 8'hbe : 
				     (xor_to_sbox[87:80] == 8'h5b) ? 8'h39 : 
				     (xor_to_sbox[87:80] == 8'h5c) ? 8'h4a : 
				     (xor_to_sbox[87:80] == 8'h5d) ? 8'h4c : 
				     (xor_to_sbox[87:80] == 8'h5e) ? 8'h58 : 
				     (xor_to_sbox[87:80] == 8'h5f) ? 8'hcf : 

				     (xor_to_sbox[87:80] == 8'h60) ? 8'hd0 :	// row 6
				     (xor_to_sbox[87:80] == 8'h61) ? 8'hef : 
				     (xor_to_sbox[87:80] == 8'h62) ? 8'haa : 
				     (xor_to_sbox[87:80] == 8'h63) ? 8'hfb : 
				     (xor_to_sbox[87:80] == 8'h64) ? 8'h43 : 
				     (xor_to_sbox[87:80] == 8'h65) ? 8'h4d : 
				     (xor_to_sbox[87:80] == 8'h66) ? 8'h33 : 
				     (xor_to_sbox[87:80] == 8'h67) ? 8'h85 : 
				     (xor_to_sbox[87:80] == 8'h68) ? 8'h45 : 
				     (xor_to_sbox[87:80] == 8'h69) ? 8'hf9 : 
				     (xor_to_sbox[87:80] == 8'h6a) ? 8'h02 : 
				     (xor_to_sbox[87:80] == 8'h6b) ? 8'h7f : 
				     (xor_to_sbox[87:80] == 8'h6c) ? 8'h50 : 
				     (xor_to_sbox[87:80] == 8'h6d) ? 8'h3c : 
				     (xor_to_sbox[87:80] == 8'h6e) ? 8'h9f : 
				     (xor_to_sbox[87:80] == 8'h6f) ? 8'ha8 : 

				     (xor_to_sbox[87:80] == 8'h70) ? 8'h51 :	// row 7
				     (xor_to_sbox[87:80] == 8'h71) ? 8'ha3 : 
				     (xor_to_sbox[87:80] == 8'h72) ? 8'h40 : 
				     (xor_to_sbox[87:80] == 8'h73) ? 8'h8f : 
				     (xor_to_sbox[87:80] == 8'h74) ? 8'h92 : 
				     (xor_to_sbox[87:80] == 8'h75) ? 8'h9d : 
				     (xor_to_sbox[87:80] == 8'h76) ? 8'h38 : 
				     (xor_to_sbox[87:80] == 8'h77) ? 8'hf5 : 
				     (xor_to_sbox[87:80] == 8'h78) ? 8'hbc : 
				     (xor_to_sbox[87:80] == 8'h79) ? 8'hb6 : 
				     (xor_to_sbox[87:80] == 8'h7a) ? 8'hda : 
				     (xor_to_sbox[87:80] == 8'h7b) ? 8'h21 : 
				     (xor_to_sbox[87:80] == 8'h7c) ? 8'h10 : 
				     (xor_to_sbox[87:80] == 8'h7d) ? 8'hff : 
				     (xor_to_sbox[87:80] == 8'h7e) ? 8'hf3 : 
				     (xor_to_sbox[87:80] == 8'h7f) ? 8'hd2 : 

				     (xor_to_sbox[87:80] == 8'h80) ? 8'hcd :	// row 8
				     (xor_to_sbox[87:80] == 8'h81) ? 8'h0c : 
				     (xor_to_sbox[87:80] == 8'h82) ? 8'h13 : 
				     (xor_to_sbox[87:80] == 8'h83) ? 8'hec : 
				     (xor_to_sbox[87:80] == 8'h84) ? 8'h5f : 
				     (xor_to_sbox[87:80] == 8'h85) ? 8'h97 : 
				     (xor_to_sbox[87:80] == 8'h86) ? 8'h44 : 
				     (xor_to_sbox[87:80] == 8'h87) ? 8'h17 : 
				     (xor_to_sbox[87:80] == 8'h88) ? 8'hc4 : 
				     (xor_to_sbox[87:80] == 8'h89) ? 8'ha7 : 
				     (xor_to_sbox[87:80] == 8'h8a) ? 8'h7e : 
				     (xor_to_sbox[87:80] == 8'h8b) ? 8'h3d : 
				     (xor_to_sbox[87:80] == 8'h8c) ? 8'h64 : 
				     (xor_to_sbox[87:80] == 8'h8d) ? 8'h5d : 
				     (xor_to_sbox[87:80] == 8'h8e) ? 8'h19 : 
				     (xor_to_sbox[87:80] == 8'h8f) ? 8'h73 : 

				     (xor_to_sbox[87:80] == 8'h90) ? 8'h60 :	// row 9
				     (xor_to_sbox[87:80] == 8'h91) ? 8'h81 : 
				     (xor_to_sbox[87:80] == 8'h92) ? 8'h4f : 
				     (xor_to_sbox[87:80] == 8'h93) ? 8'hdc : 
				     (xor_to_sbox[87:80] == 8'h94) ? 8'h22 : 
				     (xor_to_sbox[87:80] == 8'h95) ? 8'h2a : 
				     (xor_to_sbox[87:80] == 8'h96) ? 8'h90 : 
				     (xor_to_sbox[87:80] == 8'h97) ? 8'h88 : 
				     (xor_to_sbox[87:80] == 8'h98) ? 8'h46 : 
				     (xor_to_sbox[87:80] == 8'h99) ? 8'hee : 
				     (xor_to_sbox[87:80] == 8'h9a) ? 8'hb8 : 
				     (xor_to_sbox[87:80] == 8'h9b) ? 8'h14 : 
				     (xor_to_sbox[87:80] == 8'h9c) ? 8'hde : 
				     (xor_to_sbox[87:80] == 8'h9d) ? 8'h5e : 
				     (xor_to_sbox[87:80] == 8'h9e) ? 8'h0b : 
				     (xor_to_sbox[87:80] == 8'h9f) ? 8'hdb : 

				     (xor_to_sbox[87:80] == 8'ha0) ? 8'he0 :	// row a
				     (xor_to_sbox[87:80] == 8'ha1) ? 8'h32 : 
				     (xor_to_sbox[87:80] == 8'ha2) ? 8'h3a : 
				     (xor_to_sbox[87:80] == 8'ha3) ? 8'h0a : 
				     (xor_to_sbox[87:80] == 8'ha4) ? 8'h49 : 
				     (xor_to_sbox[87:80] == 8'ha5) ? 8'h06 : 
				     (xor_to_sbox[87:80] == 8'ha6) ? 8'h24 : 
				     (xor_to_sbox[87:80] == 8'ha7) ? 8'h5c : 
				     (xor_to_sbox[87:80] == 8'ha8) ? 8'hc2 : 
				     (xor_to_sbox[87:80] == 8'ha9) ? 8'hd3 : 
				     (xor_to_sbox[87:80] == 8'haa) ? 8'hac : 
				     (xor_to_sbox[87:80] == 8'hab) ? 8'h62 : 
				     (xor_to_sbox[87:80] == 8'hac) ? 8'h91 : 
				     (xor_to_sbox[87:80] == 8'had) ? 8'h95 : 
				     (xor_to_sbox[87:80] == 8'hae) ? 8'he4 : 
				     (xor_to_sbox[87:80] == 8'haf) ? 8'h79 : 

				     (xor_to_sbox[87:80] == 8'hb0) ? 8'he7 :	// row b
				     (xor_to_sbox[87:80] == 8'hb1) ? 8'hc8 : 
				     (xor_to_sbox[87:80] == 8'hb2) ? 8'h37 : 
				     (xor_to_sbox[87:80] == 8'hb3) ? 8'h6d : 
				     (xor_to_sbox[87:80] == 8'hb4) ? 8'h8d : 
				     (xor_to_sbox[87:80] == 8'hb5) ? 8'hd5 : 
				     (xor_to_sbox[87:80] == 8'hb6) ? 8'h4e : 
				     (xor_to_sbox[87:80] == 8'hb7) ? 8'ha9 : 
				     (xor_to_sbox[87:80] == 8'hb8) ? 8'h6c : 
				     (xor_to_sbox[87:80] == 8'hb9) ? 8'h56 : 
				     (xor_to_sbox[87:80] == 8'hba) ? 8'hf4 : 
				     (xor_to_sbox[87:80] == 8'hbb) ? 8'hea : 
				     (xor_to_sbox[87:80] == 8'hbc) ? 8'h65 : 
				     (xor_to_sbox[87:80] == 8'hbd) ? 8'h7a : 
				     (xor_to_sbox[87:80] == 8'hbe) ? 8'hae : 
				     (xor_to_sbox[87:80] == 8'hbf) ? 8'h08 : 

				     (xor_to_sbox[87:80] == 8'hc0) ? 8'hba :	// row c
				     (xor_to_sbox[87:80] == 8'hc1) ? 8'h78 : 
				     (xor_to_sbox[87:80] == 8'hc2) ? 8'h25 : 
				     (xor_to_sbox[87:80] == 8'hc3) ? 8'h2e : 
				     (xor_to_sbox[87:80] == 8'hc4) ? 8'h1c : 
				     (xor_to_sbox[87:80] == 8'hc5) ? 8'ha6 : 
				     (xor_to_sbox[87:80] == 8'hc6) ? 8'hb4 : 
				     (xor_to_sbox[87:80] == 8'hc7) ? 8'hc6 : 
				     (xor_to_sbox[87:80] == 8'hc8) ? 8'he8 : 
				     (xor_to_sbox[87:80] == 8'hc9) ? 8'hdd : 
				     (xor_to_sbox[87:80] == 8'hca) ? 8'h74 : 
				     (xor_to_sbox[87:80] == 8'hcb) ? 8'h1f : 
				     (xor_to_sbox[87:80] == 8'hcc) ? 8'h4b : 
				     (xor_to_sbox[87:80] == 8'hcd) ? 8'hbd : 
				     (xor_to_sbox[87:80] == 8'hce) ? 8'h8b : 
				     (xor_to_sbox[87:80] == 8'hcf) ? 8'h8a : 

				     (xor_to_sbox[87:80] == 8'hd0) ? 8'h70 :	// row d
				     (xor_to_sbox[87:80] == 8'hd1) ? 8'h3e : 
				     (xor_to_sbox[87:80] == 8'hd2) ? 8'hb5 : 
				     (xor_to_sbox[87:80] == 8'hd3) ? 8'h66 : 
				     (xor_to_sbox[87:80] == 8'hd4) ? 8'h48 : 
				     (xor_to_sbox[87:80] == 8'hd5) ? 8'h03 : 
				     (xor_to_sbox[87:80] == 8'hd6) ? 8'hf6 : 
				     (xor_to_sbox[87:80] == 8'hd7) ? 8'h0e : 
				     (xor_to_sbox[87:80] == 8'hd8) ? 8'h61 : 
				     (xor_to_sbox[87:80] == 8'hd9) ? 8'h35 : 
				     (xor_to_sbox[87:80] == 8'hda) ? 8'h57 : 
				     (xor_to_sbox[87:80] == 8'hdb) ? 8'hb9 : 
				     (xor_to_sbox[87:80] == 8'hdc) ? 8'h86 : 
				     (xor_to_sbox[87:80] == 8'hdd) ? 8'hc1 : 
				     (xor_to_sbox[87:80] == 8'hde) ? 8'h1d : 
				     (xor_to_sbox[87:80] == 8'hdf) ? 8'h9e : 

				     (xor_to_sbox[87:80] == 8'he0) ? 8'he1 :	// row e
				     (xor_to_sbox[87:80] == 8'he1) ? 8'hf8 : 
				     (xor_to_sbox[87:80] == 8'he2) ? 8'h98 : 
				     (xor_to_sbox[87:80] == 8'he3) ? 8'h11 : 
				     (xor_to_sbox[87:80] == 8'he4) ? 8'h69 : 
				     (xor_to_sbox[87:80] == 8'he5) ? 8'hd9 : 
				     (xor_to_sbox[87:80] == 8'he6) ? 8'h8e : 
				     (xor_to_sbox[87:80] == 8'he7) ? 8'h94 : 
				     (xor_to_sbox[87:80] == 8'he8) ? 8'h9b : 
				     (xor_to_sbox[87:80] == 8'he9) ? 8'h1e : 
				     (xor_to_sbox[87:80] == 8'hea) ? 8'h87 : 
				     (xor_to_sbox[87:80] == 8'heb) ? 8'he9 : 
				     (xor_to_sbox[87:80] == 8'hec) ? 8'hce : 
				     (xor_to_sbox[87:80] == 8'hed) ? 8'h55 : 
				     (xor_to_sbox[87:80] == 8'hee) ? 8'h28 : 
				     (xor_to_sbox[87:80] == 8'hef) ? 8'hdf : 

				     (xor_to_sbox[87:80] == 8'hf0) ? 8'h8c :	// row f
				     (xor_to_sbox[87:80] == 8'hf1) ? 8'ha1 : 
				     (xor_to_sbox[87:80] == 8'hf2) ? 8'h89 : 
				     (xor_to_sbox[87:80] == 8'hf3) ? 8'h0d : 
				     (xor_to_sbox[87:80] == 8'hf4) ? 8'hbf : 
				     (xor_to_sbox[87:80] == 8'hf5) ? 8'he6 : 
				     (xor_to_sbox[87:80] == 8'hf6) ? 8'h42 : 
				     (xor_to_sbox[87:80] == 8'hf7) ? 8'h68 : 
				     (xor_to_sbox[87:80] == 8'hf8) ? 8'h41 : 
				     (xor_to_sbox[87:80] == 8'hf9) ? 8'h99 : 
				     (xor_to_sbox[87:80] == 8'hfa) ? 8'h2d : 
				     (xor_to_sbox[87:80] == 8'hfb) ? 8'h0f : 
				     (xor_to_sbox[87:80] == 8'hfc) ? 8'hb0 : 
				     (xor_to_sbox[87:80] == 8'hfd) ? 8'h54 : 
				     (xor_to_sbox[87:80] == 8'hfe) ? 8'hbb : 
				     (xor_to_sbox[87:80] == 8'hff) ? 8'h16 : 8'hxx;
					  
assign sbox_to_rows[95:88] = (xor_to_sbox[95:88] == 8'h00) ? 8'h63 :	// row 0
				     (xor_to_sbox[95:88] == 8'h01) ? 8'h7c : 
				     (xor_to_sbox[95:88] == 8'h02) ? 8'h77 : 
				     (xor_to_sbox[95:88] == 8'h03) ? 8'h7b : 
				     (xor_to_sbox[95:88] == 8'h04) ? 8'hf2 : 
				     (xor_to_sbox[95:88] == 8'h05) ? 8'h6b : 
				     (xor_to_sbox[95:88] == 8'h06) ? 8'h6f : 
				     (xor_to_sbox[95:88] == 8'h07) ? 8'hc5 : 
				     (xor_to_sbox[95:88] == 8'h08) ? 8'h30 : 
				     (xor_to_sbox[95:88] == 8'h09) ? 8'h01 : 
				     (xor_to_sbox[95:88] == 8'h0a) ? 8'h67 : 
				     (xor_to_sbox[95:88] == 8'h0b) ? 8'h2b : 
				     (xor_to_sbox[95:88] == 8'h0c) ? 8'hfe : 
				     (xor_to_sbox[95:88] == 8'h0d) ? 8'hd7 : 
				     (xor_to_sbox[95:88] == 8'h0e) ? 8'hab : 
				     (xor_to_sbox[95:88] == 8'h0f) ? 8'h76 : 

				     (xor_to_sbox[95:88] == 8'h10) ? 8'hca :	// row 1
				     (xor_to_sbox[95:88] == 8'h11) ? 8'h82 : 
				     (xor_to_sbox[95:88] == 8'h12) ? 8'hc9 : 
				     (xor_to_sbox[95:88] == 8'h13) ? 8'h7d : 
				     (xor_to_sbox[95:88] == 8'h14) ? 8'hfa : 
				     (xor_to_sbox[95:88] == 8'h15) ? 8'h59 : 
				     (xor_to_sbox[95:88] == 8'h16) ? 8'h47 : 
				     (xor_to_sbox[95:88] == 8'h17) ? 8'hf0 : 
				     (xor_to_sbox[95:88] == 8'h18) ? 8'had : 
				     (xor_to_sbox[95:88] == 8'h19) ? 8'hd4 : 
				     (xor_to_sbox[95:88] == 8'h1a) ? 8'ha2 : 
				     (xor_to_sbox[95:88] == 8'h1b) ? 8'haf : 
				     (xor_to_sbox[95:88] == 8'h1c) ? 8'h9c : 
				     (xor_to_sbox[95:88] == 8'h1d) ? 8'ha4 : 
				     (xor_to_sbox[95:88] == 8'h1e) ? 8'h72 : 
				     (xor_to_sbox[95:88] == 8'h1f) ? 8'hc0 : 

				     (xor_to_sbox[95:88] == 8'h20) ? 8'hb7 :	// row 2
				     (xor_to_sbox[95:88] == 8'h21) ? 8'hfd : 
				     (xor_to_sbox[95:88] == 8'h22) ? 8'h93 : 
				     (xor_to_sbox[95:88] == 8'h23) ? 8'h26 : 
				     (xor_to_sbox[95:88] == 8'h24) ? 8'h36 : 
				     (xor_to_sbox[95:88] == 8'h25) ? 8'h3f : 
				     (xor_to_sbox[95:88] == 8'h26) ? 8'hf7 : 
				     (xor_to_sbox[95:88] == 8'h27) ? 8'hcc : 
				     (xor_to_sbox[95:88] == 8'h28) ? 8'h34 : 
				     (xor_to_sbox[95:88] == 8'h29) ? 8'ha5 : 
				     (xor_to_sbox[95:88] == 8'h2a) ? 8'he5 : 
				     (xor_to_sbox[95:88] == 8'h2b) ? 8'hf1 : 
				     (xor_to_sbox[95:88] == 8'h2c) ? 8'h71 : 
				     (xor_to_sbox[95:88] == 8'h2d) ? 8'hd8 : 
				     (xor_to_sbox[95:88] == 8'h2e) ? 8'h31 : 
				     (xor_to_sbox[95:88] == 8'h2f) ? 8'h15 :

				     (xor_to_sbox[95:88] == 8'h30) ? 8'h04 : 	// row 3
				     (xor_to_sbox[95:88] == 8'h31) ? 8'hc7 : 
				     (xor_to_sbox[95:88] == 8'h32) ? 8'h23 : 
				     (xor_to_sbox[95:88] == 8'h33) ? 8'hc3 : 
				     (xor_to_sbox[95:88] == 8'h34) ? 8'h18 : 
				     (xor_to_sbox[95:88] == 8'h35) ? 8'h96 : 
				     (xor_to_sbox[95:88] == 8'h36) ? 8'h05 : 
				     (xor_to_sbox[95:88] == 8'h37) ? 8'h9a : 
				     (xor_to_sbox[95:88] == 8'h38) ? 8'h07 : 
				     (xor_to_sbox[95:88] == 8'h39) ? 8'h12 : 
				     (xor_to_sbox[95:88] == 8'h3a) ? 8'h80 : 
				     (xor_to_sbox[95:88] == 8'h3b) ? 8'he2 : 
				     (xor_to_sbox[95:88] == 8'h3c) ? 8'heb : 
				     (xor_to_sbox[95:88] == 8'h3d) ? 8'h27 : 
				     (xor_to_sbox[95:88] == 8'h3e) ? 8'hb2 : 
				     (xor_to_sbox[95:88] == 8'h3f) ? 8'h75 : 

				     (xor_to_sbox[95:88] == 8'h40) ? 8'h09 :	// row 4
				     (xor_to_sbox[95:88] == 8'h41) ? 8'h83 : 
				     (xor_to_sbox[95:88] == 8'h42) ? 8'h2c : 
				     (xor_to_sbox[95:88] == 8'h43) ? 8'h1a : 
				     (xor_to_sbox[95:88] == 8'h44) ? 8'h1b : 
				     (xor_to_sbox[95:88] == 8'h45) ? 8'h6e : 
				     (xor_to_sbox[95:88] == 8'h46) ? 8'h5a : 
				     (xor_to_sbox[95:88] == 8'h47) ? 8'ha0 : 
				     (xor_to_sbox[95:88] == 8'h48) ? 8'h52 : 
				     (xor_to_sbox[95:88] == 8'h49) ? 8'h3b : 
				     (xor_to_sbox[95:88] == 8'h4a) ? 8'hd6 : 
				     (xor_to_sbox[95:88] == 8'h4b) ? 8'hb3 : 
				     (xor_to_sbox[95:88] == 8'h4c) ? 8'h29 : 
				     (xor_to_sbox[95:88] == 8'h4d) ? 8'he3 : 
				     (xor_to_sbox[95:88] == 8'h4e) ? 8'h2f : 
				     (xor_to_sbox[95:88] == 8'h4f) ? 8'h84 : 

				     (xor_to_sbox[95:88] == 8'h50) ? 8'h53 :	// row 5
				     (xor_to_sbox[95:88] == 8'h51) ? 8'hd1 : 
				     (xor_to_sbox[95:88] == 8'h52) ? 8'h00 : 
				     (xor_to_sbox[95:88] == 8'h53) ? 8'hed : 
				     (xor_to_sbox[95:88] == 8'h54) ? 8'h20 : 
				     (xor_to_sbox[95:88] == 8'h55) ? 8'hfc : 
				     (xor_to_sbox[95:88] == 8'h56) ? 8'hb1 : 
				     (xor_to_sbox[95:88] == 8'h57) ? 8'h5b : 
				     (xor_to_sbox[95:88] == 8'h58) ? 8'h6a : 
				     (xor_to_sbox[95:88] == 8'h59) ? 8'hcb : 
				     (xor_to_sbox[95:88] == 8'h5a) ? 8'hbe : 
				     (xor_to_sbox[95:88] == 8'h5b) ? 8'h39 : 
				     (xor_to_sbox[95:88] == 8'h5c) ? 8'h4a : 
				     (xor_to_sbox[95:88] == 8'h5d) ? 8'h4c : 
				     (xor_to_sbox[95:88] == 8'h5e) ? 8'h58 : 
				     (xor_to_sbox[95:88] == 8'h5f) ? 8'hcf : 

				     (xor_to_sbox[95:88] == 8'h60) ? 8'hd0 :	// row 6
				     (xor_to_sbox[95:88] == 8'h61) ? 8'hef : 
				     (xor_to_sbox[95:88] == 8'h62) ? 8'haa : 
				     (xor_to_sbox[95:88] == 8'h63) ? 8'hfb : 
				     (xor_to_sbox[95:88] == 8'h64) ? 8'h43 : 
				     (xor_to_sbox[95:88] == 8'h65) ? 8'h4d : 
				     (xor_to_sbox[95:88] == 8'h66) ? 8'h33 : 
				     (xor_to_sbox[95:88] == 8'h67) ? 8'h85 : 
				     (xor_to_sbox[95:88] == 8'h68) ? 8'h45 : 
				     (xor_to_sbox[95:88] == 8'h69) ? 8'hf9 : 
				     (xor_to_sbox[95:88] == 8'h6a) ? 8'h02 : 
				     (xor_to_sbox[95:88] == 8'h6b) ? 8'h7f : 
				     (xor_to_sbox[95:88] == 8'h6c) ? 8'h50 : 
				     (xor_to_sbox[95:88] == 8'h6d) ? 8'h3c : 
				     (xor_to_sbox[95:88] == 8'h6e) ? 8'h9f : 
				     (xor_to_sbox[95:88] == 8'h6f) ? 8'ha8 : 

				     (xor_to_sbox[95:88] == 8'h70) ? 8'h51 :	// row 7
				     (xor_to_sbox[95:88] == 8'h71) ? 8'ha3 : 
				     (xor_to_sbox[95:88] == 8'h72) ? 8'h40 : 
				     (xor_to_sbox[95:88] == 8'h73) ? 8'h8f : 
				     (xor_to_sbox[95:88] == 8'h74) ? 8'h92 : 
				     (xor_to_sbox[95:88] == 8'h75) ? 8'h9d : 
				     (xor_to_sbox[95:88] == 8'h76) ? 8'h38 : 
				     (xor_to_sbox[95:88] == 8'h77) ? 8'hf5 : 
				     (xor_to_sbox[95:88] == 8'h78) ? 8'hbc : 
				     (xor_to_sbox[95:88] == 8'h79) ? 8'hb6 : 
				     (xor_to_sbox[95:88] == 8'h7a) ? 8'hda : 
				     (xor_to_sbox[95:88] == 8'h7b) ? 8'h21 : 
				     (xor_to_sbox[95:88] == 8'h7c) ? 8'h10 : 
				     (xor_to_sbox[95:88] == 8'h7d) ? 8'hff : 
				     (xor_to_sbox[95:88] == 8'h7e) ? 8'hf3 : 
				     (xor_to_sbox[95:88] == 8'h7f) ? 8'hd2 : 

				     (xor_to_sbox[95:88] == 8'h80) ? 8'hcd :	// row 8
				     (xor_to_sbox[95:88] == 8'h81) ? 8'h0c : 
				     (xor_to_sbox[95:88] == 8'h82) ? 8'h13 : 
				     (xor_to_sbox[95:88] == 8'h83) ? 8'hec : 
				     (xor_to_sbox[95:88] == 8'h84) ? 8'h5f : 
				     (xor_to_sbox[95:88] == 8'h85) ? 8'h97 : 
				     (xor_to_sbox[95:88] == 8'h86) ? 8'h44 : 
				     (xor_to_sbox[95:88] == 8'h87) ? 8'h17 : 
				     (xor_to_sbox[95:88] == 8'h88) ? 8'hc4 : 
				     (xor_to_sbox[95:88] == 8'h89) ? 8'ha7 : 
				     (xor_to_sbox[95:88] == 8'h8a) ? 8'h7e : 
				     (xor_to_sbox[95:88] == 8'h8b) ? 8'h3d : 
				     (xor_to_sbox[95:88] == 8'h8c) ? 8'h64 : 
				     (xor_to_sbox[95:88] == 8'h8d) ? 8'h5d : 
				     (xor_to_sbox[95:88] == 8'h8e) ? 8'h19 : 
				     (xor_to_sbox[95:88] == 8'h8f) ? 8'h73 : 

				     (xor_to_sbox[95:88] == 8'h90) ? 8'h60 :	// row 9
				     (xor_to_sbox[95:88] == 8'h91) ? 8'h81 : 
				     (xor_to_sbox[95:88] == 8'h92) ? 8'h4f : 
				     (xor_to_sbox[95:88] == 8'h93) ? 8'hdc : 
				     (xor_to_sbox[95:88] == 8'h94) ? 8'h22 : 
				     (xor_to_sbox[95:88] == 8'h95) ? 8'h2a : 
				     (xor_to_sbox[95:88] == 8'h96) ? 8'h90 : 
				     (xor_to_sbox[95:88] == 8'h97) ? 8'h88 : 
				     (xor_to_sbox[95:88] == 8'h98) ? 8'h46 : 
				     (xor_to_sbox[95:88] == 8'h99) ? 8'hee : 
				     (xor_to_sbox[95:88] == 8'h9a) ? 8'hb8 : 
				     (xor_to_sbox[95:88] == 8'h9b) ? 8'h14 : 
				     (xor_to_sbox[95:88] == 8'h9c) ? 8'hde : 
				     (xor_to_sbox[95:88] == 8'h9d) ? 8'h5e : 
				     (xor_to_sbox[95:88] == 8'h9e) ? 8'h0b : 
				     (xor_to_sbox[95:88] == 8'h9f) ? 8'hdb : 

				     (xor_to_sbox[95:88] == 8'ha0) ? 8'he0 :	// row a
				     (xor_to_sbox[95:88] == 8'ha1) ? 8'h32 : 
				     (xor_to_sbox[95:88] == 8'ha2) ? 8'h3a : 
				     (xor_to_sbox[95:88] == 8'ha3) ? 8'h0a : 
				     (xor_to_sbox[95:88] == 8'ha4) ? 8'h49 : 
				     (xor_to_sbox[95:88] == 8'ha5) ? 8'h06 : 
				     (xor_to_sbox[95:88] == 8'ha6) ? 8'h24 : 
				     (xor_to_sbox[95:88] == 8'ha7) ? 8'h5c : 
				     (xor_to_sbox[95:88] == 8'ha8) ? 8'hc2 : 
				     (xor_to_sbox[95:88] == 8'ha9) ? 8'hd3 : 
				     (xor_to_sbox[95:88] == 8'haa) ? 8'hac : 
				     (xor_to_sbox[95:88] == 8'hab) ? 8'h62 : 
				     (xor_to_sbox[95:88] == 8'hac) ? 8'h91 : 
				     (xor_to_sbox[95:88] == 8'had) ? 8'h95 : 
				     (xor_to_sbox[95:88] == 8'hae) ? 8'he4 : 
				     (xor_to_sbox[95:88] == 8'haf) ? 8'h79 : 

				     (xor_to_sbox[95:88] == 8'hb0) ? 8'he7 :	// row b
				     (xor_to_sbox[95:88] == 8'hb1) ? 8'hc8 : 
				     (xor_to_sbox[95:88] == 8'hb2) ? 8'h37 : 
				     (xor_to_sbox[95:88] == 8'hb3) ? 8'h6d : 
				     (xor_to_sbox[95:88] == 8'hb4) ? 8'h8d : 
				     (xor_to_sbox[95:88] == 8'hb5) ? 8'hd5 : 
				     (xor_to_sbox[95:88] == 8'hb6) ? 8'h4e : 
				     (xor_to_sbox[95:88] == 8'hb7) ? 8'ha9 : 
				     (xor_to_sbox[95:88] == 8'hb8) ? 8'h6c : 
				     (xor_to_sbox[95:88] == 8'hb9) ? 8'h56 : 
				     (xor_to_sbox[95:88] == 8'hba) ? 8'hf4 : 
				     (xor_to_sbox[95:88] == 8'hbb) ? 8'hea : 
				     (xor_to_sbox[95:88] == 8'hbc) ? 8'h65 : 
				     (xor_to_sbox[95:88] == 8'hbd) ? 8'h7a : 
				     (xor_to_sbox[95:88] == 8'hbe) ? 8'hae : 
				     (xor_to_sbox[95:88] == 8'hbf) ? 8'h08 : 

				     (xor_to_sbox[95:88] == 8'hc0) ? 8'hba :	// row c
				     (xor_to_sbox[95:88] == 8'hc1) ? 8'h78 : 
				     (xor_to_sbox[95:88] == 8'hc2) ? 8'h25 : 
				     (xor_to_sbox[95:88] == 8'hc3) ? 8'h2e : 
				     (xor_to_sbox[95:88] == 8'hc4) ? 8'h1c : 
				     (xor_to_sbox[95:88] == 8'hc5) ? 8'ha6 : 
				     (xor_to_sbox[95:88] == 8'hc6) ? 8'hb4 : 
				     (xor_to_sbox[95:88] == 8'hc7) ? 8'hc6 : 
				     (xor_to_sbox[95:88] == 8'hc8) ? 8'he8 : 
				     (xor_to_sbox[95:88] == 8'hc9) ? 8'hdd : 
				     (xor_to_sbox[95:88] == 8'hca) ? 8'h74 : 
				     (xor_to_sbox[95:88] == 8'hcb) ? 8'h1f : 
				     (xor_to_sbox[95:88] == 8'hcc) ? 8'h4b : 
				     (xor_to_sbox[95:88] == 8'hcd) ? 8'hbd : 
				     (xor_to_sbox[95:88] == 8'hce) ? 8'h8b : 
				     (xor_to_sbox[95:88] == 8'hcf) ? 8'h8a : 

				     (xor_to_sbox[95:88] == 8'hd0) ? 8'h70 :	// row d
				     (xor_to_sbox[95:88] == 8'hd1) ? 8'h3e : 
				     (xor_to_sbox[95:88] == 8'hd2) ? 8'hb5 : 
				     (xor_to_sbox[95:88] == 8'hd3) ? 8'h66 : 
				     (xor_to_sbox[95:88] == 8'hd4) ? 8'h48 : 
				     (xor_to_sbox[95:88] == 8'hd5) ? 8'h03 : 
				     (xor_to_sbox[95:88] == 8'hd6) ? 8'hf6 : 
				     (xor_to_sbox[95:88] == 8'hd7) ? 8'h0e : 
				     (xor_to_sbox[95:88] == 8'hd8) ? 8'h61 : 
				     (xor_to_sbox[95:88] == 8'hd9) ? 8'h35 : 
				     (xor_to_sbox[95:88] == 8'hda) ? 8'h57 : 
				     (xor_to_sbox[95:88] == 8'hdb) ? 8'hb9 : 
				     (xor_to_sbox[95:88] == 8'hdc) ? 8'h86 : 
				     (xor_to_sbox[95:88] == 8'hdd) ? 8'hc1 : 
				     (xor_to_sbox[95:88] == 8'hde) ? 8'h1d : 
				     (xor_to_sbox[95:88] == 8'hdf) ? 8'h9e : 

				     (xor_to_sbox[95:88] == 8'he0) ? 8'he1 :	// row e
				     (xor_to_sbox[95:88] == 8'he1) ? 8'hf8 : 
				     (xor_to_sbox[95:88] == 8'he2) ? 8'h98 : 
				     (xor_to_sbox[95:88] == 8'he3) ? 8'h11 : 
				     (xor_to_sbox[95:88] == 8'he4) ? 8'h69 : 
				     (xor_to_sbox[95:88] == 8'he5) ? 8'hd9 : 
				     (xor_to_sbox[95:88] == 8'he6) ? 8'h8e : 
				     (xor_to_sbox[95:88] == 8'he7) ? 8'h94 : 
				     (xor_to_sbox[95:88] == 8'he8) ? 8'h9b : 
				     (xor_to_sbox[95:88] == 8'he9) ? 8'h1e : 
				     (xor_to_sbox[95:88] == 8'hea) ? 8'h87 : 
				     (xor_to_sbox[95:88] == 8'heb) ? 8'he9 : 
				     (xor_to_sbox[95:88] == 8'hec) ? 8'hce : 
				     (xor_to_sbox[95:88] == 8'hed) ? 8'h55 : 
				     (xor_to_sbox[95:88] == 8'hee) ? 8'h28 : 
				     (xor_to_sbox[95:88] == 8'hef) ? 8'hdf : 

				     (xor_to_sbox[95:88] == 8'hf0) ? 8'h8c :	// row f
				     (xor_to_sbox[95:88] == 8'hf1) ? 8'ha1 : 
				     (xor_to_sbox[95:88] == 8'hf2) ? 8'h89 : 
				     (xor_to_sbox[95:88] == 8'hf3) ? 8'h0d : 
				     (xor_to_sbox[95:88] == 8'hf4) ? 8'hbf : 
				     (xor_to_sbox[95:88] == 8'hf5) ? 8'he6 : 
				     (xor_to_sbox[95:88] == 8'hf6) ? 8'h42 : 
				     (xor_to_sbox[95:88] == 8'hf7) ? 8'h68 : 
				     (xor_to_sbox[95:88] == 8'hf8) ? 8'h41 : 
				     (xor_to_sbox[95:88] == 8'hf9) ? 8'h99 : 
				     (xor_to_sbox[95:88] == 8'hfa) ? 8'h2d : 
				     (xor_to_sbox[95:88] == 8'hfb) ? 8'h0f : 
				     (xor_to_sbox[95:88] == 8'hfc) ? 8'hb0 : 
				     (xor_to_sbox[95:88] == 8'hfd) ? 8'h54 : 
				     (xor_to_sbox[95:88] == 8'hfe) ? 8'hbb : 
				     (xor_to_sbox[95:88] == 8'hff) ? 8'h16 : 8'hxx;
					 
assign sbox_to_rows[103:96] = (xor_to_sbox[103:96] == 8'h00) ? 8'h63 :	// row 0
				     (xor_to_sbox[103:96] == 8'h01) ? 8'h7c : 
				     (xor_to_sbox[103:96] == 8'h02) ? 8'h77 : 
				     (xor_to_sbox[103:96] == 8'h03) ? 8'h7b : 
				     (xor_to_sbox[103:96] == 8'h04) ? 8'hf2 : 
				     (xor_to_sbox[103:96] == 8'h05) ? 8'h6b : 
				     (xor_to_sbox[103:96] == 8'h06) ? 8'h6f : 
				     (xor_to_sbox[103:96] == 8'h07) ? 8'hc5 : 
				     (xor_to_sbox[103:96] == 8'h08) ? 8'h30 : 
				     (xor_to_sbox[103:96] == 8'h09) ? 8'h01 : 
				     (xor_to_sbox[103:96] == 8'h0a) ? 8'h67 : 
				     (xor_to_sbox[103:96] == 8'h0b) ? 8'h2b : 
				     (xor_to_sbox[103:96] == 8'h0c) ? 8'hfe : 
				     (xor_to_sbox[103:96] == 8'h0d) ? 8'hd7 : 
				     (xor_to_sbox[103:96] == 8'h0e) ? 8'hab : 
				     (xor_to_sbox[103:96] == 8'h0f) ? 8'h76 : 

				     (xor_to_sbox[103:96] == 8'h10) ? 8'hca :	// row 1
				     (xor_to_sbox[103:96] == 8'h11) ? 8'h82 : 
				     (xor_to_sbox[103:96] == 8'h12) ? 8'hc9 : 
				     (xor_to_sbox[103:96] == 8'h13) ? 8'h7d : 
				     (xor_to_sbox[103:96] == 8'h14) ? 8'hfa : 
				     (xor_to_sbox[103:96] == 8'h15) ? 8'h59 : 
				     (xor_to_sbox[103:96] == 8'h16) ? 8'h47 : 
				     (xor_to_sbox[103:96] == 8'h17) ? 8'hf0 : 
				     (xor_to_sbox[103:96] == 8'h18) ? 8'had : 
				     (xor_to_sbox[103:96] == 8'h19) ? 8'hd4 : 
				     (xor_to_sbox[103:96] == 8'h1a) ? 8'ha2 : 
				     (xor_to_sbox[103:96] == 8'h1b) ? 8'haf : 
				     (xor_to_sbox[103:96] == 8'h1c) ? 8'h9c : 
				     (xor_to_sbox[103:96] == 8'h1d) ? 8'ha4 : 
				     (xor_to_sbox[103:96] == 8'h1e) ? 8'h72 : 
				     (xor_to_sbox[103:96] == 8'h1f) ? 8'hc0 : 

				     (xor_to_sbox[103:96] == 8'h20) ? 8'hb7 :	// row 2
				     (xor_to_sbox[103:96] == 8'h21) ? 8'hfd : 
				     (xor_to_sbox[103:96] == 8'h22) ? 8'h93 : 
				     (xor_to_sbox[103:96] == 8'h23) ? 8'h26 : 
				     (xor_to_sbox[103:96] == 8'h24) ? 8'h36 : 
				     (xor_to_sbox[103:96] == 8'h25) ? 8'h3f : 
				     (xor_to_sbox[103:96] == 8'h26) ? 8'hf7 : 
				     (xor_to_sbox[103:96] == 8'h27) ? 8'hcc : 
				     (xor_to_sbox[103:96] == 8'h28) ? 8'h34 : 
				     (xor_to_sbox[103:96] == 8'h29) ? 8'ha5 : 
				     (xor_to_sbox[103:96] == 8'h2a) ? 8'he5 : 
				     (xor_to_sbox[103:96] == 8'h2b) ? 8'hf1 : 
				     (xor_to_sbox[103:96] == 8'h2c) ? 8'h71 : 
				     (xor_to_sbox[103:96] == 8'h2d) ? 8'hd8 : 
				     (xor_to_sbox[103:96] == 8'h2e) ? 8'h31 : 
				     (xor_to_sbox[103:96] == 8'h2f) ? 8'h15 :

				     (xor_to_sbox[103:96] == 8'h30) ? 8'h04 : 	// row 3
				     (xor_to_sbox[103:96] == 8'h31) ? 8'hc7 : 
				     (xor_to_sbox[103:96] == 8'h32) ? 8'h23 : 
				     (xor_to_sbox[103:96] == 8'h33) ? 8'hc3 : 
				     (xor_to_sbox[103:96] == 8'h34) ? 8'h18 : 
				     (xor_to_sbox[103:96] == 8'h35) ? 8'h96 : 
				     (xor_to_sbox[103:96] == 8'h36) ? 8'h05 : 
				     (xor_to_sbox[103:96] == 8'h37) ? 8'h9a : 
				     (xor_to_sbox[103:96] == 8'h38) ? 8'h07 : 
				     (xor_to_sbox[103:96] == 8'h39) ? 8'h12 : 
				     (xor_to_sbox[103:96] == 8'h3a) ? 8'h80 : 
				     (xor_to_sbox[103:96] == 8'h3b) ? 8'he2 : 
				     (xor_to_sbox[103:96] == 8'h3c) ? 8'heb : 
				     (xor_to_sbox[103:96] == 8'h3d) ? 8'h27 : 
				     (xor_to_sbox[103:96] == 8'h3e) ? 8'hb2 : 
				     (xor_to_sbox[103:96] == 8'h3f) ? 8'h75 : 

				     (xor_to_sbox[103:96] == 8'h40) ? 8'h09 :	// row 4
				     (xor_to_sbox[103:96] == 8'h41) ? 8'h83 : 
				     (xor_to_sbox[103:96] == 8'h42) ? 8'h2c : 
				     (xor_to_sbox[103:96] == 8'h43) ? 8'h1a : 
				     (xor_to_sbox[103:96] == 8'h44) ? 8'h1b : 
				     (xor_to_sbox[103:96] == 8'h45) ? 8'h6e : 
				     (xor_to_sbox[103:96] == 8'h46) ? 8'h5a : 
				     (xor_to_sbox[103:96] == 8'h47) ? 8'ha0 : 
				     (xor_to_sbox[103:96] == 8'h48) ? 8'h52 : 
				     (xor_to_sbox[103:96] == 8'h49) ? 8'h3b : 
				     (xor_to_sbox[103:96] == 8'h4a) ? 8'hd6 : 
				     (xor_to_sbox[103:96] == 8'h4b) ? 8'hb3 : 
				     (xor_to_sbox[103:96] == 8'h4c) ? 8'h29 : 
				     (xor_to_sbox[103:96] == 8'h4d) ? 8'he3 : 
				     (xor_to_sbox[103:96] == 8'h4e) ? 8'h2f : 
				     (xor_to_sbox[103:96] == 8'h4f) ? 8'h84 : 

				     (xor_to_sbox[103:96] == 8'h50) ? 8'h53 :	// row 5
				     (xor_to_sbox[103:96] == 8'h51) ? 8'hd1 : 
				     (xor_to_sbox[103:96] == 8'h52) ? 8'h00 : 
				     (xor_to_sbox[103:96] == 8'h53) ? 8'hed : 
				     (xor_to_sbox[103:96] == 8'h54) ? 8'h20 : 
				     (xor_to_sbox[103:96] == 8'h55) ? 8'hfc : 
				     (xor_to_sbox[103:96] == 8'h56) ? 8'hb1 : 
				     (xor_to_sbox[103:96] == 8'h57) ? 8'h5b : 
				     (xor_to_sbox[103:96] == 8'h58) ? 8'h6a : 
				     (xor_to_sbox[103:96] == 8'h59) ? 8'hcb : 
				     (xor_to_sbox[103:96] == 8'h5a) ? 8'hbe : 
				     (xor_to_sbox[103:96] == 8'h5b) ? 8'h39 : 
				     (xor_to_sbox[103:96] == 8'h5c) ? 8'h4a : 
				     (xor_to_sbox[103:96] == 8'h5d) ? 8'h4c : 
				     (xor_to_sbox[103:96] == 8'h5e) ? 8'h58 : 
				     (xor_to_sbox[103:96] == 8'h5f) ? 8'hcf : 

				     (xor_to_sbox[103:96] == 8'h60) ? 8'hd0 :	// row 6
				     (xor_to_sbox[103:96] == 8'h61) ? 8'hef : 
				     (xor_to_sbox[103:96] == 8'h62) ? 8'haa : 
				     (xor_to_sbox[103:96] == 8'h63) ? 8'hfb : 
				     (xor_to_sbox[103:96] == 8'h64) ? 8'h43 : 
				     (xor_to_sbox[103:96] == 8'h65) ? 8'h4d : 
				     (xor_to_sbox[103:96] == 8'h66) ? 8'h33 : 
				     (xor_to_sbox[103:96] == 8'h67) ? 8'h85 : 
				     (xor_to_sbox[103:96] == 8'h68) ? 8'h45 : 
				     (xor_to_sbox[103:96] == 8'h69) ? 8'hf9 : 
				     (xor_to_sbox[103:96] == 8'h6a) ? 8'h02 : 
				     (xor_to_sbox[103:96] == 8'h6b) ? 8'h7f : 
				     (xor_to_sbox[103:96] == 8'h6c) ? 8'h50 : 
				     (xor_to_sbox[103:96] == 8'h6d) ? 8'h3c : 
				     (xor_to_sbox[103:96] == 8'h6e) ? 8'h9f : 
				     (xor_to_sbox[103:96] == 8'h6f) ? 8'ha8 : 

				     (xor_to_sbox[103:96] == 8'h70) ? 8'h51 :	// row 7
				     (xor_to_sbox[103:96] == 8'h71) ? 8'ha3 : 
				     (xor_to_sbox[103:96] == 8'h72) ? 8'h40 : 
				     (xor_to_sbox[103:96] == 8'h73) ? 8'h8f : 
				     (xor_to_sbox[103:96] == 8'h74) ? 8'h92 : 
				     (xor_to_sbox[103:96] == 8'h75) ? 8'h9d : 
				     (xor_to_sbox[103:96] == 8'h76) ? 8'h38 : 
				     (xor_to_sbox[103:96] == 8'h77) ? 8'hf5 : 
				     (xor_to_sbox[103:96] == 8'h78) ? 8'hbc : 
				     (xor_to_sbox[103:96] == 8'h79) ? 8'hb6 : 
				     (xor_to_sbox[103:96] == 8'h7a) ? 8'hda : 
				     (xor_to_sbox[103:96] == 8'h7b) ? 8'h21 : 
				     (xor_to_sbox[103:96] == 8'h7c) ? 8'h10 : 
				     (xor_to_sbox[103:96] == 8'h7d) ? 8'hff : 
				     (xor_to_sbox[103:96] == 8'h7e) ? 8'hf3 : 
				     (xor_to_sbox[103:96] == 8'h7f) ? 8'hd2 : 

				     (xor_to_sbox[103:96] == 8'h80) ? 8'hcd :	// row 8
				     (xor_to_sbox[103:96] == 8'h81) ? 8'h0c : 
				     (xor_to_sbox[103:96] == 8'h82) ? 8'h13 : 
				     (xor_to_sbox[103:96] == 8'h83) ? 8'hec : 
				     (xor_to_sbox[103:96] == 8'h84) ? 8'h5f : 
				     (xor_to_sbox[103:96] == 8'h85) ? 8'h97 : 
				     (xor_to_sbox[103:96] == 8'h86) ? 8'h44 : 
				     (xor_to_sbox[103:96] == 8'h87) ? 8'h17 : 
				     (xor_to_sbox[103:96] == 8'h88) ? 8'hc4 : 
				     (xor_to_sbox[103:96] == 8'h89) ? 8'ha7 : 
				     (xor_to_sbox[103:96] == 8'h8a) ? 8'h7e : 
				     (xor_to_sbox[103:96] == 8'h8b) ? 8'h3d : 
				     (xor_to_sbox[103:96] == 8'h8c) ? 8'h64 : 
				     (xor_to_sbox[103:96] == 8'h8d) ? 8'h5d : 
				     (xor_to_sbox[103:96] == 8'h8e) ? 8'h19 : 
				     (xor_to_sbox[103:96] == 8'h8f) ? 8'h73 : 

				     (xor_to_sbox[103:96] == 8'h90) ? 8'h60 :	// row 9
				     (xor_to_sbox[103:96] == 8'h91) ? 8'h81 : 
				     (xor_to_sbox[103:96] == 8'h92) ? 8'h4f : 
				     (xor_to_sbox[103:96] == 8'h93) ? 8'hdc : 
				     (xor_to_sbox[103:96] == 8'h94) ? 8'h22 : 
				     (xor_to_sbox[103:96] == 8'h95) ? 8'h2a : 
				     (xor_to_sbox[103:96] == 8'h96) ? 8'h90 : 
				     (xor_to_sbox[103:96] == 8'h97) ? 8'h88 : 
				     (xor_to_sbox[103:96] == 8'h98) ? 8'h46 : 
				     (xor_to_sbox[103:96] == 8'h99) ? 8'hee : 
				     (xor_to_sbox[103:96] == 8'h9a) ? 8'hb8 : 
				     (xor_to_sbox[103:96] == 8'h9b) ? 8'h14 : 
				     (xor_to_sbox[103:96] == 8'h9c) ? 8'hde : 
				     (xor_to_sbox[103:96] == 8'h9d) ? 8'h5e : 
				     (xor_to_sbox[103:96] == 8'h9e) ? 8'h0b : 
				     (xor_to_sbox[103:96] == 8'h9f) ? 8'hdb : 

				     (xor_to_sbox[103:96] == 8'ha0) ? 8'he0 :	// row a
				     (xor_to_sbox[103:96] == 8'ha1) ? 8'h32 : 
				     (xor_to_sbox[103:96] == 8'ha2) ? 8'h3a : 
				     (xor_to_sbox[103:96] == 8'ha3) ? 8'h0a : 
				     (xor_to_sbox[103:96] == 8'ha4) ? 8'h49 : 
				     (xor_to_sbox[103:96] == 8'ha5) ? 8'h06 : 
				     (xor_to_sbox[103:96] == 8'ha6) ? 8'h24 : 
				     (xor_to_sbox[103:96] == 8'ha7) ? 8'h5c : 
				     (xor_to_sbox[103:96] == 8'ha8) ? 8'hc2 : 
				     (xor_to_sbox[103:96] == 8'ha9) ? 8'hd3 : 
				     (xor_to_sbox[103:96] == 8'haa) ? 8'hac : 
				     (xor_to_sbox[103:96] == 8'hab) ? 8'h62 : 
				     (xor_to_sbox[103:96] == 8'hac) ? 8'h91 : 
				     (xor_to_sbox[103:96] == 8'had) ? 8'h95 : 
				     (xor_to_sbox[103:96] == 8'hae) ? 8'he4 : 
				     (xor_to_sbox[103:96] == 8'haf) ? 8'h79 : 

				     (xor_to_sbox[103:96] == 8'hb0) ? 8'he7 :	// row b
				     (xor_to_sbox[103:96] == 8'hb1) ? 8'hc8 : 
				     (xor_to_sbox[103:96] == 8'hb2) ? 8'h37 : 
				     (xor_to_sbox[103:96] == 8'hb3) ? 8'h6d : 
				     (xor_to_sbox[103:96] == 8'hb4) ? 8'h8d : 
				     (xor_to_sbox[103:96] == 8'hb5) ? 8'hd5 : 
				     (xor_to_sbox[103:96] == 8'hb6) ? 8'h4e : 
				     (xor_to_sbox[103:96] == 8'hb7) ? 8'ha9 : 
				     (xor_to_sbox[103:96] == 8'hb8) ? 8'h6c : 
				     (xor_to_sbox[103:96] == 8'hb9) ? 8'h56 : 
				     (xor_to_sbox[103:96] == 8'hba) ? 8'hf4 : 
				     (xor_to_sbox[103:96] == 8'hbb) ? 8'hea : 
				     (xor_to_sbox[103:96] == 8'hbc) ? 8'h65 : 
				     (xor_to_sbox[103:96] == 8'hbd) ? 8'h7a : 
				     (xor_to_sbox[103:96] == 8'hbe) ? 8'hae : 
				     (xor_to_sbox[103:96] == 8'hbf) ? 8'h08 : 

				     (xor_to_sbox[103:96] == 8'hc0) ? 8'hba :	// row c
				     (xor_to_sbox[103:96] == 8'hc1) ? 8'h78 : 
				     (xor_to_sbox[103:96] == 8'hc2) ? 8'h25 : 
				     (xor_to_sbox[103:96] == 8'hc3) ? 8'h2e : 
				     (xor_to_sbox[103:96] == 8'hc4) ? 8'h1c : 
				     (xor_to_sbox[103:96] == 8'hc5) ? 8'ha6 : 
				     (xor_to_sbox[103:96] == 8'hc6) ? 8'hb4 : 
				     (xor_to_sbox[103:96] == 8'hc7) ? 8'hc6 : 
				     (xor_to_sbox[103:96] == 8'hc8) ? 8'he8 : 
				     (xor_to_sbox[103:96] == 8'hc9) ? 8'hdd : 
				     (xor_to_sbox[103:96] == 8'hca) ? 8'h74 : 
				     (xor_to_sbox[103:96] == 8'hcb) ? 8'h1f : 
				     (xor_to_sbox[103:96] == 8'hcc) ? 8'h4b : 
				     (xor_to_sbox[103:96] == 8'hcd) ? 8'hbd : 
				     (xor_to_sbox[103:96] == 8'hce) ? 8'h8b : 
				     (xor_to_sbox[103:96] == 8'hcf) ? 8'h8a : 

				     (xor_to_sbox[103:96] == 8'hd0) ? 8'h70 :	// row d
				     (xor_to_sbox[103:96] == 8'hd1) ? 8'h3e : 
				     (xor_to_sbox[103:96] == 8'hd2) ? 8'hb5 : 
				     (xor_to_sbox[103:96] == 8'hd3) ? 8'h66 : 
				     (xor_to_sbox[103:96] == 8'hd4) ? 8'h48 : 
				     (xor_to_sbox[103:96] == 8'hd5) ? 8'h03 : 
				     (xor_to_sbox[103:96] == 8'hd6) ? 8'hf6 : 
				     (xor_to_sbox[103:96] == 8'hd7) ? 8'h0e : 
				     (xor_to_sbox[103:96] == 8'hd8) ? 8'h61 : 
				     (xor_to_sbox[103:96] == 8'hd9) ? 8'h35 : 
				     (xor_to_sbox[103:96] == 8'hda) ? 8'h57 : 
				     (xor_to_sbox[103:96] == 8'hdb) ? 8'hb9 : 
				     (xor_to_sbox[103:96] == 8'hdc) ? 8'h86 : 
				     (xor_to_sbox[103:96] == 8'hdd) ? 8'hc1 : 
				     (xor_to_sbox[103:96] == 8'hde) ? 8'h1d : 
				     (xor_to_sbox[103:96] == 8'hdf) ? 8'h9e : 

				     (xor_to_sbox[103:96] == 8'he0) ? 8'he1 :	// row e
				     (xor_to_sbox[103:96] == 8'he1) ? 8'hf8 : 
				     (xor_to_sbox[103:96] == 8'he2) ? 8'h98 : 
				     (xor_to_sbox[103:96] == 8'he3) ? 8'h11 : 
				     (xor_to_sbox[103:96] == 8'he4) ? 8'h69 : 
				     (xor_to_sbox[103:96] == 8'he5) ? 8'hd9 : 
				     (xor_to_sbox[103:96] == 8'he6) ? 8'h8e : 
				     (xor_to_sbox[103:96] == 8'he7) ? 8'h94 : 
				     (xor_to_sbox[103:96] == 8'he8) ? 8'h9b : 
				     (xor_to_sbox[103:96] == 8'he9) ? 8'h1e : 
				     (xor_to_sbox[103:96] == 8'hea) ? 8'h87 : 
				     (xor_to_sbox[103:96] == 8'heb) ? 8'he9 : 
				     (xor_to_sbox[103:96] == 8'hec) ? 8'hce : 
				     (xor_to_sbox[103:96] == 8'hed) ? 8'h55 : 
				     (xor_to_sbox[103:96] == 8'hee) ? 8'h28 : 
				     (xor_to_sbox[103:96] == 8'hef) ? 8'hdf : 

				     (xor_to_sbox[103:96] == 8'hf0) ? 8'h8c :	// row f
				     (xor_to_sbox[103:96] == 8'hf1) ? 8'ha1 : 
				     (xor_to_sbox[103:96] == 8'hf2) ? 8'h89 : 
				     (xor_to_sbox[103:96] == 8'hf3) ? 8'h0d : 
				     (xor_to_sbox[103:96] == 8'hf4) ? 8'hbf : 
				     (xor_to_sbox[103:96] == 8'hf5) ? 8'he6 : 
				     (xor_to_sbox[103:96] == 8'hf6) ? 8'h42 : 
				     (xor_to_sbox[103:96] == 8'hf7) ? 8'h68 : 
				     (xor_to_sbox[103:96] == 8'hf8) ? 8'h41 : 
				     (xor_to_sbox[103:96] == 8'hf9) ? 8'h99 : 
				     (xor_to_sbox[103:96] == 8'hfa) ? 8'h2d : 
				     (xor_to_sbox[103:96] == 8'hfb) ? 8'h0f : 
				     (xor_to_sbox[103:96] == 8'hfc) ? 8'hb0 : 
				     (xor_to_sbox[103:96] == 8'hfd) ? 8'h54 : 
				     (xor_to_sbox[103:96] == 8'hfe) ? 8'hbb : 
				     (xor_to_sbox[103:96] == 8'hff) ? 8'h16 : 8'hxx;


assign sbox_to_rows[111:104] = (xor_to_sbox[111:104] == 8'h00) ? 8'h63 :	// row 0
				     (xor_to_sbox[111:104] == 8'h01) ? 8'h7c : 
				     (xor_to_sbox[111:104] == 8'h02) ? 8'h77 : 
				     (xor_to_sbox[111:104] == 8'h03) ? 8'h7b : 
				     (xor_to_sbox[111:104] == 8'h04) ? 8'hf2 : 
				     (xor_to_sbox[111:104] == 8'h05) ? 8'h6b : 
				     (xor_to_sbox[111:104] == 8'h06) ? 8'h6f : 
				     (xor_to_sbox[111:104] == 8'h07) ? 8'hc5 : 
				     (xor_to_sbox[111:104] == 8'h08) ? 8'h30 : 
				     (xor_to_sbox[111:104] == 8'h09) ? 8'h01 : 
				     (xor_to_sbox[111:104] == 8'h0a) ? 8'h67 : 
				     (xor_to_sbox[111:104] == 8'h0b) ? 8'h2b : 
				     (xor_to_sbox[111:104] == 8'h0c) ? 8'hfe : 
				     (xor_to_sbox[111:104] == 8'h0d) ? 8'hd7 : 
				     (xor_to_sbox[111:104] == 8'h0e) ? 8'hab : 
				     (xor_to_sbox[111:104] == 8'h0f) ? 8'h76 : 

				     (xor_to_sbox[111:104] == 8'h10) ? 8'hca :	// row 1
				     (xor_to_sbox[111:104] == 8'h11) ? 8'h82 : 
				     (xor_to_sbox[111:104] == 8'h12) ? 8'hc9 : 
				     (xor_to_sbox[111:104] == 8'h13) ? 8'h7d : 
				     (xor_to_sbox[111:104] == 8'h14) ? 8'hfa : 
				     (xor_to_sbox[111:104] == 8'h15) ? 8'h59 : 
				     (xor_to_sbox[111:104] == 8'h16) ? 8'h47 : 
				     (xor_to_sbox[111:104] == 8'h17) ? 8'hf0 : 
				     (xor_to_sbox[111:104] == 8'h18) ? 8'had : 
				     (xor_to_sbox[111:104] == 8'h19) ? 8'hd4 : 
				     (xor_to_sbox[111:104] == 8'h1a) ? 8'ha2 : 
				     (xor_to_sbox[111:104] == 8'h1b) ? 8'haf : 
				     (xor_to_sbox[111:104] == 8'h1c) ? 8'h9c : 
				     (xor_to_sbox[111:104] == 8'h1d) ? 8'ha4 : 
				     (xor_to_sbox[111:104] == 8'h1e) ? 8'h72 : 
				     (xor_to_sbox[111:104] == 8'h1f) ? 8'hc0 : 

				     (xor_to_sbox[111:104] == 8'h20) ? 8'hb7 :	// row 2
				     (xor_to_sbox[111:104] == 8'h21) ? 8'hfd : 
				     (xor_to_sbox[111:104] == 8'h22) ? 8'h93 : 
				     (xor_to_sbox[111:104] == 8'h23) ? 8'h26 : 
				     (xor_to_sbox[111:104] == 8'h24) ? 8'h36 : 
				     (xor_to_sbox[111:104] == 8'h25) ? 8'h3f : 
				     (xor_to_sbox[111:104] == 8'h26) ? 8'hf7 : 
				     (xor_to_sbox[111:104] == 8'h27) ? 8'hcc : 
				     (xor_to_sbox[111:104] == 8'h28) ? 8'h34 : 
				     (xor_to_sbox[111:104] == 8'h29) ? 8'ha5 : 
				     (xor_to_sbox[111:104] == 8'h2a) ? 8'he5 : 
				     (xor_to_sbox[111:104] == 8'h2b) ? 8'hf1 : 
				     (xor_to_sbox[111:104] == 8'h2c) ? 8'h71 : 
				     (xor_to_sbox[111:104] == 8'h2d) ? 8'hd8 : 
				     (xor_to_sbox[111:104] == 8'h2e) ? 8'h31 : 
				     (xor_to_sbox[111:104] == 8'h2f) ? 8'h15 :

				     (xor_to_sbox[111:104] == 8'h30) ? 8'h04 : 	// row 3
				     (xor_to_sbox[111:104] == 8'h31) ? 8'hc7 : 
				     (xor_to_sbox[111:104] == 8'h32) ? 8'h23 : 
				     (xor_to_sbox[111:104] == 8'h33) ? 8'hc3 : 
				     (xor_to_sbox[111:104] == 8'h34) ? 8'h18 : 
				     (xor_to_sbox[111:104] == 8'h35) ? 8'h96 : 
				     (xor_to_sbox[111:104] == 8'h36) ? 8'h05 : 
				     (xor_to_sbox[111:104] == 8'h37) ? 8'h9a : 
				     (xor_to_sbox[111:104] == 8'h38) ? 8'h07 : 
				     (xor_to_sbox[111:104] == 8'h39) ? 8'h12 : 
				     (xor_to_sbox[111:104] == 8'h3a) ? 8'h80 : 
				     (xor_to_sbox[111:104] == 8'h3b) ? 8'he2 : 
				     (xor_to_sbox[111:104] == 8'h3c) ? 8'heb : 
				     (xor_to_sbox[111:104] == 8'h3d) ? 8'h27 : 
				     (xor_to_sbox[111:104] == 8'h3e) ? 8'hb2 : 
				     (xor_to_sbox[111:104] == 8'h3f) ? 8'h75 : 

				     (xor_to_sbox[111:104] == 8'h40) ? 8'h09 :	// row 4
				     (xor_to_sbox[111:104] == 8'h41) ? 8'h83 : 
				     (xor_to_sbox[111:104] == 8'h42) ? 8'h2c : 
				     (xor_to_sbox[111:104] == 8'h43) ? 8'h1a : 
				     (xor_to_sbox[111:104] == 8'h44) ? 8'h1b : 
				     (xor_to_sbox[111:104] == 8'h45) ? 8'h6e : 
				     (xor_to_sbox[111:104] == 8'h46) ? 8'h5a : 
				     (xor_to_sbox[111:104] == 8'h47) ? 8'ha0 : 
				     (xor_to_sbox[111:104] == 8'h48) ? 8'h52 : 
				     (xor_to_sbox[111:104] == 8'h49) ? 8'h3b : 
				     (xor_to_sbox[111:104] == 8'h4a) ? 8'hd6 : 
				     (xor_to_sbox[111:104] == 8'h4b) ? 8'hb3 : 
				     (xor_to_sbox[111:104] == 8'h4c) ? 8'h29 : 
				     (xor_to_sbox[111:104] == 8'h4d) ? 8'he3 : 
				     (xor_to_sbox[111:104] == 8'h4e) ? 8'h2f : 
				     (xor_to_sbox[111:104] == 8'h4f) ? 8'h84 : 

				     (xor_to_sbox[111:104] == 8'h50) ? 8'h53 :	// row 5
				     (xor_to_sbox[111:104] == 8'h51) ? 8'hd1 : 
				     (xor_to_sbox[111:104] == 8'h52) ? 8'h00 : 
				     (xor_to_sbox[111:104] == 8'h53) ? 8'hed : 
				     (xor_to_sbox[111:104] == 8'h54) ? 8'h20 : 
				     (xor_to_sbox[111:104] == 8'h55) ? 8'hfc : 
				     (xor_to_sbox[111:104] == 8'h56) ? 8'hb1 : 
				     (xor_to_sbox[111:104] == 8'h57) ? 8'h5b : 
				     (xor_to_sbox[111:104] == 8'h58) ? 8'h6a : 
				     (xor_to_sbox[111:104] == 8'h59) ? 8'hcb : 
				     (xor_to_sbox[111:104] == 8'h5a) ? 8'hbe : 
				     (xor_to_sbox[111:104] == 8'h5b) ? 8'h39 : 
				     (xor_to_sbox[111:104] == 8'h5c) ? 8'h4a : 
				     (xor_to_sbox[111:104] == 8'h5d) ? 8'h4c : 
				     (xor_to_sbox[111:104] == 8'h5e) ? 8'h58 : 
				     (xor_to_sbox[111:104] == 8'h5f) ? 8'hcf : 

				     (xor_to_sbox[111:104] == 8'h60) ? 8'hd0 :	// row 6
				     (xor_to_sbox[111:104] == 8'h61) ? 8'hef : 
				     (xor_to_sbox[111:104] == 8'h62) ? 8'haa : 
				     (xor_to_sbox[111:104] == 8'h63) ? 8'hfb : 
				     (xor_to_sbox[111:104] == 8'h64) ? 8'h43 : 
				     (xor_to_sbox[111:104] == 8'h65) ? 8'h4d : 
				     (xor_to_sbox[111:104] == 8'h66) ? 8'h33 : 
				     (xor_to_sbox[111:104] == 8'h67) ? 8'h85 : 
				     (xor_to_sbox[111:104] == 8'h68) ? 8'h45 : 
				     (xor_to_sbox[111:104] == 8'h69) ? 8'hf9 : 
				     (xor_to_sbox[111:104] == 8'h6a) ? 8'h02 : 
				     (xor_to_sbox[111:104] == 8'h6b) ? 8'h7f : 
				     (xor_to_sbox[111:104] == 8'h6c) ? 8'h50 : 
				     (xor_to_sbox[111:104] == 8'h6d) ? 8'h3c : 
				     (xor_to_sbox[111:104] == 8'h6e) ? 8'h9f : 
				     (xor_to_sbox[111:104] == 8'h6f) ? 8'ha8 : 

				     (xor_to_sbox[111:104] == 8'h70) ? 8'h51 :	// row 7
				     (xor_to_sbox[111:104] == 8'h71) ? 8'ha3 : 
				     (xor_to_sbox[111:104] == 8'h72) ? 8'h40 : 
				     (xor_to_sbox[111:104] == 8'h73) ? 8'h8f : 
				     (xor_to_sbox[111:104] == 8'h74) ? 8'h92 : 
				     (xor_to_sbox[111:104] == 8'h75) ? 8'h9d : 
				     (xor_to_sbox[111:104] == 8'h76) ? 8'h38 : 
				     (xor_to_sbox[111:104] == 8'h77) ? 8'hf5 : 
				     (xor_to_sbox[111:104] == 8'h78) ? 8'hbc : 
				     (xor_to_sbox[111:104] == 8'h79) ? 8'hb6 : 
				     (xor_to_sbox[111:104] == 8'h7a) ? 8'hda : 
				     (xor_to_sbox[111:104] == 8'h7b) ? 8'h21 : 
				     (xor_to_sbox[111:104] == 8'h7c) ? 8'h10 : 
				     (xor_to_sbox[111:104] == 8'h7d) ? 8'hff : 
				     (xor_to_sbox[111:104] == 8'h7e) ? 8'hf3 : 
				     (xor_to_sbox[111:104] == 8'h7f) ? 8'hd2 : 

				     (xor_to_sbox[111:104] == 8'h80) ? 8'hcd :	// row 8
				     (xor_to_sbox[111:104] == 8'h81) ? 8'h0c : 
				     (xor_to_sbox[111:104] == 8'h82) ? 8'h13 : 
				     (xor_to_sbox[111:104] == 8'h83) ? 8'hec : 
				     (xor_to_sbox[111:104] == 8'h84) ? 8'h5f : 
				     (xor_to_sbox[111:104] == 8'h85) ? 8'h97 : 
				     (xor_to_sbox[111:104] == 8'h86) ? 8'h44 : 
				     (xor_to_sbox[111:104] == 8'h87) ? 8'h17 : 
				     (xor_to_sbox[111:104] == 8'h88) ? 8'hc4 : 
				     (xor_to_sbox[111:104] == 8'h89) ? 8'ha7 : 
				     (xor_to_sbox[111:104] == 8'h8a) ? 8'h7e : 
				     (xor_to_sbox[111:104] == 8'h8b) ? 8'h3d : 
				     (xor_to_sbox[111:104] == 8'h8c) ? 8'h64 : 
				     (xor_to_sbox[111:104] == 8'h8d) ? 8'h5d : 
				     (xor_to_sbox[111:104] == 8'h8e) ? 8'h19 : 
				     (xor_to_sbox[111:104] == 8'h8f) ? 8'h73 : 

				     (xor_to_sbox[111:104] == 8'h90) ? 8'h60 :	// row 9
				     (xor_to_sbox[111:104] == 8'h91) ? 8'h81 : 
				     (xor_to_sbox[111:104] == 8'h92) ? 8'h4f : 
				     (xor_to_sbox[111:104] == 8'h93) ? 8'hdc : 
				     (xor_to_sbox[111:104] == 8'h94) ? 8'h22 : 
				     (xor_to_sbox[111:104] == 8'h95) ? 8'h2a : 
				     (xor_to_sbox[111:104] == 8'h96) ? 8'h90 : 
				     (xor_to_sbox[111:104] == 8'h97) ? 8'h88 : 
				     (xor_to_sbox[111:104] == 8'h98) ? 8'h46 : 
				     (xor_to_sbox[111:104] == 8'h99) ? 8'hee : 
				     (xor_to_sbox[111:104] == 8'h9a) ? 8'hb8 : 
				     (xor_to_sbox[111:104] == 8'h9b) ? 8'h14 : 
				     (xor_to_sbox[111:104] == 8'h9c) ? 8'hde : 
				     (xor_to_sbox[111:104] == 8'h9d) ? 8'h5e : 
				     (xor_to_sbox[111:104] == 8'h9e) ? 8'h0b : 
				     (xor_to_sbox[111:104] == 8'h9f) ? 8'hdb : 

				     (xor_to_sbox[111:104] == 8'ha0) ? 8'he0 :	// row a
				     (xor_to_sbox[111:104] == 8'ha1) ? 8'h32 : 
				     (xor_to_sbox[111:104] == 8'ha2) ? 8'h3a : 
				     (xor_to_sbox[111:104] == 8'ha3) ? 8'h0a : 
				     (xor_to_sbox[111:104] == 8'ha4) ? 8'h49 : 
				     (xor_to_sbox[111:104] == 8'ha5) ? 8'h06 : 
				     (xor_to_sbox[111:104] == 8'ha6) ? 8'h24 : 
				     (xor_to_sbox[111:104] == 8'ha7) ? 8'h5c : 
				     (xor_to_sbox[111:104] == 8'ha8) ? 8'hc2 : 
				     (xor_to_sbox[111:104] == 8'ha9) ? 8'hd3 : 
				     (xor_to_sbox[111:104] == 8'haa) ? 8'hac : 
				     (xor_to_sbox[111:104] == 8'hab) ? 8'h62 : 
				     (xor_to_sbox[111:104] == 8'hac) ? 8'h91 : 
				     (xor_to_sbox[111:104] == 8'had) ? 8'h95 : 
				     (xor_to_sbox[111:104] == 8'hae) ? 8'he4 : 
				     (xor_to_sbox[111:104] == 8'haf) ? 8'h79 : 

				     (xor_to_sbox[111:104] == 8'hb0) ? 8'he7 :	// row b
				     (xor_to_sbox[111:104] == 8'hb1) ? 8'hc8 : 
				     (xor_to_sbox[111:104] == 8'hb2) ? 8'h37 : 
				     (xor_to_sbox[111:104] == 8'hb3) ? 8'h6d : 
				     (xor_to_sbox[111:104] == 8'hb4) ? 8'h8d : 
				     (xor_to_sbox[111:104] == 8'hb5) ? 8'hd5 : 
				     (xor_to_sbox[111:104] == 8'hb6) ? 8'h4e : 
				     (xor_to_sbox[111:104] == 8'hb7) ? 8'ha9 : 
				     (xor_to_sbox[111:104] == 8'hb8) ? 8'h6c : 
				     (xor_to_sbox[111:104] == 8'hb9) ? 8'h56 : 
				     (xor_to_sbox[111:104] == 8'hba) ? 8'hf4 : 
				     (xor_to_sbox[111:104] == 8'hbb) ? 8'hea : 
				     (xor_to_sbox[111:104] == 8'hbc) ? 8'h65 : 
				     (xor_to_sbox[111:104] == 8'hbd) ? 8'h7a : 
				     (xor_to_sbox[111:104] == 8'hbe) ? 8'hae : 
				     (xor_to_sbox[111:104] == 8'hbf) ? 8'h08 : 

				     (xor_to_sbox[111:104] == 8'hc0) ? 8'hba :	// row c
				     (xor_to_sbox[111:104] == 8'hc1) ? 8'h78 : 
				     (xor_to_sbox[111:104] == 8'hc2) ? 8'h25 : 
				     (xor_to_sbox[111:104] == 8'hc3) ? 8'h2e : 
				     (xor_to_sbox[111:104] == 8'hc4) ? 8'h1c : 
				     (xor_to_sbox[111:104] == 8'hc5) ? 8'ha6 : 
				     (xor_to_sbox[111:104] == 8'hc6) ? 8'hb4 : 
				     (xor_to_sbox[111:104] == 8'hc7) ? 8'hc6 : 
				     (xor_to_sbox[111:104] == 8'hc8) ? 8'he8 : 
				     (xor_to_sbox[111:104] == 8'hc9) ? 8'hdd : 
				     (xor_to_sbox[111:104] == 8'hca) ? 8'h74 : 
				     (xor_to_sbox[111:104] == 8'hcb) ? 8'h1f : 
				     (xor_to_sbox[111:104] == 8'hcc) ? 8'h4b : 
				     (xor_to_sbox[111:104] == 8'hcd) ? 8'hbd : 
				     (xor_to_sbox[111:104] == 8'hce) ? 8'h8b : 
				     (xor_to_sbox[111:104] == 8'hcf) ? 8'h8a : 

				     (xor_to_sbox[111:104] == 8'hd0) ? 8'h70 :	// row d
				     (xor_to_sbox[111:104] == 8'hd1) ? 8'h3e : 
				     (xor_to_sbox[111:104] == 8'hd2) ? 8'hb5 : 
				     (xor_to_sbox[111:104] == 8'hd3) ? 8'h66 : 
				     (xor_to_sbox[111:104] == 8'hd4) ? 8'h48 : 
				     (xor_to_sbox[111:104] == 8'hd5) ? 8'h03 : 
				     (xor_to_sbox[111:104] == 8'hd6) ? 8'hf6 : 
				     (xor_to_sbox[111:104] == 8'hd7) ? 8'h0e : 
				     (xor_to_sbox[111:104] == 8'hd8) ? 8'h61 : 
				     (xor_to_sbox[111:104] == 8'hd9) ? 8'h35 : 
				     (xor_to_sbox[111:104] == 8'hda) ? 8'h57 : 
				     (xor_to_sbox[111:104] == 8'hdb) ? 8'hb9 : 
				     (xor_to_sbox[111:104] == 8'hdc) ? 8'h86 : 
				     (xor_to_sbox[111:104] == 8'hdd) ? 8'hc1 : 
				     (xor_to_sbox[111:104] == 8'hde) ? 8'h1d : 
				     (xor_to_sbox[111:104] == 8'hdf) ? 8'h9e : 

				     (xor_to_sbox[111:104] == 8'he0) ? 8'he1 :	// row e
				     (xor_to_sbox[111:104] == 8'he1) ? 8'hf8 : 
				     (xor_to_sbox[111:104] == 8'he2) ? 8'h98 : 
				     (xor_to_sbox[111:104] == 8'he3) ? 8'h11 : 
				     (xor_to_sbox[111:104] == 8'he4) ? 8'h69 : 
				     (xor_to_sbox[111:104] == 8'he5) ? 8'hd9 : 
				     (xor_to_sbox[111:104] == 8'he6) ? 8'h8e : 
				     (xor_to_sbox[111:104] == 8'he7) ? 8'h94 : 
				     (xor_to_sbox[111:104] == 8'he8) ? 8'h9b : 
				     (xor_to_sbox[111:104] == 8'he9) ? 8'h1e : 
				     (xor_to_sbox[111:104] == 8'hea) ? 8'h87 : 
				     (xor_to_sbox[111:104] == 8'heb) ? 8'he9 : 
				     (xor_to_sbox[111:104] == 8'hec) ? 8'hce : 
				     (xor_to_sbox[111:104] == 8'hed) ? 8'h55 : 
				     (xor_to_sbox[111:104] == 8'hee) ? 8'h28 : 
				     (xor_to_sbox[111:104] == 8'hef) ? 8'hdf : 

				     (xor_to_sbox[111:104] == 8'hf0) ? 8'h8c :	// row f
				     (xor_to_sbox[111:104] == 8'hf1) ? 8'ha1 : 
				     (xor_to_sbox[111:104] == 8'hf2) ? 8'h89 : 
				     (xor_to_sbox[111:104] == 8'hf3) ? 8'h0d : 
				     (xor_to_sbox[111:104] == 8'hf4) ? 8'hbf : 
				     (xor_to_sbox[111:104] == 8'hf5) ? 8'he6 : 
				     (xor_to_sbox[111:104] == 8'hf6) ? 8'h42 : 
				     (xor_to_sbox[111:104] == 8'hf7) ? 8'h68 : 
				     (xor_to_sbox[111:104] == 8'hf8) ? 8'h41 : 
				     (xor_to_sbox[111:104] == 8'hf9) ? 8'h99 : 
				     (xor_to_sbox[111:104] == 8'hfa) ? 8'h2d : 
				     (xor_to_sbox[111:104] == 8'hfb) ? 8'h0f : 
				     (xor_to_sbox[111:104] == 8'hfc) ? 8'hb0 : 
				     (xor_to_sbox[111:104] == 8'hfd) ? 8'h54 : 
				     (xor_to_sbox[111:104] == 8'hfe) ? 8'hbb : 
				     (xor_to_sbox[111:104] == 8'hff) ? 8'h16 : 8'hxx;

					  
assign sbox_to_rows[119:112] = (xor_to_sbox[119:112] == 8'h00) ? 8'h63 :	// row 0
				     (xor_to_sbox[119:112] == 8'h01) ? 8'h7c : 
				     (xor_to_sbox[119:112] == 8'h02) ? 8'h77 : 
				     (xor_to_sbox[119:112] == 8'h03) ? 8'h7b : 
				     (xor_to_sbox[119:112] == 8'h04) ? 8'hf2 : 
				     (xor_to_sbox[119:112] == 8'h05) ? 8'h6b : 
				     (xor_to_sbox[119:112] == 8'h06) ? 8'h6f : 
				     (xor_to_sbox[119:112] == 8'h07) ? 8'hc5 : 
				     (xor_to_sbox[119:112] == 8'h08) ? 8'h30 : 
				     (xor_to_sbox[119:112] == 8'h09) ? 8'h01 : 
				     (xor_to_sbox[119:112] == 8'h0a) ? 8'h67 : 
				     (xor_to_sbox[119:112] == 8'h0b) ? 8'h2b : 
				     (xor_to_sbox[119:112] == 8'h0c) ? 8'hfe : 
				     (xor_to_sbox[119:112] == 8'h0d) ? 8'hd7 : 
				     (xor_to_sbox[119:112] == 8'h0e) ? 8'hab : 
				     (xor_to_sbox[119:112] == 8'h0f) ? 8'h76 : 

				     (xor_to_sbox[119:112] == 8'h10) ? 8'hca :	// row 1
				     (xor_to_sbox[119:112] == 8'h11) ? 8'h82 : 
				     (xor_to_sbox[119:112] == 8'h12) ? 8'hc9 : 
				     (xor_to_sbox[119:112] == 8'h13) ? 8'h7d : 
				     (xor_to_sbox[119:112] == 8'h14) ? 8'hfa : 
				     (xor_to_sbox[119:112] == 8'h15) ? 8'h59 : 
				     (xor_to_sbox[119:112] == 8'h16) ? 8'h47 : 
				     (xor_to_sbox[119:112] == 8'h17) ? 8'hf0 : 
				     (xor_to_sbox[119:112] == 8'h18) ? 8'had : 
				     (xor_to_sbox[119:112] == 8'h19) ? 8'hd4 : 
				     (xor_to_sbox[119:112] == 8'h1a) ? 8'ha2 : 
				     (xor_to_sbox[119:112] == 8'h1b) ? 8'haf : 
				     (xor_to_sbox[119:112] == 8'h1c) ? 8'h9c : 
				     (xor_to_sbox[119:112] == 8'h1d) ? 8'ha4 : 
				     (xor_to_sbox[119:112] == 8'h1e) ? 8'h72 : 
				     (xor_to_sbox[119:112] == 8'h1f) ? 8'hc0 : 

				     (xor_to_sbox[119:112] == 8'h20) ? 8'hb7 :	// row 2
				     (xor_to_sbox[119:112] == 8'h21) ? 8'hfd : 
				     (xor_to_sbox[119:112] == 8'h22) ? 8'h93 : 
				     (xor_to_sbox[119:112] == 8'h23) ? 8'h26 : 
				     (xor_to_sbox[119:112] == 8'h24) ? 8'h36 : 
				     (xor_to_sbox[119:112] == 8'h25) ? 8'h3f : 
				     (xor_to_sbox[119:112] == 8'h26) ? 8'hf7 : 
				     (xor_to_sbox[119:112] == 8'h27) ? 8'hcc : 
				     (xor_to_sbox[119:112] == 8'h28) ? 8'h34 : 
				     (xor_to_sbox[119:112] == 8'h29) ? 8'ha5 : 
				     (xor_to_sbox[119:112] == 8'h2a) ? 8'he5 : 
				     (xor_to_sbox[119:112] == 8'h2b) ? 8'hf1 : 
				     (xor_to_sbox[119:112] == 8'h2c) ? 8'h71 : 
				     (xor_to_sbox[119:112] == 8'h2d) ? 8'hd8 : 
				     (xor_to_sbox[119:112] == 8'h2e) ? 8'h31 : 
				     (xor_to_sbox[119:112] == 8'h2f) ? 8'h15 :

				     (xor_to_sbox[119:112] == 8'h30) ? 8'h04 : 	// row 3
				     (xor_to_sbox[119:112] == 8'h31) ? 8'hc7 : 
				     (xor_to_sbox[119:112] == 8'h32) ? 8'h23 : 
				     (xor_to_sbox[119:112] == 8'h33) ? 8'hc3 : 
				     (xor_to_sbox[119:112] == 8'h34) ? 8'h18 : 
				     (xor_to_sbox[119:112] == 8'h35) ? 8'h96 : 
				     (xor_to_sbox[119:112] == 8'h36) ? 8'h05 : 
				     (xor_to_sbox[119:112] == 8'h37) ? 8'h9a : 
				     (xor_to_sbox[119:112] == 8'h38) ? 8'h07 : 
				     (xor_to_sbox[119:112] == 8'h39) ? 8'h12 : 
				     (xor_to_sbox[119:112] == 8'h3a) ? 8'h80 : 
				     (xor_to_sbox[119:112] == 8'h3b) ? 8'he2 : 
				     (xor_to_sbox[119:112] == 8'h3c) ? 8'heb : 
				     (xor_to_sbox[119:112] == 8'h3d) ? 8'h27 : 
				     (xor_to_sbox[119:112] == 8'h3e) ? 8'hb2 : 
				     (xor_to_sbox[119:112] == 8'h3f) ? 8'h75 : 

				     (xor_to_sbox[119:112] == 8'h40) ? 8'h09 :	// row 4
				     (xor_to_sbox[119:112] == 8'h41) ? 8'h83 : 
				     (xor_to_sbox[119:112] == 8'h42) ? 8'h2c : 
				     (xor_to_sbox[119:112] == 8'h43) ? 8'h1a : 
				     (xor_to_sbox[119:112] == 8'h44) ? 8'h1b : 
				     (xor_to_sbox[119:112] == 8'h45) ? 8'h6e : 
				     (xor_to_sbox[119:112] == 8'h46) ? 8'h5a : 
				     (xor_to_sbox[119:112] == 8'h47) ? 8'ha0 : 
				     (xor_to_sbox[119:112] == 8'h48) ? 8'h52 : 
				     (xor_to_sbox[119:112] == 8'h49) ? 8'h3b : 
				     (xor_to_sbox[119:112] == 8'h4a) ? 8'hd6 : 
				     (xor_to_sbox[119:112] == 8'h4b) ? 8'hb3 : 
				     (xor_to_sbox[119:112] == 8'h4c) ? 8'h29 : 
				     (xor_to_sbox[119:112] == 8'h4d) ? 8'he3 : 
				     (xor_to_sbox[119:112] == 8'h4e) ? 8'h2f : 
				     (xor_to_sbox[119:112] == 8'h4f) ? 8'h84 : 

				     (xor_to_sbox[119:112] == 8'h50) ? 8'h53 :	// row 5
				     (xor_to_sbox[119:112] == 8'h51) ? 8'hd1 : 
				     (xor_to_sbox[119:112] == 8'h52) ? 8'h00 : 
				     (xor_to_sbox[119:112] == 8'h53) ? 8'hed : 
				     (xor_to_sbox[119:112] == 8'h54) ? 8'h20 : 
				     (xor_to_sbox[119:112] == 8'h55) ? 8'hfc : 
				     (xor_to_sbox[119:112] == 8'h56) ? 8'hb1 : 
				     (xor_to_sbox[119:112] == 8'h57) ? 8'h5b : 
				     (xor_to_sbox[119:112] == 8'h58) ? 8'h6a : 
				     (xor_to_sbox[119:112] == 8'h59) ? 8'hcb : 
				     (xor_to_sbox[119:112] == 8'h5a) ? 8'hbe : 
				     (xor_to_sbox[119:112] == 8'h5b) ? 8'h39 : 
				     (xor_to_sbox[119:112] == 8'h5c) ? 8'h4a : 
				     (xor_to_sbox[119:112] == 8'h5d) ? 8'h4c : 
				     (xor_to_sbox[119:112] == 8'h5e) ? 8'h58 : 
				     (xor_to_sbox[119:112] == 8'h5f) ? 8'hcf : 

				     (xor_to_sbox[119:112] == 8'h60) ? 8'hd0 :	// row 6
				     (xor_to_sbox[119:112] == 8'h61) ? 8'hef : 
				     (xor_to_sbox[119:112] == 8'h62) ? 8'haa : 
				     (xor_to_sbox[119:112] == 8'h63) ? 8'hfb : 
				     (xor_to_sbox[119:112] == 8'h64) ? 8'h43 : 
				     (xor_to_sbox[119:112] == 8'h65) ? 8'h4d : 
				     (xor_to_sbox[119:112] == 8'h66) ? 8'h33 : 
				     (xor_to_sbox[119:112] == 8'h67) ? 8'h85 : 
				     (xor_to_sbox[119:112] == 8'h68) ? 8'h45 : 
				     (xor_to_sbox[119:112] == 8'h69) ? 8'hf9 : 
				     (xor_to_sbox[119:112] == 8'h6a) ? 8'h02 : 
				     (xor_to_sbox[119:112] == 8'h6b) ? 8'h7f : 
				     (xor_to_sbox[119:112] == 8'h6c) ? 8'h50 : 
				     (xor_to_sbox[119:112] == 8'h6d) ? 8'h3c : 
				     (xor_to_sbox[119:112] == 8'h6e) ? 8'h9f : 
				     (xor_to_sbox[119:112] == 8'h6f) ? 8'ha8 : 

				     (xor_to_sbox[119:112] == 8'h70) ? 8'h51 :	// row 7
				     (xor_to_sbox[119:112] == 8'h71) ? 8'ha3 : 
				     (xor_to_sbox[119:112] == 8'h72) ? 8'h40 : 
				     (xor_to_sbox[119:112] == 8'h73) ? 8'h8f : 
				     (xor_to_sbox[119:112] == 8'h74) ? 8'h92 : 
				     (xor_to_sbox[119:112] == 8'h75) ? 8'h9d : 
				     (xor_to_sbox[119:112] == 8'h76) ? 8'h38 : 
				     (xor_to_sbox[119:112] == 8'h77) ? 8'hf5 : 
				     (xor_to_sbox[119:112] == 8'h78) ? 8'hbc : 
				     (xor_to_sbox[119:112] == 8'h79) ? 8'hb6 : 
				     (xor_to_sbox[119:112] == 8'h7a) ? 8'hda : 
				     (xor_to_sbox[119:112] == 8'h7b) ? 8'h21 : 
				     (xor_to_sbox[119:112] == 8'h7c) ? 8'h10 : 
				     (xor_to_sbox[119:112] == 8'h7d) ? 8'hff : 
				     (xor_to_sbox[119:112] == 8'h7e) ? 8'hf3 : 
				     (xor_to_sbox[119:112] == 8'h7f) ? 8'hd2 : 

				     (xor_to_sbox[119:112] == 8'h80) ? 8'hcd :	// row 8
				     (xor_to_sbox[119:112] == 8'h81) ? 8'h0c : 
				     (xor_to_sbox[119:112] == 8'h82) ? 8'h13 : 
				     (xor_to_sbox[119:112] == 8'h83) ? 8'hec : 
				     (xor_to_sbox[119:112] == 8'h84) ? 8'h5f : 
				     (xor_to_sbox[119:112] == 8'h85) ? 8'h97 : 
				     (xor_to_sbox[119:112] == 8'h86) ? 8'h44 : 
				     (xor_to_sbox[119:112] == 8'h87) ? 8'h17 : 
				     (xor_to_sbox[119:112] == 8'h88) ? 8'hc4 : 
				     (xor_to_sbox[119:112] == 8'h89) ? 8'ha7 : 
				     (xor_to_sbox[119:112] == 8'h8a) ? 8'h7e : 
				     (xor_to_sbox[119:112] == 8'h8b) ? 8'h3d : 
				     (xor_to_sbox[119:112] == 8'h8c) ? 8'h64 : 
				     (xor_to_sbox[119:112] == 8'h8d) ? 8'h5d : 
				     (xor_to_sbox[119:112] == 8'h8e) ? 8'h19 : 
				     (xor_to_sbox[119:112] == 8'h8f) ? 8'h73 : 

				     (xor_to_sbox[119:112] == 8'h90) ? 8'h60 :	// row 9
				     (xor_to_sbox[119:112] == 8'h91) ? 8'h81 : 
				     (xor_to_sbox[119:112] == 8'h92) ? 8'h4f : 
				     (xor_to_sbox[119:112] == 8'h93) ? 8'hdc : 
				     (xor_to_sbox[119:112] == 8'h94) ? 8'h22 : 
				     (xor_to_sbox[119:112] == 8'h95) ? 8'h2a : 
				     (xor_to_sbox[119:112] == 8'h96) ? 8'h90 : 
				     (xor_to_sbox[119:112] == 8'h97) ? 8'h88 : 
				     (xor_to_sbox[119:112] == 8'h98) ? 8'h46 : 
				     (xor_to_sbox[119:112] == 8'h99) ? 8'hee : 
				     (xor_to_sbox[119:112] == 8'h9a) ? 8'hb8 : 
				     (xor_to_sbox[119:112] == 8'h9b) ? 8'h14 : 
				     (xor_to_sbox[119:112] == 8'h9c) ? 8'hde : 
				     (xor_to_sbox[119:112] == 8'h9d) ? 8'h5e : 
				     (xor_to_sbox[119:112] == 8'h9e) ? 8'h0b : 
				     (xor_to_sbox[119:112] == 8'h9f) ? 8'hdb : 

				     (xor_to_sbox[119:112] == 8'ha0) ? 8'he0 :	// row a
				     (xor_to_sbox[119:112] == 8'ha1) ? 8'h32 : 
				     (xor_to_sbox[119:112] == 8'ha2) ? 8'h3a : 
				     (xor_to_sbox[119:112] == 8'ha3) ? 8'h0a : 
				     (xor_to_sbox[119:112] == 8'ha4) ? 8'h49 : 
				     (xor_to_sbox[119:112] == 8'ha5) ? 8'h06 : 
				     (xor_to_sbox[119:112] == 8'ha6) ? 8'h24 : 
				     (xor_to_sbox[119:112] == 8'ha7) ? 8'h5c : 
				     (xor_to_sbox[119:112] == 8'ha8) ? 8'hc2 : 
				     (xor_to_sbox[119:112] == 8'ha9) ? 8'hd3 : 
				     (xor_to_sbox[119:112] == 8'haa) ? 8'hac : 
				     (xor_to_sbox[119:112] == 8'hab) ? 8'h62 : 
				     (xor_to_sbox[119:112] == 8'hac) ? 8'h91 : 
				     (xor_to_sbox[119:112] == 8'had) ? 8'h95 : 
				     (xor_to_sbox[119:112] == 8'hae) ? 8'he4 : 
				     (xor_to_sbox[119:112] == 8'haf) ? 8'h79 : 

				     (xor_to_sbox[119:112] == 8'hb0) ? 8'he7 :	// row b
				     (xor_to_sbox[119:112] == 8'hb1) ? 8'hc8 : 
				     (xor_to_sbox[119:112] == 8'hb2) ? 8'h37 : 
				     (xor_to_sbox[119:112] == 8'hb3) ? 8'h6d : 
				     (xor_to_sbox[119:112] == 8'hb4) ? 8'h8d : 
				     (xor_to_sbox[119:112] == 8'hb5) ? 8'hd5 : 
				     (xor_to_sbox[119:112] == 8'hb6) ? 8'h4e : 
				     (xor_to_sbox[119:112] == 8'hb7) ? 8'ha9 : 
				     (xor_to_sbox[119:112] == 8'hb8) ? 8'h6c : 
				     (xor_to_sbox[119:112] == 8'hb9) ? 8'h56 : 
				     (xor_to_sbox[119:112] == 8'hba) ? 8'hf4 : 
				     (xor_to_sbox[119:112] == 8'hbb) ? 8'hea : 
				     (xor_to_sbox[119:112] == 8'hbc) ? 8'h65 : 
				     (xor_to_sbox[119:112] == 8'hbd) ? 8'h7a : 
				     (xor_to_sbox[119:112] == 8'hbe) ? 8'hae : 
				     (xor_to_sbox[119:112] == 8'hbf) ? 8'h08 : 

				     (xor_to_sbox[119:112] == 8'hc0) ? 8'hba :	// row c
				     (xor_to_sbox[119:112] == 8'hc1) ? 8'h78 : 
				     (xor_to_sbox[119:112] == 8'hc2) ? 8'h25 : 
				     (xor_to_sbox[119:112] == 8'hc3) ? 8'h2e : 
				     (xor_to_sbox[119:112] == 8'hc4) ? 8'h1c : 
				     (xor_to_sbox[119:112] == 8'hc5) ? 8'ha6 : 
				     (xor_to_sbox[119:112] == 8'hc6) ? 8'hb4 : 
				     (xor_to_sbox[119:112] == 8'hc7) ? 8'hc6 : 
				     (xor_to_sbox[119:112] == 8'hc8) ? 8'he8 : 
				     (xor_to_sbox[119:112] == 8'hc9) ? 8'hdd : 
				     (xor_to_sbox[119:112] == 8'hca) ? 8'h74 : 
				     (xor_to_sbox[119:112] == 8'hcb) ? 8'h1f : 
				     (xor_to_sbox[119:112] == 8'hcc) ? 8'h4b : 
				     (xor_to_sbox[119:112] == 8'hcd) ? 8'hbd : 
				     (xor_to_sbox[119:112] == 8'hce) ? 8'h8b : 
				     (xor_to_sbox[119:112] == 8'hcf) ? 8'h8a : 

				     (xor_to_sbox[119:112] == 8'hd0) ? 8'h70 :	// row d
				     (xor_to_sbox[119:112] == 8'hd1) ? 8'h3e : 
				     (xor_to_sbox[119:112] == 8'hd2) ? 8'hb5 : 
				     (xor_to_sbox[119:112] == 8'hd3) ? 8'h66 : 
				     (xor_to_sbox[119:112] == 8'hd4) ? 8'h48 : 
				     (xor_to_sbox[119:112] == 8'hd5) ? 8'h03 : 
				     (xor_to_sbox[119:112] == 8'hd6) ? 8'hf6 : 
				     (xor_to_sbox[119:112] == 8'hd7) ? 8'h0e : 
				     (xor_to_sbox[119:112] == 8'hd8) ? 8'h61 : 
				     (xor_to_sbox[119:112] == 8'hd9) ? 8'h35 : 
				     (xor_to_sbox[119:112] == 8'hda) ? 8'h57 : 
				     (xor_to_sbox[119:112] == 8'hdb) ? 8'hb9 : 
				     (xor_to_sbox[119:112] == 8'hdc) ? 8'h86 : 
				     (xor_to_sbox[119:112] == 8'hdd) ? 8'hc1 : 
				     (xor_to_sbox[119:112] == 8'hde) ? 8'h1d : 
				     (xor_to_sbox[119:112] == 8'hdf) ? 8'h9e : 

				     (xor_to_sbox[119:112] == 8'he0) ? 8'he1 :	// row e
				     (xor_to_sbox[119:112] == 8'he1) ? 8'hf8 : 
				     (xor_to_sbox[119:112] == 8'he2) ? 8'h98 : 
				     (xor_to_sbox[119:112] == 8'he3) ? 8'h11 : 
				     (xor_to_sbox[119:112] == 8'he4) ? 8'h69 : 
				     (xor_to_sbox[119:112] == 8'he5) ? 8'hd9 : 
				     (xor_to_sbox[119:112] == 8'he6) ? 8'h8e : 
				     (xor_to_sbox[119:112] == 8'he7) ? 8'h94 : 
				     (xor_to_sbox[119:112] == 8'he8) ? 8'h9b : 
				     (xor_to_sbox[119:112] == 8'he9) ? 8'h1e : 
				     (xor_to_sbox[119:112] == 8'hea) ? 8'h87 : 
				     (xor_to_sbox[119:112] == 8'heb) ? 8'he9 : 
				     (xor_to_sbox[119:112] == 8'hec) ? 8'hce : 
				     (xor_to_sbox[119:112] == 8'hed) ? 8'h55 : 
				     (xor_to_sbox[119:112] == 8'hee) ? 8'h28 : 
				     (xor_to_sbox[119:112] == 8'hef) ? 8'hdf : 

				     (xor_to_sbox[119:112] == 8'hf0) ? 8'h8c :	// row f
				     (xor_to_sbox[119:112] == 8'hf1) ? 8'ha1 : 
				     (xor_to_sbox[119:112] == 8'hf2) ? 8'h89 : 
				     (xor_to_sbox[119:112] == 8'hf3) ? 8'h0d : 
				     (xor_to_sbox[119:112] == 8'hf4) ? 8'hbf : 
				     (xor_to_sbox[119:112] == 8'hf5) ? 8'he6 : 
				     (xor_to_sbox[119:112] == 8'hf6) ? 8'h42 : 
				     (xor_to_sbox[119:112] == 8'hf7) ? 8'h68 : 
				     (xor_to_sbox[119:112] == 8'hf8) ? 8'h41 : 
				     (xor_to_sbox[119:112] == 8'hf9) ? 8'h99 : 
				     (xor_to_sbox[119:112] == 8'hfa) ? 8'h2d : 
				     (xor_to_sbox[119:112] == 8'hfb) ? 8'h0f : 
				     (xor_to_sbox[119:112] == 8'hfc) ? 8'hb0 : 
				     (xor_to_sbox[119:112] == 8'hfd) ? 8'h54 : 
				     (xor_to_sbox[119:112] == 8'hfe) ? 8'hbb : 
				     (xor_to_sbox[119:112] == 8'hff) ? 8'h16 : 8'hxx;
					  
assign sbox_to_rows[127:120] = (xor_to_sbox[127:120] == 8'h00) ? 8'h63 :	// row 0
				     (xor_to_sbox[127:120] == 8'h01) ? 8'h7c : 
				     (xor_to_sbox[127:120] == 8'h02) ? 8'h77 : 
				     (xor_to_sbox[127:120] == 8'h03) ? 8'h7b : 
				     (xor_to_sbox[127:120] == 8'h04) ? 8'hf2 : 
				     (xor_to_sbox[127:120] == 8'h05) ? 8'h6b : 
				     (xor_to_sbox[127:120] == 8'h06) ? 8'h6f : 
				     (xor_to_sbox[127:120] == 8'h07) ? 8'hc5 : 
				     (xor_to_sbox[127:120] == 8'h08) ? 8'h30 : 
				     (xor_to_sbox[127:120] == 8'h09) ? 8'h01 : 
				     (xor_to_sbox[127:120] == 8'h0a) ? 8'h67 : 
				     (xor_to_sbox[127:120] == 8'h0b) ? 8'h2b : 
				     (xor_to_sbox[127:120] == 8'h0c) ? 8'hfe : 
				     (xor_to_sbox[127:120] == 8'h0d) ? 8'hd7 : 
				     (xor_to_sbox[127:120] == 8'h0e) ? 8'hab : 
				     (xor_to_sbox[127:120] == 8'h0f) ? 8'h76 : 

				     (xor_to_sbox[127:120] == 8'h10) ? 8'hca :	// row 1
				     (xor_to_sbox[127:120] == 8'h11) ? 8'h82 : 
				     (xor_to_sbox[127:120] == 8'h12) ? 8'hc9 : 
				     (xor_to_sbox[127:120] == 8'h13) ? 8'h7d : 
				     (xor_to_sbox[127:120] == 8'h14) ? 8'hfa : 
				     (xor_to_sbox[127:120] == 8'h15) ? 8'h59 : 
				     (xor_to_sbox[127:120] == 8'h16) ? 8'h47 : 
				     (xor_to_sbox[127:120] == 8'h17) ? 8'hf0 : 
				     (xor_to_sbox[127:120] == 8'h18) ? 8'had : 
				     (xor_to_sbox[127:120] == 8'h19) ? 8'hd4 : 
				     (xor_to_sbox[127:120] == 8'h1a) ? 8'ha2 : 
				     (xor_to_sbox[127:120] == 8'h1b) ? 8'haf : 
				     (xor_to_sbox[127:120] == 8'h1c) ? 8'h9c : 
				     (xor_to_sbox[127:120] == 8'h1d) ? 8'ha4 : 
				     (xor_to_sbox[127:120] == 8'h1e) ? 8'h72 : 
				     (xor_to_sbox[127:120] == 8'h1f) ? 8'hc0 : 

				     (xor_to_sbox[127:120] == 8'h20) ? 8'hb7 :	// row 2
				     (xor_to_sbox[127:120] == 8'h21) ? 8'hfd : 
				     (xor_to_sbox[127:120] == 8'h22) ? 8'h93 : 
				     (xor_to_sbox[127:120] == 8'h23) ? 8'h26 : 
				     (xor_to_sbox[127:120] == 8'h24) ? 8'h36 : 
				     (xor_to_sbox[127:120] == 8'h25) ? 8'h3f : 
				     (xor_to_sbox[127:120] == 8'h26) ? 8'hf7 : 
				     (xor_to_sbox[127:120] == 8'h27) ? 8'hcc : 
				     (xor_to_sbox[127:120] == 8'h28) ? 8'h34 : 
				     (xor_to_sbox[127:120] == 8'h29) ? 8'ha5 : 
				     (xor_to_sbox[127:120] == 8'h2a) ? 8'he5 : 
				     (xor_to_sbox[127:120] == 8'h2b) ? 8'hf1 : 
				     (xor_to_sbox[127:120] == 8'h2c) ? 8'h71 : 
				     (xor_to_sbox[127:120] == 8'h2d) ? 8'hd8 : 
				     (xor_to_sbox[127:120] == 8'h2e) ? 8'h31 : 
				     (xor_to_sbox[127:120] == 8'h2f) ? 8'h15 :

				     (xor_to_sbox[127:120] == 8'h30) ? 8'h04 : 	// row 3
				     (xor_to_sbox[127:120] == 8'h31) ? 8'hc7 : 
				     (xor_to_sbox[127:120] == 8'h32) ? 8'h23 : 
				     (xor_to_sbox[127:120] == 8'h33) ? 8'hc3 : 
				     (xor_to_sbox[127:120] == 8'h34) ? 8'h18 : 
				     (xor_to_sbox[127:120] == 8'h35) ? 8'h96 : 
				     (xor_to_sbox[127:120] == 8'h36) ? 8'h05 : 
				     (xor_to_sbox[127:120] == 8'h37) ? 8'h9a : 
				     (xor_to_sbox[127:120] == 8'h38) ? 8'h07 : 
				     (xor_to_sbox[127:120] == 8'h39) ? 8'h12 : 
				     (xor_to_sbox[127:120] == 8'h3a) ? 8'h80 : 
				     (xor_to_sbox[127:120] == 8'h3b) ? 8'he2 : 
				     (xor_to_sbox[127:120] == 8'h3c) ? 8'heb : 
				     (xor_to_sbox[127:120] == 8'h3d) ? 8'h27 : 
				     (xor_to_sbox[127:120] == 8'h3e) ? 8'hb2 : 
				     (xor_to_sbox[127:120] == 8'h3f) ? 8'h75 : 

				     (xor_to_sbox[127:120] == 8'h40) ? 8'h09 :	// row 4
				     (xor_to_sbox[127:120] == 8'h41) ? 8'h83 : 
				     (xor_to_sbox[127:120] == 8'h42) ? 8'h2c : 
				     (xor_to_sbox[127:120] == 8'h43) ? 8'h1a : 
				     (xor_to_sbox[127:120] == 8'h44) ? 8'h1b : 
				     (xor_to_sbox[127:120] == 8'h45) ? 8'h6e : 
				     (xor_to_sbox[127:120] == 8'h46) ? 8'h5a : 
				     (xor_to_sbox[127:120] == 8'h47) ? 8'ha0 : 
				     (xor_to_sbox[127:120] == 8'h48) ? 8'h52 : 
				     (xor_to_sbox[127:120] == 8'h49) ? 8'h3b : 
				     (xor_to_sbox[127:120] == 8'h4a) ? 8'hd6 : 
				     (xor_to_sbox[127:120] == 8'h4b) ? 8'hb3 : 
				     (xor_to_sbox[127:120] == 8'h4c) ? 8'h29 : 
				     (xor_to_sbox[127:120] == 8'h4d) ? 8'he3 : 
				     (xor_to_sbox[127:120] == 8'h4e) ? 8'h2f : 
				     (xor_to_sbox[127:120] == 8'h4f) ? 8'h84 : 

				     (xor_to_sbox[127:120] == 8'h50) ? 8'h53 :	// row 5
				     (xor_to_sbox[127:120] == 8'h51) ? 8'hd1 : 
				     (xor_to_sbox[127:120] == 8'h52) ? 8'h00 : 
				     (xor_to_sbox[127:120] == 8'h53) ? 8'hed : 
				     (xor_to_sbox[127:120] == 8'h54) ? 8'h20 : 
				     (xor_to_sbox[127:120] == 8'h55) ? 8'hfc : 
				     (xor_to_sbox[127:120] == 8'h56) ? 8'hb1 : 
				     (xor_to_sbox[127:120] == 8'h57) ? 8'h5b : 
				     (xor_to_sbox[127:120] == 8'h58) ? 8'h6a : 
				     (xor_to_sbox[127:120] == 8'h59) ? 8'hcb : 
				     (xor_to_sbox[127:120] == 8'h5a) ? 8'hbe : 
				     (xor_to_sbox[127:120] == 8'h5b) ? 8'h39 : 
				     (xor_to_sbox[127:120] == 8'h5c) ? 8'h4a : 
				     (xor_to_sbox[127:120] == 8'h5d) ? 8'h4c : 
				     (xor_to_sbox[127:120] == 8'h5e) ? 8'h58 : 
				     (xor_to_sbox[127:120] == 8'h5f) ? 8'hcf : 

				     (xor_to_sbox[127:120] == 8'h60) ? 8'hd0 :	// row 6
				     (xor_to_sbox[127:120] == 8'h61) ? 8'hef : 
				     (xor_to_sbox[127:120] == 8'h62) ? 8'haa : 
				     (xor_to_sbox[127:120] == 8'h63) ? 8'hfb : 
				     (xor_to_sbox[127:120] == 8'h64) ? 8'h43 : 
				     (xor_to_sbox[127:120] == 8'h65) ? 8'h4d : 
				     (xor_to_sbox[127:120] == 8'h66) ? 8'h33 : 
				     (xor_to_sbox[127:120] == 8'h67) ? 8'h85 : 
				     (xor_to_sbox[127:120] == 8'h68) ? 8'h45 : 
				     (xor_to_sbox[127:120] == 8'h69) ? 8'hf9 : 
				     (xor_to_sbox[127:120] == 8'h6a) ? 8'h02 : 
				     (xor_to_sbox[127:120] == 8'h6b) ? 8'h7f : 
				     (xor_to_sbox[127:120] == 8'h6c) ? 8'h50 : 
				     (xor_to_sbox[127:120] == 8'h6d) ? 8'h3c : 
				     (xor_to_sbox[127:120] == 8'h6e) ? 8'h9f : 
				     (xor_to_sbox[127:120] == 8'h6f) ? 8'ha8 : 

				     (xor_to_sbox[127:120] == 8'h70) ? 8'h51 :	// row 7
				     (xor_to_sbox[127:120] == 8'h71) ? 8'ha3 : 
				     (xor_to_sbox[127:120] == 8'h72) ? 8'h40 : 
				     (xor_to_sbox[127:120] == 8'h73) ? 8'h8f : 
				     (xor_to_sbox[127:120] == 8'h74) ? 8'h92 : 
				     (xor_to_sbox[127:120] == 8'h75) ? 8'h9d : 
				     (xor_to_sbox[127:120] == 8'h76) ? 8'h38 : 
				     (xor_to_sbox[127:120] == 8'h77) ? 8'hf5 : 
				     (xor_to_sbox[127:120] == 8'h78) ? 8'hbc : 
				     (xor_to_sbox[127:120] == 8'h79) ? 8'hb6 : 
				     (xor_to_sbox[127:120] == 8'h7a) ? 8'hda : 
				     (xor_to_sbox[127:120] == 8'h7b) ? 8'h21 : 
				     (xor_to_sbox[127:120] == 8'h7c) ? 8'h10 : 
				     (xor_to_sbox[127:120] == 8'h7d) ? 8'hff : 
				     (xor_to_sbox[127:120] == 8'h7e) ? 8'hf3 : 
				     (xor_to_sbox[127:120] == 8'h7f) ? 8'hd2 : 

				     (xor_to_sbox[127:120] == 8'h80) ? 8'hcd :	// row 8
				     (xor_to_sbox[127:120] == 8'h81) ? 8'h0c : 
				     (xor_to_sbox[127:120] == 8'h82) ? 8'h13 : 
				     (xor_to_sbox[127:120] == 8'h83) ? 8'hec : 
				     (xor_to_sbox[127:120] == 8'h84) ? 8'h5f : 
				     (xor_to_sbox[127:120] == 8'h85) ? 8'h97 : 
				     (xor_to_sbox[127:120] == 8'h86) ? 8'h44 : 
				     (xor_to_sbox[127:120] == 8'h87) ? 8'h17 : 
				     (xor_to_sbox[127:120] == 8'h88) ? 8'hc4 : 
				     (xor_to_sbox[127:120] == 8'h89) ? 8'ha7 : 
				     (xor_to_sbox[127:120] == 8'h8a) ? 8'h7e : 
				     (xor_to_sbox[127:120] == 8'h8b) ? 8'h3d : 
				     (xor_to_sbox[127:120] == 8'h8c) ? 8'h64 : 
				     (xor_to_sbox[127:120] == 8'h8d) ? 8'h5d : 
				     (xor_to_sbox[127:120] == 8'h8e) ? 8'h19 : 
				     (xor_to_sbox[127:120] == 8'h8f) ? 8'h73 : 

				     (xor_to_sbox[127:120] == 8'h90) ? 8'h60 :	// row 9
				     (xor_to_sbox[127:120] == 8'h91) ? 8'h81 : 
				     (xor_to_sbox[127:120] == 8'h92) ? 8'h4f : 
				     (xor_to_sbox[127:120] == 8'h93) ? 8'hdc : 
				     (xor_to_sbox[127:120] == 8'h94) ? 8'h22 : 
				     (xor_to_sbox[127:120] == 8'h95) ? 8'h2a : 
				     (xor_to_sbox[127:120] == 8'h96) ? 8'h90 : 
				     (xor_to_sbox[127:120] == 8'h97) ? 8'h88 : 
				     (xor_to_sbox[127:120] == 8'h98) ? 8'h46 : 
				     (xor_to_sbox[127:120] == 8'h99) ? 8'hee : 
				     (xor_to_sbox[127:120] == 8'h9a) ? 8'hb8 : 
				     (xor_to_sbox[127:120] == 8'h9b) ? 8'h14 : 
				     (xor_to_sbox[127:120] == 8'h9c) ? 8'hde : 
				     (xor_to_sbox[127:120] == 8'h9d) ? 8'h5e : 
				     (xor_to_sbox[127:120] == 8'h9e) ? 8'h0b : 
				     (xor_to_sbox[127:120] == 8'h9f) ? 8'hdb : 

				     (xor_to_sbox[127:120] == 8'ha0) ? 8'he0 :	// row a
				     (xor_to_sbox[127:120] == 8'ha1) ? 8'h32 : 
				     (xor_to_sbox[127:120] == 8'ha2) ? 8'h3a : 
				     (xor_to_sbox[127:120] == 8'ha3) ? 8'h0a : 
				     (xor_to_sbox[127:120] == 8'ha4) ? 8'h49 : 
				     (xor_to_sbox[127:120] == 8'ha5) ? 8'h06 : 
				     (xor_to_sbox[127:120] == 8'ha6) ? 8'h24 : 
				     (xor_to_sbox[127:120] == 8'ha7) ? 8'h5c : 
				     (xor_to_sbox[127:120] == 8'ha8) ? 8'hc2 : 
				     (xor_to_sbox[127:120] == 8'ha9) ? 8'hd3 : 
				     (xor_to_sbox[127:120] == 8'haa) ? 8'hac : 
				     (xor_to_sbox[127:120] == 8'hab) ? 8'h62 : 
				     (xor_to_sbox[127:120] == 8'hac) ? 8'h91 : 
				     (xor_to_sbox[127:120] == 8'had) ? 8'h95 : 
				     (xor_to_sbox[127:120] == 8'hae) ? 8'he4 : 
				     (xor_to_sbox[127:120] == 8'haf) ? 8'h79 : 

				     (xor_to_sbox[127:120] == 8'hb0) ? 8'he7 :	// row b
				     (xor_to_sbox[127:120] == 8'hb1) ? 8'hc8 : 
				     (xor_to_sbox[127:120] == 8'hb2) ? 8'h37 : 
				     (xor_to_sbox[127:120] == 8'hb3) ? 8'h6d : 
				     (xor_to_sbox[127:120] == 8'hb4) ? 8'h8d : 
				     (xor_to_sbox[127:120] == 8'hb5) ? 8'hd5 : 
				     (xor_to_sbox[127:120] == 8'hb6) ? 8'h4e : 
				     (xor_to_sbox[127:120] == 8'hb7) ? 8'ha9 : 
				     (xor_to_sbox[127:120] == 8'hb8) ? 8'h6c : 
				     (xor_to_sbox[127:120] == 8'hb9) ? 8'h56 : 
				     (xor_to_sbox[127:120] == 8'hba) ? 8'hf4 : 
				     (xor_to_sbox[127:120] == 8'hbb) ? 8'hea : 
				     (xor_to_sbox[127:120] == 8'hbc) ? 8'h65 : 
				     (xor_to_sbox[127:120] == 8'hbd) ? 8'h7a : 
				     (xor_to_sbox[127:120] == 8'hbe) ? 8'hae : 
				     (xor_to_sbox[127:120] == 8'hbf) ? 8'h08 : 

				     (xor_to_sbox[127:120] == 8'hc0) ? 8'hba :	// row c
				     (xor_to_sbox[127:120] == 8'hc1) ? 8'h78 : 
				     (xor_to_sbox[127:120] == 8'hc2) ? 8'h25 : 
				     (xor_to_sbox[127:120] == 8'hc3) ? 8'h2e : 
				     (xor_to_sbox[127:120] == 8'hc4) ? 8'h1c : 
				     (xor_to_sbox[127:120] == 8'hc5) ? 8'ha6 : 
				     (xor_to_sbox[127:120] == 8'hc6) ? 8'hb4 : 
				     (xor_to_sbox[127:120] == 8'hc7) ? 8'hc6 : 
				     (xor_to_sbox[127:120] == 8'hc8) ? 8'he8 : 
				     (xor_to_sbox[127:120] == 8'hc9) ? 8'hdd : 
				     (xor_to_sbox[127:120] == 8'hca) ? 8'h74 : 
				     (xor_to_sbox[127:120] == 8'hcb) ? 8'h1f : 
				     (xor_to_sbox[127:120] == 8'hcc) ? 8'h4b : 
				     (xor_to_sbox[127:120] == 8'hcd) ? 8'hbd : 
				     (xor_to_sbox[127:120] == 8'hce) ? 8'h8b : 
				     (xor_to_sbox[127:120] == 8'hcf) ? 8'h8a : 

				     (xor_to_sbox[127:120] == 8'hd0) ? 8'h70 :	// row d
				     (xor_to_sbox[127:120] == 8'hd1) ? 8'h3e : 
				     (xor_to_sbox[127:120] == 8'hd2) ? 8'hb5 : 
				     (xor_to_sbox[127:120] == 8'hd3) ? 8'h66 : 
				     (xor_to_sbox[127:120] == 8'hd4) ? 8'h48 : 
				     (xor_to_sbox[127:120] == 8'hd5) ? 8'h03 : 
				     (xor_to_sbox[127:120] == 8'hd6) ? 8'hf6 : 
				     (xor_to_sbox[127:120] == 8'hd7) ? 8'h0e : 
				     (xor_to_sbox[127:120] == 8'hd8) ? 8'h61 : 
				     (xor_to_sbox[127:120] == 8'hd9) ? 8'h35 : 
				     (xor_to_sbox[127:120] == 8'hda) ? 8'h57 : 
				     (xor_to_sbox[127:120] == 8'hdb) ? 8'hb9 : 
				     (xor_to_sbox[127:120] == 8'hdc) ? 8'h86 : 
				     (xor_to_sbox[127:120] == 8'hdd) ? 8'hc1 : 
				     (xor_to_sbox[127:120] == 8'hde) ? 8'h1d : 
				     (xor_to_sbox[127:120] == 8'hdf) ? 8'h9e : 

				     (xor_to_sbox[127:120] == 8'he0) ? 8'he1 :	// row e
				     (xor_to_sbox[127:120] == 8'he1) ? 8'hf8 : 
				     (xor_to_sbox[127:120] == 8'he2) ? 8'h98 : 
				     (xor_to_sbox[127:120] == 8'he3) ? 8'h11 : 
				     (xor_to_sbox[127:120] == 8'he4) ? 8'h69 : 
				     (xor_to_sbox[127:120] == 8'he5) ? 8'hd9 : 
				     (xor_to_sbox[127:120] == 8'he6) ? 8'h8e : 
				     (xor_to_sbox[127:120] == 8'he7) ? 8'h94 : 
				     (xor_to_sbox[127:120] == 8'he8) ? 8'h9b : 
				     (xor_to_sbox[127:120] == 8'he9) ? 8'h1e : 
				     (xor_to_sbox[127:120] == 8'hea) ? 8'h87 : 
				     (xor_to_sbox[127:120] == 8'heb) ? 8'he9 : 
				     (xor_to_sbox[127:120] == 8'hec) ? 8'hce : 
				     (xor_to_sbox[127:120] == 8'hed) ? 8'h55 : 
				     (xor_to_sbox[127:120] == 8'hee) ? 8'h28 : 
				     (xor_to_sbox[127:120] == 8'hef) ? 8'hdf : 

				     (xor_to_sbox[127:120] == 8'hf0) ? 8'h8c :	// row f
				     (xor_to_sbox[127:120] == 8'hf1) ? 8'ha1 : 
				     (xor_to_sbox[127:120] == 8'hf2) ? 8'h89 : 
				     (xor_to_sbox[127:120] == 8'hf3) ? 8'h0d : 
				     (xor_to_sbox[127:120] == 8'hf4) ? 8'hbf : 
				     (xor_to_sbox[127:120] == 8'hf5) ? 8'he6 : 
				     (xor_to_sbox[127:120] == 8'hf6) ? 8'h42 : 
				     (xor_to_sbox[127:120] == 8'hf7) ? 8'h68 : 
				     (xor_to_sbox[127:120] == 8'hf8) ? 8'h41 : 
				     (xor_to_sbox[127:120] == 8'hf9) ? 8'h99 : 
				     (xor_to_sbox[127:120] == 8'hfa) ? 8'h2d : 
				     (xor_to_sbox[127:120] == 8'hfb) ? 8'h0f : 
				     (xor_to_sbox[127:120] == 8'hfc) ? 8'hb0 : 
				     (xor_to_sbox[127:120] == 8'hfd) ? 8'h54 : 
				     (xor_to_sbox[127:120] == 8'hfe) ? 8'hbb : 
				     (xor_to_sbox[127:120] == 8'hff) ? 8'h16 : 8'hxx;

					  

endmodule