module InvSBox(InvRows_to_InvSbox, InvSBox_out);

input[127:0] InvRows_to_InvSbox;
output[127:0] InvSBox_out;

// output byte determined by Lookup Table
assign InvSBox_out[0+7:0] = (InvRows_to_InvSbox[0+7:0] == 8'h00) ? 8'h52 :	// row 0
				     (InvRows_to_InvSbox[0+7:0] == 8'h01) ? 8'h09 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h02) ? 8'h6a : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h03) ? 8'hd5 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h04) ? 8'h30 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h05) ? 8'h36 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h06) ? 8'ha5 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h07) ? 8'h38 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h08) ? 8'hbf : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h09) ? 8'h40 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h0a) ? 8'ha3 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h0b) ? 8'h9e : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h0c) ? 8'h81 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h0d) ? 8'hf3 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h0e) ? 8'hd7 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h0f) ? 8'hfb : 

				     (InvRows_to_InvSbox[0+7:0] == 8'h10) ? 8'h7c :	// row 1
				     (InvRows_to_InvSbox[0+7:0] == 8'h11) ? 8'he3 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h12) ? 8'h39 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h13) ? 8'h82 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h14) ? 8'h9b : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h15) ? 8'h2f : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h16) ? 8'hff : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h17) ? 8'h87 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h18) ? 8'h34 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h19) ? 8'h8e : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h1a) ? 8'h43 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h1b) ? 8'h44 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h1c) ? 8'hc4 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h1d) ? 8'hde : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h1e) ? 8'he9 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h1f) ? 8'hcb : 

				     (InvRows_to_InvSbox[0+7:0] == 8'h20) ? 8'h54 :	// row 2
				     (InvRows_to_InvSbox[0+7:0] == 8'h21) ? 8'h7b : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h22) ? 8'h94 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h23) ? 8'h32 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h24) ? 8'ha6 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h25) ? 8'hc2 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h26) ? 8'h23 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h27) ? 8'h3d : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h28) ? 8'hee : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h29) ? 8'h4c : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h2a) ? 8'h95 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h2b) ? 8'h0b : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h2c) ? 8'h42 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h2d) ? 8'hfa : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h2e) ? 8'hc3 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h2f) ? 8'h4e :

				     (InvRows_to_InvSbox[0+7:0] == 8'h30) ? 8'h08 : 	// row 3
				     (InvRows_to_InvSbox[0+7:0] == 8'h31) ? 8'h2e : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h32) ? 8'ha1 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h33) ? 8'h66 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h34) ? 8'h28 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h35) ? 8'hd9 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h36) ? 8'h24 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h37) ? 8'hb2 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h38) ? 8'h76 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h39) ? 8'h5b : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h3a) ? 8'ha2 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h3b) ? 8'h49 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h3c) ? 8'h6d : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h3d) ? 8'h8b : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h3e) ? 8'hd1 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h3f) ? 8'h25 : 

				     (InvRows_to_InvSbox[0+7:0] == 8'h40) ? 8'h72 :	// row 4
				     (InvRows_to_InvSbox[0+7:0] == 8'h41) ? 8'hf8 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h42) ? 8'hf6 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h43) ? 8'h64 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h44) ? 8'h86 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h45) ? 8'h68 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h46) ? 8'h98 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h47) ? 8'h16 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h48) ? 8'hd4 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h49) ? 8'ha4 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h4a) ? 8'h5c : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h4b) ? 8'hcc : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h4c) ? 8'h5d : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h4d) ? 8'h65 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h4e) ? 8'hb6 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h4f) ? 8'h92 : 

				     (InvRows_to_InvSbox[0+7:0] == 8'h50) ? 8'h6c :	// row 5
				     (InvRows_to_InvSbox[0+7:0] == 8'h51) ? 8'h70 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h52) ? 8'h48 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h53) ? 8'h50 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h54) ? 8'hfd : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h55) ? 8'hed : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h56) ? 8'hb9 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h57) ? 8'hda : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h58) ? 8'h5e : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h59) ? 8'h15 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h5a) ? 8'h46 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h5b) ? 8'h57 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h5c) ? 8'ha7 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h5d) ? 8'h8d : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h5e) ? 8'h9d : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h5f) ? 8'h84 : 

				     (InvRows_to_InvSbox[0+7:0] == 8'h60) ? 8'h90 :	// row 6
				     (InvRows_to_InvSbox[0+7:0] == 8'h61) ? 8'hd8 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h62) ? 8'hab : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h63) ? 8'h00 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h64) ? 8'h8c : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h65) ? 8'hbc : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h66) ? 8'hd3 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h67) ? 8'h0a : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h68) ? 8'hf7 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h69) ? 8'he4 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h6a) ? 8'h58 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h6b) ? 8'h05 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h6c) ? 8'hb8 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h6d) ? 8'hb3 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h6e) ? 8'h45 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h6f) ? 8'h06 : 

				     (InvRows_to_InvSbox[0+7:0] == 8'h70) ? 8'hd0 :	// row 7
				     (InvRows_to_InvSbox[0+7:0] == 8'h71) ? 8'h2c : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h72) ? 8'h1e : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h73) ? 8'h8f : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h74) ? 8'hca : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h75) ? 8'h3f : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h76) ? 8'h0f : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h77) ? 8'h02 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h78) ? 8'hc1 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h79) ? 8'haf : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h7a) ? 8'hbd : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h7b) ? 8'h03 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h7c) ? 8'h01 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h7d) ? 8'h13 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h7e) ? 8'h8a : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h7f) ? 8'h6b :
 
				     (InvRows_to_InvSbox[0+7:0] == 8'h80) ? 8'h3a :	// row 8
				     (InvRows_to_InvSbox[0+7:0] == 8'h81) ? 8'h91 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h82) ? 8'h11 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h83) ? 8'h41 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h84) ? 8'h4f : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h85) ? 8'h67 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h86) ? 8'hdc : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h87) ? 8'hea : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h88) ? 8'h97 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h89) ? 8'hf2 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h8a) ? 8'hcf : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h8b) ? 8'hce : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h8c) ? 8'hf0 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h8d) ? 8'hb4 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h8e) ? 8'he6 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h8f) ? 8'h73 :

				     (InvRows_to_InvSbox[0+7:0] == 8'h90) ? 8'h96 :	// row 9
				     (InvRows_to_InvSbox[0+7:0] == 8'h91) ? 8'hac : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h92) ? 8'h74 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h93) ? 8'h22 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h94) ? 8'he7 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h95) ? 8'had : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h96) ? 8'h35 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h97) ? 8'h85 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h98) ? 8'he2 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h99) ? 8'hf9 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h9a) ? 8'h37 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h9b) ? 8'he8 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h9c) ? 8'h1c : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h9d) ? 8'h75 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h9e) ? 8'hdf : 
				     (InvRows_to_InvSbox[0+7:0] == 8'h9f) ? 8'h6e : 

				     (InvRows_to_InvSbox[0+7:0] == 8'ha0) ? 8'h47 :	// row a
				     (InvRows_to_InvSbox[0+7:0] == 8'ha1) ? 8'hf1 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'ha2) ? 8'h1a : 
				     (InvRows_to_InvSbox[0+7:0] == 8'ha3) ? 8'h71 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'ha4) ? 8'h1d : 
				     (InvRows_to_InvSbox[0+7:0] == 8'ha5) ? 8'h29 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'ha6) ? 8'hc5 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'ha7) ? 8'h89 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'ha8) ? 8'h6f : 
				     (InvRows_to_InvSbox[0+7:0] == 8'ha9) ? 8'hb7 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'haa) ? 8'h62 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hab) ? 8'h0e : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hac) ? 8'haa : 
				     (InvRows_to_InvSbox[0+7:0] == 8'had) ? 8'h18 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hae) ? 8'hbe : 
				     (InvRows_to_InvSbox[0+7:0] == 8'haf) ? 8'h1b : 

				     (InvRows_to_InvSbox[0+7:0] == 8'hb0) ? 8'hfc :	// row b
				     (InvRows_to_InvSbox[0+7:0] == 8'hb1) ? 8'h56 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hb2) ? 8'h3e : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hb3) ? 8'h4b : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hb4) ? 8'hc6 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hb5) ? 8'hd2 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hb6) ? 8'h79 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hb7) ? 8'h20 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hb8) ? 8'h9a : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hb9) ? 8'hdb : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hba) ? 8'hc0 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hbb) ? 8'hfe : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hbc) ? 8'h78 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hbd) ? 8'hcd : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hbe) ? 8'h5a : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hbf) ? 8'hf4 : 

				     (InvRows_to_InvSbox[0+7:0] == 8'hc0) ? 8'h1f :	// row c
				     (InvRows_to_InvSbox[0+7:0] == 8'hc1) ? 8'hdd : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hc2) ? 8'ha8 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hc3) ? 8'h33 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hc4) ? 8'h88 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hc5) ? 8'h07 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hc6) ? 8'hc7 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hc7) ? 8'h31 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hc8) ? 8'hb1 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hc9) ? 8'h12 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hca) ? 8'h10 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hcb) ? 8'h59 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hcc) ? 8'h27 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hcd) ? 8'h80 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hce) ? 8'hec : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hcf) ? 8'h5f : 

				     (InvRows_to_InvSbox[0+7:0] == 8'hd0) ? 8'h60 :	// row d
				     (InvRows_to_InvSbox[0+7:0] == 8'hd1) ? 8'h51 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hd2) ? 8'h7f : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hd3) ? 8'ha9 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hd4) ? 8'h19 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hd5) ? 8'hb5 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hd6) ? 8'h4a : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hd7) ? 8'h0d : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hd8) ? 8'h2d : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hd9) ? 8'he5 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hda) ? 8'h7a : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hdb) ? 8'h9f : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hdc) ? 8'h93 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hdd) ? 8'hc9 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hde) ? 8'h9c : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hdf) ? 8'hef : 

				     (InvRows_to_InvSbox[0+7:0] == 8'he0) ? 8'ha0 :	// row e
				     (InvRows_to_InvSbox[0+7:0] == 8'he1) ? 8'he0 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'he2) ? 8'h3b : 
				     (InvRows_to_InvSbox[0+7:0] == 8'he3) ? 8'h4d : 
				     (InvRows_to_InvSbox[0+7:0] == 8'he4) ? 8'hae : 
				     (InvRows_to_InvSbox[0+7:0] == 8'he5) ? 8'h2a : 
				     (InvRows_to_InvSbox[0+7:0] == 8'he6) ? 8'hf5 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'he7) ? 8'hb0 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'he8) ? 8'hc8 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'he9) ? 8'heb : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hea) ? 8'hbb : 
				     (InvRows_to_InvSbox[0+7:0] == 8'heb) ? 8'h3c : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hec) ? 8'h83 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hed) ? 8'h53 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hee) ? 8'h99 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hef) ? 8'h61 :

				     (InvRows_to_InvSbox[0+7:0] == 8'hf0) ? 8'h17 :	// row f
				     (InvRows_to_InvSbox[0+7:0] == 8'hf1) ? 8'h2b : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hf2) ? 8'h04 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hf3) ? 8'h7e : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hf4) ? 8'hba : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hf5) ? 8'h77 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hf6) ? 8'hd6 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hf7) ? 8'h26 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hf8) ? 8'he1 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hf9) ? 8'h69 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hfa) ? 8'h14 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hfb) ? 8'h63 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hfc) ? 8'h55 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hfd) ? 8'h21 : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hfe) ? 8'h0c : 
				     (InvRows_to_InvSbox[0+7:0] == 8'hff) ? 8'h7d : 8'hxx;
					  
assign InvSBox_out[15:8] = (InvRows_to_InvSbox[15:8] == 8'h00) ? 8'h52 :	// row 0
				     (InvRows_to_InvSbox[15:8] == 8'h01) ? 8'h09 : 
				     (InvRows_to_InvSbox[15:8] == 8'h02) ? 8'h6a : 
				     (InvRows_to_InvSbox[15:8] == 8'h03) ? 8'hd5 : 
				     (InvRows_to_InvSbox[15:8] == 8'h04) ? 8'h30 : 
				     (InvRows_to_InvSbox[15:8] == 8'h05) ? 8'h36 : 
				     (InvRows_to_InvSbox[15:8] == 8'h06) ? 8'ha5 : 
				     (InvRows_to_InvSbox[15:8] == 8'h07) ? 8'h38 : 
				     (InvRows_to_InvSbox[15:8] == 8'h08) ? 8'hbf : 
				     (InvRows_to_InvSbox[15:8] == 8'h09) ? 8'h40 : 
				     (InvRows_to_InvSbox[15:8] == 8'h0a) ? 8'ha3 : 
				     (InvRows_to_InvSbox[15:8] == 8'h0b) ? 8'h9e : 
				     (InvRows_to_InvSbox[15:8] == 8'h0c) ? 8'h81 : 
				     (InvRows_to_InvSbox[15:8] == 8'h0d) ? 8'hf3 : 
				     (InvRows_to_InvSbox[15:8] == 8'h0e) ? 8'hd7 : 
				     (InvRows_to_InvSbox[15:8] == 8'h0f) ? 8'hfb : 

				     (InvRows_to_InvSbox[15:8] == 8'h10) ? 8'h7c :	// row 1
				     (InvRows_to_InvSbox[15:8] == 8'h11) ? 8'he3 : 
				     (InvRows_to_InvSbox[15:8] == 8'h12) ? 8'h39 : 
				     (InvRows_to_InvSbox[15:8] == 8'h13) ? 8'h82 : 
				     (InvRows_to_InvSbox[15:8] == 8'h14) ? 8'h9b : 
				     (InvRows_to_InvSbox[15:8] == 8'h15) ? 8'h2f : 
				     (InvRows_to_InvSbox[15:8] == 8'h16) ? 8'hff : 
				     (InvRows_to_InvSbox[15:8] == 8'h17) ? 8'h87 : 
				     (InvRows_to_InvSbox[15:8] == 8'h18) ? 8'h34 : 
				     (InvRows_to_InvSbox[15:8] == 8'h19) ? 8'h8e : 
				     (InvRows_to_InvSbox[15:8] == 8'h1a) ? 8'h43 : 
				     (InvRows_to_InvSbox[15:8] == 8'h1b) ? 8'h44 : 
				     (InvRows_to_InvSbox[15:8] == 8'h1c) ? 8'hc4 : 
				     (InvRows_to_InvSbox[15:8] == 8'h1d) ? 8'hde : 
				     (InvRows_to_InvSbox[15:8] == 8'h1e) ? 8'he9 : 
				     (InvRows_to_InvSbox[15:8] == 8'h1f) ? 8'hcb : 

				     (InvRows_to_InvSbox[15:8] == 8'h20) ? 8'h54 :	// row 2
				     (InvRows_to_InvSbox[15:8] == 8'h21) ? 8'h7b : 
				     (InvRows_to_InvSbox[15:8] == 8'h22) ? 8'h94 : 
				     (InvRows_to_InvSbox[15:8] == 8'h23) ? 8'h32 : 
				     (InvRows_to_InvSbox[15:8] == 8'h24) ? 8'ha6 : 
				     (InvRows_to_InvSbox[15:8] == 8'h25) ? 8'hc2 : 
				     (InvRows_to_InvSbox[15:8] == 8'h26) ? 8'h23 : 
				     (InvRows_to_InvSbox[15:8] == 8'h27) ? 8'h3d : 
				     (InvRows_to_InvSbox[15:8] == 8'h28) ? 8'hee : 
				     (InvRows_to_InvSbox[15:8] == 8'h29) ? 8'h4c : 
				     (InvRows_to_InvSbox[15:8] == 8'h2a) ? 8'h95 : 
				     (InvRows_to_InvSbox[15:8] == 8'h2b) ? 8'h0b : 
				     (InvRows_to_InvSbox[15:8] == 8'h2c) ? 8'h42 : 
				     (InvRows_to_InvSbox[15:8] == 8'h2d) ? 8'hfa : 
				     (InvRows_to_InvSbox[15:8] == 8'h2e) ? 8'hc3 : 
				     (InvRows_to_InvSbox[15:8] == 8'h2f) ? 8'h4e :

				     (InvRows_to_InvSbox[15:8] == 8'h30) ? 8'h08 : 	// row 3
				     (InvRows_to_InvSbox[15:8] == 8'h31) ? 8'h2e : 
				     (InvRows_to_InvSbox[15:8] == 8'h32) ? 8'ha1 : 
				     (InvRows_to_InvSbox[15:8] == 8'h33) ? 8'h66 : 
				     (InvRows_to_InvSbox[15:8] == 8'h34) ? 8'h28 : 
				     (InvRows_to_InvSbox[15:8] == 8'h35) ? 8'hd9 : 
				     (InvRows_to_InvSbox[15:8] == 8'h36) ? 8'h24 : 
				     (InvRows_to_InvSbox[15:8] == 8'h37) ? 8'hb2 : 
				     (InvRows_to_InvSbox[15:8] == 8'h38) ? 8'h76 : 
				     (InvRows_to_InvSbox[15:8] == 8'h39) ? 8'h5b : 
				     (InvRows_to_InvSbox[15:8] == 8'h3a) ? 8'ha2 : 
				     (InvRows_to_InvSbox[15:8] == 8'h3b) ? 8'h49 : 
				     (InvRows_to_InvSbox[15:8] == 8'h3c) ? 8'h6d : 
				     (InvRows_to_InvSbox[15:8] == 8'h3d) ? 8'h8b : 
				     (InvRows_to_InvSbox[15:8] == 8'h3e) ? 8'hd1 : 
				     (InvRows_to_InvSbox[15:8] == 8'h3f) ? 8'h25 : 

				     (InvRows_to_InvSbox[15:8] == 8'h40) ? 8'h72 :	// row 4
				     (InvRows_to_InvSbox[15:8] == 8'h41) ? 8'hf8 : 
				     (InvRows_to_InvSbox[15:8] == 8'h42) ? 8'hf6 : 
				     (InvRows_to_InvSbox[15:8] == 8'h43) ? 8'h64 : 
				     (InvRows_to_InvSbox[15:8] == 8'h44) ? 8'h86 : 
				     (InvRows_to_InvSbox[15:8] == 8'h45) ? 8'h68 : 
				     (InvRows_to_InvSbox[15:8] == 8'h46) ? 8'h98 : 
				     (InvRows_to_InvSbox[15:8] == 8'h47) ? 8'h16 : 
				     (InvRows_to_InvSbox[15:8] == 8'h48) ? 8'hd4 : 
				     (InvRows_to_InvSbox[15:8] == 8'h49) ? 8'ha4 : 
				     (InvRows_to_InvSbox[15:8] == 8'h4a) ? 8'h5c : 
				     (InvRows_to_InvSbox[15:8] == 8'h4b) ? 8'hcc : 
				     (InvRows_to_InvSbox[15:8] == 8'h4c) ? 8'h5d : 
				     (InvRows_to_InvSbox[15:8] == 8'h4d) ? 8'h65 : 
				     (InvRows_to_InvSbox[15:8] == 8'h4e) ? 8'hb6 : 
				     (InvRows_to_InvSbox[15:8] == 8'h4f) ? 8'h92 : 

				     (InvRows_to_InvSbox[15:8] == 8'h50) ? 8'h6c :	// row 5
				     (InvRows_to_InvSbox[15:8] == 8'h51) ? 8'h70 : 
				     (InvRows_to_InvSbox[15:8] == 8'h52) ? 8'h48 : 
				     (InvRows_to_InvSbox[15:8] == 8'h53) ? 8'h50 : 
				     (InvRows_to_InvSbox[15:8] == 8'h54) ? 8'hfd : 
				     (InvRows_to_InvSbox[15:8] == 8'h55) ? 8'hed : 
				     (InvRows_to_InvSbox[15:8] == 8'h56) ? 8'hb9 : 
				     (InvRows_to_InvSbox[15:8] == 8'h57) ? 8'hda : 
				     (InvRows_to_InvSbox[15:8] == 8'h58) ? 8'h5e : 
				     (InvRows_to_InvSbox[15:8] == 8'h59) ? 8'h15 : 
				     (InvRows_to_InvSbox[15:8] == 8'h5a) ? 8'h46 : 
				     (InvRows_to_InvSbox[15:8] == 8'h5b) ? 8'h57 : 
				     (InvRows_to_InvSbox[15:8] == 8'h5c) ? 8'ha7 : 
				     (InvRows_to_InvSbox[15:8] == 8'h5d) ? 8'h8d : 
				     (InvRows_to_InvSbox[15:8] == 8'h5e) ? 8'h9d : 
				     (InvRows_to_InvSbox[15:8] == 8'h5f) ? 8'h84 : 

				     (InvRows_to_InvSbox[15:8] == 8'h60) ? 8'h90 :	// row 6
				     (InvRows_to_InvSbox[15:8] == 8'h61) ? 8'hd8 : 
				     (InvRows_to_InvSbox[15:8] == 8'h62) ? 8'hab : 
				     (InvRows_to_InvSbox[15:8] == 8'h63) ? 8'h00 : 
				     (InvRows_to_InvSbox[15:8] == 8'h64) ? 8'h8c : 
				     (InvRows_to_InvSbox[15:8] == 8'h65) ? 8'hbc : 
				     (InvRows_to_InvSbox[15:8] == 8'h66) ? 8'hd3 : 
				     (InvRows_to_InvSbox[15:8] == 8'h67) ? 8'h0a : 
				     (InvRows_to_InvSbox[15:8] == 8'h68) ? 8'hf7 : 
				     (InvRows_to_InvSbox[15:8] == 8'h69) ? 8'he4 : 
				     (InvRows_to_InvSbox[15:8] == 8'h6a) ? 8'h58 : 
				     (InvRows_to_InvSbox[15:8] == 8'h6b) ? 8'h05 : 
				     (InvRows_to_InvSbox[15:8] == 8'h6c) ? 8'hb8 : 
				     (InvRows_to_InvSbox[15:8] == 8'h6d) ? 8'hb3 : 
				     (InvRows_to_InvSbox[15:8] == 8'h6e) ? 8'h45 : 
				     (InvRows_to_InvSbox[15:8] == 8'h6f) ? 8'h06 : 

				     (InvRows_to_InvSbox[15:8] == 8'h70) ? 8'hd0 :	// row 7
				     (InvRows_to_InvSbox[15:8] == 8'h71) ? 8'h2c : 
				     (InvRows_to_InvSbox[15:8] == 8'h72) ? 8'h1e : 
				     (InvRows_to_InvSbox[15:8] == 8'h73) ? 8'h8f : 
				     (InvRows_to_InvSbox[15:8] == 8'h74) ? 8'hca : 
				     (InvRows_to_InvSbox[15:8] == 8'h75) ? 8'h3f : 
				     (InvRows_to_InvSbox[15:8] == 8'h76) ? 8'h0f : 
				     (InvRows_to_InvSbox[15:8] == 8'h77) ? 8'h02 : 
				     (InvRows_to_InvSbox[15:8] == 8'h78) ? 8'hc1 : 
				     (InvRows_to_InvSbox[15:8] == 8'h79) ? 8'haf : 
				     (InvRows_to_InvSbox[15:8] == 8'h7a) ? 8'hbd : 
				     (InvRows_to_InvSbox[15:8] == 8'h7b) ? 8'h03 : 
				     (InvRows_to_InvSbox[15:8] == 8'h7c) ? 8'h01 : 
				     (InvRows_to_InvSbox[15:8] == 8'h7d) ? 8'h13 : 
				     (InvRows_to_InvSbox[15:8] == 8'h7e) ? 8'h8a : 
				     (InvRows_to_InvSbox[15:8] == 8'h7f) ? 8'h6b :
 
				     (InvRows_to_InvSbox[15:8] == 8'h80) ? 8'h3a :	// row 8
				     (InvRows_to_InvSbox[15:8] == 8'h81) ? 8'h91 : 
				     (InvRows_to_InvSbox[15:8] == 8'h82) ? 8'h11 : 
				     (InvRows_to_InvSbox[15:8] == 8'h83) ? 8'h41 : 
				     (InvRows_to_InvSbox[15:8] == 8'h84) ? 8'h4f : 
				     (InvRows_to_InvSbox[15:8] == 8'h85) ? 8'h67 : 
				     (InvRows_to_InvSbox[15:8] == 8'h86) ? 8'hdc : 
				     (InvRows_to_InvSbox[15:8] == 8'h87) ? 8'hea : 
				     (InvRows_to_InvSbox[15:8] == 8'h88) ? 8'h97 : 
				     (InvRows_to_InvSbox[15:8] == 8'h89) ? 8'hf2 : 
				     (InvRows_to_InvSbox[15:8] == 8'h8a) ? 8'hcf : 
				     (InvRows_to_InvSbox[15:8] == 8'h8b) ? 8'hce : 
				     (InvRows_to_InvSbox[15:8] == 8'h8c) ? 8'hf0 : 
				     (InvRows_to_InvSbox[15:8] == 8'h8d) ? 8'hb4 : 
				     (InvRows_to_InvSbox[15:8] == 8'h8e) ? 8'he6 : 
				     (InvRows_to_InvSbox[15:8] == 8'h8f) ? 8'h73 :

				     (InvRows_to_InvSbox[15:8] == 8'h90) ? 8'h96 :	// row 9
				     (InvRows_to_InvSbox[15:8] == 8'h91) ? 8'hac : 
				     (InvRows_to_InvSbox[15:8] == 8'h92) ? 8'h74 : 
				     (InvRows_to_InvSbox[15:8] == 8'h93) ? 8'h22 : 
				     (InvRows_to_InvSbox[15:8] == 8'h94) ? 8'he7 : 
				     (InvRows_to_InvSbox[15:8] == 8'h95) ? 8'had : 
				     (InvRows_to_InvSbox[15:8] == 8'h96) ? 8'h35 : 
				     (InvRows_to_InvSbox[15:8] == 8'h97) ? 8'h85 : 
				     (InvRows_to_InvSbox[15:8] == 8'h98) ? 8'he2 : 
				     (InvRows_to_InvSbox[15:8] == 8'h99) ? 8'hf9 : 
				     (InvRows_to_InvSbox[15:8] == 8'h9a) ? 8'h37 : 
				     (InvRows_to_InvSbox[15:8] == 8'h9b) ? 8'he8 : 
				     (InvRows_to_InvSbox[15:8] == 8'h9c) ? 8'h1c : 
				     (InvRows_to_InvSbox[15:8] == 8'h9d) ? 8'h75 : 
				     (InvRows_to_InvSbox[15:8] == 8'h9e) ? 8'hdf : 
				     (InvRows_to_InvSbox[15:8] == 8'h9f) ? 8'h6e : 

				     (InvRows_to_InvSbox[15:8] == 8'ha0) ? 8'h47 :	// row a
				     (InvRows_to_InvSbox[15:8] == 8'ha1) ? 8'hf1 : 
				     (InvRows_to_InvSbox[15:8] == 8'ha2) ? 8'h1a : 
				     (InvRows_to_InvSbox[15:8] == 8'ha3) ? 8'h71 : 
				     (InvRows_to_InvSbox[15:8] == 8'ha4) ? 8'h1d : 
				     (InvRows_to_InvSbox[15:8] == 8'ha5) ? 8'h29 : 
				     (InvRows_to_InvSbox[15:8] == 8'ha6) ? 8'hc5 : 
				     (InvRows_to_InvSbox[15:8] == 8'ha7) ? 8'h89 : 
				     (InvRows_to_InvSbox[15:8] == 8'ha8) ? 8'h6f : 
				     (InvRows_to_InvSbox[15:8] == 8'ha9) ? 8'hb7 : 
				     (InvRows_to_InvSbox[15:8] == 8'haa) ? 8'h62 : 
				     (InvRows_to_InvSbox[15:8] == 8'hab) ? 8'h0e : 
				     (InvRows_to_InvSbox[15:8] == 8'hac) ? 8'haa : 
				     (InvRows_to_InvSbox[15:8] == 8'had) ? 8'h18 : 
				     (InvRows_to_InvSbox[15:8] == 8'hae) ? 8'hbe : 
				     (InvRows_to_InvSbox[15:8] == 8'haf) ? 8'h1b : 

				     (InvRows_to_InvSbox[15:8] == 8'hb0) ? 8'hfc :	// row b
				     (InvRows_to_InvSbox[15:8] == 8'hb1) ? 8'h56 : 
				     (InvRows_to_InvSbox[15:8] == 8'hb2) ? 8'h3e : 
				     (InvRows_to_InvSbox[15:8] == 8'hb3) ? 8'h4b : 
				     (InvRows_to_InvSbox[15:8] == 8'hb4) ? 8'hc6 : 
				     (InvRows_to_InvSbox[15:8] == 8'hb5) ? 8'hd2 : 
				     (InvRows_to_InvSbox[15:8] == 8'hb6) ? 8'h79 : 
				     (InvRows_to_InvSbox[15:8] == 8'hb7) ? 8'h20 : 
				     (InvRows_to_InvSbox[15:8] == 8'hb8) ? 8'h9a : 
				     (InvRows_to_InvSbox[15:8] == 8'hb9) ? 8'hdb : 
				     (InvRows_to_InvSbox[15:8] == 8'hba) ? 8'hc0 : 
				     (InvRows_to_InvSbox[15:8] == 8'hbb) ? 8'hfe : 
				     (InvRows_to_InvSbox[15:8] == 8'hbc) ? 8'h78 : 
				     (InvRows_to_InvSbox[15:8] == 8'hbd) ? 8'hcd : 
				     (InvRows_to_InvSbox[15:8] == 8'hbe) ? 8'h5a : 
				     (InvRows_to_InvSbox[15:8] == 8'hbf) ? 8'hf4 : 

				     (InvRows_to_InvSbox[15:8] == 8'hc0) ? 8'h1f :	// row c
				     (InvRows_to_InvSbox[15:8] == 8'hc1) ? 8'hdd : 
				     (InvRows_to_InvSbox[15:8] == 8'hc2) ? 8'ha8 : 
				     (InvRows_to_InvSbox[15:8] == 8'hc3) ? 8'h33 : 
				     (InvRows_to_InvSbox[15:8] == 8'hc4) ? 8'h88 : 
				     (InvRows_to_InvSbox[15:8] == 8'hc5) ? 8'h07 : 
				     (InvRows_to_InvSbox[15:8] == 8'hc6) ? 8'hc7 : 
				     (InvRows_to_InvSbox[15:8] == 8'hc7) ? 8'h31 : 
				     (InvRows_to_InvSbox[15:8] == 8'hc8) ? 8'hb1 : 
				     (InvRows_to_InvSbox[15:8] == 8'hc9) ? 8'h12 : 
				     (InvRows_to_InvSbox[15:8] == 8'hca) ? 8'h10 : 
				     (InvRows_to_InvSbox[15:8] == 8'hcb) ? 8'h59 : 
				     (InvRows_to_InvSbox[15:8] == 8'hcc) ? 8'h27 : 
				     (InvRows_to_InvSbox[15:8] == 8'hcd) ? 8'h80 : 
				     (InvRows_to_InvSbox[15:8] == 8'hce) ? 8'hec : 
				     (InvRows_to_InvSbox[15:8] == 8'hcf) ? 8'h5f : 

				     (InvRows_to_InvSbox[15:8] == 8'hd0) ? 8'h60 :	// row d
				     (InvRows_to_InvSbox[15:8] == 8'hd1) ? 8'h51 : 
				     (InvRows_to_InvSbox[15:8] == 8'hd2) ? 8'h7f : 
				     (InvRows_to_InvSbox[15:8] == 8'hd3) ? 8'ha9 : 
				     (InvRows_to_InvSbox[15:8] == 8'hd4) ? 8'h19 : 
				     (InvRows_to_InvSbox[15:8] == 8'hd5) ? 8'hb5 : 
				     (InvRows_to_InvSbox[15:8] == 8'hd6) ? 8'h4a : 
				     (InvRows_to_InvSbox[15:8] == 8'hd7) ? 8'h0d : 
				     (InvRows_to_InvSbox[15:8] == 8'hd8) ? 8'h2d : 
				     (InvRows_to_InvSbox[15:8] == 8'hd9) ? 8'he5 : 
				     (InvRows_to_InvSbox[15:8] == 8'hda) ? 8'h7a : 
				     (InvRows_to_InvSbox[15:8] == 8'hdb) ? 8'h9f : 
				     (InvRows_to_InvSbox[15:8] == 8'hdc) ? 8'h93 : 
				     (InvRows_to_InvSbox[15:8] == 8'hdd) ? 8'hc9 : 
				     (InvRows_to_InvSbox[15:8] == 8'hde) ? 8'h9c : 
				     (InvRows_to_InvSbox[15:8] == 8'hdf) ? 8'hef : 

				     (InvRows_to_InvSbox[15:8] == 8'he0) ? 8'ha0 :	// row e
				     (InvRows_to_InvSbox[15:8] == 8'he1) ? 8'he0 : 
				     (InvRows_to_InvSbox[15:8] == 8'he2) ? 8'h3b : 
				     (InvRows_to_InvSbox[15:8] == 8'he3) ? 8'h4d : 
				     (InvRows_to_InvSbox[15:8] == 8'he4) ? 8'hae : 
				     (InvRows_to_InvSbox[15:8] == 8'he5) ? 8'h2a : 
				     (InvRows_to_InvSbox[15:8] == 8'he6) ? 8'hf5 : 
				     (InvRows_to_InvSbox[15:8] == 8'he7) ? 8'hb0 : 
				     (InvRows_to_InvSbox[15:8] == 8'he8) ? 8'hc8 : 
				     (InvRows_to_InvSbox[15:8] == 8'he9) ? 8'heb : 
				     (InvRows_to_InvSbox[15:8] == 8'hea) ? 8'hbb : 
				     (InvRows_to_InvSbox[15:8] == 8'heb) ? 8'h3c : 
				     (InvRows_to_InvSbox[15:8] == 8'hec) ? 8'h83 : 
				     (InvRows_to_InvSbox[15:8] == 8'hed) ? 8'h53 : 
				     (InvRows_to_InvSbox[15:8] == 8'hee) ? 8'h99 : 
				     (InvRows_to_InvSbox[15:8] == 8'hef) ? 8'h61 :

				     (InvRows_to_InvSbox[15:8] == 8'hf0) ? 8'h17 :	// row f
				     (InvRows_to_InvSbox[15:8] == 8'hf1) ? 8'h2b : 
				     (InvRows_to_InvSbox[15:8] == 8'hf2) ? 8'h04 : 
				     (InvRows_to_InvSbox[15:8] == 8'hf3) ? 8'h7e : 
				     (InvRows_to_InvSbox[15:8] == 8'hf4) ? 8'hba : 
				     (InvRows_to_InvSbox[15:8] == 8'hf5) ? 8'h77 : 
				     (InvRows_to_InvSbox[15:8] == 8'hf6) ? 8'hd6 : 
				     (InvRows_to_InvSbox[15:8] == 8'hf7) ? 8'h26 : 
				     (InvRows_to_InvSbox[15:8] == 8'hf8) ? 8'he1 : 
				     (InvRows_to_InvSbox[15:8] == 8'hf9) ? 8'h69 : 
				     (InvRows_to_InvSbox[15:8] == 8'hfa) ? 8'h14 : 
				     (InvRows_to_InvSbox[15:8] == 8'hfb) ? 8'h63 : 
				     (InvRows_to_InvSbox[15:8] == 8'hfc) ? 8'h55 : 
				     (InvRows_to_InvSbox[15:8] == 8'hfd) ? 8'h21 : 
				     (InvRows_to_InvSbox[15:8] == 8'hfe) ? 8'h0c : 
				     (InvRows_to_InvSbox[15:8] == 8'hff) ? 8'h7d : 8'hxx;
					  
					  assign InvSBox_out[23:16] = (InvRows_to_InvSbox[23:16] == 8'h00) ? 8'h52 :	// row 0
				     (InvRows_to_InvSbox[23:16] == 8'h01) ? 8'h09 : 
				     (InvRows_to_InvSbox[23:16] == 8'h02) ? 8'h6a : 
				     (InvRows_to_InvSbox[23:16] == 8'h03) ? 8'hd5 : 
				     (InvRows_to_InvSbox[23:16] == 8'h04) ? 8'h30 : 
				     (InvRows_to_InvSbox[23:16] == 8'h05) ? 8'h36 : 
				     (InvRows_to_InvSbox[23:16] == 8'h06) ? 8'ha5 : 
				     (InvRows_to_InvSbox[23:16] == 8'h07) ? 8'h38 : 
				     (InvRows_to_InvSbox[23:16] == 8'h08) ? 8'hbf : 
				     (InvRows_to_InvSbox[23:16] == 8'h09) ? 8'h40 : 
				     (InvRows_to_InvSbox[23:16] == 8'h0a) ? 8'ha3 : 
				     (InvRows_to_InvSbox[23:16] == 8'h0b) ? 8'h9e : 
				     (InvRows_to_InvSbox[23:16] == 8'h0c) ? 8'h81 : 
				     (InvRows_to_InvSbox[23:16] == 8'h0d) ? 8'hf3 : 
				     (InvRows_to_InvSbox[23:16] == 8'h0e) ? 8'hd7 : 
				     (InvRows_to_InvSbox[23:16] == 8'h0f) ? 8'hfb : 

				     (InvRows_to_InvSbox[23:16] == 8'h10) ? 8'h7c :	// row 1
				     (InvRows_to_InvSbox[23:16] == 8'h11) ? 8'he3 : 
				     (InvRows_to_InvSbox[23:16] == 8'h12) ? 8'h39 : 
				     (InvRows_to_InvSbox[23:16] == 8'h13) ? 8'h82 : 
				     (InvRows_to_InvSbox[23:16] == 8'h14) ? 8'h9b : 
				     (InvRows_to_InvSbox[23:16] == 8'h15) ? 8'h2f : 
				     (InvRows_to_InvSbox[23:16] == 8'h16) ? 8'hff : 
				     (InvRows_to_InvSbox[23:16] == 8'h17) ? 8'h87 : 
				     (InvRows_to_InvSbox[23:16] == 8'h18) ? 8'h34 : 
				     (InvRows_to_InvSbox[23:16] == 8'h19) ? 8'h8e : 
				     (InvRows_to_InvSbox[23:16] == 8'h1a) ? 8'h43 : 
				     (InvRows_to_InvSbox[23:16] == 8'h1b) ? 8'h44 : 
				     (InvRows_to_InvSbox[23:16] == 8'h1c) ? 8'hc4 : 
				     (InvRows_to_InvSbox[23:16] == 8'h1d) ? 8'hde : 
				     (InvRows_to_InvSbox[23:16] == 8'h1e) ? 8'he9 : 
				     (InvRows_to_InvSbox[23:16] == 8'h1f) ? 8'hcb : 

				     (InvRows_to_InvSbox[23:16] == 8'h20) ? 8'h54 :	// row 2
				     (InvRows_to_InvSbox[23:16] == 8'h21) ? 8'h7b : 
				     (InvRows_to_InvSbox[23:16] == 8'h22) ? 8'h94 : 
				     (InvRows_to_InvSbox[23:16] == 8'h23) ? 8'h32 : 
				     (InvRows_to_InvSbox[23:16] == 8'h24) ? 8'ha6 : 
				     (InvRows_to_InvSbox[23:16] == 8'h25) ? 8'hc2 : 
				     (InvRows_to_InvSbox[23:16] == 8'h26) ? 8'h23 : 
				     (InvRows_to_InvSbox[23:16] == 8'h27) ? 8'h3d : 
				     (InvRows_to_InvSbox[23:16] == 8'h28) ? 8'hee : 
				     (InvRows_to_InvSbox[23:16] == 8'h29) ? 8'h4c : 
				     (InvRows_to_InvSbox[23:16] == 8'h2a) ? 8'h95 : 
				     (InvRows_to_InvSbox[23:16] == 8'h2b) ? 8'h0b : 
				     (InvRows_to_InvSbox[23:16] == 8'h2c) ? 8'h42 : 
				     (InvRows_to_InvSbox[23:16] == 8'h2d) ? 8'hfa : 
				     (InvRows_to_InvSbox[23:16] == 8'h2e) ? 8'hc3 : 
				     (InvRows_to_InvSbox[23:16] == 8'h2f) ? 8'h4e :

				     (InvRows_to_InvSbox[23:16] == 8'h30) ? 8'h08 : 	// row 3
				     (InvRows_to_InvSbox[23:16] == 8'h31) ? 8'h2e : 
				     (InvRows_to_InvSbox[23:16] == 8'h32) ? 8'ha1 : 
				     (InvRows_to_InvSbox[23:16] == 8'h33) ? 8'h66 : 
				     (InvRows_to_InvSbox[23:16] == 8'h34) ? 8'h28 : 
				     (InvRows_to_InvSbox[23:16] == 8'h35) ? 8'hd9 : 
				     (InvRows_to_InvSbox[23:16] == 8'h36) ? 8'h24 : 
				     (InvRows_to_InvSbox[23:16] == 8'h37) ? 8'hb2 : 
				     (InvRows_to_InvSbox[23:16] == 8'h38) ? 8'h76 : 
				     (InvRows_to_InvSbox[23:16] == 8'h39) ? 8'h5b : 
				     (InvRows_to_InvSbox[23:16] == 8'h3a) ? 8'ha2 : 
				     (InvRows_to_InvSbox[23:16] == 8'h3b) ? 8'h49 : 
				     (InvRows_to_InvSbox[23:16] == 8'h3c) ? 8'h6d : 
				     (InvRows_to_InvSbox[23:16] == 8'h3d) ? 8'h8b : 
				     (InvRows_to_InvSbox[23:16] == 8'h3e) ? 8'hd1 : 
				     (InvRows_to_InvSbox[23:16] == 8'h3f) ? 8'h25 : 

				     (InvRows_to_InvSbox[23:16] == 8'h40) ? 8'h72 :	// row 4
				     (InvRows_to_InvSbox[23:16] == 8'h41) ? 8'hf8 : 
				     (InvRows_to_InvSbox[23:16] == 8'h42) ? 8'hf6 : 
				     (InvRows_to_InvSbox[23:16] == 8'h43) ? 8'h64 : 
				     (InvRows_to_InvSbox[23:16] == 8'h44) ? 8'h86 : 
				     (InvRows_to_InvSbox[23:16] == 8'h45) ? 8'h68 : 
				     (InvRows_to_InvSbox[23:16] == 8'h46) ? 8'h98 : 
				     (InvRows_to_InvSbox[23:16] == 8'h47) ? 8'h16 : 
				     (InvRows_to_InvSbox[23:16] == 8'h48) ? 8'hd4 : 
				     (InvRows_to_InvSbox[23:16] == 8'h49) ? 8'ha4 : 
				     (InvRows_to_InvSbox[23:16] == 8'h4a) ? 8'h5c : 
				     (InvRows_to_InvSbox[23:16] == 8'h4b) ? 8'hcc : 
				     (InvRows_to_InvSbox[23:16] == 8'h4c) ? 8'h5d : 
				     (InvRows_to_InvSbox[23:16] == 8'h4d) ? 8'h65 : 
				     (InvRows_to_InvSbox[23:16] == 8'h4e) ? 8'hb6 : 
				     (InvRows_to_InvSbox[23:16] == 8'h4f) ? 8'h92 : 

				     (InvRows_to_InvSbox[23:16] == 8'h50) ? 8'h6c :	// row 5
				     (InvRows_to_InvSbox[23:16] == 8'h51) ? 8'h70 : 
				     (InvRows_to_InvSbox[23:16] == 8'h52) ? 8'h48 : 
				     (InvRows_to_InvSbox[23:16] == 8'h53) ? 8'h50 : 
				     (InvRows_to_InvSbox[23:16] == 8'h54) ? 8'hfd : 
				     (InvRows_to_InvSbox[23:16] == 8'h55) ? 8'hed : 
				     (InvRows_to_InvSbox[23:16] == 8'h56) ? 8'hb9 : 
				     (InvRows_to_InvSbox[23:16] == 8'h57) ? 8'hda : 
				     (InvRows_to_InvSbox[23:16] == 8'h58) ? 8'h5e : 
				     (InvRows_to_InvSbox[23:16] == 8'h59) ? 8'h15 : 
				     (InvRows_to_InvSbox[23:16] == 8'h5a) ? 8'h46 : 
				     (InvRows_to_InvSbox[23:16] == 8'h5b) ? 8'h57 : 
				     (InvRows_to_InvSbox[23:16] == 8'h5c) ? 8'ha7 : 
				     (InvRows_to_InvSbox[23:16] == 8'h5d) ? 8'h8d : 
				     (InvRows_to_InvSbox[23:16] == 8'h5e) ? 8'h9d : 
				     (InvRows_to_InvSbox[23:16] == 8'h5f) ? 8'h84 : 

				     (InvRows_to_InvSbox[23:16] == 8'h60) ? 8'h90 :	// row 6
				     (InvRows_to_InvSbox[23:16] == 8'h61) ? 8'hd8 : 
				     (InvRows_to_InvSbox[23:16] == 8'h62) ? 8'hab : 
				     (InvRows_to_InvSbox[23:16] == 8'h63) ? 8'h00 : 
				     (InvRows_to_InvSbox[23:16] == 8'h64) ? 8'h8c : 
				     (InvRows_to_InvSbox[23:16] == 8'h65) ? 8'hbc : 
				     (InvRows_to_InvSbox[23:16] == 8'h66) ? 8'hd3 : 
				     (InvRows_to_InvSbox[23:16] == 8'h67) ? 8'h0a : 
				     (InvRows_to_InvSbox[23:16] == 8'h68) ? 8'hf7 : 
				     (InvRows_to_InvSbox[23:16] == 8'h69) ? 8'he4 : 
				     (InvRows_to_InvSbox[23:16] == 8'h6a) ? 8'h58 : 
				     (InvRows_to_InvSbox[23:16] == 8'h6b) ? 8'h05 : 
				     (InvRows_to_InvSbox[23:16] == 8'h6c) ? 8'hb8 : 
				     (InvRows_to_InvSbox[23:16] == 8'h6d) ? 8'hb3 : 
				     (InvRows_to_InvSbox[23:16] == 8'h6e) ? 8'h45 : 
				     (InvRows_to_InvSbox[23:16] == 8'h6f) ? 8'h06 : 

				     (InvRows_to_InvSbox[23:16] == 8'h70) ? 8'hd0 :	// row 7
				     (InvRows_to_InvSbox[23:16] == 8'h71) ? 8'h2c : 
				     (InvRows_to_InvSbox[23:16] == 8'h72) ? 8'h1e : 
				     (InvRows_to_InvSbox[23:16] == 8'h73) ? 8'h8f : 
				     (InvRows_to_InvSbox[23:16] == 8'h74) ? 8'hca : 
				     (InvRows_to_InvSbox[23:16] == 8'h75) ? 8'h3f : 
				     (InvRows_to_InvSbox[23:16] == 8'h76) ? 8'h0f : 
				     (InvRows_to_InvSbox[23:16] == 8'h77) ? 8'h02 : 
				     (InvRows_to_InvSbox[23:16] == 8'h78) ? 8'hc1 : 
				     (InvRows_to_InvSbox[23:16] == 8'h79) ? 8'haf : 
				     (InvRows_to_InvSbox[23:16] == 8'h7a) ? 8'hbd : 
				     (InvRows_to_InvSbox[23:16] == 8'h7b) ? 8'h03 : 
				     (InvRows_to_InvSbox[23:16] == 8'h7c) ? 8'h01 : 
				     (InvRows_to_InvSbox[23:16] == 8'h7d) ? 8'h13 : 
				     (InvRows_to_InvSbox[23:16] == 8'h7e) ? 8'h8a : 
				     (InvRows_to_InvSbox[23:16] == 8'h7f) ? 8'h6b :
 
				     (InvRows_to_InvSbox[23:16] == 8'h80) ? 8'h3a :	// row 8
				     (InvRows_to_InvSbox[23:16] == 8'h81) ? 8'h91 : 
				     (InvRows_to_InvSbox[23:16] == 8'h82) ? 8'h11 : 
				     (InvRows_to_InvSbox[23:16] == 8'h83) ? 8'h41 : 
				     (InvRows_to_InvSbox[23:16] == 8'h84) ? 8'h4f : 
				     (InvRows_to_InvSbox[23:16] == 8'h85) ? 8'h67 : 
				     (InvRows_to_InvSbox[23:16] == 8'h86) ? 8'hdc : 
				     (InvRows_to_InvSbox[23:16] == 8'h87) ? 8'hea : 
				     (InvRows_to_InvSbox[23:16] == 8'h88) ? 8'h97 : 
				     (InvRows_to_InvSbox[23:16] == 8'h89) ? 8'hf2 : 
				     (InvRows_to_InvSbox[23:16] == 8'h8a) ? 8'hcf : 
				     (InvRows_to_InvSbox[23:16] == 8'h8b) ? 8'hce : 
				     (InvRows_to_InvSbox[23:16] == 8'h8c) ? 8'hf0 : 
				     (InvRows_to_InvSbox[23:16] == 8'h8d) ? 8'hb4 : 
				     (InvRows_to_InvSbox[23:16] == 8'h8e) ? 8'he6 : 
				     (InvRows_to_InvSbox[23:16] == 8'h8f) ? 8'h73 :

				     (InvRows_to_InvSbox[23:16] == 8'h90) ? 8'h96 :	// row 9
				     (InvRows_to_InvSbox[23:16] == 8'h91) ? 8'hac : 
				     (InvRows_to_InvSbox[23:16] == 8'h92) ? 8'h74 : 
				     (InvRows_to_InvSbox[23:16] == 8'h93) ? 8'h22 : 
				     (InvRows_to_InvSbox[23:16] == 8'h94) ? 8'he7 : 
				     (InvRows_to_InvSbox[23:16] == 8'h95) ? 8'had : 
				     (InvRows_to_InvSbox[23:16] == 8'h96) ? 8'h35 : 
				     (InvRows_to_InvSbox[23:16] == 8'h97) ? 8'h85 : 
				     (InvRows_to_InvSbox[23:16] == 8'h98) ? 8'he2 : 
				     (InvRows_to_InvSbox[23:16] == 8'h99) ? 8'hf9 : 
				     (InvRows_to_InvSbox[23:16] == 8'h9a) ? 8'h37 : 
				     (InvRows_to_InvSbox[23:16] == 8'h9b) ? 8'he8 : 
				     (InvRows_to_InvSbox[23:16] == 8'h9c) ? 8'h1c : 
				     (InvRows_to_InvSbox[23:16] == 8'h9d) ? 8'h75 : 
				     (InvRows_to_InvSbox[23:16] == 8'h9e) ? 8'hdf : 
				     (InvRows_to_InvSbox[23:16] == 8'h9f) ? 8'h6e : 

				     (InvRows_to_InvSbox[23:16] == 8'ha0) ? 8'h47 :	// row a
				     (InvRows_to_InvSbox[23:16] == 8'ha1) ? 8'hf1 : 
				     (InvRows_to_InvSbox[23:16] == 8'ha2) ? 8'h1a : 
				     (InvRows_to_InvSbox[23:16] == 8'ha3) ? 8'h71 : 
				     (InvRows_to_InvSbox[23:16] == 8'ha4) ? 8'h1d : 
				     (InvRows_to_InvSbox[23:16] == 8'ha5) ? 8'h29 : 
				     (InvRows_to_InvSbox[23:16] == 8'ha6) ? 8'hc5 : 
				     (InvRows_to_InvSbox[23:16] == 8'ha7) ? 8'h89 : 
				     (InvRows_to_InvSbox[23:16] == 8'ha8) ? 8'h6f : 
				     (InvRows_to_InvSbox[23:16] == 8'ha9) ? 8'hb7 : 
				     (InvRows_to_InvSbox[23:16] == 8'haa) ? 8'h62 : 
				     (InvRows_to_InvSbox[23:16] == 8'hab) ? 8'h0e : 
				     (InvRows_to_InvSbox[23:16] == 8'hac) ? 8'haa : 
				     (InvRows_to_InvSbox[23:16] == 8'had) ? 8'h18 : 
				     (InvRows_to_InvSbox[23:16] == 8'hae) ? 8'hbe : 
				     (InvRows_to_InvSbox[23:16] == 8'haf) ? 8'h1b : 

				     (InvRows_to_InvSbox[23:16] == 8'hb0) ? 8'hfc :	// row b
				     (InvRows_to_InvSbox[23:16] == 8'hb1) ? 8'h56 : 
				     (InvRows_to_InvSbox[23:16] == 8'hb2) ? 8'h3e : 
				     (InvRows_to_InvSbox[23:16] == 8'hb3) ? 8'h4b : 
				     (InvRows_to_InvSbox[23:16] == 8'hb4) ? 8'hc6 : 
				     (InvRows_to_InvSbox[23:16] == 8'hb5) ? 8'hd2 : 
				     (InvRows_to_InvSbox[23:16] == 8'hb6) ? 8'h79 : 
				     (InvRows_to_InvSbox[23:16] == 8'hb7) ? 8'h20 : 
				     (InvRows_to_InvSbox[23:16] == 8'hb8) ? 8'h9a : 
				     (InvRows_to_InvSbox[23:16] == 8'hb9) ? 8'hdb : 
				     (InvRows_to_InvSbox[23:16] == 8'hba) ? 8'hc0 : 
				     (InvRows_to_InvSbox[23:16] == 8'hbb) ? 8'hfe : 
				     (InvRows_to_InvSbox[23:16] == 8'hbc) ? 8'h78 : 
				     (InvRows_to_InvSbox[23:16] == 8'hbd) ? 8'hcd : 
				     (InvRows_to_InvSbox[23:16] == 8'hbe) ? 8'h5a : 
				     (InvRows_to_InvSbox[23:16] == 8'hbf) ? 8'hf4 : 

				     (InvRows_to_InvSbox[23:16] == 8'hc0) ? 8'h1f :	// row c
				     (InvRows_to_InvSbox[23:16] == 8'hc1) ? 8'hdd : 
				     (InvRows_to_InvSbox[23:16] == 8'hc2) ? 8'ha8 : 
				     (InvRows_to_InvSbox[23:16] == 8'hc3) ? 8'h33 : 
				     (InvRows_to_InvSbox[23:16] == 8'hc4) ? 8'h88 : 
				     (InvRows_to_InvSbox[23:16] == 8'hc5) ? 8'h07 : 
				     (InvRows_to_InvSbox[23:16] == 8'hc6) ? 8'hc7 : 
				     (InvRows_to_InvSbox[23:16] == 8'hc7) ? 8'h31 : 
				     (InvRows_to_InvSbox[23:16] == 8'hc8) ? 8'hb1 : 
				     (InvRows_to_InvSbox[23:16] == 8'hc9) ? 8'h12 : 
				     (InvRows_to_InvSbox[23:16] == 8'hca) ? 8'h10 : 
				     (InvRows_to_InvSbox[23:16] == 8'hcb) ? 8'h59 : 
				     (InvRows_to_InvSbox[23:16] == 8'hcc) ? 8'h27 : 
				     (InvRows_to_InvSbox[23:16] == 8'hcd) ? 8'h80 : 
				     (InvRows_to_InvSbox[23:16] == 8'hce) ? 8'hec : 
				     (InvRows_to_InvSbox[23:16] == 8'hcf) ? 8'h5f : 

				     (InvRows_to_InvSbox[23:16] == 8'hd0) ? 8'h60 :	// row d
				     (InvRows_to_InvSbox[23:16] == 8'hd1) ? 8'h51 : 
				     (InvRows_to_InvSbox[23:16] == 8'hd2) ? 8'h7f : 
				     (InvRows_to_InvSbox[23:16] == 8'hd3) ? 8'ha9 : 
				     (InvRows_to_InvSbox[23:16] == 8'hd4) ? 8'h19 : 
				     (InvRows_to_InvSbox[23:16] == 8'hd5) ? 8'hb5 : 
				     (InvRows_to_InvSbox[23:16] == 8'hd6) ? 8'h4a : 
				     (InvRows_to_InvSbox[23:16] == 8'hd7) ? 8'h0d : 
				     (InvRows_to_InvSbox[23:16] == 8'hd8) ? 8'h2d : 
				     (InvRows_to_InvSbox[23:16] == 8'hd9) ? 8'he5 : 
				     (InvRows_to_InvSbox[23:16] == 8'hda) ? 8'h7a : 
				     (InvRows_to_InvSbox[23:16] == 8'hdb) ? 8'h9f : 
				     (InvRows_to_InvSbox[23:16] == 8'hdc) ? 8'h93 : 
				     (InvRows_to_InvSbox[23:16] == 8'hdd) ? 8'hc9 : 
				     (InvRows_to_InvSbox[23:16] == 8'hde) ? 8'h9c : 
				     (InvRows_to_InvSbox[23:16] == 8'hdf) ? 8'hef : 

				     (InvRows_to_InvSbox[23:16] == 8'he0) ? 8'ha0 :	// row e
				     (InvRows_to_InvSbox[23:16] == 8'he1) ? 8'he0 : 
				     (InvRows_to_InvSbox[23:16] == 8'he2) ? 8'h3b : 
				     (InvRows_to_InvSbox[23:16] == 8'he3) ? 8'h4d : 
				     (InvRows_to_InvSbox[23:16] == 8'he4) ? 8'hae : 
				     (InvRows_to_InvSbox[23:16] == 8'he5) ? 8'h2a : 
				     (InvRows_to_InvSbox[23:16] == 8'he6) ? 8'hf5 : 
				     (InvRows_to_InvSbox[23:16] == 8'he7) ? 8'hb0 : 
				     (InvRows_to_InvSbox[23:16] == 8'he8) ? 8'hc8 : 
				     (InvRows_to_InvSbox[23:16] == 8'he9) ? 8'heb : 
				     (InvRows_to_InvSbox[23:16] == 8'hea) ? 8'hbb : 
				     (InvRows_to_InvSbox[23:16] == 8'heb) ? 8'h3c : 
				     (InvRows_to_InvSbox[23:16] == 8'hec) ? 8'h83 : 
				     (InvRows_to_InvSbox[23:16] == 8'hed) ? 8'h53 : 
				     (InvRows_to_InvSbox[23:16] == 8'hee) ? 8'h99 : 
				     (InvRows_to_InvSbox[23:16] == 8'hef) ? 8'h61 :

				     (InvRows_to_InvSbox[23:16] == 8'hf0) ? 8'h17 :	// row f
				     (InvRows_to_InvSbox[23:16] == 8'hf1) ? 8'h2b : 
				     (InvRows_to_InvSbox[23:16] == 8'hf2) ? 8'h04 : 
				     (InvRows_to_InvSbox[23:16] == 8'hf3) ? 8'h7e : 
				     (InvRows_to_InvSbox[23:16] == 8'hf4) ? 8'hba : 
				     (InvRows_to_InvSbox[23:16] == 8'hf5) ? 8'h77 : 
				     (InvRows_to_InvSbox[23:16] == 8'hf6) ? 8'hd6 : 
				     (InvRows_to_InvSbox[23:16] == 8'hf7) ? 8'h26 : 
				     (InvRows_to_InvSbox[23:16] == 8'hf8) ? 8'he1 : 
				     (InvRows_to_InvSbox[23:16] == 8'hf9) ? 8'h69 : 
				     (InvRows_to_InvSbox[23:16] == 8'hfa) ? 8'h14 : 
				     (InvRows_to_InvSbox[23:16] == 8'hfb) ? 8'h63 : 
				     (InvRows_to_InvSbox[23:16] == 8'hfc) ? 8'h55 : 
				     (InvRows_to_InvSbox[23:16] == 8'hfd) ? 8'h21 : 
				     (InvRows_to_InvSbox[23:16] == 8'hfe) ? 8'h0c : 
				     (InvRows_to_InvSbox[23:16] == 8'hff) ? 8'h7d : 8'hxx;
					  
					  assign InvSBox_out[31:24] = (InvRows_to_InvSbox[31:24] == 8'h00) ? 8'h52 :	// row 0
				     (InvRows_to_InvSbox[31:24] == 8'h01) ? 8'h09 : 
				     (InvRows_to_InvSbox[31:24] == 8'h02) ? 8'h6a : 
				     (InvRows_to_InvSbox[31:24] == 8'h03) ? 8'hd5 : 
				     (InvRows_to_InvSbox[31:24] == 8'h04) ? 8'h30 : 
				     (InvRows_to_InvSbox[31:24] == 8'h05) ? 8'h36 : 
				     (InvRows_to_InvSbox[31:24] == 8'h06) ? 8'ha5 : 
				     (InvRows_to_InvSbox[31:24] == 8'h07) ? 8'h38 : 
				     (InvRows_to_InvSbox[31:24] == 8'h08) ? 8'hbf : 
				     (InvRows_to_InvSbox[31:24] == 8'h09) ? 8'h40 : 
				     (InvRows_to_InvSbox[31:24] == 8'h0a) ? 8'ha3 : 
				     (InvRows_to_InvSbox[31:24] == 8'h0b) ? 8'h9e : 
				     (InvRows_to_InvSbox[31:24] == 8'h0c) ? 8'h81 : 
				     (InvRows_to_InvSbox[31:24] == 8'h0d) ? 8'hf3 : 
				     (InvRows_to_InvSbox[31:24] == 8'h0e) ? 8'hd7 : 
				     (InvRows_to_InvSbox[31:24] == 8'h0f) ? 8'hfb : 

				     (InvRows_to_InvSbox[31:24] == 8'h10) ? 8'h7c :	// row 1
				     (InvRows_to_InvSbox[31:24] == 8'h11) ? 8'he3 : 
				     (InvRows_to_InvSbox[31:24] == 8'h12) ? 8'h39 : 
				     (InvRows_to_InvSbox[31:24] == 8'h13) ? 8'h82 : 
				     (InvRows_to_InvSbox[31:24] == 8'h14) ? 8'h9b : 
				     (InvRows_to_InvSbox[31:24] == 8'h15) ? 8'h2f : 
				     (InvRows_to_InvSbox[31:24] == 8'h16) ? 8'hff : 
				     (InvRows_to_InvSbox[31:24] == 8'h17) ? 8'h87 : 
				     (InvRows_to_InvSbox[31:24] == 8'h18) ? 8'h34 : 
				     (InvRows_to_InvSbox[31:24] == 8'h19) ? 8'h8e : 
				     (InvRows_to_InvSbox[31:24] == 8'h1a) ? 8'h43 : 
				     (InvRows_to_InvSbox[31:24] == 8'h1b) ? 8'h44 : 
				     (InvRows_to_InvSbox[31:24] == 8'h1c) ? 8'hc4 : 
				     (InvRows_to_InvSbox[31:24] == 8'h1d) ? 8'hde : 
				     (InvRows_to_InvSbox[31:24] == 8'h1e) ? 8'he9 : 
				     (InvRows_to_InvSbox[31:24] == 8'h1f) ? 8'hcb : 

				     (InvRows_to_InvSbox[31:24] == 8'h20) ? 8'h54 :	// row 2
				     (InvRows_to_InvSbox[31:24] == 8'h21) ? 8'h7b : 
				     (InvRows_to_InvSbox[31:24] == 8'h22) ? 8'h94 : 
				     (InvRows_to_InvSbox[31:24] == 8'h23) ? 8'h32 : 
				     (InvRows_to_InvSbox[31:24] == 8'h24) ? 8'ha6 : 
				     (InvRows_to_InvSbox[31:24] == 8'h25) ? 8'hc2 : 
				     (InvRows_to_InvSbox[31:24] == 8'h26) ? 8'h23 : 
				     (InvRows_to_InvSbox[31:24] == 8'h27) ? 8'h3d : 
				     (InvRows_to_InvSbox[31:24] == 8'h28) ? 8'hee : 
				     (InvRows_to_InvSbox[31:24] == 8'h29) ? 8'h4c : 
				     (InvRows_to_InvSbox[31:24] == 8'h2a) ? 8'h95 : 
				     (InvRows_to_InvSbox[31:24] == 8'h2b) ? 8'h0b : 
				     (InvRows_to_InvSbox[31:24] == 8'h2c) ? 8'h42 : 
				     (InvRows_to_InvSbox[31:24] == 8'h2d) ? 8'hfa : 
				     (InvRows_to_InvSbox[31:24] == 8'h2e) ? 8'hc3 : 
				     (InvRows_to_InvSbox[31:24] == 8'h2f) ? 8'h4e :

				     (InvRows_to_InvSbox[31:24] == 8'h30) ? 8'h08 : 	// row 3
				     (InvRows_to_InvSbox[31:24] == 8'h31) ? 8'h2e : 
				     (InvRows_to_InvSbox[31:24] == 8'h32) ? 8'ha1 : 
				     (InvRows_to_InvSbox[31:24] == 8'h33) ? 8'h66 : 
				     (InvRows_to_InvSbox[31:24] == 8'h34) ? 8'h28 : 
				     (InvRows_to_InvSbox[31:24] == 8'h35) ? 8'hd9 : 
				     (InvRows_to_InvSbox[31:24] == 8'h36) ? 8'h24 : 
				     (InvRows_to_InvSbox[31:24] == 8'h37) ? 8'hb2 : 
				     (InvRows_to_InvSbox[31:24] == 8'h38) ? 8'h76 : 
				     (InvRows_to_InvSbox[31:24] == 8'h39) ? 8'h5b : 
				     (InvRows_to_InvSbox[31:24] == 8'h3a) ? 8'ha2 : 
				     (InvRows_to_InvSbox[31:24] == 8'h3b) ? 8'h49 : 
				     (InvRows_to_InvSbox[31:24] == 8'h3c) ? 8'h6d : 
				     (InvRows_to_InvSbox[31:24] == 8'h3d) ? 8'h8b : 
				     (InvRows_to_InvSbox[31:24] == 8'h3e) ? 8'hd1 : 
				     (InvRows_to_InvSbox[31:24] == 8'h3f) ? 8'h25 : 

				     (InvRows_to_InvSbox[31:24] == 8'h40) ? 8'h72 :	// row 4
				     (InvRows_to_InvSbox[31:24] == 8'h41) ? 8'hf8 : 
				     (InvRows_to_InvSbox[31:24] == 8'h42) ? 8'hf6 : 
				     (InvRows_to_InvSbox[31:24] == 8'h43) ? 8'h64 : 
				     (InvRows_to_InvSbox[31:24] == 8'h44) ? 8'h86 : 
				     (InvRows_to_InvSbox[31:24] == 8'h45) ? 8'h68 : 
				     (InvRows_to_InvSbox[31:24] == 8'h46) ? 8'h98 : 
				     (InvRows_to_InvSbox[31:24] == 8'h47) ? 8'h16 : 
				     (InvRows_to_InvSbox[31:24] == 8'h48) ? 8'hd4 : 
				     (InvRows_to_InvSbox[31:24] == 8'h49) ? 8'ha4 : 
				     (InvRows_to_InvSbox[31:24] == 8'h4a) ? 8'h5c : 
				     (InvRows_to_InvSbox[31:24] == 8'h4b) ? 8'hcc : 
				     (InvRows_to_InvSbox[31:24] == 8'h4c) ? 8'h5d : 
				     (InvRows_to_InvSbox[31:24] == 8'h4d) ? 8'h65 : 
				     (InvRows_to_InvSbox[31:24] == 8'h4e) ? 8'hb6 : 
				     (InvRows_to_InvSbox[31:24] == 8'h4f) ? 8'h92 : 

				     (InvRows_to_InvSbox[31:24] == 8'h50) ? 8'h6c :	// row 5
				     (InvRows_to_InvSbox[31:24] == 8'h51) ? 8'h70 : 
				     (InvRows_to_InvSbox[31:24] == 8'h52) ? 8'h48 : 
				     (InvRows_to_InvSbox[31:24] == 8'h53) ? 8'h50 : 
				     (InvRows_to_InvSbox[31:24] == 8'h54) ? 8'hfd : 
				     (InvRows_to_InvSbox[31:24] == 8'h55) ? 8'hed : 
				     (InvRows_to_InvSbox[31:24] == 8'h56) ? 8'hb9 : 
				     (InvRows_to_InvSbox[31:24] == 8'h57) ? 8'hda : 
				     (InvRows_to_InvSbox[31:24] == 8'h58) ? 8'h5e : 
				     (InvRows_to_InvSbox[31:24] == 8'h59) ? 8'h15 : 
				     (InvRows_to_InvSbox[31:24] == 8'h5a) ? 8'h46 : 
				     (InvRows_to_InvSbox[31:24] == 8'h5b) ? 8'h57 : 
				     (InvRows_to_InvSbox[31:24] == 8'h5c) ? 8'ha7 : 
				     (InvRows_to_InvSbox[31:24] == 8'h5d) ? 8'h8d : 
				     (InvRows_to_InvSbox[31:24] == 8'h5e) ? 8'h9d : 
				     (InvRows_to_InvSbox[31:24] == 8'h5f) ? 8'h84 : 

				     (InvRows_to_InvSbox[31:24] == 8'h60) ? 8'h90 :	// row 6
				     (InvRows_to_InvSbox[31:24] == 8'h61) ? 8'hd8 : 
				     (InvRows_to_InvSbox[31:24] == 8'h62) ? 8'hab : 
				     (InvRows_to_InvSbox[31:24] == 8'h63) ? 8'h00 : 
				     (InvRows_to_InvSbox[31:24] == 8'h64) ? 8'h8c : 
				     (InvRows_to_InvSbox[31:24] == 8'h65) ? 8'hbc : 
				     (InvRows_to_InvSbox[31:24] == 8'h66) ? 8'hd3 : 
				     (InvRows_to_InvSbox[31:24] == 8'h67) ? 8'h0a : 
				     (InvRows_to_InvSbox[31:24] == 8'h68) ? 8'hf7 : 
				     (InvRows_to_InvSbox[31:24] == 8'h69) ? 8'he4 : 
				     (InvRows_to_InvSbox[31:24] == 8'h6a) ? 8'h58 : 
				     (InvRows_to_InvSbox[31:24] == 8'h6b) ? 8'h05 : 
				     (InvRows_to_InvSbox[31:24] == 8'h6c) ? 8'hb8 : 
				     (InvRows_to_InvSbox[31:24] == 8'h6d) ? 8'hb3 : 
				     (InvRows_to_InvSbox[31:24] == 8'h6e) ? 8'h45 : 
				     (InvRows_to_InvSbox[31:24] == 8'h6f) ? 8'h06 : 

				     (InvRows_to_InvSbox[31:24] == 8'h70) ? 8'hd0 :	// row 7
				     (InvRows_to_InvSbox[31:24] == 8'h71) ? 8'h2c : 
				     (InvRows_to_InvSbox[31:24] == 8'h72) ? 8'h1e : 
				     (InvRows_to_InvSbox[31:24] == 8'h73) ? 8'h8f : 
				     (InvRows_to_InvSbox[31:24] == 8'h74) ? 8'hca : 
				     (InvRows_to_InvSbox[31:24] == 8'h75) ? 8'h3f : 
				     (InvRows_to_InvSbox[31:24] == 8'h76) ? 8'h0f : 
				     (InvRows_to_InvSbox[31:24] == 8'h77) ? 8'h02 : 
				     (InvRows_to_InvSbox[31:24] == 8'h78) ? 8'hc1 : 
				     (InvRows_to_InvSbox[31:24] == 8'h79) ? 8'haf : 
				     (InvRows_to_InvSbox[31:24] == 8'h7a) ? 8'hbd : 
				     (InvRows_to_InvSbox[31:24] == 8'h7b) ? 8'h03 : 
				     (InvRows_to_InvSbox[31:24] == 8'h7c) ? 8'h01 : 
				     (InvRows_to_InvSbox[31:24] == 8'h7d) ? 8'h13 : 
				     (InvRows_to_InvSbox[31:24] == 8'h7e) ? 8'h8a : 
				     (InvRows_to_InvSbox[31:24] == 8'h7f) ? 8'h6b :
 
				     (InvRows_to_InvSbox[31:24] == 8'h80) ? 8'h3a :	// row 8
				     (InvRows_to_InvSbox[31:24] == 8'h81) ? 8'h91 : 
				     (InvRows_to_InvSbox[31:24] == 8'h82) ? 8'h11 : 
				     (InvRows_to_InvSbox[31:24] == 8'h83) ? 8'h41 : 
				     (InvRows_to_InvSbox[31:24] == 8'h84) ? 8'h4f : 
				     (InvRows_to_InvSbox[31:24] == 8'h85) ? 8'h67 : 
				     (InvRows_to_InvSbox[31:24] == 8'h86) ? 8'hdc : 
				     (InvRows_to_InvSbox[31:24] == 8'h87) ? 8'hea : 
				     (InvRows_to_InvSbox[31:24] == 8'h88) ? 8'h97 : 
				     (InvRows_to_InvSbox[31:24] == 8'h89) ? 8'hf2 : 
				     (InvRows_to_InvSbox[31:24] == 8'h8a) ? 8'hcf : 
				     (InvRows_to_InvSbox[31:24] == 8'h8b) ? 8'hce : 
				     (InvRows_to_InvSbox[31:24] == 8'h8c) ? 8'hf0 : 
				     (InvRows_to_InvSbox[31:24] == 8'h8d) ? 8'hb4 : 
				     (InvRows_to_InvSbox[31:24] == 8'h8e) ? 8'he6 : 
				     (InvRows_to_InvSbox[31:24] == 8'h8f) ? 8'h73 :

				     (InvRows_to_InvSbox[31:24] == 8'h90) ? 8'h96 :	// row 9
				     (InvRows_to_InvSbox[31:24] == 8'h91) ? 8'hac : 
				     (InvRows_to_InvSbox[31:24] == 8'h92) ? 8'h74 : 
				     (InvRows_to_InvSbox[31:24] == 8'h93) ? 8'h22 : 
				     (InvRows_to_InvSbox[31:24] == 8'h94) ? 8'he7 : 
				     (InvRows_to_InvSbox[31:24] == 8'h95) ? 8'had : 
				     (InvRows_to_InvSbox[31:24] == 8'h96) ? 8'h35 : 
				     (InvRows_to_InvSbox[31:24] == 8'h97) ? 8'h85 : 
				     (InvRows_to_InvSbox[31:24] == 8'h98) ? 8'he2 : 
				     (InvRows_to_InvSbox[31:24] == 8'h99) ? 8'hf9 : 
				     (InvRows_to_InvSbox[31:24] == 8'h9a) ? 8'h37 : 
				     (InvRows_to_InvSbox[31:24] == 8'h9b) ? 8'he8 : 
				     (InvRows_to_InvSbox[31:24] == 8'h9c) ? 8'h1c : 
				     (InvRows_to_InvSbox[31:24] == 8'h9d) ? 8'h75 : 
				     (InvRows_to_InvSbox[31:24] == 8'h9e) ? 8'hdf : 
				     (InvRows_to_InvSbox[31:24] == 8'h9f) ? 8'h6e : 

				     (InvRows_to_InvSbox[31:24] == 8'ha0) ? 8'h47 :	// row a
				     (InvRows_to_InvSbox[31:24] == 8'ha1) ? 8'hf1 : 
				     (InvRows_to_InvSbox[31:24] == 8'ha2) ? 8'h1a : 
				     (InvRows_to_InvSbox[31:24] == 8'ha3) ? 8'h71 : 
				     (InvRows_to_InvSbox[31:24] == 8'ha4) ? 8'h1d : 
				     (InvRows_to_InvSbox[31:24] == 8'ha5) ? 8'h29 : 
				     (InvRows_to_InvSbox[31:24] == 8'ha6) ? 8'hc5 : 
				     (InvRows_to_InvSbox[31:24] == 8'ha7) ? 8'h89 : 
				     (InvRows_to_InvSbox[31:24] == 8'ha8) ? 8'h6f : 
				     (InvRows_to_InvSbox[31:24] == 8'ha9) ? 8'hb7 : 
				     (InvRows_to_InvSbox[31:24] == 8'haa) ? 8'h62 : 
				     (InvRows_to_InvSbox[31:24] == 8'hab) ? 8'h0e : 
				     (InvRows_to_InvSbox[31:24] == 8'hac) ? 8'haa : 
				     (InvRows_to_InvSbox[31:24] == 8'had) ? 8'h18 : 
				     (InvRows_to_InvSbox[31:24] == 8'hae) ? 8'hbe : 
				     (InvRows_to_InvSbox[31:24] == 8'haf) ? 8'h1b : 

				     (InvRows_to_InvSbox[31:24] == 8'hb0) ? 8'hfc :	// row b
				     (InvRows_to_InvSbox[31:24] == 8'hb1) ? 8'h56 : 
				     (InvRows_to_InvSbox[31:24] == 8'hb2) ? 8'h3e : 
				     (InvRows_to_InvSbox[31:24] == 8'hb3) ? 8'h4b : 
				     (InvRows_to_InvSbox[31:24] == 8'hb4) ? 8'hc6 : 
				     (InvRows_to_InvSbox[31:24] == 8'hb5) ? 8'hd2 : 
				     (InvRows_to_InvSbox[31:24] == 8'hb6) ? 8'h79 : 
				     (InvRows_to_InvSbox[31:24] == 8'hb7) ? 8'h20 : 
				     (InvRows_to_InvSbox[31:24] == 8'hb8) ? 8'h9a : 
				     (InvRows_to_InvSbox[31:24] == 8'hb9) ? 8'hdb : 
				     (InvRows_to_InvSbox[31:24] == 8'hba) ? 8'hc0 : 
				     (InvRows_to_InvSbox[31:24] == 8'hbb) ? 8'hfe : 
				     (InvRows_to_InvSbox[31:24] == 8'hbc) ? 8'h78 : 
				     (InvRows_to_InvSbox[31:24] == 8'hbd) ? 8'hcd : 
				     (InvRows_to_InvSbox[31:24] == 8'hbe) ? 8'h5a : 
				     (InvRows_to_InvSbox[31:24] == 8'hbf) ? 8'hf4 : 

				     (InvRows_to_InvSbox[31:24] == 8'hc0) ? 8'h1f :	// row c
				     (InvRows_to_InvSbox[31:24] == 8'hc1) ? 8'hdd : 
				     (InvRows_to_InvSbox[31:24] == 8'hc2) ? 8'ha8 : 
				     (InvRows_to_InvSbox[31:24] == 8'hc3) ? 8'h33 : 
				     (InvRows_to_InvSbox[31:24] == 8'hc4) ? 8'h88 : 
				     (InvRows_to_InvSbox[31:24] == 8'hc5) ? 8'h07 : 
				     (InvRows_to_InvSbox[31:24] == 8'hc6) ? 8'hc7 : 
				     (InvRows_to_InvSbox[31:24] == 8'hc7) ? 8'h31 : 
				     (InvRows_to_InvSbox[31:24] == 8'hc8) ? 8'hb1 : 
				     (InvRows_to_InvSbox[31:24] == 8'hc9) ? 8'h12 : 
				     (InvRows_to_InvSbox[31:24] == 8'hca) ? 8'h10 : 
				     (InvRows_to_InvSbox[31:24] == 8'hcb) ? 8'h59 : 
				     (InvRows_to_InvSbox[31:24] == 8'hcc) ? 8'h27 : 
				     (InvRows_to_InvSbox[31:24] == 8'hcd) ? 8'h80 : 
				     (InvRows_to_InvSbox[31:24] == 8'hce) ? 8'hec : 
				     (InvRows_to_InvSbox[31:24] == 8'hcf) ? 8'h5f : 

				     (InvRows_to_InvSbox[31:24] == 8'hd0) ? 8'h60 :	// row d
				     (InvRows_to_InvSbox[31:24] == 8'hd1) ? 8'h51 : 
				     (InvRows_to_InvSbox[31:24] == 8'hd2) ? 8'h7f : 
				     (InvRows_to_InvSbox[31:24] == 8'hd3) ? 8'ha9 : 
				     (InvRows_to_InvSbox[31:24] == 8'hd4) ? 8'h19 : 
				     (InvRows_to_InvSbox[31:24] == 8'hd5) ? 8'hb5 : 
				     (InvRows_to_InvSbox[31:24] == 8'hd6) ? 8'h4a : 
				     (InvRows_to_InvSbox[31:24] == 8'hd7) ? 8'h0d : 
				     (InvRows_to_InvSbox[31:24] == 8'hd8) ? 8'h2d : 
				     (InvRows_to_InvSbox[31:24] == 8'hd9) ? 8'he5 : 
				     (InvRows_to_InvSbox[31:24] == 8'hda) ? 8'h7a : 
				     (InvRows_to_InvSbox[31:24] == 8'hdb) ? 8'h9f : 
				     (InvRows_to_InvSbox[31:24] == 8'hdc) ? 8'h93 : 
				     (InvRows_to_InvSbox[31:24] == 8'hdd) ? 8'hc9 : 
				     (InvRows_to_InvSbox[31:24] == 8'hde) ? 8'h9c : 
				     (InvRows_to_InvSbox[31:24] == 8'hdf) ? 8'hef : 

				     (InvRows_to_InvSbox[31:24] == 8'he0) ? 8'ha0 :	// row e
				     (InvRows_to_InvSbox[31:24] == 8'he1) ? 8'he0 : 
				     (InvRows_to_InvSbox[31:24] == 8'he2) ? 8'h3b : 
				     (InvRows_to_InvSbox[31:24] == 8'he3) ? 8'h4d : 
				     (InvRows_to_InvSbox[31:24] == 8'he4) ? 8'hae : 
				     (InvRows_to_InvSbox[31:24] == 8'he5) ? 8'h2a : 
				     (InvRows_to_InvSbox[31:24] == 8'he6) ? 8'hf5 : 
				     (InvRows_to_InvSbox[31:24] == 8'he7) ? 8'hb0 : 
				     (InvRows_to_InvSbox[31:24] == 8'he8) ? 8'hc8 : 
				     (InvRows_to_InvSbox[31:24] == 8'he9) ? 8'heb : 
				     (InvRows_to_InvSbox[31:24] == 8'hea) ? 8'hbb : 
				     (InvRows_to_InvSbox[31:24] == 8'heb) ? 8'h3c : 
				     (InvRows_to_InvSbox[31:24] == 8'hec) ? 8'h83 : 
				     (InvRows_to_InvSbox[31:24] == 8'hed) ? 8'h53 : 
				     (InvRows_to_InvSbox[31:24] == 8'hee) ? 8'h99 : 
				     (InvRows_to_InvSbox[31:24] == 8'hef) ? 8'h61 :

				     (InvRows_to_InvSbox[31:24] == 8'hf0) ? 8'h17 :	// row f
				     (InvRows_to_InvSbox[31:24] == 8'hf1) ? 8'h2b : 
				     (InvRows_to_InvSbox[31:24] == 8'hf2) ? 8'h04 : 
				     (InvRows_to_InvSbox[31:24] == 8'hf3) ? 8'h7e : 
				     (InvRows_to_InvSbox[31:24] == 8'hf4) ? 8'hba : 
				     (InvRows_to_InvSbox[31:24] == 8'hf5) ? 8'h77 : 
				     (InvRows_to_InvSbox[31:24] == 8'hf6) ? 8'hd6 : 
				     (InvRows_to_InvSbox[31:24] == 8'hf7) ? 8'h26 : 
				     (InvRows_to_InvSbox[31:24] == 8'hf8) ? 8'he1 : 
				     (InvRows_to_InvSbox[31:24] == 8'hf9) ? 8'h69 : 
				     (InvRows_to_InvSbox[31:24] == 8'hfa) ? 8'h14 : 
				     (InvRows_to_InvSbox[31:24] == 8'hfb) ? 8'h63 : 
				     (InvRows_to_InvSbox[31:24] == 8'hfc) ? 8'h55 : 
				     (InvRows_to_InvSbox[31:24] == 8'hfd) ? 8'h21 : 
				     (InvRows_to_InvSbox[31:24] == 8'hfe) ? 8'h0c : 
				     (InvRows_to_InvSbox[31:24] == 8'hff) ? 8'h7d : 8'hxx;
					  
					  assign InvSBox_out[39:32] = (InvRows_to_InvSbox[39:32] == 8'h00) ? 8'h52 :	// row 0
				     (InvRows_to_InvSbox[39:32] == 8'h01) ? 8'h09 : 
				     (InvRows_to_InvSbox[39:32] == 8'h02) ? 8'h6a : 
				     (InvRows_to_InvSbox[39:32] == 8'h03) ? 8'hd5 : 
				     (InvRows_to_InvSbox[39:32] == 8'h04) ? 8'h30 : 
				     (InvRows_to_InvSbox[39:32] == 8'h05) ? 8'h36 : 
				     (InvRows_to_InvSbox[39:32] == 8'h06) ? 8'ha5 : 
				     (InvRows_to_InvSbox[39:32] == 8'h07) ? 8'h38 : 
				     (InvRows_to_InvSbox[39:32] == 8'h08) ? 8'hbf : 
				     (InvRows_to_InvSbox[39:32] == 8'h09) ? 8'h40 : 
				     (InvRows_to_InvSbox[39:32] == 8'h0a) ? 8'ha3 : 
				     (InvRows_to_InvSbox[39:32] == 8'h0b) ? 8'h9e : 
				     (InvRows_to_InvSbox[39:32] == 8'h0c) ? 8'h81 : 
				     (InvRows_to_InvSbox[39:32] == 8'h0d) ? 8'hf3 : 
				     (InvRows_to_InvSbox[39:32] == 8'h0e) ? 8'hd7 : 
				     (InvRows_to_InvSbox[39:32] == 8'h0f) ? 8'hfb : 

				     (InvRows_to_InvSbox[39:32] == 8'h10) ? 8'h7c :	// row 1
				     (InvRows_to_InvSbox[39:32] == 8'h11) ? 8'he3 : 
				     (InvRows_to_InvSbox[39:32] == 8'h12) ? 8'h39 : 
				     (InvRows_to_InvSbox[39:32] == 8'h13) ? 8'h82 : 
				     (InvRows_to_InvSbox[39:32] == 8'h14) ? 8'h9b : 
				     (InvRows_to_InvSbox[39:32] == 8'h15) ? 8'h2f : 
				     (InvRows_to_InvSbox[39:32] == 8'h16) ? 8'hff : 
				     (InvRows_to_InvSbox[39:32] == 8'h17) ? 8'h87 : 
				     (InvRows_to_InvSbox[39:32] == 8'h18) ? 8'h34 : 
				     (InvRows_to_InvSbox[39:32] == 8'h19) ? 8'h8e : 
				     (InvRows_to_InvSbox[39:32] == 8'h1a) ? 8'h43 : 
				     (InvRows_to_InvSbox[39:32] == 8'h1b) ? 8'h44 : 
				     (InvRows_to_InvSbox[39:32] == 8'h1c) ? 8'hc4 : 
				     (InvRows_to_InvSbox[39:32] == 8'h1d) ? 8'hde : 
				     (InvRows_to_InvSbox[39:32] == 8'h1e) ? 8'he9 : 
				     (InvRows_to_InvSbox[39:32] == 8'h1f) ? 8'hcb : 

				     (InvRows_to_InvSbox[39:32] == 8'h20) ? 8'h54 :	// row 2
				     (InvRows_to_InvSbox[39:32] == 8'h21) ? 8'h7b : 
				     (InvRows_to_InvSbox[39:32] == 8'h22) ? 8'h94 : 
				     (InvRows_to_InvSbox[39:32] == 8'h23) ? 8'h32 : 
				     (InvRows_to_InvSbox[39:32] == 8'h24) ? 8'ha6 : 
				     (InvRows_to_InvSbox[39:32] == 8'h25) ? 8'hc2 : 
				     (InvRows_to_InvSbox[39:32] == 8'h26) ? 8'h23 : 
				     (InvRows_to_InvSbox[39:32] == 8'h27) ? 8'h3d : 
				     (InvRows_to_InvSbox[39:32] == 8'h28) ? 8'hee : 
				     (InvRows_to_InvSbox[39:32] == 8'h29) ? 8'h4c : 
				     (InvRows_to_InvSbox[39:32] == 8'h2a) ? 8'h95 : 
				     (InvRows_to_InvSbox[39:32] == 8'h2b) ? 8'h0b : 
				     (InvRows_to_InvSbox[39:32] == 8'h2c) ? 8'h42 : 
				     (InvRows_to_InvSbox[39:32] == 8'h2d) ? 8'hfa : 
				     (InvRows_to_InvSbox[39:32] == 8'h2e) ? 8'hc3 : 
				     (InvRows_to_InvSbox[39:32] == 8'h2f) ? 8'h4e :

				     (InvRows_to_InvSbox[39:32] == 8'h30) ? 8'h08 : 	// row 3
				     (InvRows_to_InvSbox[39:32] == 8'h31) ? 8'h2e : 
				     (InvRows_to_InvSbox[39:32] == 8'h32) ? 8'ha1 : 
				     (InvRows_to_InvSbox[39:32] == 8'h33) ? 8'h66 : 
				     (InvRows_to_InvSbox[39:32] == 8'h34) ? 8'h28 : 
				     (InvRows_to_InvSbox[39:32] == 8'h35) ? 8'hd9 : 
				     (InvRows_to_InvSbox[39:32] == 8'h36) ? 8'h24 : 
				     (InvRows_to_InvSbox[39:32] == 8'h37) ? 8'hb2 : 
				     (InvRows_to_InvSbox[39:32] == 8'h38) ? 8'h76 : 
				     (InvRows_to_InvSbox[39:32] == 8'h39) ? 8'h5b : 
				     (InvRows_to_InvSbox[39:32] == 8'h3a) ? 8'ha2 : 
				     (InvRows_to_InvSbox[39:32] == 8'h3b) ? 8'h49 : 
				     (InvRows_to_InvSbox[39:32] == 8'h3c) ? 8'h6d : 
				     (InvRows_to_InvSbox[39:32] == 8'h3d) ? 8'h8b : 
				     (InvRows_to_InvSbox[39:32] == 8'h3e) ? 8'hd1 : 
				     (InvRows_to_InvSbox[39:32] == 8'h3f) ? 8'h25 : 

				     (InvRows_to_InvSbox[39:32] == 8'h40) ? 8'h72 :	// row 4
				     (InvRows_to_InvSbox[39:32] == 8'h41) ? 8'hf8 : 
				     (InvRows_to_InvSbox[39:32] == 8'h42) ? 8'hf6 : 
				     (InvRows_to_InvSbox[39:32] == 8'h43) ? 8'h64 : 
				     (InvRows_to_InvSbox[39:32] == 8'h44) ? 8'h86 : 
				     (InvRows_to_InvSbox[39:32] == 8'h45) ? 8'h68 : 
				     (InvRows_to_InvSbox[39:32] == 8'h46) ? 8'h98 : 
				     (InvRows_to_InvSbox[39:32] == 8'h47) ? 8'h16 : 
				     (InvRows_to_InvSbox[39:32] == 8'h48) ? 8'hd4 : 
				     (InvRows_to_InvSbox[39:32] == 8'h49) ? 8'ha4 : 
				     (InvRows_to_InvSbox[39:32] == 8'h4a) ? 8'h5c : 
				     (InvRows_to_InvSbox[39:32] == 8'h4b) ? 8'hcc : 
				     (InvRows_to_InvSbox[39:32] == 8'h4c) ? 8'h5d : 
				     (InvRows_to_InvSbox[39:32] == 8'h4d) ? 8'h65 : 
				     (InvRows_to_InvSbox[39:32] == 8'h4e) ? 8'hb6 : 
				     (InvRows_to_InvSbox[39:32] == 8'h4f) ? 8'h92 : 

				     (InvRows_to_InvSbox[39:32] == 8'h50) ? 8'h6c :	// row 5
				     (InvRows_to_InvSbox[39:32] == 8'h51) ? 8'h70 : 
				     (InvRows_to_InvSbox[39:32] == 8'h52) ? 8'h48 : 
				     (InvRows_to_InvSbox[39:32] == 8'h53) ? 8'h50 : 
				     (InvRows_to_InvSbox[39:32] == 8'h54) ? 8'hfd : 
				     (InvRows_to_InvSbox[39:32] == 8'h55) ? 8'hed : 
				     (InvRows_to_InvSbox[39:32] == 8'h56) ? 8'hb9 : 
				     (InvRows_to_InvSbox[39:32] == 8'h57) ? 8'hda : 
				     (InvRows_to_InvSbox[39:32] == 8'h58) ? 8'h5e : 
				     (InvRows_to_InvSbox[39:32] == 8'h59) ? 8'h15 : 
				     (InvRows_to_InvSbox[39:32] == 8'h5a) ? 8'h46 : 
				     (InvRows_to_InvSbox[39:32] == 8'h5b) ? 8'h57 : 
				     (InvRows_to_InvSbox[39:32] == 8'h5c) ? 8'ha7 : 
				     (InvRows_to_InvSbox[39:32] == 8'h5d) ? 8'h8d : 
				     (InvRows_to_InvSbox[39:32] == 8'h5e) ? 8'h9d : 
				     (InvRows_to_InvSbox[39:32] == 8'h5f) ? 8'h84 : 

				     (InvRows_to_InvSbox[39:32] == 8'h60) ? 8'h90 :	// row 6
				     (InvRows_to_InvSbox[39:32] == 8'h61) ? 8'hd8 : 
				     (InvRows_to_InvSbox[39:32] == 8'h62) ? 8'hab : 
				     (InvRows_to_InvSbox[39:32] == 8'h63) ? 8'h00 : 
				     (InvRows_to_InvSbox[39:32] == 8'h64) ? 8'h8c : 
				     (InvRows_to_InvSbox[39:32] == 8'h65) ? 8'hbc : 
				     (InvRows_to_InvSbox[39:32] == 8'h66) ? 8'hd3 : 
				     (InvRows_to_InvSbox[39:32] == 8'h67) ? 8'h0a : 
				     (InvRows_to_InvSbox[39:32] == 8'h68) ? 8'hf7 : 
				     (InvRows_to_InvSbox[39:32] == 8'h69) ? 8'he4 : 
				     (InvRows_to_InvSbox[39:32] == 8'h6a) ? 8'h58 : 
				     (InvRows_to_InvSbox[39:32] == 8'h6b) ? 8'h05 : 
				     (InvRows_to_InvSbox[39:32] == 8'h6c) ? 8'hb8 : 
				     (InvRows_to_InvSbox[39:32] == 8'h6d) ? 8'hb3 : 
				     (InvRows_to_InvSbox[39:32] == 8'h6e) ? 8'h45 : 
				     (InvRows_to_InvSbox[39:32] == 8'h6f) ? 8'h06 : 

				     (InvRows_to_InvSbox[39:32] == 8'h70) ? 8'hd0 :	// row 7
				     (InvRows_to_InvSbox[39:32] == 8'h71) ? 8'h2c : 
				     (InvRows_to_InvSbox[39:32] == 8'h72) ? 8'h1e : 
				     (InvRows_to_InvSbox[39:32] == 8'h73) ? 8'h8f : 
				     (InvRows_to_InvSbox[39:32] == 8'h74) ? 8'hca : 
				     (InvRows_to_InvSbox[39:32] == 8'h75) ? 8'h3f : 
				     (InvRows_to_InvSbox[39:32] == 8'h76) ? 8'h0f : 
				     (InvRows_to_InvSbox[39:32] == 8'h77) ? 8'h02 : 
				     (InvRows_to_InvSbox[39:32] == 8'h78) ? 8'hc1 : 
				     (InvRows_to_InvSbox[39:32] == 8'h79) ? 8'haf : 
				     (InvRows_to_InvSbox[39:32] == 8'h7a) ? 8'hbd : 
				     (InvRows_to_InvSbox[39:32] == 8'h7b) ? 8'h03 : 
				     (InvRows_to_InvSbox[39:32] == 8'h7c) ? 8'h01 : 
				     (InvRows_to_InvSbox[39:32] == 8'h7d) ? 8'h13 : 
				     (InvRows_to_InvSbox[39:32] == 8'h7e) ? 8'h8a : 
				     (InvRows_to_InvSbox[39:32] == 8'h7f) ? 8'h6b :
 
				     (InvRows_to_InvSbox[39:32] == 8'h80) ? 8'h3a :	// row 8
				     (InvRows_to_InvSbox[39:32] == 8'h81) ? 8'h91 : 
				     (InvRows_to_InvSbox[39:32] == 8'h82) ? 8'h11 : 
				     (InvRows_to_InvSbox[39:32] == 8'h83) ? 8'h41 : 
				     (InvRows_to_InvSbox[39:32] == 8'h84) ? 8'h4f : 
				     (InvRows_to_InvSbox[39:32] == 8'h85) ? 8'h67 : 
				     (InvRows_to_InvSbox[39:32] == 8'h86) ? 8'hdc : 
				     (InvRows_to_InvSbox[39:32] == 8'h87) ? 8'hea : 
				     (InvRows_to_InvSbox[39:32] == 8'h88) ? 8'h97 : 
				     (InvRows_to_InvSbox[39:32] == 8'h89) ? 8'hf2 : 
				     (InvRows_to_InvSbox[39:32] == 8'h8a) ? 8'hcf : 
				     (InvRows_to_InvSbox[39:32] == 8'h8b) ? 8'hce : 
				     (InvRows_to_InvSbox[39:32] == 8'h8c) ? 8'hf0 : 
				     (InvRows_to_InvSbox[39:32] == 8'h8d) ? 8'hb4 : 
				     (InvRows_to_InvSbox[39:32] == 8'h8e) ? 8'he6 : 
				     (InvRows_to_InvSbox[39:32] == 8'h8f) ? 8'h73 :

				     (InvRows_to_InvSbox[39:32] == 8'h90) ? 8'h96 :	// row 9
				     (InvRows_to_InvSbox[39:32] == 8'h91) ? 8'hac : 
				     (InvRows_to_InvSbox[39:32] == 8'h92) ? 8'h74 : 
				     (InvRows_to_InvSbox[39:32] == 8'h93) ? 8'h22 : 
				     (InvRows_to_InvSbox[39:32] == 8'h94) ? 8'he7 : 
				     (InvRows_to_InvSbox[39:32] == 8'h95) ? 8'had : 
				     (InvRows_to_InvSbox[39:32] == 8'h96) ? 8'h35 : 
				     (InvRows_to_InvSbox[39:32] == 8'h97) ? 8'h85 : 
				     (InvRows_to_InvSbox[39:32] == 8'h98) ? 8'he2 : 
				     (InvRows_to_InvSbox[39:32] == 8'h99) ? 8'hf9 : 
				     (InvRows_to_InvSbox[39:32] == 8'h9a) ? 8'h37 : 
				     (InvRows_to_InvSbox[39:32] == 8'h9b) ? 8'he8 : 
				     (InvRows_to_InvSbox[39:32] == 8'h9c) ? 8'h1c : 
				     (InvRows_to_InvSbox[39:32] == 8'h9d) ? 8'h75 : 
				     (InvRows_to_InvSbox[39:32] == 8'h9e) ? 8'hdf : 
				     (InvRows_to_InvSbox[39:32] == 8'h9f) ? 8'h6e : 

				     (InvRows_to_InvSbox[39:32] == 8'ha0) ? 8'h47 :	// row a
				     (InvRows_to_InvSbox[39:32] == 8'ha1) ? 8'hf1 : 
				     (InvRows_to_InvSbox[39:32] == 8'ha2) ? 8'h1a : 
				     (InvRows_to_InvSbox[39:32] == 8'ha3) ? 8'h71 : 
				     (InvRows_to_InvSbox[39:32] == 8'ha4) ? 8'h1d : 
				     (InvRows_to_InvSbox[39:32] == 8'ha5) ? 8'h29 : 
				     (InvRows_to_InvSbox[39:32] == 8'ha6) ? 8'hc5 : 
				     (InvRows_to_InvSbox[39:32] == 8'ha7) ? 8'h89 : 
				     (InvRows_to_InvSbox[39:32] == 8'ha8) ? 8'h6f : 
				     (InvRows_to_InvSbox[39:32] == 8'ha9) ? 8'hb7 : 
				     (InvRows_to_InvSbox[39:32] == 8'haa) ? 8'h62 : 
				     (InvRows_to_InvSbox[39:32] == 8'hab) ? 8'h0e : 
				     (InvRows_to_InvSbox[39:32] == 8'hac) ? 8'haa : 
				     (InvRows_to_InvSbox[39:32] == 8'had) ? 8'h18 : 
				     (InvRows_to_InvSbox[39:32] == 8'hae) ? 8'hbe : 
				     (InvRows_to_InvSbox[39:32] == 8'haf) ? 8'h1b : 

				     (InvRows_to_InvSbox[39:32] == 8'hb0) ? 8'hfc :	// row b
				     (InvRows_to_InvSbox[39:32] == 8'hb1) ? 8'h56 : 
				     (InvRows_to_InvSbox[39:32] == 8'hb2) ? 8'h3e : 
				     (InvRows_to_InvSbox[39:32] == 8'hb3) ? 8'h4b : 
				     (InvRows_to_InvSbox[39:32] == 8'hb4) ? 8'hc6 : 
				     (InvRows_to_InvSbox[39:32] == 8'hb5) ? 8'hd2 : 
				     (InvRows_to_InvSbox[39:32] == 8'hb6) ? 8'h79 : 
				     (InvRows_to_InvSbox[39:32] == 8'hb7) ? 8'h20 : 
				     (InvRows_to_InvSbox[39:32] == 8'hb8) ? 8'h9a : 
				     (InvRows_to_InvSbox[39:32] == 8'hb9) ? 8'hdb : 
				     (InvRows_to_InvSbox[39:32] == 8'hba) ? 8'hc0 : 
				     (InvRows_to_InvSbox[39:32] == 8'hbb) ? 8'hfe : 
				     (InvRows_to_InvSbox[39:32] == 8'hbc) ? 8'h78 : 
				     (InvRows_to_InvSbox[39:32] == 8'hbd) ? 8'hcd : 
				     (InvRows_to_InvSbox[39:32] == 8'hbe) ? 8'h5a : 
				     (InvRows_to_InvSbox[39:32] == 8'hbf) ? 8'hf4 : 

				     (InvRows_to_InvSbox[39:32] == 8'hc0) ? 8'h1f :	// row c
				     (InvRows_to_InvSbox[39:32] == 8'hc1) ? 8'hdd : 
				     (InvRows_to_InvSbox[39:32] == 8'hc2) ? 8'ha8 : 
				     (InvRows_to_InvSbox[39:32] == 8'hc3) ? 8'h33 : 
				     (InvRows_to_InvSbox[39:32] == 8'hc4) ? 8'h88 : 
				     (InvRows_to_InvSbox[39:32] == 8'hc5) ? 8'h07 : 
				     (InvRows_to_InvSbox[39:32] == 8'hc6) ? 8'hc7 : 
				     (InvRows_to_InvSbox[39:32] == 8'hc7) ? 8'h31 : 
				     (InvRows_to_InvSbox[39:32] == 8'hc8) ? 8'hb1 : 
				     (InvRows_to_InvSbox[39:32] == 8'hc9) ? 8'h12 : 
				     (InvRows_to_InvSbox[39:32] == 8'hca) ? 8'h10 : 
				     (InvRows_to_InvSbox[39:32] == 8'hcb) ? 8'h59 : 
				     (InvRows_to_InvSbox[39:32] == 8'hcc) ? 8'h27 : 
				     (InvRows_to_InvSbox[39:32] == 8'hcd) ? 8'h80 : 
				     (InvRows_to_InvSbox[39:32] == 8'hce) ? 8'hec : 
				     (InvRows_to_InvSbox[39:32] == 8'hcf) ? 8'h5f : 

				     (InvRows_to_InvSbox[39:32] == 8'hd0) ? 8'h60 :	// row d
				     (InvRows_to_InvSbox[39:32] == 8'hd1) ? 8'h51 : 
				     (InvRows_to_InvSbox[39:32] == 8'hd2) ? 8'h7f : 
				     (InvRows_to_InvSbox[39:32] == 8'hd3) ? 8'ha9 : 
				     (InvRows_to_InvSbox[39:32] == 8'hd4) ? 8'h19 : 
				     (InvRows_to_InvSbox[39:32] == 8'hd5) ? 8'hb5 : 
				     (InvRows_to_InvSbox[39:32] == 8'hd6) ? 8'h4a : 
				     (InvRows_to_InvSbox[39:32] == 8'hd7) ? 8'h0d : 
				     (InvRows_to_InvSbox[39:32] == 8'hd8) ? 8'h2d : 
				     (InvRows_to_InvSbox[39:32] == 8'hd9) ? 8'he5 : 
				     (InvRows_to_InvSbox[39:32] == 8'hda) ? 8'h7a : 
				     (InvRows_to_InvSbox[39:32] == 8'hdb) ? 8'h9f : 
				     (InvRows_to_InvSbox[39:32] == 8'hdc) ? 8'h93 : 
				     (InvRows_to_InvSbox[39:32] == 8'hdd) ? 8'hc9 : 
				     (InvRows_to_InvSbox[39:32] == 8'hde) ? 8'h9c : 
				     (InvRows_to_InvSbox[39:32] == 8'hdf) ? 8'hef : 

				     (InvRows_to_InvSbox[39:32] == 8'he0) ? 8'ha0 :	// row e
				     (InvRows_to_InvSbox[39:32] == 8'he1) ? 8'he0 : 
				     (InvRows_to_InvSbox[39:32] == 8'he2) ? 8'h3b : 
				     (InvRows_to_InvSbox[39:32] == 8'he3) ? 8'h4d : 
				     (InvRows_to_InvSbox[39:32] == 8'he4) ? 8'hae : 
				     (InvRows_to_InvSbox[39:32] == 8'he5) ? 8'h2a : 
				     (InvRows_to_InvSbox[39:32] == 8'he6) ? 8'hf5 : 
				     (InvRows_to_InvSbox[39:32] == 8'he7) ? 8'hb0 : 
				     (InvRows_to_InvSbox[39:32] == 8'he8) ? 8'hc8 : 
				     (InvRows_to_InvSbox[39:32] == 8'he9) ? 8'heb : 
				     (InvRows_to_InvSbox[39:32] == 8'hea) ? 8'hbb : 
				     (InvRows_to_InvSbox[39:32] == 8'heb) ? 8'h3c : 
				     (InvRows_to_InvSbox[39:32] == 8'hec) ? 8'h83 : 
				     (InvRows_to_InvSbox[39:32] == 8'hed) ? 8'h53 : 
				     (InvRows_to_InvSbox[39:32] == 8'hee) ? 8'h99 : 
				     (InvRows_to_InvSbox[39:32] == 8'hef) ? 8'h61 :

				     (InvRows_to_InvSbox[39:32] == 8'hf0) ? 8'h17 :	// row f
				     (InvRows_to_InvSbox[39:32] == 8'hf1) ? 8'h2b : 
				     (InvRows_to_InvSbox[39:32] == 8'hf2) ? 8'h04 : 
				     (InvRows_to_InvSbox[39:32] == 8'hf3) ? 8'h7e : 
				     (InvRows_to_InvSbox[39:32] == 8'hf4) ? 8'hba : 
				     (InvRows_to_InvSbox[39:32] == 8'hf5) ? 8'h77 : 
				     (InvRows_to_InvSbox[39:32] == 8'hf6) ? 8'hd6 : 
				     (InvRows_to_InvSbox[39:32] == 8'hf7) ? 8'h26 : 
				     (InvRows_to_InvSbox[39:32] == 8'hf8) ? 8'he1 : 
				     (InvRows_to_InvSbox[39:32] == 8'hf9) ? 8'h69 : 
				     (InvRows_to_InvSbox[39:32] == 8'hfa) ? 8'h14 : 
				     (InvRows_to_InvSbox[39:32] == 8'hfb) ? 8'h63 : 
				     (InvRows_to_InvSbox[39:32] == 8'hfc) ? 8'h55 : 
				     (InvRows_to_InvSbox[39:32] == 8'hfd) ? 8'h21 : 
				     (InvRows_to_InvSbox[39:32] == 8'hfe) ? 8'h0c : 
				     (InvRows_to_InvSbox[39:32] == 8'hff) ? 8'h7d : 8'hxx;

					  assign InvSBox_out[47:40] = (InvRows_to_InvSbox[47:40] == 8'h00) ? 8'h52 :	// row 0
				     (InvRows_to_InvSbox[47:40] == 8'h01) ? 8'h09 : 
				     (InvRows_to_InvSbox[47:40] == 8'h02) ? 8'h6a : 
				     (InvRows_to_InvSbox[47:40] == 8'h03) ? 8'hd5 : 
				     (InvRows_to_InvSbox[47:40] == 8'h04) ? 8'h30 : 
				     (InvRows_to_InvSbox[47:40] == 8'h05) ? 8'h36 : 
				     (InvRows_to_InvSbox[47:40] == 8'h06) ? 8'ha5 : 
				     (InvRows_to_InvSbox[47:40] == 8'h07) ? 8'h38 : 
				     (InvRows_to_InvSbox[47:40] == 8'h08) ? 8'hbf : 
				     (InvRows_to_InvSbox[47:40] == 8'h09) ? 8'h40 : 
				     (InvRows_to_InvSbox[47:40] == 8'h0a) ? 8'ha3 : 
				     (InvRows_to_InvSbox[47:40] == 8'h0b) ? 8'h9e : 
				     (InvRows_to_InvSbox[47:40] == 8'h0c) ? 8'h81 : 
				     (InvRows_to_InvSbox[47:40] == 8'h0d) ? 8'hf3 : 
				     (InvRows_to_InvSbox[47:40] == 8'h0e) ? 8'hd7 : 
				     (InvRows_to_InvSbox[47:40] == 8'h0f) ? 8'hfb : 

				     (InvRows_to_InvSbox[47:40] == 8'h10) ? 8'h7c :	// row 1
				     (InvRows_to_InvSbox[47:40] == 8'h11) ? 8'he3 : 
				     (InvRows_to_InvSbox[47:40] == 8'h12) ? 8'h39 : 
				     (InvRows_to_InvSbox[47:40] == 8'h13) ? 8'h82 : 
				     (InvRows_to_InvSbox[47:40] == 8'h14) ? 8'h9b : 
				     (InvRows_to_InvSbox[47:40] == 8'h15) ? 8'h2f : 
				     (InvRows_to_InvSbox[47:40] == 8'h16) ? 8'hff : 
				     (InvRows_to_InvSbox[47:40] == 8'h17) ? 8'h87 : 
				     (InvRows_to_InvSbox[47:40] == 8'h18) ? 8'h34 : 
				     (InvRows_to_InvSbox[47:40] == 8'h19) ? 8'h8e : 
				     (InvRows_to_InvSbox[47:40] == 8'h1a) ? 8'h43 : 
				     (InvRows_to_InvSbox[47:40] == 8'h1b) ? 8'h44 : 
				     (InvRows_to_InvSbox[47:40] == 8'h1c) ? 8'hc4 : 
				     (InvRows_to_InvSbox[47:40] == 8'h1d) ? 8'hde : 
				     (InvRows_to_InvSbox[47:40] == 8'h1e) ? 8'he9 : 
				     (InvRows_to_InvSbox[47:40] == 8'h1f) ? 8'hcb : 

				     (InvRows_to_InvSbox[47:40] == 8'h20) ? 8'h54 :	// row 2
				     (InvRows_to_InvSbox[47:40] == 8'h21) ? 8'h7b : 
				     (InvRows_to_InvSbox[47:40] == 8'h22) ? 8'h94 : 
				     (InvRows_to_InvSbox[47:40] == 8'h23) ? 8'h32 : 
				     (InvRows_to_InvSbox[47:40] == 8'h24) ? 8'ha6 : 
				     (InvRows_to_InvSbox[47:40] == 8'h25) ? 8'hc2 : 
				     (InvRows_to_InvSbox[47:40] == 8'h26) ? 8'h23 : 
				     (InvRows_to_InvSbox[47:40] == 8'h27) ? 8'h3d : 
				     (InvRows_to_InvSbox[47:40] == 8'h28) ? 8'hee : 
				     (InvRows_to_InvSbox[47:40] == 8'h29) ? 8'h4c : 
				     (InvRows_to_InvSbox[47:40] == 8'h2a) ? 8'h95 : 
				     (InvRows_to_InvSbox[47:40] == 8'h2b) ? 8'h0b : 
				     (InvRows_to_InvSbox[47:40] == 8'h2c) ? 8'h42 : 
				     (InvRows_to_InvSbox[47:40] == 8'h2d) ? 8'hfa : 
				     (InvRows_to_InvSbox[47:40] == 8'h2e) ? 8'hc3 : 
				     (InvRows_to_InvSbox[47:40] == 8'h2f) ? 8'h4e :

				     (InvRows_to_InvSbox[47:40] == 8'h30) ? 8'h08 : 	// row 3
				     (InvRows_to_InvSbox[47:40] == 8'h31) ? 8'h2e : 
				     (InvRows_to_InvSbox[47:40] == 8'h32) ? 8'ha1 : 
				     (InvRows_to_InvSbox[47:40] == 8'h33) ? 8'h66 : 
				     (InvRows_to_InvSbox[47:40] == 8'h34) ? 8'h28 : 
				     (InvRows_to_InvSbox[47:40] == 8'h35) ? 8'hd9 : 
				     (InvRows_to_InvSbox[47:40] == 8'h36) ? 8'h24 : 
				     (InvRows_to_InvSbox[47:40] == 8'h37) ? 8'hb2 : 
				     (InvRows_to_InvSbox[47:40] == 8'h38) ? 8'h76 : 
				     (InvRows_to_InvSbox[47:40] == 8'h39) ? 8'h5b : 
				     (InvRows_to_InvSbox[47:40] == 8'h3a) ? 8'ha2 : 
				     (InvRows_to_InvSbox[47:40] == 8'h3b) ? 8'h49 : 
				     (InvRows_to_InvSbox[47:40] == 8'h3c) ? 8'h6d : 
				     (InvRows_to_InvSbox[47:40] == 8'h3d) ? 8'h8b : 
				     (InvRows_to_InvSbox[47:40] == 8'h3e) ? 8'hd1 : 
				     (InvRows_to_InvSbox[47:40] == 8'h3f) ? 8'h25 : 

				     (InvRows_to_InvSbox[47:40] == 8'h40) ? 8'h72 :	// row 4
				     (InvRows_to_InvSbox[47:40] == 8'h41) ? 8'hf8 : 
				     (InvRows_to_InvSbox[47:40] == 8'h42) ? 8'hf6 : 
				     (InvRows_to_InvSbox[47:40] == 8'h43) ? 8'h64 : 
				     (InvRows_to_InvSbox[47:40] == 8'h44) ? 8'h86 : 
				     (InvRows_to_InvSbox[47:40] == 8'h45) ? 8'h68 : 
				     (InvRows_to_InvSbox[47:40] == 8'h46) ? 8'h98 : 
				     (InvRows_to_InvSbox[47:40] == 8'h47) ? 8'h16 : 
				     (InvRows_to_InvSbox[47:40] == 8'h48) ? 8'hd4 : 
				     (InvRows_to_InvSbox[47:40] == 8'h49) ? 8'ha4 : 
				     (InvRows_to_InvSbox[47:40] == 8'h4a) ? 8'h5c : 
				     (InvRows_to_InvSbox[47:40] == 8'h4b) ? 8'hcc : 
				     (InvRows_to_InvSbox[47:40] == 8'h4c) ? 8'h5d : 
				     (InvRows_to_InvSbox[47:40] == 8'h4d) ? 8'h65 : 
				     (InvRows_to_InvSbox[47:40] == 8'h4e) ? 8'hb6 : 
				     (InvRows_to_InvSbox[47:40] == 8'h4f) ? 8'h92 : 

				     (InvRows_to_InvSbox[47:40] == 8'h50) ? 8'h6c :	// row 5
				     (InvRows_to_InvSbox[47:40] == 8'h51) ? 8'h70 : 
				     (InvRows_to_InvSbox[47:40] == 8'h52) ? 8'h48 : 
				     (InvRows_to_InvSbox[47:40] == 8'h53) ? 8'h50 : 
				     (InvRows_to_InvSbox[47:40] == 8'h54) ? 8'hfd : 
				     (InvRows_to_InvSbox[47:40] == 8'h55) ? 8'hed : 
				     (InvRows_to_InvSbox[47:40] == 8'h56) ? 8'hb9 : 
				     (InvRows_to_InvSbox[47:40] == 8'h57) ? 8'hda : 
				     (InvRows_to_InvSbox[47:40] == 8'h58) ? 8'h5e : 
				     (InvRows_to_InvSbox[47:40] == 8'h59) ? 8'h15 : 
				     (InvRows_to_InvSbox[47:40] == 8'h5a) ? 8'h46 : 
				     (InvRows_to_InvSbox[47:40] == 8'h5b) ? 8'h57 : 
				     (InvRows_to_InvSbox[47:40] == 8'h5c) ? 8'ha7 : 
				     (InvRows_to_InvSbox[47:40] == 8'h5d) ? 8'h8d : 
				     (InvRows_to_InvSbox[47:40] == 8'h5e) ? 8'h9d : 
				     (InvRows_to_InvSbox[47:40] == 8'h5f) ? 8'h84 : 

				     (InvRows_to_InvSbox[47:40] == 8'h60) ? 8'h90 :	// row 6
				     (InvRows_to_InvSbox[47:40] == 8'h61) ? 8'hd8 : 
				     (InvRows_to_InvSbox[47:40] == 8'h62) ? 8'hab : 
				     (InvRows_to_InvSbox[47:40] == 8'h63) ? 8'h00 : 
				     (InvRows_to_InvSbox[47:40] == 8'h64) ? 8'h8c : 
				     (InvRows_to_InvSbox[47:40] == 8'h65) ? 8'hbc : 
				     (InvRows_to_InvSbox[47:40] == 8'h66) ? 8'hd3 : 
				     (InvRows_to_InvSbox[47:40] == 8'h67) ? 8'h0a : 
				     (InvRows_to_InvSbox[47:40] == 8'h68) ? 8'hf7 : 
				     (InvRows_to_InvSbox[47:40] == 8'h69) ? 8'he4 : 
				     (InvRows_to_InvSbox[47:40] == 8'h6a) ? 8'h58 : 
				     (InvRows_to_InvSbox[47:40] == 8'h6b) ? 8'h05 : 
				     (InvRows_to_InvSbox[47:40] == 8'h6c) ? 8'hb8 : 
				     (InvRows_to_InvSbox[47:40] == 8'h6d) ? 8'hb3 : 
				     (InvRows_to_InvSbox[47:40] == 8'h6e) ? 8'h45 : 
				     (InvRows_to_InvSbox[47:40] == 8'h6f) ? 8'h06 : 

				     (InvRows_to_InvSbox[47:40] == 8'h70) ? 8'hd0 :	// row 7
				     (InvRows_to_InvSbox[47:40] == 8'h71) ? 8'h2c : 
				     (InvRows_to_InvSbox[47:40] == 8'h72) ? 8'h1e : 
				     (InvRows_to_InvSbox[47:40] == 8'h73) ? 8'h8f : 
				     (InvRows_to_InvSbox[47:40] == 8'h74) ? 8'hca : 
				     (InvRows_to_InvSbox[47:40] == 8'h75) ? 8'h3f : 
				     (InvRows_to_InvSbox[47:40] == 8'h76) ? 8'h0f : 
				     (InvRows_to_InvSbox[47:40] == 8'h77) ? 8'h02 : 
				     (InvRows_to_InvSbox[47:40] == 8'h78) ? 8'hc1 : 
				     (InvRows_to_InvSbox[47:40] == 8'h79) ? 8'haf : 
				     (InvRows_to_InvSbox[47:40] == 8'h7a) ? 8'hbd : 
				     (InvRows_to_InvSbox[47:40] == 8'h7b) ? 8'h03 : 
				     (InvRows_to_InvSbox[47:40] == 8'h7c) ? 8'h01 : 
				     (InvRows_to_InvSbox[47:40] == 8'h7d) ? 8'h13 : 
				     (InvRows_to_InvSbox[47:40] == 8'h7e) ? 8'h8a : 
				     (InvRows_to_InvSbox[47:40] == 8'h7f) ? 8'h6b :
 
				     (InvRows_to_InvSbox[47:40] == 8'h80) ? 8'h3a :	// row 8
				     (InvRows_to_InvSbox[47:40] == 8'h81) ? 8'h91 : 
				     (InvRows_to_InvSbox[47:40] == 8'h82) ? 8'h11 : 
				     (InvRows_to_InvSbox[47:40] == 8'h83) ? 8'h41 : 
				     (InvRows_to_InvSbox[47:40] == 8'h84) ? 8'h4f : 
				     (InvRows_to_InvSbox[47:40] == 8'h85) ? 8'h67 : 
				     (InvRows_to_InvSbox[47:40] == 8'h86) ? 8'hdc : 
				     (InvRows_to_InvSbox[47:40] == 8'h87) ? 8'hea : 
				     (InvRows_to_InvSbox[47:40] == 8'h88) ? 8'h97 : 
				     (InvRows_to_InvSbox[47:40] == 8'h89) ? 8'hf2 : 
				     (InvRows_to_InvSbox[47:40] == 8'h8a) ? 8'hcf : 
				     (InvRows_to_InvSbox[47:40] == 8'h8b) ? 8'hce : 
				     (InvRows_to_InvSbox[47:40] == 8'h8c) ? 8'hf0 : 
				     (InvRows_to_InvSbox[47:40] == 8'h8d) ? 8'hb4 : 
				     (InvRows_to_InvSbox[47:40] == 8'h8e) ? 8'he6 : 
				     (InvRows_to_InvSbox[47:40] == 8'h8f) ? 8'h73 :

				     (InvRows_to_InvSbox[47:40] == 8'h90) ? 8'h96 :	// row 9
				     (InvRows_to_InvSbox[47:40] == 8'h91) ? 8'hac : 
				     (InvRows_to_InvSbox[47:40] == 8'h92) ? 8'h74 : 
				     (InvRows_to_InvSbox[47:40] == 8'h93) ? 8'h22 : 
				     (InvRows_to_InvSbox[47:40] == 8'h94) ? 8'he7 : 
				     (InvRows_to_InvSbox[47:40] == 8'h95) ? 8'had : 
				     (InvRows_to_InvSbox[47:40] == 8'h96) ? 8'h35 : 
				     (InvRows_to_InvSbox[47:40] == 8'h97) ? 8'h85 : 
				     (InvRows_to_InvSbox[47:40] == 8'h98) ? 8'he2 : 
				     (InvRows_to_InvSbox[47:40] == 8'h99) ? 8'hf9 : 
				     (InvRows_to_InvSbox[47:40] == 8'h9a) ? 8'h37 : 
				     (InvRows_to_InvSbox[47:40] == 8'h9b) ? 8'he8 : 
				     (InvRows_to_InvSbox[47:40] == 8'h9c) ? 8'h1c : 
				     (InvRows_to_InvSbox[47:40] == 8'h9d) ? 8'h75 : 
				     (InvRows_to_InvSbox[47:40] == 8'h9e) ? 8'hdf : 
				     (InvRows_to_InvSbox[47:40] == 8'h9f) ? 8'h6e : 

				     (InvRows_to_InvSbox[47:40] == 8'ha0) ? 8'h47 :	// row a
				     (InvRows_to_InvSbox[47:40] == 8'ha1) ? 8'hf1 : 
				     (InvRows_to_InvSbox[47:40] == 8'ha2) ? 8'h1a : 
				     (InvRows_to_InvSbox[47:40] == 8'ha3) ? 8'h71 : 
				     (InvRows_to_InvSbox[47:40] == 8'ha4) ? 8'h1d : 
				     (InvRows_to_InvSbox[47:40] == 8'ha5) ? 8'h29 : 
				     (InvRows_to_InvSbox[47:40] == 8'ha6) ? 8'hc5 : 
				     (InvRows_to_InvSbox[47:40] == 8'ha7) ? 8'h89 : 
				     (InvRows_to_InvSbox[47:40] == 8'ha8) ? 8'h6f : 
				     (InvRows_to_InvSbox[47:40] == 8'ha9) ? 8'hb7 : 
				     (InvRows_to_InvSbox[47:40] == 8'haa) ? 8'h62 : 
				     (InvRows_to_InvSbox[47:40] == 8'hab) ? 8'h0e : 
				     (InvRows_to_InvSbox[47:40] == 8'hac) ? 8'haa : 
				     (InvRows_to_InvSbox[47:40] == 8'had) ? 8'h18 : 
				     (InvRows_to_InvSbox[47:40] == 8'hae) ? 8'hbe : 
				     (InvRows_to_InvSbox[47:40] == 8'haf) ? 8'h1b : 

				     (InvRows_to_InvSbox[47:40] == 8'hb0) ? 8'hfc :	// row b
				     (InvRows_to_InvSbox[47:40] == 8'hb1) ? 8'h56 : 
				     (InvRows_to_InvSbox[47:40] == 8'hb2) ? 8'h3e : 
				     (InvRows_to_InvSbox[47:40] == 8'hb3) ? 8'h4b : 
				     (InvRows_to_InvSbox[47:40] == 8'hb4) ? 8'hc6 : 
				     (InvRows_to_InvSbox[47:40] == 8'hb5) ? 8'hd2 : 
				     (InvRows_to_InvSbox[47:40] == 8'hb6) ? 8'h79 : 
				     (InvRows_to_InvSbox[47:40] == 8'hb7) ? 8'h20 : 
				     (InvRows_to_InvSbox[47:40] == 8'hb8) ? 8'h9a : 
				     (InvRows_to_InvSbox[47:40] == 8'hb9) ? 8'hdb : 
				     (InvRows_to_InvSbox[47:40] == 8'hba) ? 8'hc0 : 
				     (InvRows_to_InvSbox[47:40] == 8'hbb) ? 8'hfe : 
				     (InvRows_to_InvSbox[47:40] == 8'hbc) ? 8'h78 : 
				     (InvRows_to_InvSbox[47:40] == 8'hbd) ? 8'hcd : 
				     (InvRows_to_InvSbox[47:40] == 8'hbe) ? 8'h5a : 
				     (InvRows_to_InvSbox[47:40] == 8'hbf) ? 8'hf4 : 

				     (InvRows_to_InvSbox[47:40] == 8'hc0) ? 8'h1f :	// row c
				     (InvRows_to_InvSbox[47:40] == 8'hc1) ? 8'hdd : 
				     (InvRows_to_InvSbox[47:40] == 8'hc2) ? 8'ha8 : 
				     (InvRows_to_InvSbox[47:40] == 8'hc3) ? 8'h33 : 
				     (InvRows_to_InvSbox[47:40] == 8'hc4) ? 8'h88 : 
				     (InvRows_to_InvSbox[47:40] == 8'hc5) ? 8'h07 : 
				     (InvRows_to_InvSbox[47:40] == 8'hc6) ? 8'hc7 : 
				     (InvRows_to_InvSbox[47:40] == 8'hc7) ? 8'h31 : 
				     (InvRows_to_InvSbox[47:40] == 8'hc8) ? 8'hb1 : 
				     (InvRows_to_InvSbox[47:40] == 8'hc9) ? 8'h12 : 
				     (InvRows_to_InvSbox[47:40] == 8'hca) ? 8'h10 : 
				     (InvRows_to_InvSbox[47:40] == 8'hcb) ? 8'h59 : 
				     (InvRows_to_InvSbox[47:40] == 8'hcc) ? 8'h27 : 
				     (InvRows_to_InvSbox[47:40] == 8'hcd) ? 8'h80 : 
				     (InvRows_to_InvSbox[47:40] == 8'hce) ? 8'hec : 
				     (InvRows_to_InvSbox[47:40] == 8'hcf) ? 8'h5f : 

				     (InvRows_to_InvSbox[47:40] == 8'hd0) ? 8'h60 :	// row d
				     (InvRows_to_InvSbox[47:40] == 8'hd1) ? 8'h51 : 
				     (InvRows_to_InvSbox[47:40] == 8'hd2) ? 8'h7f : 
				     (InvRows_to_InvSbox[47:40] == 8'hd3) ? 8'ha9 : 
				     (InvRows_to_InvSbox[47:40] == 8'hd4) ? 8'h19 : 
				     (InvRows_to_InvSbox[47:40] == 8'hd5) ? 8'hb5 : 
				     (InvRows_to_InvSbox[47:40] == 8'hd6) ? 8'h4a : 
				     (InvRows_to_InvSbox[47:40] == 8'hd7) ? 8'h0d : 
				     (InvRows_to_InvSbox[47:40] == 8'hd8) ? 8'h2d : 
				     (InvRows_to_InvSbox[47:40] == 8'hd9) ? 8'he5 : 
				     (InvRows_to_InvSbox[47:40] == 8'hda) ? 8'h7a : 
				     (InvRows_to_InvSbox[47:40] == 8'hdb) ? 8'h9f : 
				     (InvRows_to_InvSbox[47:40] == 8'hdc) ? 8'h93 : 
				     (InvRows_to_InvSbox[47:40] == 8'hdd) ? 8'hc9 : 
				     (InvRows_to_InvSbox[47:40] == 8'hde) ? 8'h9c : 
				     (InvRows_to_InvSbox[47:40] == 8'hdf) ? 8'hef : 

				     (InvRows_to_InvSbox[47:40] == 8'he0) ? 8'ha0 :	// row e
				     (InvRows_to_InvSbox[47:40] == 8'he1) ? 8'he0 : 
				     (InvRows_to_InvSbox[47:40] == 8'he2) ? 8'h3b : 
				     (InvRows_to_InvSbox[47:40] == 8'he3) ? 8'h4d : 
				     (InvRows_to_InvSbox[47:40] == 8'he4) ? 8'hae : 
				     (InvRows_to_InvSbox[47:40] == 8'he5) ? 8'h2a : 
				     (InvRows_to_InvSbox[47:40] == 8'he6) ? 8'hf5 : 
				     (InvRows_to_InvSbox[47:40] == 8'he7) ? 8'hb0 : 
				     (InvRows_to_InvSbox[47:40] == 8'he8) ? 8'hc8 : 
				     (InvRows_to_InvSbox[47:40] == 8'he9) ? 8'heb : 
				     (InvRows_to_InvSbox[47:40] == 8'hea) ? 8'hbb : 
				     (InvRows_to_InvSbox[47:40] == 8'heb) ? 8'h3c : 
				     (InvRows_to_InvSbox[47:40] == 8'hec) ? 8'h83 : 
				     (InvRows_to_InvSbox[47:40] == 8'hed) ? 8'h53 : 
				     (InvRows_to_InvSbox[47:40] == 8'hee) ? 8'h99 : 
				     (InvRows_to_InvSbox[47:40] == 8'hef) ? 8'h61 :

				     (InvRows_to_InvSbox[47:40] == 8'hf0) ? 8'h17 :	// row f
				     (InvRows_to_InvSbox[47:40] == 8'hf1) ? 8'h2b : 
				     (InvRows_to_InvSbox[47:40] == 8'hf2) ? 8'h04 : 
				     (InvRows_to_InvSbox[47:40] == 8'hf3) ? 8'h7e : 
				     (InvRows_to_InvSbox[47:40] == 8'hf4) ? 8'hba : 
				     (InvRows_to_InvSbox[47:40] == 8'hf5) ? 8'h77 : 
				     (InvRows_to_InvSbox[47:40] == 8'hf6) ? 8'hd6 : 
				     (InvRows_to_InvSbox[47:40] == 8'hf7) ? 8'h26 : 
				     (InvRows_to_InvSbox[47:40] == 8'hf8) ? 8'he1 : 
				     (InvRows_to_InvSbox[47:40] == 8'hf9) ? 8'h69 : 
				     (InvRows_to_InvSbox[47:40] == 8'hfa) ? 8'h14 : 
				     (InvRows_to_InvSbox[47:40] == 8'hfb) ? 8'h63 : 
				     (InvRows_to_InvSbox[47:40] == 8'hfc) ? 8'h55 : 
				     (InvRows_to_InvSbox[47:40] == 8'hfd) ? 8'h21 : 
				     (InvRows_to_InvSbox[47:40] == 8'hfe) ? 8'h0c : 
				     (InvRows_to_InvSbox[47:40] == 8'hff) ? 8'h7d : 8'hxx;
					  
					  assign InvSBox_out[55:48] = (InvRows_to_InvSbox[55:48] == 8'h00) ? 8'h52 :	// row 0
				     (InvRows_to_InvSbox[55:48] == 8'h01) ? 8'h09 : 
				     (InvRows_to_InvSbox[55:48] == 8'h02) ? 8'h6a : 
				     (InvRows_to_InvSbox[55:48] == 8'h03) ? 8'hd5 : 
				     (InvRows_to_InvSbox[55:48] == 8'h04) ? 8'h30 : 
				     (InvRows_to_InvSbox[55:48] == 8'h05) ? 8'h36 : 
				     (InvRows_to_InvSbox[55:48] == 8'h06) ? 8'ha5 : 
				     (InvRows_to_InvSbox[55:48] == 8'h07) ? 8'h38 : 
				     (InvRows_to_InvSbox[55:48] == 8'h08) ? 8'hbf : 
				     (InvRows_to_InvSbox[55:48] == 8'h09) ? 8'h40 : 
				     (InvRows_to_InvSbox[55:48] == 8'h0a) ? 8'ha3 : 
				     (InvRows_to_InvSbox[55:48] == 8'h0b) ? 8'h9e : 
				     (InvRows_to_InvSbox[55:48] == 8'h0c) ? 8'h81 : 
				     (InvRows_to_InvSbox[55:48] == 8'h0d) ? 8'hf3 : 
				     (InvRows_to_InvSbox[55:48] == 8'h0e) ? 8'hd7 : 
				     (InvRows_to_InvSbox[55:48] == 8'h0f) ? 8'hfb : 

				     (InvRows_to_InvSbox[55:48] == 8'h10) ? 8'h7c :	// row 1
				     (InvRows_to_InvSbox[55:48] == 8'h11) ? 8'he3 : 
				     (InvRows_to_InvSbox[55:48] == 8'h12) ? 8'h39 : 
				     (InvRows_to_InvSbox[55:48] == 8'h13) ? 8'h82 : 
				     (InvRows_to_InvSbox[55:48] == 8'h14) ? 8'h9b : 
				     (InvRows_to_InvSbox[55:48] == 8'h15) ? 8'h2f : 
				     (InvRows_to_InvSbox[55:48] == 8'h16) ? 8'hff : 
				     (InvRows_to_InvSbox[55:48] == 8'h17) ? 8'h87 : 
				     (InvRows_to_InvSbox[55:48] == 8'h18) ? 8'h34 : 
				     (InvRows_to_InvSbox[55:48] == 8'h19) ? 8'h8e : 
				     (InvRows_to_InvSbox[55:48] == 8'h1a) ? 8'h43 : 
				     (InvRows_to_InvSbox[55:48] == 8'h1b) ? 8'h44 : 
				     (InvRows_to_InvSbox[55:48] == 8'h1c) ? 8'hc4 : 
				     (InvRows_to_InvSbox[55:48] == 8'h1d) ? 8'hde : 
				     (InvRows_to_InvSbox[55:48] == 8'h1e) ? 8'he9 : 
				     (InvRows_to_InvSbox[55:48] == 8'h1f) ? 8'hcb : 

				     (InvRows_to_InvSbox[55:48] == 8'h20) ? 8'h54 :	// row 2
				     (InvRows_to_InvSbox[55:48] == 8'h21) ? 8'h7b : 
				     (InvRows_to_InvSbox[55:48] == 8'h22) ? 8'h94 : 
				     (InvRows_to_InvSbox[55:48] == 8'h23) ? 8'h32 : 
				     (InvRows_to_InvSbox[55:48] == 8'h24) ? 8'ha6 : 
				     (InvRows_to_InvSbox[55:48] == 8'h25) ? 8'hc2 : 
				     (InvRows_to_InvSbox[55:48] == 8'h26) ? 8'h23 : 
				     (InvRows_to_InvSbox[55:48] == 8'h27) ? 8'h3d : 
				     (InvRows_to_InvSbox[55:48] == 8'h28) ? 8'hee : 
				     (InvRows_to_InvSbox[55:48] == 8'h29) ? 8'h4c : 
				     (InvRows_to_InvSbox[55:48] == 8'h2a) ? 8'h95 : 
				     (InvRows_to_InvSbox[55:48] == 8'h2b) ? 8'h0b : 
				     (InvRows_to_InvSbox[55:48] == 8'h2c) ? 8'h42 : 
				     (InvRows_to_InvSbox[55:48] == 8'h2d) ? 8'hfa : 
				     (InvRows_to_InvSbox[55:48] == 8'h2e) ? 8'hc3 : 
				     (InvRows_to_InvSbox[55:48] == 8'h2f) ? 8'h4e :

				     (InvRows_to_InvSbox[55:48] == 8'h30) ? 8'h08 : 	// row 3
				     (InvRows_to_InvSbox[55:48] == 8'h31) ? 8'h2e : 
				     (InvRows_to_InvSbox[55:48] == 8'h32) ? 8'ha1 : 
				     (InvRows_to_InvSbox[55:48] == 8'h33) ? 8'h66 : 
				     (InvRows_to_InvSbox[55:48] == 8'h34) ? 8'h28 : 
				     (InvRows_to_InvSbox[55:48] == 8'h35) ? 8'hd9 : 
				     (InvRows_to_InvSbox[55:48] == 8'h36) ? 8'h24 : 
				     (InvRows_to_InvSbox[55:48] == 8'h37) ? 8'hb2 : 
				     (InvRows_to_InvSbox[55:48] == 8'h38) ? 8'h76 : 
				     (InvRows_to_InvSbox[55:48] == 8'h39) ? 8'h5b : 
				     (InvRows_to_InvSbox[55:48] == 8'h3a) ? 8'ha2 : 
				     (InvRows_to_InvSbox[55:48] == 8'h3b) ? 8'h49 : 
				     (InvRows_to_InvSbox[55:48] == 8'h3c) ? 8'h6d : 
				     (InvRows_to_InvSbox[55:48] == 8'h3d) ? 8'h8b : 
				     (InvRows_to_InvSbox[55:48] == 8'h3e) ? 8'hd1 : 
				     (InvRows_to_InvSbox[55:48] == 8'h3f) ? 8'h25 : 

				     (InvRows_to_InvSbox[55:48] == 8'h40) ? 8'h72 :	// row 4
				     (InvRows_to_InvSbox[55:48] == 8'h41) ? 8'hf8 : 
				     (InvRows_to_InvSbox[55:48] == 8'h42) ? 8'hf6 : 
				     (InvRows_to_InvSbox[55:48] == 8'h43) ? 8'h64 : 
				     (InvRows_to_InvSbox[55:48] == 8'h44) ? 8'h86 : 
				     (InvRows_to_InvSbox[55:48] == 8'h45) ? 8'h68 : 
				     (InvRows_to_InvSbox[55:48] == 8'h46) ? 8'h98 : 
				     (InvRows_to_InvSbox[55:48] == 8'h47) ? 8'h16 : 
				     (InvRows_to_InvSbox[55:48] == 8'h48) ? 8'hd4 : 
				     (InvRows_to_InvSbox[55:48] == 8'h49) ? 8'ha4 : 
				     (InvRows_to_InvSbox[55:48] == 8'h4a) ? 8'h5c : 
				     (InvRows_to_InvSbox[55:48] == 8'h4b) ? 8'hcc : 
				     (InvRows_to_InvSbox[55:48] == 8'h4c) ? 8'h5d : 
				     (InvRows_to_InvSbox[55:48] == 8'h4d) ? 8'h65 : 
				     (InvRows_to_InvSbox[55:48] == 8'h4e) ? 8'hb6 : 
				     (InvRows_to_InvSbox[55:48] == 8'h4f) ? 8'h92 : 

				     (InvRows_to_InvSbox[55:48] == 8'h50) ? 8'h6c :	// row 5
				     (InvRows_to_InvSbox[55:48] == 8'h51) ? 8'h70 : 
				     (InvRows_to_InvSbox[55:48] == 8'h52) ? 8'h48 : 
				     (InvRows_to_InvSbox[55:48] == 8'h53) ? 8'h50 : 
				     (InvRows_to_InvSbox[55:48] == 8'h54) ? 8'hfd : 
				     (InvRows_to_InvSbox[55:48] == 8'h55) ? 8'hed : 
				     (InvRows_to_InvSbox[55:48] == 8'h56) ? 8'hb9 : 
				     (InvRows_to_InvSbox[55:48] == 8'h57) ? 8'hda : 
				     (InvRows_to_InvSbox[55:48] == 8'h58) ? 8'h5e : 
				     (InvRows_to_InvSbox[55:48] == 8'h59) ? 8'h15 : 
				     (InvRows_to_InvSbox[55:48] == 8'h5a) ? 8'h46 : 
				     (InvRows_to_InvSbox[55:48] == 8'h5b) ? 8'h57 : 
				     (InvRows_to_InvSbox[55:48] == 8'h5c) ? 8'ha7 : 
				     (InvRows_to_InvSbox[55:48] == 8'h5d) ? 8'h8d : 
				     (InvRows_to_InvSbox[55:48] == 8'h5e) ? 8'h9d : 
				     (InvRows_to_InvSbox[55:48] == 8'h5f) ? 8'h84 : 

				     (InvRows_to_InvSbox[55:48] == 8'h60) ? 8'h90 :	// row 6
				     (InvRows_to_InvSbox[55:48] == 8'h61) ? 8'hd8 : 
				     (InvRows_to_InvSbox[55:48] == 8'h62) ? 8'hab : 
				     (InvRows_to_InvSbox[55:48] == 8'h63) ? 8'h00 : 
				     (InvRows_to_InvSbox[55:48] == 8'h64) ? 8'h8c : 
				     (InvRows_to_InvSbox[55:48] == 8'h65) ? 8'hbc : 
				     (InvRows_to_InvSbox[55:48] == 8'h66) ? 8'hd3 : 
				     (InvRows_to_InvSbox[55:48] == 8'h67) ? 8'h0a : 
				     (InvRows_to_InvSbox[55:48] == 8'h68) ? 8'hf7 : 
				     (InvRows_to_InvSbox[55:48] == 8'h69) ? 8'he4 : 
				     (InvRows_to_InvSbox[55:48] == 8'h6a) ? 8'h58 : 
				     (InvRows_to_InvSbox[55:48] == 8'h6b) ? 8'h05 : 
				     (InvRows_to_InvSbox[55:48] == 8'h6c) ? 8'hb8 : 
				     (InvRows_to_InvSbox[55:48] == 8'h6d) ? 8'hb3 : 
				     (InvRows_to_InvSbox[55:48] == 8'h6e) ? 8'h45 : 
				     (InvRows_to_InvSbox[55:48] == 8'h6f) ? 8'h06 : 

				     (InvRows_to_InvSbox[55:48] == 8'h70) ? 8'hd0 :	// row 7
				     (InvRows_to_InvSbox[55:48] == 8'h71) ? 8'h2c : 
				     (InvRows_to_InvSbox[55:48] == 8'h72) ? 8'h1e : 
				     (InvRows_to_InvSbox[55:48] == 8'h73) ? 8'h8f : 
				     (InvRows_to_InvSbox[55:48] == 8'h74) ? 8'hca : 
				     (InvRows_to_InvSbox[55:48] == 8'h75) ? 8'h3f : 
				     (InvRows_to_InvSbox[55:48] == 8'h76) ? 8'h0f : 
				     (InvRows_to_InvSbox[55:48] == 8'h77) ? 8'h02 : 
				     (InvRows_to_InvSbox[55:48] == 8'h78) ? 8'hc1 : 
				     (InvRows_to_InvSbox[55:48] == 8'h79) ? 8'haf : 
				     (InvRows_to_InvSbox[55:48] == 8'h7a) ? 8'hbd : 
				     (InvRows_to_InvSbox[55:48] == 8'h7b) ? 8'h03 : 
				     (InvRows_to_InvSbox[55:48] == 8'h7c) ? 8'h01 : 
				     (InvRows_to_InvSbox[55:48] == 8'h7d) ? 8'h13 : 
				     (InvRows_to_InvSbox[55:48] == 8'h7e) ? 8'h8a : 
				     (InvRows_to_InvSbox[55:48] == 8'h7f) ? 8'h6b :
 
				     (InvRows_to_InvSbox[55:48] == 8'h80) ? 8'h3a :	// row 8
				     (InvRows_to_InvSbox[55:48] == 8'h81) ? 8'h91 : 
				     (InvRows_to_InvSbox[55:48] == 8'h82) ? 8'h11 : 
				     (InvRows_to_InvSbox[55:48] == 8'h83) ? 8'h41 : 
				     (InvRows_to_InvSbox[55:48] == 8'h84) ? 8'h4f : 
				     (InvRows_to_InvSbox[55:48] == 8'h85) ? 8'h67 : 
				     (InvRows_to_InvSbox[55:48] == 8'h86) ? 8'hdc : 
				     (InvRows_to_InvSbox[55:48] == 8'h87) ? 8'hea : 
				     (InvRows_to_InvSbox[55:48] == 8'h88) ? 8'h97 : 
				     (InvRows_to_InvSbox[55:48] == 8'h89) ? 8'hf2 : 
				     (InvRows_to_InvSbox[55:48] == 8'h8a) ? 8'hcf : 
				     (InvRows_to_InvSbox[55:48] == 8'h8b) ? 8'hce : 
				     (InvRows_to_InvSbox[55:48] == 8'h8c) ? 8'hf0 : 
				     (InvRows_to_InvSbox[55:48] == 8'h8d) ? 8'hb4 : 
				     (InvRows_to_InvSbox[55:48] == 8'h8e) ? 8'he6 : 
				     (InvRows_to_InvSbox[55:48] == 8'h8f) ? 8'h73 :

				     (InvRows_to_InvSbox[55:48] == 8'h90) ? 8'h96 :	// row 9
				     (InvRows_to_InvSbox[55:48] == 8'h91) ? 8'hac : 
				     (InvRows_to_InvSbox[55:48] == 8'h92) ? 8'h74 : 
				     (InvRows_to_InvSbox[55:48] == 8'h93) ? 8'h22 : 
				     (InvRows_to_InvSbox[55:48] == 8'h94) ? 8'he7 : 
				     (InvRows_to_InvSbox[55:48] == 8'h95) ? 8'had : 
				     (InvRows_to_InvSbox[55:48] == 8'h96) ? 8'h35 : 
				     (InvRows_to_InvSbox[55:48] == 8'h97) ? 8'h85 : 
				     (InvRows_to_InvSbox[55:48] == 8'h98) ? 8'he2 : 
				     (InvRows_to_InvSbox[55:48] == 8'h99) ? 8'hf9 : 
				     (InvRows_to_InvSbox[55:48] == 8'h9a) ? 8'h37 : 
				     (InvRows_to_InvSbox[55:48] == 8'h9b) ? 8'he8 : 
				     (InvRows_to_InvSbox[55:48] == 8'h9c) ? 8'h1c : 
				     (InvRows_to_InvSbox[55:48] == 8'h9d) ? 8'h75 : 
				     (InvRows_to_InvSbox[55:48] == 8'h9e) ? 8'hdf : 
				     (InvRows_to_InvSbox[55:48] == 8'h9f) ? 8'h6e : 

				     (InvRows_to_InvSbox[55:48] == 8'ha0) ? 8'h47 :	// row a
				     (InvRows_to_InvSbox[55:48] == 8'ha1) ? 8'hf1 : 
				     (InvRows_to_InvSbox[55:48] == 8'ha2) ? 8'h1a : 
				     (InvRows_to_InvSbox[55:48] == 8'ha3) ? 8'h71 : 
				     (InvRows_to_InvSbox[55:48] == 8'ha4) ? 8'h1d : 
				     (InvRows_to_InvSbox[55:48] == 8'ha5) ? 8'h29 : 
				     (InvRows_to_InvSbox[55:48] == 8'ha6) ? 8'hc5 : 
				     (InvRows_to_InvSbox[55:48] == 8'ha7) ? 8'h89 : 
				     (InvRows_to_InvSbox[55:48] == 8'ha8) ? 8'h6f : 
				     (InvRows_to_InvSbox[55:48] == 8'ha9) ? 8'hb7 : 
				     (InvRows_to_InvSbox[55:48] == 8'haa) ? 8'h62 : 
				     (InvRows_to_InvSbox[55:48] == 8'hab) ? 8'h0e : 
				     (InvRows_to_InvSbox[55:48] == 8'hac) ? 8'haa : 
				     (InvRows_to_InvSbox[55:48] == 8'had) ? 8'h18 : 
				     (InvRows_to_InvSbox[55:48] == 8'hae) ? 8'hbe : 
				     (InvRows_to_InvSbox[55:48] == 8'haf) ? 8'h1b : 

				     (InvRows_to_InvSbox[55:48] == 8'hb0) ? 8'hfc :	// row b
				     (InvRows_to_InvSbox[55:48] == 8'hb1) ? 8'h56 : 
				     (InvRows_to_InvSbox[55:48] == 8'hb2) ? 8'h3e : 
				     (InvRows_to_InvSbox[55:48] == 8'hb3) ? 8'h4b : 
				     (InvRows_to_InvSbox[55:48] == 8'hb4) ? 8'hc6 : 
				     (InvRows_to_InvSbox[55:48] == 8'hb5) ? 8'hd2 : 
				     (InvRows_to_InvSbox[55:48] == 8'hb6) ? 8'h79 : 
				     (InvRows_to_InvSbox[55:48] == 8'hb7) ? 8'h20 : 
				     (InvRows_to_InvSbox[55:48] == 8'hb8) ? 8'h9a : 
				     (InvRows_to_InvSbox[55:48] == 8'hb9) ? 8'hdb : 
				     (InvRows_to_InvSbox[55:48] == 8'hba) ? 8'hc0 : 
				     (InvRows_to_InvSbox[55:48] == 8'hbb) ? 8'hfe : 
				     (InvRows_to_InvSbox[55:48] == 8'hbc) ? 8'h78 : 
				     (InvRows_to_InvSbox[55:48] == 8'hbd) ? 8'hcd : 
				     (InvRows_to_InvSbox[55:48] == 8'hbe) ? 8'h5a : 
				     (InvRows_to_InvSbox[55:48] == 8'hbf) ? 8'hf4 : 

				     (InvRows_to_InvSbox[55:48] == 8'hc0) ? 8'h1f :	// row c
				     (InvRows_to_InvSbox[55:48] == 8'hc1) ? 8'hdd : 
				     (InvRows_to_InvSbox[55:48] == 8'hc2) ? 8'ha8 : 
				     (InvRows_to_InvSbox[55:48] == 8'hc3) ? 8'h33 : 
				     (InvRows_to_InvSbox[55:48] == 8'hc4) ? 8'h88 : 
				     (InvRows_to_InvSbox[55:48] == 8'hc5) ? 8'h07 : 
				     (InvRows_to_InvSbox[55:48] == 8'hc6) ? 8'hc7 : 
				     (InvRows_to_InvSbox[55:48] == 8'hc7) ? 8'h31 : 
				     (InvRows_to_InvSbox[55:48] == 8'hc8) ? 8'hb1 : 
				     (InvRows_to_InvSbox[55:48] == 8'hc9) ? 8'h12 : 
				     (InvRows_to_InvSbox[55:48] == 8'hca) ? 8'h10 : 
				     (InvRows_to_InvSbox[55:48] == 8'hcb) ? 8'h59 : 
				     (InvRows_to_InvSbox[55:48] == 8'hcc) ? 8'h27 : 
				     (InvRows_to_InvSbox[55:48] == 8'hcd) ? 8'h80 : 
				     (InvRows_to_InvSbox[55:48] == 8'hce) ? 8'hec : 
				     (InvRows_to_InvSbox[55:48] == 8'hcf) ? 8'h5f : 

				     (InvRows_to_InvSbox[55:48] == 8'hd0) ? 8'h60 :	// row d
				     (InvRows_to_InvSbox[55:48] == 8'hd1) ? 8'h51 : 
				     (InvRows_to_InvSbox[55:48] == 8'hd2) ? 8'h7f : 
				     (InvRows_to_InvSbox[55:48] == 8'hd3) ? 8'ha9 : 
				     (InvRows_to_InvSbox[55:48] == 8'hd4) ? 8'h19 : 
				     (InvRows_to_InvSbox[55:48] == 8'hd5) ? 8'hb5 : 
				     (InvRows_to_InvSbox[55:48] == 8'hd6) ? 8'h4a : 
				     (InvRows_to_InvSbox[55:48] == 8'hd7) ? 8'h0d : 
				     (InvRows_to_InvSbox[55:48] == 8'hd8) ? 8'h2d : 
				     (InvRows_to_InvSbox[55:48] == 8'hd9) ? 8'he5 : 
				     (InvRows_to_InvSbox[55:48] == 8'hda) ? 8'h7a : 
				     (InvRows_to_InvSbox[55:48] == 8'hdb) ? 8'h9f : 
				     (InvRows_to_InvSbox[55:48] == 8'hdc) ? 8'h93 : 
				     (InvRows_to_InvSbox[55:48] == 8'hdd) ? 8'hc9 : 
				     (InvRows_to_InvSbox[55:48] == 8'hde) ? 8'h9c : 
				     (InvRows_to_InvSbox[55:48] == 8'hdf) ? 8'hef : 

				     (InvRows_to_InvSbox[55:48] == 8'he0) ? 8'ha0 :	// row e
				     (InvRows_to_InvSbox[55:48] == 8'he1) ? 8'he0 : 
				     (InvRows_to_InvSbox[55:48] == 8'he2) ? 8'h3b : 
				     (InvRows_to_InvSbox[55:48] == 8'he3) ? 8'h4d : 
				     (InvRows_to_InvSbox[55:48] == 8'he4) ? 8'hae : 
				     (InvRows_to_InvSbox[55:48] == 8'he5) ? 8'h2a : 
				     (InvRows_to_InvSbox[55:48] == 8'he6) ? 8'hf5 : 
				     (InvRows_to_InvSbox[55:48] == 8'he7) ? 8'hb0 : 
				     (InvRows_to_InvSbox[55:48] == 8'he8) ? 8'hc8 : 
				     (InvRows_to_InvSbox[55:48] == 8'he9) ? 8'heb : 
				     (InvRows_to_InvSbox[55:48] == 8'hea) ? 8'hbb : 
				     (InvRows_to_InvSbox[55:48] == 8'heb) ? 8'h3c : 
				     (InvRows_to_InvSbox[55:48] == 8'hec) ? 8'h83 : 
				     (InvRows_to_InvSbox[55:48] == 8'hed) ? 8'h53 : 
				     (InvRows_to_InvSbox[55:48] == 8'hee) ? 8'h99 : 
				     (InvRows_to_InvSbox[55:48] == 8'hef) ? 8'h61 :

				     (InvRows_to_InvSbox[55:48] == 8'hf0) ? 8'h17 :	// row f
				     (InvRows_to_InvSbox[55:48] == 8'hf1) ? 8'h2b : 
				     (InvRows_to_InvSbox[55:48] == 8'hf2) ? 8'h04 : 
				     (InvRows_to_InvSbox[55:48] == 8'hf3) ? 8'h7e : 
				     (InvRows_to_InvSbox[55:48] == 8'hf4) ? 8'hba : 
				     (InvRows_to_InvSbox[55:48] == 8'hf5) ? 8'h77 : 
				     (InvRows_to_InvSbox[55:48] == 8'hf6) ? 8'hd6 : 
				     (InvRows_to_InvSbox[55:48] == 8'hf7) ? 8'h26 : 
				     (InvRows_to_InvSbox[55:48] == 8'hf8) ? 8'he1 : 
				     (InvRows_to_InvSbox[55:48] == 8'hf9) ? 8'h69 : 
				     (InvRows_to_InvSbox[55:48] == 8'hfa) ? 8'h14 : 
				     (InvRows_to_InvSbox[55:48] == 8'hfb) ? 8'h63 : 
				     (InvRows_to_InvSbox[55:48] == 8'hfc) ? 8'h55 : 
				     (InvRows_to_InvSbox[55:48] == 8'hfd) ? 8'h21 : 
				     (InvRows_to_InvSbox[55:48] == 8'hfe) ? 8'h0c : 
				     (InvRows_to_InvSbox[55:48] == 8'hff) ? 8'h7d : 8'hxx;
					  
					  assign InvSBox_out[63:56] = (InvRows_to_InvSbox[63:56] == 8'h00) ? 8'h52 :	// row 0
				     (InvRows_to_InvSbox[63:56] == 8'h01) ? 8'h09 : 
				     (InvRows_to_InvSbox[63:56] == 8'h02) ? 8'h6a : 
				     (InvRows_to_InvSbox[63:56] == 8'h03) ? 8'hd5 : 
				     (InvRows_to_InvSbox[63:56] == 8'h04) ? 8'h30 : 
				     (InvRows_to_InvSbox[63:56] == 8'h05) ? 8'h36 : 
				     (InvRows_to_InvSbox[63:56] == 8'h06) ? 8'ha5 : 
				     (InvRows_to_InvSbox[63:56] == 8'h07) ? 8'h38 : 
				     (InvRows_to_InvSbox[63:56] == 8'h08) ? 8'hbf : 
				     (InvRows_to_InvSbox[63:56] == 8'h09) ? 8'h40 : 
				     (InvRows_to_InvSbox[63:56] == 8'h0a) ? 8'ha3 : 
				     (InvRows_to_InvSbox[63:56] == 8'h0b) ? 8'h9e : 
				     (InvRows_to_InvSbox[63:56] == 8'h0c) ? 8'h81 : 
				     (InvRows_to_InvSbox[63:56] == 8'h0d) ? 8'hf3 : 
				     (InvRows_to_InvSbox[63:56] == 8'h0e) ? 8'hd7 : 
				     (InvRows_to_InvSbox[63:56] == 8'h0f) ? 8'hfb : 

				     (InvRows_to_InvSbox[63:56] == 8'h10) ? 8'h7c :	// row 1
				     (InvRows_to_InvSbox[63:56] == 8'h11) ? 8'he3 : 
				     (InvRows_to_InvSbox[63:56] == 8'h12) ? 8'h39 : 
				     (InvRows_to_InvSbox[63:56] == 8'h13) ? 8'h82 : 
				     (InvRows_to_InvSbox[63:56] == 8'h14) ? 8'h9b : 
				     (InvRows_to_InvSbox[63:56] == 8'h15) ? 8'h2f : 
				     (InvRows_to_InvSbox[63:56] == 8'h16) ? 8'hff : 
				     (InvRows_to_InvSbox[63:56] == 8'h17) ? 8'h87 : 
				     (InvRows_to_InvSbox[63:56] == 8'h18) ? 8'h34 : 
				     (InvRows_to_InvSbox[63:56] == 8'h19) ? 8'h8e : 
				     (InvRows_to_InvSbox[63:56] == 8'h1a) ? 8'h43 : 
				     (InvRows_to_InvSbox[63:56] == 8'h1b) ? 8'h44 : 
				     (InvRows_to_InvSbox[63:56] == 8'h1c) ? 8'hc4 : 
				     (InvRows_to_InvSbox[63:56] == 8'h1d) ? 8'hde : 
				     (InvRows_to_InvSbox[63:56] == 8'h1e) ? 8'he9 : 
				     (InvRows_to_InvSbox[63:56] == 8'h1f) ? 8'hcb : 

				     (InvRows_to_InvSbox[63:56] == 8'h20) ? 8'h54 :	// row 2
				     (InvRows_to_InvSbox[63:56] == 8'h21) ? 8'h7b : 
				     (InvRows_to_InvSbox[63:56] == 8'h22) ? 8'h94 : 
				     (InvRows_to_InvSbox[63:56] == 8'h23) ? 8'h32 : 
				     (InvRows_to_InvSbox[63:56] == 8'h24) ? 8'ha6 : 
				     (InvRows_to_InvSbox[63:56] == 8'h25) ? 8'hc2 : 
				     (InvRows_to_InvSbox[63:56] == 8'h26) ? 8'h23 : 
				     (InvRows_to_InvSbox[63:56] == 8'h27) ? 8'h3d : 
				     (InvRows_to_InvSbox[63:56] == 8'h28) ? 8'hee : 
				     (InvRows_to_InvSbox[63:56] == 8'h29) ? 8'h4c : 
				     (InvRows_to_InvSbox[63:56] == 8'h2a) ? 8'h95 : 
				     (InvRows_to_InvSbox[63:56] == 8'h2b) ? 8'h0b : 
				     (InvRows_to_InvSbox[63:56] == 8'h2c) ? 8'h42 : 
				     (InvRows_to_InvSbox[63:56] == 8'h2d) ? 8'hfa : 
				     (InvRows_to_InvSbox[63:56] == 8'h2e) ? 8'hc3 : 
				     (InvRows_to_InvSbox[63:56] == 8'h2f) ? 8'h4e :

				     (InvRows_to_InvSbox[63:56] == 8'h30) ? 8'h08 : 	// row 3
				     (InvRows_to_InvSbox[63:56] == 8'h31) ? 8'h2e : 
				     (InvRows_to_InvSbox[63:56] == 8'h32) ? 8'ha1 : 
				     (InvRows_to_InvSbox[63:56] == 8'h33) ? 8'h66 : 
				     (InvRows_to_InvSbox[63:56] == 8'h34) ? 8'h28 : 
				     (InvRows_to_InvSbox[63:56] == 8'h35) ? 8'hd9 : 
				     (InvRows_to_InvSbox[63:56] == 8'h36) ? 8'h24 : 
				     (InvRows_to_InvSbox[63:56] == 8'h37) ? 8'hb2 : 
				     (InvRows_to_InvSbox[63:56] == 8'h38) ? 8'h76 : 
				     (InvRows_to_InvSbox[63:56] == 8'h39) ? 8'h5b : 
				     (InvRows_to_InvSbox[63:56] == 8'h3a) ? 8'ha2 : 
				     (InvRows_to_InvSbox[63:56] == 8'h3b) ? 8'h49 : 
				     (InvRows_to_InvSbox[63:56] == 8'h3c) ? 8'h6d : 
				     (InvRows_to_InvSbox[63:56] == 8'h3d) ? 8'h8b : 
				     (InvRows_to_InvSbox[63:56] == 8'h3e) ? 8'hd1 : 
				     (InvRows_to_InvSbox[63:56] == 8'h3f) ? 8'h25 : 

				     (InvRows_to_InvSbox[63:56] == 8'h40) ? 8'h72 :	// row 4
				     (InvRows_to_InvSbox[63:56] == 8'h41) ? 8'hf8 : 
				     (InvRows_to_InvSbox[63:56] == 8'h42) ? 8'hf6 : 
				     (InvRows_to_InvSbox[63:56] == 8'h43) ? 8'h64 : 
				     (InvRows_to_InvSbox[63:56] == 8'h44) ? 8'h86 : 
				     (InvRows_to_InvSbox[63:56] == 8'h45) ? 8'h68 : 
				     (InvRows_to_InvSbox[63:56] == 8'h46) ? 8'h98 : 
				     (InvRows_to_InvSbox[63:56] == 8'h47) ? 8'h16 : 
				     (InvRows_to_InvSbox[63:56] == 8'h48) ? 8'hd4 : 
				     (InvRows_to_InvSbox[63:56] == 8'h49) ? 8'ha4 : 
				     (InvRows_to_InvSbox[63:56] == 8'h4a) ? 8'h5c : 
				     (InvRows_to_InvSbox[63:56] == 8'h4b) ? 8'hcc : 
				     (InvRows_to_InvSbox[63:56] == 8'h4c) ? 8'h5d : 
				     (InvRows_to_InvSbox[63:56] == 8'h4d) ? 8'h65 : 
				     (InvRows_to_InvSbox[63:56] == 8'h4e) ? 8'hb6 : 
				     (InvRows_to_InvSbox[63:56] == 8'h4f) ? 8'h92 : 

				     (InvRows_to_InvSbox[63:56] == 8'h50) ? 8'h6c :	// row 5
				     (InvRows_to_InvSbox[63:56] == 8'h51) ? 8'h70 : 
				     (InvRows_to_InvSbox[63:56] == 8'h52) ? 8'h48 : 
				     (InvRows_to_InvSbox[63:56] == 8'h53) ? 8'h50 : 
				     (InvRows_to_InvSbox[63:56] == 8'h54) ? 8'hfd : 
				     (InvRows_to_InvSbox[63:56] == 8'h55) ? 8'hed : 
				     (InvRows_to_InvSbox[63:56] == 8'h56) ? 8'hb9 : 
				     (InvRows_to_InvSbox[63:56] == 8'h57) ? 8'hda : 
				     (InvRows_to_InvSbox[63:56] == 8'h58) ? 8'h5e : 
				     (InvRows_to_InvSbox[63:56] == 8'h59) ? 8'h15 : 
				     (InvRows_to_InvSbox[63:56] == 8'h5a) ? 8'h46 : 
				     (InvRows_to_InvSbox[63:56] == 8'h5b) ? 8'h57 : 
				     (InvRows_to_InvSbox[63:56] == 8'h5c) ? 8'ha7 : 
				     (InvRows_to_InvSbox[63:56] == 8'h5d) ? 8'h8d : 
				     (InvRows_to_InvSbox[63:56] == 8'h5e) ? 8'h9d : 
				     (InvRows_to_InvSbox[63:56] == 8'h5f) ? 8'h84 : 

				     (InvRows_to_InvSbox[63:56] == 8'h60) ? 8'h90 :	// row 6
				     (InvRows_to_InvSbox[63:56] == 8'h61) ? 8'hd8 : 
				     (InvRows_to_InvSbox[63:56] == 8'h62) ? 8'hab : 
				     (InvRows_to_InvSbox[63:56] == 8'h63) ? 8'h00 : 
				     (InvRows_to_InvSbox[63:56] == 8'h64) ? 8'h8c : 
				     (InvRows_to_InvSbox[63:56] == 8'h65) ? 8'hbc : 
				     (InvRows_to_InvSbox[63:56] == 8'h66) ? 8'hd3 : 
				     (InvRows_to_InvSbox[63:56] == 8'h67) ? 8'h0a : 
				     (InvRows_to_InvSbox[63:56] == 8'h68) ? 8'hf7 : 
				     (InvRows_to_InvSbox[63:56] == 8'h69) ? 8'he4 : 
				     (InvRows_to_InvSbox[63:56] == 8'h6a) ? 8'h58 : 
				     (InvRows_to_InvSbox[63:56] == 8'h6b) ? 8'h05 : 
				     (InvRows_to_InvSbox[63:56] == 8'h6c) ? 8'hb8 : 
				     (InvRows_to_InvSbox[63:56] == 8'h6d) ? 8'hb3 : 
				     (InvRows_to_InvSbox[63:56] == 8'h6e) ? 8'h45 : 
				     (InvRows_to_InvSbox[63:56] == 8'h6f) ? 8'h06 : 

				     (InvRows_to_InvSbox[63:56] == 8'h70) ? 8'hd0 :	// row 7
				     (InvRows_to_InvSbox[63:56] == 8'h71) ? 8'h2c : 
				     (InvRows_to_InvSbox[63:56] == 8'h72) ? 8'h1e : 
				     (InvRows_to_InvSbox[63:56] == 8'h73) ? 8'h8f : 
				     (InvRows_to_InvSbox[63:56] == 8'h74) ? 8'hca : 
				     (InvRows_to_InvSbox[63:56] == 8'h75) ? 8'h3f : 
				     (InvRows_to_InvSbox[63:56] == 8'h76) ? 8'h0f : 
				     (InvRows_to_InvSbox[63:56] == 8'h77) ? 8'h02 : 
				     (InvRows_to_InvSbox[63:56] == 8'h78) ? 8'hc1 : 
				     (InvRows_to_InvSbox[63:56] == 8'h79) ? 8'haf : 
				     (InvRows_to_InvSbox[63:56] == 8'h7a) ? 8'hbd : 
				     (InvRows_to_InvSbox[63:56] == 8'h7b) ? 8'h03 : 
				     (InvRows_to_InvSbox[63:56] == 8'h7c) ? 8'h01 : 
				     (InvRows_to_InvSbox[63:56] == 8'h7d) ? 8'h13 : 
				     (InvRows_to_InvSbox[63:56] == 8'h7e) ? 8'h8a : 
				     (InvRows_to_InvSbox[63:56] == 8'h7f) ? 8'h6b :
 
				     (InvRows_to_InvSbox[63:56] == 8'h80) ? 8'h3a :	// row 8
				     (InvRows_to_InvSbox[63:56] == 8'h81) ? 8'h91 : 
				     (InvRows_to_InvSbox[63:56] == 8'h82) ? 8'h11 : 
				     (InvRows_to_InvSbox[63:56] == 8'h83) ? 8'h41 : 
				     (InvRows_to_InvSbox[63:56] == 8'h84) ? 8'h4f : 
				     (InvRows_to_InvSbox[63:56] == 8'h85) ? 8'h67 : 
				     (InvRows_to_InvSbox[63:56] == 8'h86) ? 8'hdc : 
				     (InvRows_to_InvSbox[63:56] == 8'h87) ? 8'hea : 
				     (InvRows_to_InvSbox[63:56] == 8'h88) ? 8'h97 : 
				     (InvRows_to_InvSbox[63:56] == 8'h89) ? 8'hf2 : 
				     (InvRows_to_InvSbox[63:56] == 8'h8a) ? 8'hcf : 
				     (InvRows_to_InvSbox[63:56] == 8'h8b) ? 8'hce : 
				     (InvRows_to_InvSbox[63:56] == 8'h8c) ? 8'hf0 : 
				     (InvRows_to_InvSbox[63:56] == 8'h8d) ? 8'hb4 : 
				     (InvRows_to_InvSbox[63:56] == 8'h8e) ? 8'he6 : 
				     (InvRows_to_InvSbox[63:56] == 8'h8f) ? 8'h73 :

				     (InvRows_to_InvSbox[63:56] == 8'h90) ? 8'h96 :	// row 9
				     (InvRows_to_InvSbox[63:56] == 8'h91) ? 8'hac : 
				     (InvRows_to_InvSbox[63:56] == 8'h92) ? 8'h74 : 
				     (InvRows_to_InvSbox[63:56] == 8'h93) ? 8'h22 : 
				     (InvRows_to_InvSbox[63:56] == 8'h94) ? 8'he7 : 
				     (InvRows_to_InvSbox[63:56] == 8'h95) ? 8'had : 
				     (InvRows_to_InvSbox[63:56] == 8'h96) ? 8'h35 : 
				     (InvRows_to_InvSbox[63:56] == 8'h97) ? 8'h85 : 
				     (InvRows_to_InvSbox[63:56] == 8'h98) ? 8'he2 : 
				     (InvRows_to_InvSbox[63:56] == 8'h99) ? 8'hf9 : 
				     (InvRows_to_InvSbox[63:56] == 8'h9a) ? 8'h37 : 
				     (InvRows_to_InvSbox[63:56] == 8'h9b) ? 8'he8 : 
				     (InvRows_to_InvSbox[63:56] == 8'h9c) ? 8'h1c : 
				     (InvRows_to_InvSbox[63:56] == 8'h9d) ? 8'h75 : 
				     (InvRows_to_InvSbox[63:56] == 8'h9e) ? 8'hdf : 
				     (InvRows_to_InvSbox[63:56] == 8'h9f) ? 8'h6e : 

				     (InvRows_to_InvSbox[63:56] == 8'ha0) ? 8'h47 :	// row a
				     (InvRows_to_InvSbox[63:56] == 8'ha1) ? 8'hf1 : 
				     (InvRows_to_InvSbox[63:56] == 8'ha2) ? 8'h1a : 
				     (InvRows_to_InvSbox[63:56] == 8'ha3) ? 8'h71 : 
				     (InvRows_to_InvSbox[63:56] == 8'ha4) ? 8'h1d : 
				     (InvRows_to_InvSbox[63:56] == 8'ha5) ? 8'h29 : 
				     (InvRows_to_InvSbox[63:56] == 8'ha6) ? 8'hc5 : 
				     (InvRows_to_InvSbox[63:56] == 8'ha7) ? 8'h89 : 
				     (InvRows_to_InvSbox[63:56] == 8'ha8) ? 8'h6f : 
				     (InvRows_to_InvSbox[63:56] == 8'ha9) ? 8'hb7 : 
				     (InvRows_to_InvSbox[63:56] == 8'haa) ? 8'h62 : 
				     (InvRows_to_InvSbox[63:56] == 8'hab) ? 8'h0e : 
				     (InvRows_to_InvSbox[63:56] == 8'hac) ? 8'haa : 
				     (InvRows_to_InvSbox[63:56] == 8'had) ? 8'h18 : 
				     (InvRows_to_InvSbox[63:56] == 8'hae) ? 8'hbe : 
				     (InvRows_to_InvSbox[63:56] == 8'haf) ? 8'h1b : 

				     (InvRows_to_InvSbox[63:56] == 8'hb0) ? 8'hfc :	// row b
				     (InvRows_to_InvSbox[63:56] == 8'hb1) ? 8'h56 : 
				     (InvRows_to_InvSbox[63:56] == 8'hb2) ? 8'h3e : 
				     (InvRows_to_InvSbox[63:56] == 8'hb3) ? 8'h4b : 
				     (InvRows_to_InvSbox[63:56] == 8'hb4) ? 8'hc6 : 
				     (InvRows_to_InvSbox[63:56] == 8'hb5) ? 8'hd2 : 
				     (InvRows_to_InvSbox[63:56] == 8'hb6) ? 8'h79 : 
				     (InvRows_to_InvSbox[63:56] == 8'hb7) ? 8'h20 : 
				     (InvRows_to_InvSbox[63:56] == 8'hb8) ? 8'h9a : 
				     (InvRows_to_InvSbox[63:56] == 8'hb9) ? 8'hdb : 
				     (InvRows_to_InvSbox[63:56] == 8'hba) ? 8'hc0 : 
				     (InvRows_to_InvSbox[63:56] == 8'hbb) ? 8'hfe : 
				     (InvRows_to_InvSbox[63:56] == 8'hbc) ? 8'h78 : 
				     (InvRows_to_InvSbox[63:56] == 8'hbd) ? 8'hcd : 
				     (InvRows_to_InvSbox[63:56] == 8'hbe) ? 8'h5a : 
				     (InvRows_to_InvSbox[63:56] == 8'hbf) ? 8'hf4 : 

				     (InvRows_to_InvSbox[63:56] == 8'hc0) ? 8'h1f :	// row c
				     (InvRows_to_InvSbox[63:56] == 8'hc1) ? 8'hdd : 
				     (InvRows_to_InvSbox[63:56] == 8'hc2) ? 8'ha8 : 
				     (InvRows_to_InvSbox[63:56] == 8'hc3) ? 8'h33 : 
				     (InvRows_to_InvSbox[63:56] == 8'hc4) ? 8'h88 : 
				     (InvRows_to_InvSbox[63:56] == 8'hc5) ? 8'h07 : 
				     (InvRows_to_InvSbox[63:56] == 8'hc6) ? 8'hc7 : 
				     (InvRows_to_InvSbox[63:56] == 8'hc7) ? 8'h31 : 
				     (InvRows_to_InvSbox[63:56] == 8'hc8) ? 8'hb1 : 
				     (InvRows_to_InvSbox[63:56] == 8'hc9) ? 8'h12 : 
				     (InvRows_to_InvSbox[63:56] == 8'hca) ? 8'h10 : 
				     (InvRows_to_InvSbox[63:56] == 8'hcb) ? 8'h59 : 
				     (InvRows_to_InvSbox[63:56] == 8'hcc) ? 8'h27 : 
				     (InvRows_to_InvSbox[63:56] == 8'hcd) ? 8'h80 : 
				     (InvRows_to_InvSbox[63:56] == 8'hce) ? 8'hec : 
				     (InvRows_to_InvSbox[63:56] == 8'hcf) ? 8'h5f : 

				     (InvRows_to_InvSbox[63:56] == 8'hd0) ? 8'h60 :	// row d
				     (InvRows_to_InvSbox[63:56] == 8'hd1) ? 8'h51 : 
				     (InvRows_to_InvSbox[63:56] == 8'hd2) ? 8'h7f : 
				     (InvRows_to_InvSbox[63:56] == 8'hd3) ? 8'ha9 : 
				     (InvRows_to_InvSbox[63:56] == 8'hd4) ? 8'h19 : 
				     (InvRows_to_InvSbox[63:56] == 8'hd5) ? 8'hb5 : 
				     (InvRows_to_InvSbox[63:56] == 8'hd6) ? 8'h4a : 
				     (InvRows_to_InvSbox[63:56] == 8'hd7) ? 8'h0d : 
				     (InvRows_to_InvSbox[63:56] == 8'hd8) ? 8'h2d : 
				     (InvRows_to_InvSbox[63:56] == 8'hd9) ? 8'he5 : 
				     (InvRows_to_InvSbox[63:56] == 8'hda) ? 8'h7a : 
				     (InvRows_to_InvSbox[63:56] == 8'hdb) ? 8'h9f : 
				     (InvRows_to_InvSbox[63:56] == 8'hdc) ? 8'h93 : 
				     (InvRows_to_InvSbox[63:56] == 8'hdd) ? 8'hc9 : 
				     (InvRows_to_InvSbox[63:56] == 8'hde) ? 8'h9c : 
				     (InvRows_to_InvSbox[63:56] == 8'hdf) ? 8'hef : 

				     (InvRows_to_InvSbox[63:56] == 8'he0) ? 8'ha0 :	// row e
				     (InvRows_to_InvSbox[63:56] == 8'he1) ? 8'he0 : 
				     (InvRows_to_InvSbox[63:56] == 8'he2) ? 8'h3b : 
				     (InvRows_to_InvSbox[63:56] == 8'he3) ? 8'h4d : 
				     (InvRows_to_InvSbox[63:56] == 8'he4) ? 8'hae : 
				     (InvRows_to_InvSbox[63:56] == 8'he5) ? 8'h2a : 
				     (InvRows_to_InvSbox[63:56] == 8'he6) ? 8'hf5 : 
				     (InvRows_to_InvSbox[63:56] == 8'he7) ? 8'hb0 : 
				     (InvRows_to_InvSbox[63:56] == 8'he8) ? 8'hc8 : 
				     (InvRows_to_InvSbox[63:56] == 8'he9) ? 8'heb : 
				     (InvRows_to_InvSbox[63:56] == 8'hea) ? 8'hbb : 
				     (InvRows_to_InvSbox[63:56] == 8'heb) ? 8'h3c : 
				     (InvRows_to_InvSbox[63:56] == 8'hec) ? 8'h83 : 
				     (InvRows_to_InvSbox[63:56] == 8'hed) ? 8'h53 : 
				     (InvRows_to_InvSbox[63:56] == 8'hee) ? 8'h99 : 
				     (InvRows_to_InvSbox[63:56] == 8'hef) ? 8'h61 :

				     (InvRows_to_InvSbox[63:56] == 8'hf0) ? 8'h17 :	// row f
				     (InvRows_to_InvSbox[63:56] == 8'hf1) ? 8'h2b : 
				     (InvRows_to_InvSbox[63:56] == 8'hf2) ? 8'h04 : 
				     (InvRows_to_InvSbox[63:56] == 8'hf3) ? 8'h7e : 
				     (InvRows_to_InvSbox[63:56] == 8'hf4) ? 8'hba : 
				     (InvRows_to_InvSbox[63:56] == 8'hf5) ? 8'h77 : 
				     (InvRows_to_InvSbox[63:56] == 8'hf6) ? 8'hd6 : 
				     (InvRows_to_InvSbox[63:56] == 8'hf7) ? 8'h26 : 
				     (InvRows_to_InvSbox[63:56] == 8'hf8) ? 8'he1 : 
				     (InvRows_to_InvSbox[63:56] == 8'hf9) ? 8'h69 : 
				     (InvRows_to_InvSbox[63:56] == 8'hfa) ? 8'h14 : 
				     (InvRows_to_InvSbox[63:56] == 8'hfb) ? 8'h63 : 
				     (InvRows_to_InvSbox[63:56] == 8'hfc) ? 8'h55 : 
				     (InvRows_to_InvSbox[63:56] == 8'hfd) ? 8'h21 : 
				     (InvRows_to_InvSbox[63:56] == 8'hfe) ? 8'h0c : 
				     (InvRows_to_InvSbox[63:56] == 8'hff) ? 8'h7d : 8'hxx;
					  
					  assign InvSBox_out[71:64] = (InvRows_to_InvSbox[71:64] == 8'h00) ? 8'h52 :	// row 0
				     (InvRows_to_InvSbox[71:64] == 8'h01) ? 8'h09 : 
				     (InvRows_to_InvSbox[71:64] == 8'h02) ? 8'h6a : 
				     (InvRows_to_InvSbox[71:64] == 8'h03) ? 8'hd5 : 
				     (InvRows_to_InvSbox[71:64] == 8'h04) ? 8'h30 : 
				     (InvRows_to_InvSbox[71:64] == 8'h05) ? 8'h36 : 
				     (InvRows_to_InvSbox[71:64] == 8'h06) ? 8'ha5 : 
				     (InvRows_to_InvSbox[71:64] == 8'h07) ? 8'h38 : 
				     (InvRows_to_InvSbox[71:64] == 8'h08) ? 8'hbf : 
				     (InvRows_to_InvSbox[71:64] == 8'h09) ? 8'h40 : 
				     (InvRows_to_InvSbox[71:64] == 8'h0a) ? 8'ha3 : 
				     (InvRows_to_InvSbox[71:64] == 8'h0b) ? 8'h9e : 
				     (InvRows_to_InvSbox[71:64] == 8'h0c) ? 8'h81 : 
				     (InvRows_to_InvSbox[71:64] == 8'h0d) ? 8'hf3 : 
				     (InvRows_to_InvSbox[71:64] == 8'h0e) ? 8'hd7 : 
				     (InvRows_to_InvSbox[71:64] == 8'h0f) ? 8'hfb : 

				     (InvRows_to_InvSbox[71:64] == 8'h10) ? 8'h7c :	// row 1
				     (InvRows_to_InvSbox[71:64] == 8'h11) ? 8'he3 : 
				     (InvRows_to_InvSbox[71:64] == 8'h12) ? 8'h39 : 
				     (InvRows_to_InvSbox[71:64] == 8'h13) ? 8'h82 : 
				     (InvRows_to_InvSbox[71:64] == 8'h14) ? 8'h9b : 
				     (InvRows_to_InvSbox[71:64] == 8'h15) ? 8'h2f : 
				     (InvRows_to_InvSbox[71:64] == 8'h16) ? 8'hff : 
				     (InvRows_to_InvSbox[71:64] == 8'h17) ? 8'h87 : 
				     (InvRows_to_InvSbox[71:64] == 8'h18) ? 8'h34 : 
				     (InvRows_to_InvSbox[71:64] == 8'h19) ? 8'h8e : 
				     (InvRows_to_InvSbox[71:64] == 8'h1a) ? 8'h43 : 
				     (InvRows_to_InvSbox[71:64] == 8'h1b) ? 8'h44 : 
				     (InvRows_to_InvSbox[71:64] == 8'h1c) ? 8'hc4 : 
				     (InvRows_to_InvSbox[71:64] == 8'h1d) ? 8'hde : 
				     (InvRows_to_InvSbox[71:64] == 8'h1e) ? 8'he9 : 
				     (InvRows_to_InvSbox[71:64] == 8'h1f) ? 8'hcb : 

				     (InvRows_to_InvSbox[71:64] == 8'h20) ? 8'h54 :	// row 2
				     (InvRows_to_InvSbox[71:64] == 8'h21) ? 8'h7b : 
				     (InvRows_to_InvSbox[71:64] == 8'h22) ? 8'h94 : 
				     (InvRows_to_InvSbox[71:64] == 8'h23) ? 8'h32 : 
				     (InvRows_to_InvSbox[71:64] == 8'h24) ? 8'ha6 : 
				     (InvRows_to_InvSbox[71:64] == 8'h25) ? 8'hc2 : 
				     (InvRows_to_InvSbox[71:64] == 8'h26) ? 8'h23 : 
				     (InvRows_to_InvSbox[71:64] == 8'h27) ? 8'h3d : 
				     (InvRows_to_InvSbox[71:64] == 8'h28) ? 8'hee : 
				     (InvRows_to_InvSbox[71:64] == 8'h29) ? 8'h4c : 
				     (InvRows_to_InvSbox[71:64] == 8'h2a) ? 8'h95 : 
				     (InvRows_to_InvSbox[71:64] == 8'h2b) ? 8'h0b : 
				     (InvRows_to_InvSbox[71:64] == 8'h2c) ? 8'h42 : 
				     (InvRows_to_InvSbox[71:64] == 8'h2d) ? 8'hfa : 
				     (InvRows_to_InvSbox[71:64] == 8'h2e) ? 8'hc3 : 
				     (InvRows_to_InvSbox[71:64] == 8'h2f) ? 8'h4e :

				     (InvRows_to_InvSbox[71:64] == 8'h30) ? 8'h08 : 	// row 3
				     (InvRows_to_InvSbox[71:64] == 8'h31) ? 8'h2e : 
				     (InvRows_to_InvSbox[71:64] == 8'h32) ? 8'ha1 : 
				     (InvRows_to_InvSbox[71:64] == 8'h33) ? 8'h66 : 
				     (InvRows_to_InvSbox[71:64] == 8'h34) ? 8'h28 : 
				     (InvRows_to_InvSbox[71:64] == 8'h35) ? 8'hd9 : 
				     (InvRows_to_InvSbox[71:64] == 8'h36) ? 8'h24 : 
				     (InvRows_to_InvSbox[71:64] == 8'h37) ? 8'hb2 : 
				     (InvRows_to_InvSbox[71:64] == 8'h38) ? 8'h76 : 
				     (InvRows_to_InvSbox[71:64] == 8'h39) ? 8'h5b : 
				     (InvRows_to_InvSbox[71:64] == 8'h3a) ? 8'ha2 : 
				     (InvRows_to_InvSbox[71:64] == 8'h3b) ? 8'h49 : 
				     (InvRows_to_InvSbox[71:64] == 8'h3c) ? 8'h6d : 
				     (InvRows_to_InvSbox[71:64] == 8'h3d) ? 8'h8b : 
				     (InvRows_to_InvSbox[71:64] == 8'h3e) ? 8'hd1 : 
				     (InvRows_to_InvSbox[71:64] == 8'h3f) ? 8'h25 : 

				     (InvRows_to_InvSbox[71:64] == 8'h40) ? 8'h72 :	// row 4
				     (InvRows_to_InvSbox[71:64] == 8'h41) ? 8'hf8 : 
				     (InvRows_to_InvSbox[71:64] == 8'h42) ? 8'hf6 : 
				     (InvRows_to_InvSbox[71:64] == 8'h43) ? 8'h64 : 
				     (InvRows_to_InvSbox[71:64] == 8'h44) ? 8'h86 : 
				     (InvRows_to_InvSbox[71:64] == 8'h45) ? 8'h68 : 
				     (InvRows_to_InvSbox[71:64] == 8'h46) ? 8'h98 : 
				     (InvRows_to_InvSbox[71:64] == 8'h47) ? 8'h16 : 
				     (InvRows_to_InvSbox[71:64] == 8'h48) ? 8'hd4 : 
				     (InvRows_to_InvSbox[71:64] == 8'h49) ? 8'ha4 : 
				     (InvRows_to_InvSbox[71:64] == 8'h4a) ? 8'h5c : 
				     (InvRows_to_InvSbox[71:64] == 8'h4b) ? 8'hcc : 
				     (InvRows_to_InvSbox[71:64] == 8'h4c) ? 8'h5d : 
				     (InvRows_to_InvSbox[71:64] == 8'h4d) ? 8'h65 : 
				     (InvRows_to_InvSbox[71:64] == 8'h4e) ? 8'hb6 : 
				     (InvRows_to_InvSbox[71:64] == 8'h4f) ? 8'h92 : 

				     (InvRows_to_InvSbox[71:64] == 8'h50) ? 8'h6c :	// row 5
				     (InvRows_to_InvSbox[71:64] == 8'h51) ? 8'h70 : 
				     (InvRows_to_InvSbox[71:64] == 8'h52) ? 8'h48 : 
				     (InvRows_to_InvSbox[71:64] == 8'h53) ? 8'h50 : 
				     (InvRows_to_InvSbox[71:64] == 8'h54) ? 8'hfd : 
				     (InvRows_to_InvSbox[71:64] == 8'h55) ? 8'hed : 
				     (InvRows_to_InvSbox[71:64] == 8'h56) ? 8'hb9 : 
				     (InvRows_to_InvSbox[71:64] == 8'h57) ? 8'hda : 
				     (InvRows_to_InvSbox[71:64] == 8'h58) ? 8'h5e : 
				     (InvRows_to_InvSbox[71:64] == 8'h59) ? 8'h15 : 
				     (InvRows_to_InvSbox[71:64] == 8'h5a) ? 8'h46 : 
				     (InvRows_to_InvSbox[71:64] == 8'h5b) ? 8'h57 : 
				     (InvRows_to_InvSbox[71:64] == 8'h5c) ? 8'ha7 : 
				     (InvRows_to_InvSbox[71:64] == 8'h5d) ? 8'h8d : 
				     (InvRows_to_InvSbox[71:64] == 8'h5e) ? 8'h9d : 
				     (InvRows_to_InvSbox[71:64] == 8'h5f) ? 8'h84 : 

				     (InvRows_to_InvSbox[71:64] == 8'h60) ? 8'h90 :	// row 6
				     (InvRows_to_InvSbox[71:64] == 8'h61) ? 8'hd8 : 
				     (InvRows_to_InvSbox[71:64] == 8'h62) ? 8'hab : 
				     (InvRows_to_InvSbox[71:64] == 8'h63) ? 8'h00 : 
				     (InvRows_to_InvSbox[71:64] == 8'h64) ? 8'h8c : 
				     (InvRows_to_InvSbox[71:64] == 8'h65) ? 8'hbc : 
				     (InvRows_to_InvSbox[71:64] == 8'h66) ? 8'hd3 : 
				     (InvRows_to_InvSbox[71:64] == 8'h67) ? 8'h0a : 
				     (InvRows_to_InvSbox[71:64] == 8'h68) ? 8'hf7 : 
				     (InvRows_to_InvSbox[71:64] == 8'h69) ? 8'he4 : 
				     (InvRows_to_InvSbox[71:64] == 8'h6a) ? 8'h58 : 
				     (InvRows_to_InvSbox[71:64] == 8'h6b) ? 8'h05 : 
				     (InvRows_to_InvSbox[71:64] == 8'h6c) ? 8'hb8 : 
				     (InvRows_to_InvSbox[71:64] == 8'h6d) ? 8'hb3 : 
				     (InvRows_to_InvSbox[71:64] == 8'h6e) ? 8'h45 : 
				     (InvRows_to_InvSbox[71:64] == 8'h6f) ? 8'h06 : 

				     (InvRows_to_InvSbox[71:64] == 8'h70) ? 8'hd0 :	// row 7
				     (InvRows_to_InvSbox[71:64] == 8'h71) ? 8'h2c : 
				     (InvRows_to_InvSbox[71:64] == 8'h72) ? 8'h1e : 
				     (InvRows_to_InvSbox[71:64] == 8'h73) ? 8'h8f : 
				     (InvRows_to_InvSbox[71:64] == 8'h74) ? 8'hca : 
				     (InvRows_to_InvSbox[71:64] == 8'h75) ? 8'h3f : 
				     (InvRows_to_InvSbox[71:64] == 8'h76) ? 8'h0f : 
				     (InvRows_to_InvSbox[71:64] == 8'h77) ? 8'h02 : 
				     (InvRows_to_InvSbox[71:64] == 8'h78) ? 8'hc1 : 
				     (InvRows_to_InvSbox[71:64] == 8'h79) ? 8'haf : 
				     (InvRows_to_InvSbox[71:64] == 8'h7a) ? 8'hbd : 
				     (InvRows_to_InvSbox[71:64] == 8'h7b) ? 8'h03 : 
				     (InvRows_to_InvSbox[71:64] == 8'h7c) ? 8'h01 : 
				     (InvRows_to_InvSbox[71:64] == 8'h7d) ? 8'h13 : 
				     (InvRows_to_InvSbox[71:64] == 8'h7e) ? 8'h8a : 
				     (InvRows_to_InvSbox[71:64] == 8'h7f) ? 8'h6b :
 
				     (InvRows_to_InvSbox[71:64] == 8'h80) ? 8'h3a :	// row 8
				     (InvRows_to_InvSbox[71:64] == 8'h81) ? 8'h91 : 
				     (InvRows_to_InvSbox[71:64] == 8'h82) ? 8'h11 : 
				     (InvRows_to_InvSbox[71:64] == 8'h83) ? 8'h41 : 
				     (InvRows_to_InvSbox[71:64] == 8'h84) ? 8'h4f : 
				     (InvRows_to_InvSbox[71:64] == 8'h85) ? 8'h67 : 
				     (InvRows_to_InvSbox[71:64] == 8'h86) ? 8'hdc : 
				     (InvRows_to_InvSbox[71:64] == 8'h87) ? 8'hea : 
				     (InvRows_to_InvSbox[71:64] == 8'h88) ? 8'h97 : 
				     (InvRows_to_InvSbox[71:64] == 8'h89) ? 8'hf2 : 
				     (InvRows_to_InvSbox[71:64] == 8'h8a) ? 8'hcf : 
				     (InvRows_to_InvSbox[71:64] == 8'h8b) ? 8'hce : 
				     (InvRows_to_InvSbox[71:64] == 8'h8c) ? 8'hf0 : 
				     (InvRows_to_InvSbox[71:64] == 8'h8d) ? 8'hb4 : 
				     (InvRows_to_InvSbox[71:64] == 8'h8e) ? 8'he6 : 
				     (InvRows_to_InvSbox[71:64] == 8'h8f) ? 8'h73 :

				     (InvRows_to_InvSbox[71:64] == 8'h90) ? 8'h96 :	// row 9
				     (InvRows_to_InvSbox[71:64] == 8'h91) ? 8'hac : 
				     (InvRows_to_InvSbox[71:64] == 8'h92) ? 8'h74 : 
				     (InvRows_to_InvSbox[71:64] == 8'h93) ? 8'h22 : 
				     (InvRows_to_InvSbox[71:64] == 8'h94) ? 8'he7 : 
				     (InvRows_to_InvSbox[71:64] == 8'h95) ? 8'had : 
				     (InvRows_to_InvSbox[71:64] == 8'h96) ? 8'h35 : 
				     (InvRows_to_InvSbox[71:64] == 8'h97) ? 8'h85 : 
				     (InvRows_to_InvSbox[71:64] == 8'h98) ? 8'he2 : 
				     (InvRows_to_InvSbox[71:64] == 8'h99) ? 8'hf9 : 
				     (InvRows_to_InvSbox[71:64] == 8'h9a) ? 8'h37 : 
				     (InvRows_to_InvSbox[71:64] == 8'h9b) ? 8'he8 : 
				     (InvRows_to_InvSbox[71:64] == 8'h9c) ? 8'h1c : 
				     (InvRows_to_InvSbox[71:64] == 8'h9d) ? 8'h75 : 
				     (InvRows_to_InvSbox[71:64] == 8'h9e) ? 8'hdf : 
				     (InvRows_to_InvSbox[71:64] == 8'h9f) ? 8'h6e : 

				     (InvRows_to_InvSbox[71:64] == 8'ha0) ? 8'h47 :	// row a
				     (InvRows_to_InvSbox[71:64] == 8'ha1) ? 8'hf1 : 
				     (InvRows_to_InvSbox[71:64] == 8'ha2) ? 8'h1a : 
				     (InvRows_to_InvSbox[71:64] == 8'ha3) ? 8'h71 : 
				     (InvRows_to_InvSbox[71:64] == 8'ha4) ? 8'h1d : 
				     (InvRows_to_InvSbox[71:64] == 8'ha5) ? 8'h29 : 
				     (InvRows_to_InvSbox[71:64] == 8'ha6) ? 8'hc5 : 
				     (InvRows_to_InvSbox[71:64] == 8'ha7) ? 8'h89 : 
				     (InvRows_to_InvSbox[71:64] == 8'ha8) ? 8'h6f : 
				     (InvRows_to_InvSbox[71:64] == 8'ha9) ? 8'hb7 : 
				     (InvRows_to_InvSbox[71:64] == 8'haa) ? 8'h62 : 
				     (InvRows_to_InvSbox[71:64] == 8'hab) ? 8'h0e : 
				     (InvRows_to_InvSbox[71:64] == 8'hac) ? 8'haa : 
				     (InvRows_to_InvSbox[71:64] == 8'had) ? 8'h18 : 
				     (InvRows_to_InvSbox[71:64] == 8'hae) ? 8'hbe : 
				     (InvRows_to_InvSbox[71:64] == 8'haf) ? 8'h1b : 

				     (InvRows_to_InvSbox[71:64] == 8'hb0) ? 8'hfc :	// row b
				     (InvRows_to_InvSbox[71:64] == 8'hb1) ? 8'h56 : 
				     (InvRows_to_InvSbox[71:64] == 8'hb2) ? 8'h3e : 
				     (InvRows_to_InvSbox[71:64] == 8'hb3) ? 8'h4b : 
				     (InvRows_to_InvSbox[71:64] == 8'hb4) ? 8'hc6 : 
				     (InvRows_to_InvSbox[71:64] == 8'hb5) ? 8'hd2 : 
				     (InvRows_to_InvSbox[71:64] == 8'hb6) ? 8'h79 : 
				     (InvRows_to_InvSbox[71:64] == 8'hb7) ? 8'h20 : 
				     (InvRows_to_InvSbox[71:64] == 8'hb8) ? 8'h9a : 
				     (InvRows_to_InvSbox[71:64] == 8'hb9) ? 8'hdb : 
				     (InvRows_to_InvSbox[71:64] == 8'hba) ? 8'hc0 : 
				     (InvRows_to_InvSbox[71:64] == 8'hbb) ? 8'hfe : 
				     (InvRows_to_InvSbox[71:64] == 8'hbc) ? 8'h78 : 
				     (InvRows_to_InvSbox[71:64] == 8'hbd) ? 8'hcd : 
				     (InvRows_to_InvSbox[71:64] == 8'hbe) ? 8'h5a : 
				     (InvRows_to_InvSbox[71:64] == 8'hbf) ? 8'hf4 : 

				     (InvRows_to_InvSbox[71:64] == 8'hc0) ? 8'h1f :	// row c
				     (InvRows_to_InvSbox[71:64] == 8'hc1) ? 8'hdd : 
				     (InvRows_to_InvSbox[71:64] == 8'hc2) ? 8'ha8 : 
				     (InvRows_to_InvSbox[71:64] == 8'hc3) ? 8'h33 : 
				     (InvRows_to_InvSbox[71:64] == 8'hc4) ? 8'h88 : 
				     (InvRows_to_InvSbox[71:64] == 8'hc5) ? 8'h07 : 
				     (InvRows_to_InvSbox[71:64] == 8'hc6) ? 8'hc7 : 
				     (InvRows_to_InvSbox[71:64] == 8'hc7) ? 8'h31 : 
				     (InvRows_to_InvSbox[71:64] == 8'hc8) ? 8'hb1 : 
				     (InvRows_to_InvSbox[71:64] == 8'hc9) ? 8'h12 : 
				     (InvRows_to_InvSbox[71:64] == 8'hca) ? 8'h10 : 
				     (InvRows_to_InvSbox[71:64] == 8'hcb) ? 8'h59 : 
				     (InvRows_to_InvSbox[71:64] == 8'hcc) ? 8'h27 : 
				     (InvRows_to_InvSbox[71:64] == 8'hcd) ? 8'h80 : 
				     (InvRows_to_InvSbox[71:64] == 8'hce) ? 8'hec : 
				     (InvRows_to_InvSbox[71:64] == 8'hcf) ? 8'h5f : 

				     (InvRows_to_InvSbox[71:64] == 8'hd0) ? 8'h60 :	// row d
				     (InvRows_to_InvSbox[71:64] == 8'hd1) ? 8'h51 : 
				     (InvRows_to_InvSbox[71:64] == 8'hd2) ? 8'h7f : 
				     (InvRows_to_InvSbox[71:64] == 8'hd3) ? 8'ha9 : 
				     (InvRows_to_InvSbox[71:64] == 8'hd4) ? 8'h19 : 
				     (InvRows_to_InvSbox[71:64] == 8'hd5) ? 8'hb5 : 
				     (InvRows_to_InvSbox[71:64] == 8'hd6) ? 8'h4a : 
				     (InvRows_to_InvSbox[71:64] == 8'hd7) ? 8'h0d : 
				     (InvRows_to_InvSbox[71:64] == 8'hd8) ? 8'h2d : 
				     (InvRows_to_InvSbox[71:64] == 8'hd9) ? 8'he5 : 
				     (InvRows_to_InvSbox[71:64] == 8'hda) ? 8'h7a : 
				     (InvRows_to_InvSbox[71:64] == 8'hdb) ? 8'h9f : 
				     (InvRows_to_InvSbox[71:64] == 8'hdc) ? 8'h93 : 
				     (InvRows_to_InvSbox[71:64] == 8'hdd) ? 8'hc9 : 
				     (InvRows_to_InvSbox[71:64] == 8'hde) ? 8'h9c : 
				     (InvRows_to_InvSbox[71:64] == 8'hdf) ? 8'hef : 

				     (InvRows_to_InvSbox[71:64] == 8'he0) ? 8'ha0 :	// row e
				     (InvRows_to_InvSbox[71:64] == 8'he1) ? 8'he0 : 
				     (InvRows_to_InvSbox[71:64] == 8'he2) ? 8'h3b : 
				     (InvRows_to_InvSbox[71:64] == 8'he3) ? 8'h4d : 
				     (InvRows_to_InvSbox[71:64] == 8'he4) ? 8'hae : 
				     (InvRows_to_InvSbox[71:64] == 8'he5) ? 8'h2a : 
				     (InvRows_to_InvSbox[71:64] == 8'he6) ? 8'hf5 : 
				     (InvRows_to_InvSbox[71:64] == 8'he7) ? 8'hb0 : 
				     (InvRows_to_InvSbox[71:64] == 8'he8) ? 8'hc8 : 
				     (InvRows_to_InvSbox[71:64] == 8'he9) ? 8'heb : 
				     (InvRows_to_InvSbox[71:64] == 8'hea) ? 8'hbb : 
				     (InvRows_to_InvSbox[71:64] == 8'heb) ? 8'h3c : 
				     (InvRows_to_InvSbox[71:64] == 8'hec) ? 8'h83 : 
				     (InvRows_to_InvSbox[71:64] == 8'hed) ? 8'h53 : 
				     (InvRows_to_InvSbox[71:64] == 8'hee) ? 8'h99 : 
				     (InvRows_to_InvSbox[71:64] == 8'hef) ? 8'h61 :

				     (InvRows_to_InvSbox[71:64] == 8'hf0) ? 8'h17 :	// row f
				     (InvRows_to_InvSbox[71:64] == 8'hf1) ? 8'h2b : 
				     (InvRows_to_InvSbox[71:64] == 8'hf2) ? 8'h04 : 
				     (InvRows_to_InvSbox[71:64] == 8'hf3) ? 8'h7e : 
				     (InvRows_to_InvSbox[71:64] == 8'hf4) ? 8'hba : 
				     (InvRows_to_InvSbox[71:64] == 8'hf5) ? 8'h77 : 
				     (InvRows_to_InvSbox[71:64] == 8'hf6) ? 8'hd6 : 
				     (InvRows_to_InvSbox[71:64] == 8'hf7) ? 8'h26 : 
				     (InvRows_to_InvSbox[71:64] == 8'hf8) ? 8'he1 : 
				     (InvRows_to_InvSbox[71:64] == 8'hf9) ? 8'h69 : 
				     (InvRows_to_InvSbox[71:64] == 8'hfa) ? 8'h14 : 
				     (InvRows_to_InvSbox[71:64] == 8'hfb) ? 8'h63 : 
				     (InvRows_to_InvSbox[71:64] == 8'hfc) ? 8'h55 : 
				     (InvRows_to_InvSbox[71:64] == 8'hfd) ? 8'h21 : 
				     (InvRows_to_InvSbox[71:64] == 8'hfe) ? 8'h0c : 
				     (InvRows_to_InvSbox[71:64] == 8'hff) ? 8'h7d : 8'hxx;

					  
					  assign InvSBox_out[79:72] = (InvRows_to_InvSbox[79:72] == 8'h00) ? 8'h52 :	// row 0
				     (InvRows_to_InvSbox[79:72] == 8'h01) ? 8'h09 : 
				     (InvRows_to_InvSbox[79:72] == 8'h02) ? 8'h6a : 
				     (InvRows_to_InvSbox[79:72] == 8'h03) ? 8'hd5 : 
				     (InvRows_to_InvSbox[79:72] == 8'h04) ? 8'h30 : 
				     (InvRows_to_InvSbox[79:72] == 8'h05) ? 8'h36 : 
				     (InvRows_to_InvSbox[79:72] == 8'h06) ? 8'ha5 : 
				     (InvRows_to_InvSbox[79:72] == 8'h07) ? 8'h38 : 
				     (InvRows_to_InvSbox[79:72] == 8'h08) ? 8'hbf : 
				     (InvRows_to_InvSbox[79:72] == 8'h09) ? 8'h40 : 
				     (InvRows_to_InvSbox[79:72] == 8'h0a) ? 8'ha3 : 
				     (InvRows_to_InvSbox[79:72] == 8'h0b) ? 8'h9e : 
				     (InvRows_to_InvSbox[79:72] == 8'h0c) ? 8'h81 : 
				     (InvRows_to_InvSbox[79:72] == 8'h0d) ? 8'hf3 : 
				     (InvRows_to_InvSbox[79:72] == 8'h0e) ? 8'hd7 : 
				     (InvRows_to_InvSbox[79:72] == 8'h0f) ? 8'hfb : 

				     (InvRows_to_InvSbox[79:72] == 8'h10) ? 8'h7c :	// row 1
				     (InvRows_to_InvSbox[79:72] == 8'h11) ? 8'he3 : 
				     (InvRows_to_InvSbox[79:72] == 8'h12) ? 8'h39 : 
				     (InvRows_to_InvSbox[79:72] == 8'h13) ? 8'h82 : 
				     (InvRows_to_InvSbox[79:72] == 8'h14) ? 8'h9b : 
				     (InvRows_to_InvSbox[79:72] == 8'h15) ? 8'h2f : 
				     (InvRows_to_InvSbox[79:72] == 8'h16) ? 8'hff : 
				     (InvRows_to_InvSbox[79:72] == 8'h17) ? 8'h87 : 
				     (InvRows_to_InvSbox[79:72] == 8'h18) ? 8'h34 : 
				     (InvRows_to_InvSbox[79:72] == 8'h19) ? 8'h8e : 
				     (InvRows_to_InvSbox[79:72] == 8'h1a) ? 8'h43 : 
				     (InvRows_to_InvSbox[79:72] == 8'h1b) ? 8'h44 : 
				     (InvRows_to_InvSbox[79:72] == 8'h1c) ? 8'hc4 : 
				     (InvRows_to_InvSbox[79:72] == 8'h1d) ? 8'hde : 
				     (InvRows_to_InvSbox[79:72] == 8'h1e) ? 8'he9 : 
				     (InvRows_to_InvSbox[79:72] == 8'h1f) ? 8'hcb : 

				     (InvRows_to_InvSbox[79:72] == 8'h20) ? 8'h54 :	// row 2
				     (InvRows_to_InvSbox[79:72] == 8'h21) ? 8'h7b : 
				     (InvRows_to_InvSbox[79:72] == 8'h22) ? 8'h94 : 
				     (InvRows_to_InvSbox[79:72] == 8'h23) ? 8'h32 : 
				     (InvRows_to_InvSbox[79:72] == 8'h24) ? 8'ha6 : 
				     (InvRows_to_InvSbox[79:72] == 8'h25) ? 8'hc2 : 
				     (InvRows_to_InvSbox[79:72] == 8'h26) ? 8'h23 : 
				     (InvRows_to_InvSbox[79:72] == 8'h27) ? 8'h3d : 
				     (InvRows_to_InvSbox[79:72] == 8'h28) ? 8'hee : 
				     (InvRows_to_InvSbox[79:72] == 8'h29) ? 8'h4c : 
				     (InvRows_to_InvSbox[79:72] == 8'h2a) ? 8'h95 : 
				     (InvRows_to_InvSbox[79:72] == 8'h2b) ? 8'h0b : 
				     (InvRows_to_InvSbox[79:72] == 8'h2c) ? 8'h42 : 
				     (InvRows_to_InvSbox[79:72] == 8'h2d) ? 8'hfa : 
				     (InvRows_to_InvSbox[79:72] == 8'h2e) ? 8'hc3 : 
				     (InvRows_to_InvSbox[79:72] == 8'h2f) ? 8'h4e :

				     (InvRows_to_InvSbox[79:72] == 8'h30) ? 8'h08 : 	// row 3
				     (InvRows_to_InvSbox[79:72] == 8'h31) ? 8'h2e : 
				     (InvRows_to_InvSbox[79:72] == 8'h32) ? 8'ha1 : 
				     (InvRows_to_InvSbox[79:72] == 8'h33) ? 8'h66 : 
				     (InvRows_to_InvSbox[79:72] == 8'h34) ? 8'h28 : 
				     (InvRows_to_InvSbox[79:72] == 8'h35) ? 8'hd9 : 
				     (InvRows_to_InvSbox[79:72] == 8'h36) ? 8'h24 : 
				     (InvRows_to_InvSbox[79:72] == 8'h37) ? 8'hb2 : 
				     (InvRows_to_InvSbox[79:72] == 8'h38) ? 8'h76 : 
				     (InvRows_to_InvSbox[79:72] == 8'h39) ? 8'h5b : 
				     (InvRows_to_InvSbox[79:72] == 8'h3a) ? 8'ha2 : 
				     (InvRows_to_InvSbox[79:72] == 8'h3b) ? 8'h49 : 
				     (InvRows_to_InvSbox[79:72] == 8'h3c) ? 8'h6d : 
				     (InvRows_to_InvSbox[79:72] == 8'h3d) ? 8'h8b : 
				     (InvRows_to_InvSbox[79:72] == 8'h3e) ? 8'hd1 : 
				     (InvRows_to_InvSbox[79:72] == 8'h3f) ? 8'h25 : 

				     (InvRows_to_InvSbox[79:72] == 8'h40) ? 8'h72 :	// row 4
				     (InvRows_to_InvSbox[79:72] == 8'h41) ? 8'hf8 : 
				     (InvRows_to_InvSbox[79:72] == 8'h42) ? 8'hf6 : 
				     (InvRows_to_InvSbox[79:72] == 8'h43) ? 8'h64 : 
				     (InvRows_to_InvSbox[79:72] == 8'h44) ? 8'h86 : 
				     (InvRows_to_InvSbox[79:72] == 8'h45) ? 8'h68 : 
				     (InvRows_to_InvSbox[79:72] == 8'h46) ? 8'h98 : 
				     (InvRows_to_InvSbox[79:72] == 8'h47) ? 8'h16 : 
				     (InvRows_to_InvSbox[79:72] == 8'h48) ? 8'hd4 : 
				     (InvRows_to_InvSbox[79:72] == 8'h49) ? 8'ha4 : 
				     (InvRows_to_InvSbox[79:72] == 8'h4a) ? 8'h5c : 
				     (InvRows_to_InvSbox[79:72] == 8'h4b) ? 8'hcc : 
				     (InvRows_to_InvSbox[79:72] == 8'h4c) ? 8'h5d : 
				     (InvRows_to_InvSbox[79:72] == 8'h4d) ? 8'h65 : 
				     (InvRows_to_InvSbox[79:72] == 8'h4e) ? 8'hb6 : 
				     (InvRows_to_InvSbox[79:72] == 8'h4f) ? 8'h92 : 

				     (InvRows_to_InvSbox[79:72] == 8'h50) ? 8'h6c :	// row 5
				     (InvRows_to_InvSbox[79:72] == 8'h51) ? 8'h70 : 
				     (InvRows_to_InvSbox[79:72] == 8'h52) ? 8'h48 : 
				     (InvRows_to_InvSbox[79:72] == 8'h53) ? 8'h50 : 
				     (InvRows_to_InvSbox[79:72] == 8'h54) ? 8'hfd : 
				     (InvRows_to_InvSbox[79:72] == 8'h55) ? 8'hed : 
				     (InvRows_to_InvSbox[79:72] == 8'h56) ? 8'hb9 : 
				     (InvRows_to_InvSbox[79:72] == 8'h57) ? 8'hda : 
				     (InvRows_to_InvSbox[79:72] == 8'h58) ? 8'h5e : 
				     (InvRows_to_InvSbox[79:72] == 8'h59) ? 8'h15 : 
				     (InvRows_to_InvSbox[79:72] == 8'h5a) ? 8'h46 : 
				     (InvRows_to_InvSbox[79:72] == 8'h5b) ? 8'h57 : 
				     (InvRows_to_InvSbox[79:72] == 8'h5c) ? 8'ha7 : 
				     (InvRows_to_InvSbox[79:72] == 8'h5d) ? 8'h8d : 
				     (InvRows_to_InvSbox[79:72] == 8'h5e) ? 8'h9d : 
				     (InvRows_to_InvSbox[79:72] == 8'h5f) ? 8'h84 : 

				     (InvRows_to_InvSbox[79:72] == 8'h60) ? 8'h90 :	// row 6
				     (InvRows_to_InvSbox[79:72] == 8'h61) ? 8'hd8 : 
				     (InvRows_to_InvSbox[79:72] == 8'h62) ? 8'hab : 
				     (InvRows_to_InvSbox[79:72] == 8'h63) ? 8'h00 : 
				     (InvRows_to_InvSbox[79:72] == 8'h64) ? 8'h8c : 
				     (InvRows_to_InvSbox[79:72] == 8'h65) ? 8'hbc : 
				     (InvRows_to_InvSbox[79:72] == 8'h66) ? 8'hd3 : 
				     (InvRows_to_InvSbox[79:72] == 8'h67) ? 8'h0a : 
				     (InvRows_to_InvSbox[79:72] == 8'h68) ? 8'hf7 : 
				     (InvRows_to_InvSbox[79:72] == 8'h69) ? 8'he4 : 
				     (InvRows_to_InvSbox[79:72] == 8'h6a) ? 8'h58 : 
				     (InvRows_to_InvSbox[79:72] == 8'h6b) ? 8'h05 : 
				     (InvRows_to_InvSbox[79:72] == 8'h6c) ? 8'hb8 : 
				     (InvRows_to_InvSbox[79:72] == 8'h6d) ? 8'hb3 : 
				     (InvRows_to_InvSbox[79:72] == 8'h6e) ? 8'h45 : 
				     (InvRows_to_InvSbox[79:72] == 8'h6f) ? 8'h06 : 

				     (InvRows_to_InvSbox[79:72] == 8'h70) ? 8'hd0 :	// row 7
				     (InvRows_to_InvSbox[79:72] == 8'h71) ? 8'h2c : 
				     (InvRows_to_InvSbox[79:72] == 8'h72) ? 8'h1e : 
				     (InvRows_to_InvSbox[79:72] == 8'h73) ? 8'h8f : 
				     (InvRows_to_InvSbox[79:72] == 8'h74) ? 8'hca : 
				     (InvRows_to_InvSbox[79:72] == 8'h75) ? 8'h3f : 
				     (InvRows_to_InvSbox[79:72] == 8'h76) ? 8'h0f : 
				     (InvRows_to_InvSbox[79:72] == 8'h77) ? 8'h02 : 
				     (InvRows_to_InvSbox[79:72] == 8'h78) ? 8'hc1 : 
				     (InvRows_to_InvSbox[79:72] == 8'h79) ? 8'haf : 
				     (InvRows_to_InvSbox[79:72] == 8'h7a) ? 8'hbd : 
				     (InvRows_to_InvSbox[79:72] == 8'h7b) ? 8'h03 : 
				     (InvRows_to_InvSbox[79:72] == 8'h7c) ? 8'h01 : 
				     (InvRows_to_InvSbox[79:72] == 8'h7d) ? 8'h13 : 
				     (InvRows_to_InvSbox[79:72] == 8'h7e) ? 8'h8a : 
				     (InvRows_to_InvSbox[79:72] == 8'h7f) ? 8'h6b :
 
				     (InvRows_to_InvSbox[79:72] == 8'h80) ? 8'h3a :	// row 8
				     (InvRows_to_InvSbox[79:72] == 8'h81) ? 8'h91 : 
				     (InvRows_to_InvSbox[79:72] == 8'h82) ? 8'h11 : 
				     (InvRows_to_InvSbox[79:72] == 8'h83) ? 8'h41 : 
				     (InvRows_to_InvSbox[79:72] == 8'h84) ? 8'h4f : 
				     (InvRows_to_InvSbox[79:72] == 8'h85) ? 8'h67 : 
				     (InvRows_to_InvSbox[79:72] == 8'h86) ? 8'hdc : 
				     (InvRows_to_InvSbox[79:72] == 8'h87) ? 8'hea : 
				     (InvRows_to_InvSbox[79:72] == 8'h88) ? 8'h97 : 
				     (InvRows_to_InvSbox[79:72] == 8'h89) ? 8'hf2 : 
				     (InvRows_to_InvSbox[79:72] == 8'h8a) ? 8'hcf : 
				     (InvRows_to_InvSbox[79:72] == 8'h8b) ? 8'hce : 
				     (InvRows_to_InvSbox[79:72] == 8'h8c) ? 8'hf0 : 
				     (InvRows_to_InvSbox[79:72] == 8'h8d) ? 8'hb4 : 
				     (InvRows_to_InvSbox[79:72] == 8'h8e) ? 8'he6 : 
				     (InvRows_to_InvSbox[79:72] == 8'h8f) ? 8'h73 :

				     (InvRows_to_InvSbox[79:72] == 8'h90) ? 8'h96 :	// row 9
				     (InvRows_to_InvSbox[79:72] == 8'h91) ? 8'hac : 
				     (InvRows_to_InvSbox[79:72] == 8'h92) ? 8'h74 : 
				     (InvRows_to_InvSbox[79:72] == 8'h93) ? 8'h22 : 
				     (InvRows_to_InvSbox[79:72] == 8'h94) ? 8'he7 : 
				     (InvRows_to_InvSbox[79:72] == 8'h95) ? 8'had : 
				     (InvRows_to_InvSbox[79:72] == 8'h96) ? 8'h35 : 
				     (InvRows_to_InvSbox[79:72] == 8'h97) ? 8'h85 : 
				     (InvRows_to_InvSbox[79:72] == 8'h98) ? 8'he2 : 
				     (InvRows_to_InvSbox[79:72] == 8'h99) ? 8'hf9 : 
				     (InvRows_to_InvSbox[79:72] == 8'h9a) ? 8'h37 : 
				     (InvRows_to_InvSbox[79:72] == 8'h9b) ? 8'he8 : 
				     (InvRows_to_InvSbox[79:72] == 8'h9c) ? 8'h1c : 
				     (InvRows_to_InvSbox[79:72] == 8'h9d) ? 8'h75 : 
				     (InvRows_to_InvSbox[79:72] == 8'h9e) ? 8'hdf : 
				     (InvRows_to_InvSbox[79:72] == 8'h9f) ? 8'h6e : 

				     (InvRows_to_InvSbox[79:72] == 8'ha0) ? 8'h47 :	// row a
				     (InvRows_to_InvSbox[79:72] == 8'ha1) ? 8'hf1 : 
				     (InvRows_to_InvSbox[79:72] == 8'ha2) ? 8'h1a : 
				     (InvRows_to_InvSbox[79:72] == 8'ha3) ? 8'h71 : 
				     (InvRows_to_InvSbox[79:72] == 8'ha4) ? 8'h1d : 
				     (InvRows_to_InvSbox[79:72] == 8'ha5) ? 8'h29 : 
				     (InvRows_to_InvSbox[79:72] == 8'ha6) ? 8'hc5 : 
				     (InvRows_to_InvSbox[79:72] == 8'ha7) ? 8'h89 : 
				     (InvRows_to_InvSbox[79:72] == 8'ha8) ? 8'h6f : 
				     (InvRows_to_InvSbox[79:72] == 8'ha9) ? 8'hb7 : 
				     (InvRows_to_InvSbox[79:72] == 8'haa) ? 8'h62 : 
				     (InvRows_to_InvSbox[79:72] == 8'hab) ? 8'h0e : 
				     (InvRows_to_InvSbox[79:72] == 8'hac) ? 8'haa : 
				     (InvRows_to_InvSbox[79:72] == 8'had) ? 8'h18 : 
				     (InvRows_to_InvSbox[79:72] == 8'hae) ? 8'hbe : 
				     (InvRows_to_InvSbox[79:72] == 8'haf) ? 8'h1b : 

				     (InvRows_to_InvSbox[79:72] == 8'hb0) ? 8'hfc :	// row b
				     (InvRows_to_InvSbox[79:72] == 8'hb1) ? 8'h56 : 
				     (InvRows_to_InvSbox[79:72] == 8'hb2) ? 8'h3e : 
				     (InvRows_to_InvSbox[79:72] == 8'hb3) ? 8'h4b : 
				     (InvRows_to_InvSbox[79:72] == 8'hb4) ? 8'hc6 : 
				     (InvRows_to_InvSbox[79:72] == 8'hb5) ? 8'hd2 : 
				     (InvRows_to_InvSbox[79:72] == 8'hb6) ? 8'h79 : 
				     (InvRows_to_InvSbox[79:72] == 8'hb7) ? 8'h20 : 
				     (InvRows_to_InvSbox[79:72] == 8'hb8) ? 8'h9a : 
				     (InvRows_to_InvSbox[79:72] == 8'hb9) ? 8'hdb : 
				     (InvRows_to_InvSbox[79:72] == 8'hba) ? 8'hc0 : 
				     (InvRows_to_InvSbox[79:72] == 8'hbb) ? 8'hfe : 
				     (InvRows_to_InvSbox[79:72] == 8'hbc) ? 8'h78 : 
				     (InvRows_to_InvSbox[79:72] == 8'hbd) ? 8'hcd : 
				     (InvRows_to_InvSbox[79:72] == 8'hbe) ? 8'h5a : 
				     (InvRows_to_InvSbox[79:72] == 8'hbf) ? 8'hf4 : 

				     (InvRows_to_InvSbox[79:72] == 8'hc0) ? 8'h1f :	// row c
				     (InvRows_to_InvSbox[79:72] == 8'hc1) ? 8'hdd : 
				     (InvRows_to_InvSbox[79:72] == 8'hc2) ? 8'ha8 : 
				     (InvRows_to_InvSbox[79:72] == 8'hc3) ? 8'h33 : 
				     (InvRows_to_InvSbox[79:72] == 8'hc4) ? 8'h88 : 
				     (InvRows_to_InvSbox[79:72] == 8'hc5) ? 8'h07 : 
				     (InvRows_to_InvSbox[79:72] == 8'hc6) ? 8'hc7 : 
				     (InvRows_to_InvSbox[79:72] == 8'hc7) ? 8'h31 : 
				     (InvRows_to_InvSbox[79:72] == 8'hc8) ? 8'hb1 : 
				     (InvRows_to_InvSbox[79:72] == 8'hc9) ? 8'h12 : 
				     (InvRows_to_InvSbox[79:72] == 8'hca) ? 8'h10 : 
				     (InvRows_to_InvSbox[79:72] == 8'hcb) ? 8'h59 : 
				     (InvRows_to_InvSbox[79:72] == 8'hcc) ? 8'h27 : 
				     (InvRows_to_InvSbox[79:72] == 8'hcd) ? 8'h80 : 
				     (InvRows_to_InvSbox[79:72] == 8'hce) ? 8'hec : 
				     (InvRows_to_InvSbox[79:72] == 8'hcf) ? 8'h5f : 

				     (InvRows_to_InvSbox[79:72] == 8'hd0) ? 8'h60 :	// row d
				     (InvRows_to_InvSbox[79:72] == 8'hd1) ? 8'h51 : 
				     (InvRows_to_InvSbox[79:72] == 8'hd2) ? 8'h7f : 
				     (InvRows_to_InvSbox[79:72] == 8'hd3) ? 8'ha9 : 
				     (InvRows_to_InvSbox[79:72] == 8'hd4) ? 8'h19 : 
				     (InvRows_to_InvSbox[79:72] == 8'hd5) ? 8'hb5 : 
				     (InvRows_to_InvSbox[79:72] == 8'hd6) ? 8'h4a : 
				     (InvRows_to_InvSbox[79:72] == 8'hd7) ? 8'h0d : 
				     (InvRows_to_InvSbox[79:72] == 8'hd8) ? 8'h2d : 
				     (InvRows_to_InvSbox[79:72] == 8'hd9) ? 8'he5 : 
				     (InvRows_to_InvSbox[79:72] == 8'hda) ? 8'h7a : 
				     (InvRows_to_InvSbox[79:72] == 8'hdb) ? 8'h9f : 
				     (InvRows_to_InvSbox[79:72] == 8'hdc) ? 8'h93 : 
				     (InvRows_to_InvSbox[79:72] == 8'hdd) ? 8'hc9 : 
				     (InvRows_to_InvSbox[79:72] == 8'hde) ? 8'h9c : 
				     (InvRows_to_InvSbox[79:72] == 8'hdf) ? 8'hef : 

				     (InvRows_to_InvSbox[79:72] == 8'he0) ? 8'ha0 :	// row e
				     (InvRows_to_InvSbox[79:72] == 8'he1) ? 8'he0 : 
				     (InvRows_to_InvSbox[79:72] == 8'he2) ? 8'h3b : 
				     (InvRows_to_InvSbox[79:72] == 8'he3) ? 8'h4d : 
				     (InvRows_to_InvSbox[79:72] == 8'he4) ? 8'hae : 
				     (InvRows_to_InvSbox[79:72] == 8'he5) ? 8'h2a : 
				     (InvRows_to_InvSbox[79:72] == 8'he6) ? 8'hf5 : 
				     (InvRows_to_InvSbox[79:72] == 8'he7) ? 8'hb0 : 
				     (InvRows_to_InvSbox[79:72] == 8'he8) ? 8'hc8 : 
				     (InvRows_to_InvSbox[79:72] == 8'he9) ? 8'heb : 
				     (InvRows_to_InvSbox[79:72] == 8'hea) ? 8'hbb : 
				     (InvRows_to_InvSbox[79:72] == 8'heb) ? 8'h3c : 
				     (InvRows_to_InvSbox[79:72] == 8'hec) ? 8'h83 : 
				     (InvRows_to_InvSbox[79:72] == 8'hed) ? 8'h53 : 
				     (InvRows_to_InvSbox[79:72] == 8'hee) ? 8'h99 : 
				     (InvRows_to_InvSbox[79:72] == 8'hef) ? 8'h61 :

				     (InvRows_to_InvSbox[79:72] == 8'hf0) ? 8'h17 :	// row f
				     (InvRows_to_InvSbox[79:72] == 8'hf1) ? 8'h2b : 
				     (InvRows_to_InvSbox[79:72] == 8'hf2) ? 8'h04 : 
				     (InvRows_to_InvSbox[79:72] == 8'hf3) ? 8'h7e : 
				     (InvRows_to_InvSbox[79:72] == 8'hf4) ? 8'hba : 
				     (InvRows_to_InvSbox[79:72] == 8'hf5) ? 8'h77 : 
				     (InvRows_to_InvSbox[79:72] == 8'hf6) ? 8'hd6 : 
				     (InvRows_to_InvSbox[79:72] == 8'hf7) ? 8'h26 : 
				     (InvRows_to_InvSbox[79:72] == 8'hf8) ? 8'he1 : 
				     (InvRows_to_InvSbox[79:72] == 8'hf9) ? 8'h69 : 
				     (InvRows_to_InvSbox[79:72] == 8'hfa) ? 8'h14 : 
				     (InvRows_to_InvSbox[79:72] == 8'hfb) ? 8'h63 : 
				     (InvRows_to_InvSbox[79:72] == 8'hfc) ? 8'h55 : 
				     (InvRows_to_InvSbox[79:72] == 8'hfd) ? 8'h21 : 
				     (InvRows_to_InvSbox[79:72] == 8'hfe) ? 8'h0c : 
				     (InvRows_to_InvSbox[79:72] == 8'hff) ? 8'h7d : 8'hxx;
					  
					  assign InvSBox_out[87:80] = (InvRows_to_InvSbox[87:80] == 8'h00) ? 8'h52 :	// row 0
				     (InvRows_to_InvSbox[87:80] == 8'h01) ? 8'h09 : 
				     (InvRows_to_InvSbox[87:80] == 8'h02) ? 8'h6a : 
				     (InvRows_to_InvSbox[87:80] == 8'h03) ? 8'hd5 : 
				     (InvRows_to_InvSbox[87:80] == 8'h04) ? 8'h30 : 
				     (InvRows_to_InvSbox[87:80] == 8'h05) ? 8'h36 : 
				     (InvRows_to_InvSbox[87:80] == 8'h06) ? 8'ha5 : 
				     (InvRows_to_InvSbox[87:80] == 8'h07) ? 8'h38 : 
				     (InvRows_to_InvSbox[87:80] == 8'h08) ? 8'hbf : 
				     (InvRows_to_InvSbox[87:80] == 8'h09) ? 8'h40 : 
				     (InvRows_to_InvSbox[87:80] == 8'h0a) ? 8'ha3 : 
				     (InvRows_to_InvSbox[87:80] == 8'h0b) ? 8'h9e : 
				     (InvRows_to_InvSbox[87:80] == 8'h0c) ? 8'h81 : 
				     (InvRows_to_InvSbox[87:80] == 8'h0d) ? 8'hf3 : 
				     (InvRows_to_InvSbox[87:80] == 8'h0e) ? 8'hd7 : 
				     (InvRows_to_InvSbox[87:80] == 8'h0f) ? 8'hfb : 

				     (InvRows_to_InvSbox[87:80] == 8'h10) ? 8'h7c :	// row 1
				     (InvRows_to_InvSbox[87:80] == 8'h11) ? 8'he3 : 
				     (InvRows_to_InvSbox[87:80] == 8'h12) ? 8'h39 : 
				     (InvRows_to_InvSbox[87:80] == 8'h13) ? 8'h82 : 
				     (InvRows_to_InvSbox[87:80] == 8'h14) ? 8'h9b : 
				     (InvRows_to_InvSbox[87:80] == 8'h15) ? 8'h2f : 
				     (InvRows_to_InvSbox[87:80] == 8'h16) ? 8'hff : 
				     (InvRows_to_InvSbox[87:80] == 8'h17) ? 8'h87 : 
				     (InvRows_to_InvSbox[87:80] == 8'h18) ? 8'h34 : 
				     (InvRows_to_InvSbox[87:80] == 8'h19) ? 8'h8e : 
				     (InvRows_to_InvSbox[87:80] == 8'h1a) ? 8'h43 : 
				     (InvRows_to_InvSbox[87:80] == 8'h1b) ? 8'h44 : 
				     (InvRows_to_InvSbox[87:80] == 8'h1c) ? 8'hc4 : 
				     (InvRows_to_InvSbox[87:80] == 8'h1d) ? 8'hde : 
				     (InvRows_to_InvSbox[87:80] == 8'h1e) ? 8'he9 : 
				     (InvRows_to_InvSbox[87:80] == 8'h1f) ? 8'hcb : 

				     (InvRows_to_InvSbox[87:80] == 8'h20) ? 8'h54 :	// row 2
				     (InvRows_to_InvSbox[87:80] == 8'h21) ? 8'h7b : 
				     (InvRows_to_InvSbox[87:80] == 8'h22) ? 8'h94 : 
				     (InvRows_to_InvSbox[87:80] == 8'h23) ? 8'h32 : 
				     (InvRows_to_InvSbox[87:80] == 8'h24) ? 8'ha6 : 
				     (InvRows_to_InvSbox[87:80] == 8'h25) ? 8'hc2 : 
				     (InvRows_to_InvSbox[87:80] == 8'h26) ? 8'h23 : 
				     (InvRows_to_InvSbox[87:80] == 8'h27) ? 8'h3d : 
				     (InvRows_to_InvSbox[87:80] == 8'h28) ? 8'hee : 
				     (InvRows_to_InvSbox[87:80] == 8'h29) ? 8'h4c : 
				     (InvRows_to_InvSbox[87:80] == 8'h2a) ? 8'h95 : 
				     (InvRows_to_InvSbox[87:80] == 8'h2b) ? 8'h0b : 
				     (InvRows_to_InvSbox[87:80] == 8'h2c) ? 8'h42 : 
				     (InvRows_to_InvSbox[87:80] == 8'h2d) ? 8'hfa : 
				     (InvRows_to_InvSbox[87:80] == 8'h2e) ? 8'hc3 : 
				     (InvRows_to_InvSbox[87:80] == 8'h2f) ? 8'h4e :

				     (InvRows_to_InvSbox[87:80] == 8'h30) ? 8'h08 : 	// row 3
				     (InvRows_to_InvSbox[87:80] == 8'h31) ? 8'h2e : 
				     (InvRows_to_InvSbox[87:80] == 8'h32) ? 8'ha1 : 
				     (InvRows_to_InvSbox[87:80] == 8'h33) ? 8'h66 : 
				     (InvRows_to_InvSbox[87:80] == 8'h34) ? 8'h28 : 
				     (InvRows_to_InvSbox[87:80] == 8'h35) ? 8'hd9 : 
				     (InvRows_to_InvSbox[87:80] == 8'h36) ? 8'h24 : 
				     (InvRows_to_InvSbox[87:80] == 8'h37) ? 8'hb2 : 
				     (InvRows_to_InvSbox[87:80] == 8'h38) ? 8'h76 : 
				     (InvRows_to_InvSbox[87:80] == 8'h39) ? 8'h5b : 
				     (InvRows_to_InvSbox[87:80] == 8'h3a) ? 8'ha2 : 
				     (InvRows_to_InvSbox[87:80] == 8'h3b) ? 8'h49 : 
				     (InvRows_to_InvSbox[87:80] == 8'h3c) ? 8'h6d : 
				     (InvRows_to_InvSbox[87:80] == 8'h3d) ? 8'h8b : 
				     (InvRows_to_InvSbox[87:80] == 8'h3e) ? 8'hd1 : 
				     (InvRows_to_InvSbox[87:80] == 8'h3f) ? 8'h25 : 

				     (InvRows_to_InvSbox[87:80] == 8'h40) ? 8'h72 :	// row 4
				     (InvRows_to_InvSbox[87:80] == 8'h41) ? 8'hf8 : 
				     (InvRows_to_InvSbox[87:80] == 8'h42) ? 8'hf6 : 
				     (InvRows_to_InvSbox[87:80] == 8'h43) ? 8'h64 : 
				     (InvRows_to_InvSbox[87:80] == 8'h44) ? 8'h86 : 
				     (InvRows_to_InvSbox[87:80] == 8'h45) ? 8'h68 : 
				     (InvRows_to_InvSbox[87:80] == 8'h46) ? 8'h98 : 
				     (InvRows_to_InvSbox[87:80] == 8'h47) ? 8'h16 : 
				     (InvRows_to_InvSbox[87:80] == 8'h48) ? 8'hd4 : 
				     (InvRows_to_InvSbox[87:80] == 8'h49) ? 8'ha4 : 
				     (InvRows_to_InvSbox[87:80] == 8'h4a) ? 8'h5c : 
				     (InvRows_to_InvSbox[87:80] == 8'h4b) ? 8'hcc : 
				     (InvRows_to_InvSbox[87:80] == 8'h4c) ? 8'h5d : 
				     (InvRows_to_InvSbox[87:80] == 8'h4d) ? 8'h65 : 
				     (InvRows_to_InvSbox[87:80] == 8'h4e) ? 8'hb6 : 
				     (InvRows_to_InvSbox[87:80] == 8'h4f) ? 8'h92 : 

				     (InvRows_to_InvSbox[87:80] == 8'h50) ? 8'h6c :	// row 5
				     (InvRows_to_InvSbox[87:80] == 8'h51) ? 8'h70 : 
				     (InvRows_to_InvSbox[87:80] == 8'h52) ? 8'h48 : 
				     (InvRows_to_InvSbox[87:80] == 8'h53) ? 8'h50 : 
				     (InvRows_to_InvSbox[87:80] == 8'h54) ? 8'hfd : 
				     (InvRows_to_InvSbox[87:80] == 8'h55) ? 8'hed : 
				     (InvRows_to_InvSbox[87:80] == 8'h56) ? 8'hb9 : 
				     (InvRows_to_InvSbox[87:80] == 8'h57) ? 8'hda : 
				     (InvRows_to_InvSbox[87:80] == 8'h58) ? 8'h5e : 
				     (InvRows_to_InvSbox[87:80] == 8'h59) ? 8'h15 : 
				     (InvRows_to_InvSbox[87:80] == 8'h5a) ? 8'h46 : 
				     (InvRows_to_InvSbox[87:80] == 8'h5b) ? 8'h57 : 
				     (InvRows_to_InvSbox[87:80] == 8'h5c) ? 8'ha7 : 
				     (InvRows_to_InvSbox[87:80] == 8'h5d) ? 8'h8d : 
				     (InvRows_to_InvSbox[87:80] == 8'h5e) ? 8'h9d : 
				     (InvRows_to_InvSbox[87:80] == 8'h5f) ? 8'h84 : 

				     (InvRows_to_InvSbox[87:80] == 8'h60) ? 8'h90 :	// row 6
				     (InvRows_to_InvSbox[87:80] == 8'h61) ? 8'hd8 : 
				     (InvRows_to_InvSbox[87:80] == 8'h62) ? 8'hab : 
				     (InvRows_to_InvSbox[87:80] == 8'h63) ? 8'h00 : 
				     (InvRows_to_InvSbox[87:80] == 8'h64) ? 8'h8c : 
				     (InvRows_to_InvSbox[87:80] == 8'h65) ? 8'hbc : 
				     (InvRows_to_InvSbox[87:80] == 8'h66) ? 8'hd3 : 
				     (InvRows_to_InvSbox[87:80] == 8'h67) ? 8'h0a : 
				     (InvRows_to_InvSbox[87:80] == 8'h68) ? 8'hf7 : 
				     (InvRows_to_InvSbox[87:80] == 8'h69) ? 8'he4 : 
				     (InvRows_to_InvSbox[87:80] == 8'h6a) ? 8'h58 : 
				     (InvRows_to_InvSbox[87:80] == 8'h6b) ? 8'h05 : 
				     (InvRows_to_InvSbox[87:80] == 8'h6c) ? 8'hb8 : 
				     (InvRows_to_InvSbox[87:80] == 8'h6d) ? 8'hb3 : 
				     (InvRows_to_InvSbox[87:80] == 8'h6e) ? 8'h45 : 
				     (InvRows_to_InvSbox[87:80] == 8'h6f) ? 8'h06 : 

				     (InvRows_to_InvSbox[87:80] == 8'h70) ? 8'hd0 :	// row 7
				     (InvRows_to_InvSbox[87:80] == 8'h71) ? 8'h2c : 
				     (InvRows_to_InvSbox[87:80] == 8'h72) ? 8'h1e : 
				     (InvRows_to_InvSbox[87:80] == 8'h73) ? 8'h8f : 
				     (InvRows_to_InvSbox[87:80] == 8'h74) ? 8'hca : 
				     (InvRows_to_InvSbox[87:80] == 8'h75) ? 8'h3f : 
				     (InvRows_to_InvSbox[87:80] == 8'h76) ? 8'h0f : 
				     (InvRows_to_InvSbox[87:80] == 8'h77) ? 8'h02 : 
				     (InvRows_to_InvSbox[87:80] == 8'h78) ? 8'hc1 : 
				     (InvRows_to_InvSbox[87:80] == 8'h79) ? 8'haf : 
				     (InvRows_to_InvSbox[87:80] == 8'h7a) ? 8'hbd : 
				     (InvRows_to_InvSbox[87:80] == 8'h7b) ? 8'h03 : 
				     (InvRows_to_InvSbox[87:80] == 8'h7c) ? 8'h01 : 
				     (InvRows_to_InvSbox[87:80] == 8'h7d) ? 8'h13 : 
				     (InvRows_to_InvSbox[87:80] == 8'h7e) ? 8'h8a : 
				     (InvRows_to_InvSbox[87:80] == 8'h7f) ? 8'h6b :
 
				     (InvRows_to_InvSbox[87:80] == 8'h80) ? 8'h3a :	// row 8
				     (InvRows_to_InvSbox[87:80] == 8'h81) ? 8'h91 : 
				     (InvRows_to_InvSbox[87:80] == 8'h82) ? 8'h11 : 
				     (InvRows_to_InvSbox[87:80] == 8'h83) ? 8'h41 : 
				     (InvRows_to_InvSbox[87:80] == 8'h84) ? 8'h4f : 
				     (InvRows_to_InvSbox[87:80] == 8'h85) ? 8'h67 : 
				     (InvRows_to_InvSbox[87:80] == 8'h86) ? 8'hdc : 
				     (InvRows_to_InvSbox[87:80] == 8'h87) ? 8'hea : 
				     (InvRows_to_InvSbox[87:80] == 8'h88) ? 8'h97 : 
				     (InvRows_to_InvSbox[87:80] == 8'h89) ? 8'hf2 : 
				     (InvRows_to_InvSbox[87:80] == 8'h8a) ? 8'hcf : 
				     (InvRows_to_InvSbox[87:80] == 8'h8b) ? 8'hce : 
				     (InvRows_to_InvSbox[87:80] == 8'h8c) ? 8'hf0 : 
				     (InvRows_to_InvSbox[87:80] == 8'h8d) ? 8'hb4 : 
				     (InvRows_to_InvSbox[87:80] == 8'h8e) ? 8'he6 : 
				     (InvRows_to_InvSbox[87:80] == 8'h8f) ? 8'h73 :

				     (InvRows_to_InvSbox[87:80] == 8'h90) ? 8'h96 :	// row 9
				     (InvRows_to_InvSbox[87:80] == 8'h91) ? 8'hac : 
				     (InvRows_to_InvSbox[87:80] == 8'h92) ? 8'h74 : 
				     (InvRows_to_InvSbox[87:80] == 8'h93) ? 8'h22 : 
				     (InvRows_to_InvSbox[87:80] == 8'h94) ? 8'he7 : 
				     (InvRows_to_InvSbox[87:80] == 8'h95) ? 8'had : 
				     (InvRows_to_InvSbox[87:80] == 8'h96) ? 8'h35 : 
				     (InvRows_to_InvSbox[87:80] == 8'h97) ? 8'h85 : 
				     (InvRows_to_InvSbox[87:80] == 8'h98) ? 8'he2 : 
				     (InvRows_to_InvSbox[87:80] == 8'h99) ? 8'hf9 : 
				     (InvRows_to_InvSbox[87:80] == 8'h9a) ? 8'h37 : 
				     (InvRows_to_InvSbox[87:80] == 8'h9b) ? 8'he8 : 
				     (InvRows_to_InvSbox[87:80] == 8'h9c) ? 8'h1c : 
				     (InvRows_to_InvSbox[87:80] == 8'h9d) ? 8'h75 : 
				     (InvRows_to_InvSbox[87:80] == 8'h9e) ? 8'hdf : 
				     (InvRows_to_InvSbox[87:80] == 8'h9f) ? 8'h6e : 

				     (InvRows_to_InvSbox[87:80] == 8'ha0) ? 8'h47 :	// row a
				     (InvRows_to_InvSbox[87:80] == 8'ha1) ? 8'hf1 : 
				     (InvRows_to_InvSbox[87:80] == 8'ha2) ? 8'h1a : 
				     (InvRows_to_InvSbox[87:80] == 8'ha3) ? 8'h71 : 
				     (InvRows_to_InvSbox[87:80] == 8'ha4) ? 8'h1d : 
				     (InvRows_to_InvSbox[87:80] == 8'ha5) ? 8'h29 : 
				     (InvRows_to_InvSbox[87:80] == 8'ha6) ? 8'hc5 : 
				     (InvRows_to_InvSbox[87:80] == 8'ha7) ? 8'h89 : 
				     (InvRows_to_InvSbox[87:80] == 8'ha8) ? 8'h6f : 
				     (InvRows_to_InvSbox[87:80] == 8'ha9) ? 8'hb7 : 
				     (InvRows_to_InvSbox[87:80] == 8'haa) ? 8'h62 : 
				     (InvRows_to_InvSbox[87:80] == 8'hab) ? 8'h0e : 
				     (InvRows_to_InvSbox[87:80] == 8'hac) ? 8'haa : 
				     (InvRows_to_InvSbox[87:80] == 8'had) ? 8'h18 : 
				     (InvRows_to_InvSbox[87:80] == 8'hae) ? 8'hbe : 
				     (InvRows_to_InvSbox[87:80] == 8'haf) ? 8'h1b : 

				     (InvRows_to_InvSbox[87:80] == 8'hb0) ? 8'hfc :	// row b
				     (InvRows_to_InvSbox[87:80] == 8'hb1) ? 8'h56 : 
				     (InvRows_to_InvSbox[87:80] == 8'hb2) ? 8'h3e : 
				     (InvRows_to_InvSbox[87:80] == 8'hb3) ? 8'h4b : 
				     (InvRows_to_InvSbox[87:80] == 8'hb4) ? 8'hc6 : 
				     (InvRows_to_InvSbox[87:80] == 8'hb5) ? 8'hd2 : 
				     (InvRows_to_InvSbox[87:80] == 8'hb6) ? 8'h79 : 
				     (InvRows_to_InvSbox[87:80] == 8'hb7) ? 8'h20 : 
				     (InvRows_to_InvSbox[87:80] == 8'hb8) ? 8'h9a : 
				     (InvRows_to_InvSbox[87:80] == 8'hb9) ? 8'hdb : 
				     (InvRows_to_InvSbox[87:80] == 8'hba) ? 8'hc0 : 
				     (InvRows_to_InvSbox[87:80] == 8'hbb) ? 8'hfe : 
				     (InvRows_to_InvSbox[87:80] == 8'hbc) ? 8'h78 : 
				     (InvRows_to_InvSbox[87:80] == 8'hbd) ? 8'hcd : 
				     (InvRows_to_InvSbox[87:80] == 8'hbe) ? 8'h5a : 
				     (InvRows_to_InvSbox[87:80] == 8'hbf) ? 8'hf4 : 

				     (InvRows_to_InvSbox[87:80] == 8'hc0) ? 8'h1f :	// row c
				     (InvRows_to_InvSbox[87:80] == 8'hc1) ? 8'hdd : 
				     (InvRows_to_InvSbox[87:80] == 8'hc2) ? 8'ha8 : 
				     (InvRows_to_InvSbox[87:80] == 8'hc3) ? 8'h33 : 
				     (InvRows_to_InvSbox[87:80] == 8'hc4) ? 8'h88 : 
				     (InvRows_to_InvSbox[87:80] == 8'hc5) ? 8'h07 : 
				     (InvRows_to_InvSbox[87:80] == 8'hc6) ? 8'hc7 : 
				     (InvRows_to_InvSbox[87:80] == 8'hc7) ? 8'h31 : 
				     (InvRows_to_InvSbox[87:80] == 8'hc8) ? 8'hb1 : 
				     (InvRows_to_InvSbox[87:80] == 8'hc9) ? 8'h12 : 
				     (InvRows_to_InvSbox[87:80] == 8'hca) ? 8'h10 : 
				     (InvRows_to_InvSbox[87:80] == 8'hcb) ? 8'h59 : 
				     (InvRows_to_InvSbox[87:80] == 8'hcc) ? 8'h27 : 
				     (InvRows_to_InvSbox[87:80] == 8'hcd) ? 8'h80 : 
				     (InvRows_to_InvSbox[87:80] == 8'hce) ? 8'hec : 
				     (InvRows_to_InvSbox[87:80] == 8'hcf) ? 8'h5f : 

				     (InvRows_to_InvSbox[87:80] == 8'hd0) ? 8'h60 :	// row d
				     (InvRows_to_InvSbox[87:80] == 8'hd1) ? 8'h51 : 
				     (InvRows_to_InvSbox[87:80] == 8'hd2) ? 8'h7f : 
				     (InvRows_to_InvSbox[87:80] == 8'hd3) ? 8'ha9 : 
				     (InvRows_to_InvSbox[87:80] == 8'hd4) ? 8'h19 : 
				     (InvRows_to_InvSbox[87:80] == 8'hd5) ? 8'hb5 : 
				     (InvRows_to_InvSbox[87:80] == 8'hd6) ? 8'h4a : 
				     (InvRows_to_InvSbox[87:80] == 8'hd7) ? 8'h0d : 
				     (InvRows_to_InvSbox[87:80] == 8'hd8) ? 8'h2d : 
				     (InvRows_to_InvSbox[87:80] == 8'hd9) ? 8'he5 : 
				     (InvRows_to_InvSbox[87:80] == 8'hda) ? 8'h7a : 
				     (InvRows_to_InvSbox[87:80] == 8'hdb) ? 8'h9f : 
				     (InvRows_to_InvSbox[87:80] == 8'hdc) ? 8'h93 : 
				     (InvRows_to_InvSbox[87:80] == 8'hdd) ? 8'hc9 : 
				     (InvRows_to_InvSbox[87:80] == 8'hde) ? 8'h9c : 
				     (InvRows_to_InvSbox[87:80] == 8'hdf) ? 8'hef : 

				     (InvRows_to_InvSbox[87:80] == 8'he0) ? 8'ha0 :	// row e
				     (InvRows_to_InvSbox[87:80] == 8'he1) ? 8'he0 : 
				     (InvRows_to_InvSbox[87:80] == 8'he2) ? 8'h3b : 
				     (InvRows_to_InvSbox[87:80] == 8'he3) ? 8'h4d : 
				     (InvRows_to_InvSbox[87:80] == 8'he4) ? 8'hae : 
				     (InvRows_to_InvSbox[87:80] == 8'he5) ? 8'h2a : 
				     (InvRows_to_InvSbox[87:80] == 8'he6) ? 8'hf5 : 
				     (InvRows_to_InvSbox[87:80] == 8'he7) ? 8'hb0 : 
				     (InvRows_to_InvSbox[87:80] == 8'he8) ? 8'hc8 : 
				     (InvRows_to_InvSbox[87:80] == 8'he9) ? 8'heb : 
				     (InvRows_to_InvSbox[87:80] == 8'hea) ? 8'hbb : 
				     (InvRows_to_InvSbox[87:80] == 8'heb) ? 8'h3c : 
				     (InvRows_to_InvSbox[87:80] == 8'hec) ? 8'h83 : 
				     (InvRows_to_InvSbox[87:80] == 8'hed) ? 8'h53 : 
				     (InvRows_to_InvSbox[87:80] == 8'hee) ? 8'h99 : 
				     (InvRows_to_InvSbox[87:80] == 8'hef) ? 8'h61 :

				     (InvRows_to_InvSbox[87:80] == 8'hf0) ? 8'h17 :	// row f
				     (InvRows_to_InvSbox[87:80] == 8'hf1) ? 8'h2b : 
				     (InvRows_to_InvSbox[87:80] == 8'hf2) ? 8'h04 : 
				     (InvRows_to_InvSbox[87:80] == 8'hf3) ? 8'h7e : 
				     (InvRows_to_InvSbox[87:80] == 8'hf4) ? 8'hba : 
				     (InvRows_to_InvSbox[87:80] == 8'hf5) ? 8'h77 : 
				     (InvRows_to_InvSbox[87:80] == 8'hf6) ? 8'hd6 : 
				     (InvRows_to_InvSbox[87:80] == 8'hf7) ? 8'h26 : 
				     (InvRows_to_InvSbox[87:80] == 8'hf8) ? 8'he1 : 
				     (InvRows_to_InvSbox[87:80] == 8'hf9) ? 8'h69 : 
				     (InvRows_to_InvSbox[87:80] == 8'hfa) ? 8'h14 : 
				     (InvRows_to_InvSbox[87:80] == 8'hfb) ? 8'h63 : 
				     (InvRows_to_InvSbox[87:80] == 8'hfc) ? 8'h55 : 
				     (InvRows_to_InvSbox[87:80] == 8'hfd) ? 8'h21 : 
				     (InvRows_to_InvSbox[87:80] == 8'hfe) ? 8'h0c : 
				     (InvRows_to_InvSbox[87:80] == 8'hff) ? 8'h7d : 8'hxx;
					  
					  assign InvSBox_out[95:88] = (InvRows_to_InvSbox[95:88] == 8'h00) ? 8'h52 :	// row 0
				     (InvRows_to_InvSbox[95:88] == 8'h01) ? 8'h09 : 
				     (InvRows_to_InvSbox[95:88] == 8'h02) ? 8'h6a : 
				     (InvRows_to_InvSbox[95:88] == 8'h03) ? 8'hd5 : 
				     (InvRows_to_InvSbox[95:88] == 8'h04) ? 8'h30 : 
				     (InvRows_to_InvSbox[95:88] == 8'h05) ? 8'h36 : 
				     (InvRows_to_InvSbox[95:88] == 8'h06) ? 8'ha5 : 
				     (InvRows_to_InvSbox[95:88] == 8'h07) ? 8'h38 : 
				     (InvRows_to_InvSbox[95:88] == 8'h08) ? 8'hbf : 
				     (InvRows_to_InvSbox[95:88] == 8'h09) ? 8'h40 : 
				     (InvRows_to_InvSbox[95:88] == 8'h0a) ? 8'ha3 : 
				     (InvRows_to_InvSbox[95:88] == 8'h0b) ? 8'h9e : 
				     (InvRows_to_InvSbox[95:88] == 8'h0c) ? 8'h81 : 
				     (InvRows_to_InvSbox[95:88] == 8'h0d) ? 8'hf3 : 
				     (InvRows_to_InvSbox[95:88] == 8'h0e) ? 8'hd7 : 
				     (InvRows_to_InvSbox[95:88] == 8'h0f) ? 8'hfb : 

				     (InvRows_to_InvSbox[95:88] == 8'h10) ? 8'h7c :	// row 1
				     (InvRows_to_InvSbox[95:88] == 8'h11) ? 8'he3 : 
				     (InvRows_to_InvSbox[95:88] == 8'h12) ? 8'h39 : 
				     (InvRows_to_InvSbox[95:88] == 8'h13) ? 8'h82 : 
				     (InvRows_to_InvSbox[95:88] == 8'h14) ? 8'h9b : 
				     (InvRows_to_InvSbox[95:88] == 8'h15) ? 8'h2f : 
				     (InvRows_to_InvSbox[95:88] == 8'h16) ? 8'hff : 
				     (InvRows_to_InvSbox[95:88] == 8'h17) ? 8'h87 : 
				     (InvRows_to_InvSbox[95:88] == 8'h18) ? 8'h34 : 
				     (InvRows_to_InvSbox[95:88] == 8'h19) ? 8'h8e : 
				     (InvRows_to_InvSbox[95:88] == 8'h1a) ? 8'h43 : 
				     (InvRows_to_InvSbox[95:88] == 8'h1b) ? 8'h44 : 
				     (InvRows_to_InvSbox[95:88] == 8'h1c) ? 8'hc4 : 
				     (InvRows_to_InvSbox[95:88] == 8'h1d) ? 8'hde : 
				     (InvRows_to_InvSbox[95:88] == 8'h1e) ? 8'he9 : 
				     (InvRows_to_InvSbox[95:88] == 8'h1f) ? 8'hcb : 

				     (InvRows_to_InvSbox[95:88] == 8'h20) ? 8'h54 :	// row 2
				     (InvRows_to_InvSbox[95:88] == 8'h21) ? 8'h7b : 
				     (InvRows_to_InvSbox[95:88] == 8'h22) ? 8'h94 : 
				     (InvRows_to_InvSbox[95:88] == 8'h23) ? 8'h32 : 
				     (InvRows_to_InvSbox[95:88] == 8'h24) ? 8'ha6 : 
				     (InvRows_to_InvSbox[95:88] == 8'h25) ? 8'hc2 : 
				     (InvRows_to_InvSbox[95:88] == 8'h26) ? 8'h23 : 
				     (InvRows_to_InvSbox[95:88] == 8'h27) ? 8'h3d : 
				     (InvRows_to_InvSbox[95:88] == 8'h28) ? 8'hee : 
				     (InvRows_to_InvSbox[95:88] == 8'h29) ? 8'h4c : 
				     (InvRows_to_InvSbox[95:88] == 8'h2a) ? 8'h95 : 
				     (InvRows_to_InvSbox[95:88] == 8'h2b) ? 8'h0b : 
				     (InvRows_to_InvSbox[95:88] == 8'h2c) ? 8'h42 : 
				     (InvRows_to_InvSbox[95:88] == 8'h2d) ? 8'hfa : 
				     (InvRows_to_InvSbox[95:88] == 8'h2e) ? 8'hc3 : 
				     (InvRows_to_InvSbox[95:88] == 8'h2f) ? 8'h4e :

				     (InvRows_to_InvSbox[95:88] == 8'h30) ? 8'h08 : 	// row 3
				     (InvRows_to_InvSbox[95:88] == 8'h31) ? 8'h2e : 
				     (InvRows_to_InvSbox[95:88] == 8'h32) ? 8'ha1 : 
				     (InvRows_to_InvSbox[95:88] == 8'h33) ? 8'h66 : 
				     (InvRows_to_InvSbox[95:88] == 8'h34) ? 8'h28 : 
				     (InvRows_to_InvSbox[95:88] == 8'h35) ? 8'hd9 : 
				     (InvRows_to_InvSbox[95:88] == 8'h36) ? 8'h24 : 
				     (InvRows_to_InvSbox[95:88] == 8'h37) ? 8'hb2 : 
				     (InvRows_to_InvSbox[95:88] == 8'h38) ? 8'h76 : 
				     (InvRows_to_InvSbox[95:88] == 8'h39) ? 8'h5b : 
				     (InvRows_to_InvSbox[95:88] == 8'h3a) ? 8'ha2 : 
				     (InvRows_to_InvSbox[95:88] == 8'h3b) ? 8'h49 : 
				     (InvRows_to_InvSbox[95:88] == 8'h3c) ? 8'h6d : 
				     (InvRows_to_InvSbox[95:88] == 8'h3d) ? 8'h8b : 
				     (InvRows_to_InvSbox[95:88] == 8'h3e) ? 8'hd1 : 
				     (InvRows_to_InvSbox[95:88] == 8'h3f) ? 8'h25 : 

				     (InvRows_to_InvSbox[95:88] == 8'h40) ? 8'h72 :	// row 4
				     (InvRows_to_InvSbox[95:88] == 8'h41) ? 8'hf8 : 
				     (InvRows_to_InvSbox[95:88] == 8'h42) ? 8'hf6 : 
				     (InvRows_to_InvSbox[95:88] == 8'h43) ? 8'h64 : 
				     (InvRows_to_InvSbox[95:88] == 8'h44) ? 8'h86 : 
				     (InvRows_to_InvSbox[95:88] == 8'h45) ? 8'h68 : 
				     (InvRows_to_InvSbox[95:88] == 8'h46) ? 8'h98 : 
				     (InvRows_to_InvSbox[95:88] == 8'h47) ? 8'h16 : 
				     (InvRows_to_InvSbox[95:88] == 8'h48) ? 8'hd4 : 
				     (InvRows_to_InvSbox[95:88] == 8'h49) ? 8'ha4 : 
				     (InvRows_to_InvSbox[95:88] == 8'h4a) ? 8'h5c : 
				     (InvRows_to_InvSbox[95:88] == 8'h4b) ? 8'hcc : 
				     (InvRows_to_InvSbox[95:88] == 8'h4c) ? 8'h5d : 
				     (InvRows_to_InvSbox[95:88] == 8'h4d) ? 8'h65 : 
				     (InvRows_to_InvSbox[95:88] == 8'h4e) ? 8'hb6 : 
				     (InvRows_to_InvSbox[95:88] == 8'h4f) ? 8'h92 : 

				     (InvRows_to_InvSbox[95:88] == 8'h50) ? 8'h6c :	// row 5
				     (InvRows_to_InvSbox[95:88] == 8'h51) ? 8'h70 : 
				     (InvRows_to_InvSbox[95:88] == 8'h52) ? 8'h48 : 
				     (InvRows_to_InvSbox[95:88] == 8'h53) ? 8'h50 : 
				     (InvRows_to_InvSbox[95:88] == 8'h54) ? 8'hfd : 
				     (InvRows_to_InvSbox[95:88] == 8'h55) ? 8'hed : 
				     (InvRows_to_InvSbox[95:88] == 8'h56) ? 8'hb9 : 
				     (InvRows_to_InvSbox[95:88] == 8'h57) ? 8'hda : 
				     (InvRows_to_InvSbox[95:88] == 8'h58) ? 8'h5e : 
				     (InvRows_to_InvSbox[95:88] == 8'h59) ? 8'h15 : 
				     (InvRows_to_InvSbox[95:88] == 8'h5a) ? 8'h46 : 
				     (InvRows_to_InvSbox[95:88] == 8'h5b) ? 8'h57 : 
				     (InvRows_to_InvSbox[95:88] == 8'h5c) ? 8'ha7 : 
				     (InvRows_to_InvSbox[95:88] == 8'h5d) ? 8'h8d : 
				     (InvRows_to_InvSbox[95:88] == 8'h5e) ? 8'h9d : 
				     (InvRows_to_InvSbox[95:88] == 8'h5f) ? 8'h84 : 

				     (InvRows_to_InvSbox[95:88] == 8'h60) ? 8'h90 :	// row 6
				     (InvRows_to_InvSbox[95:88] == 8'h61) ? 8'hd8 : 
				     (InvRows_to_InvSbox[95:88] == 8'h62) ? 8'hab : 
				     (InvRows_to_InvSbox[95:88] == 8'h63) ? 8'h00 : 
				     (InvRows_to_InvSbox[95:88] == 8'h64) ? 8'h8c : 
				     (InvRows_to_InvSbox[95:88] == 8'h65) ? 8'hbc : 
				     (InvRows_to_InvSbox[95:88] == 8'h66) ? 8'hd3 : 
				     (InvRows_to_InvSbox[95:88] == 8'h67) ? 8'h0a : 
				     (InvRows_to_InvSbox[95:88] == 8'h68) ? 8'hf7 : 
				     (InvRows_to_InvSbox[95:88] == 8'h69) ? 8'he4 : 
				     (InvRows_to_InvSbox[95:88] == 8'h6a) ? 8'h58 : 
				     (InvRows_to_InvSbox[95:88] == 8'h6b) ? 8'h05 : 
				     (InvRows_to_InvSbox[95:88] == 8'h6c) ? 8'hb8 : 
				     (InvRows_to_InvSbox[95:88] == 8'h6d) ? 8'hb3 : 
				     (InvRows_to_InvSbox[95:88] == 8'h6e) ? 8'h45 : 
				     (InvRows_to_InvSbox[95:88] == 8'h6f) ? 8'h06 : 

				     (InvRows_to_InvSbox[95:88] == 8'h70) ? 8'hd0 :	// row 7
				     (InvRows_to_InvSbox[95:88] == 8'h71) ? 8'h2c : 
				     (InvRows_to_InvSbox[95:88] == 8'h72) ? 8'h1e : 
				     (InvRows_to_InvSbox[95:88] == 8'h73) ? 8'h8f : 
				     (InvRows_to_InvSbox[95:88] == 8'h74) ? 8'hca : 
				     (InvRows_to_InvSbox[95:88] == 8'h75) ? 8'h3f : 
				     (InvRows_to_InvSbox[95:88] == 8'h76) ? 8'h0f : 
				     (InvRows_to_InvSbox[95:88] == 8'h77) ? 8'h02 : 
				     (InvRows_to_InvSbox[95:88] == 8'h78) ? 8'hc1 : 
				     (InvRows_to_InvSbox[95:88] == 8'h79) ? 8'haf : 
				     (InvRows_to_InvSbox[95:88] == 8'h7a) ? 8'hbd : 
				     (InvRows_to_InvSbox[95:88] == 8'h7b) ? 8'h03 : 
				     (InvRows_to_InvSbox[95:88] == 8'h7c) ? 8'h01 : 
				     (InvRows_to_InvSbox[95:88] == 8'h7d) ? 8'h13 : 
				     (InvRows_to_InvSbox[95:88] == 8'h7e) ? 8'h8a : 
				     (InvRows_to_InvSbox[95:88] == 8'h7f) ? 8'h6b :
 
				     (InvRows_to_InvSbox[95:88] == 8'h80) ? 8'h3a :	// row 8
				     (InvRows_to_InvSbox[95:88] == 8'h81) ? 8'h91 : 
				     (InvRows_to_InvSbox[95:88] == 8'h82) ? 8'h11 : 
				     (InvRows_to_InvSbox[95:88] == 8'h83) ? 8'h41 : 
				     (InvRows_to_InvSbox[95:88] == 8'h84) ? 8'h4f : 
				     (InvRows_to_InvSbox[95:88] == 8'h85) ? 8'h67 : 
				     (InvRows_to_InvSbox[95:88] == 8'h86) ? 8'hdc : 
				     (InvRows_to_InvSbox[95:88] == 8'h87) ? 8'hea : 
				     (InvRows_to_InvSbox[95:88] == 8'h88) ? 8'h97 : 
				     (InvRows_to_InvSbox[95:88] == 8'h89) ? 8'hf2 : 
				     (InvRows_to_InvSbox[95:88] == 8'h8a) ? 8'hcf : 
				     (InvRows_to_InvSbox[95:88] == 8'h8b) ? 8'hce : 
				     (InvRows_to_InvSbox[95:88] == 8'h8c) ? 8'hf0 : 
				     (InvRows_to_InvSbox[95:88] == 8'h8d) ? 8'hb4 : 
				     (InvRows_to_InvSbox[95:88] == 8'h8e) ? 8'he6 : 
				     (InvRows_to_InvSbox[95:88] == 8'h8f) ? 8'h73 :

				     (InvRows_to_InvSbox[95:88] == 8'h90) ? 8'h96 :	// row 9
				     (InvRows_to_InvSbox[95:88] == 8'h91) ? 8'hac : 
				     (InvRows_to_InvSbox[95:88] == 8'h92) ? 8'h74 : 
				     (InvRows_to_InvSbox[95:88] == 8'h93) ? 8'h22 : 
				     (InvRows_to_InvSbox[95:88] == 8'h94) ? 8'he7 : 
				     (InvRows_to_InvSbox[95:88] == 8'h95) ? 8'had : 
				     (InvRows_to_InvSbox[95:88] == 8'h96) ? 8'h35 : 
				     (InvRows_to_InvSbox[95:88] == 8'h97) ? 8'h85 : 
				     (InvRows_to_InvSbox[95:88] == 8'h98) ? 8'he2 : 
				     (InvRows_to_InvSbox[95:88] == 8'h99) ? 8'hf9 : 
				     (InvRows_to_InvSbox[95:88] == 8'h9a) ? 8'h37 : 
				     (InvRows_to_InvSbox[95:88] == 8'h9b) ? 8'he8 : 
				     (InvRows_to_InvSbox[95:88] == 8'h9c) ? 8'h1c : 
				     (InvRows_to_InvSbox[95:88] == 8'h9d) ? 8'h75 : 
				     (InvRows_to_InvSbox[95:88] == 8'h9e) ? 8'hdf : 
				     (InvRows_to_InvSbox[95:88] == 8'h9f) ? 8'h6e : 

				     (InvRows_to_InvSbox[95:88] == 8'ha0) ? 8'h47 :	// row a
				     (InvRows_to_InvSbox[95:88] == 8'ha1) ? 8'hf1 : 
				     (InvRows_to_InvSbox[95:88] == 8'ha2) ? 8'h1a : 
				     (InvRows_to_InvSbox[95:88] == 8'ha3) ? 8'h71 : 
				     (InvRows_to_InvSbox[95:88] == 8'ha4) ? 8'h1d : 
				     (InvRows_to_InvSbox[95:88] == 8'ha5) ? 8'h29 : 
				     (InvRows_to_InvSbox[95:88] == 8'ha6) ? 8'hc5 : 
				     (InvRows_to_InvSbox[95:88] == 8'ha7) ? 8'h89 : 
				     (InvRows_to_InvSbox[95:88] == 8'ha8) ? 8'h6f : 
				     (InvRows_to_InvSbox[95:88] == 8'ha9) ? 8'hb7 : 
				     (InvRows_to_InvSbox[95:88] == 8'haa) ? 8'h62 : 
				     (InvRows_to_InvSbox[95:88] == 8'hab) ? 8'h0e : 
				     (InvRows_to_InvSbox[95:88] == 8'hac) ? 8'haa : 
				     (InvRows_to_InvSbox[95:88] == 8'had) ? 8'h18 : 
				     (InvRows_to_InvSbox[95:88] == 8'hae) ? 8'hbe : 
				     (InvRows_to_InvSbox[95:88] == 8'haf) ? 8'h1b : 

				     (InvRows_to_InvSbox[95:88] == 8'hb0) ? 8'hfc :	// row b
				     (InvRows_to_InvSbox[95:88] == 8'hb1) ? 8'h56 : 
				     (InvRows_to_InvSbox[95:88] == 8'hb2) ? 8'h3e : 
				     (InvRows_to_InvSbox[95:88] == 8'hb3) ? 8'h4b : 
				     (InvRows_to_InvSbox[95:88] == 8'hb4) ? 8'hc6 : 
				     (InvRows_to_InvSbox[95:88] == 8'hb5) ? 8'hd2 : 
				     (InvRows_to_InvSbox[95:88] == 8'hb6) ? 8'h79 : 
				     (InvRows_to_InvSbox[95:88] == 8'hb7) ? 8'h20 : 
				     (InvRows_to_InvSbox[95:88] == 8'hb8) ? 8'h9a : 
				     (InvRows_to_InvSbox[95:88] == 8'hb9) ? 8'hdb : 
				     (InvRows_to_InvSbox[95:88] == 8'hba) ? 8'hc0 : 
				     (InvRows_to_InvSbox[95:88] == 8'hbb) ? 8'hfe : 
				     (InvRows_to_InvSbox[95:88] == 8'hbc) ? 8'h78 : 
				     (InvRows_to_InvSbox[95:88] == 8'hbd) ? 8'hcd : 
				     (InvRows_to_InvSbox[95:88] == 8'hbe) ? 8'h5a : 
				     (InvRows_to_InvSbox[95:88] == 8'hbf) ? 8'hf4 : 

				     (InvRows_to_InvSbox[95:88] == 8'hc0) ? 8'h1f :	// row c
				     (InvRows_to_InvSbox[95:88] == 8'hc1) ? 8'hdd : 
				     (InvRows_to_InvSbox[95:88] == 8'hc2) ? 8'ha8 : 
				     (InvRows_to_InvSbox[95:88] == 8'hc3) ? 8'h33 : 
				     (InvRows_to_InvSbox[95:88] == 8'hc4) ? 8'h88 : 
				     (InvRows_to_InvSbox[95:88] == 8'hc5) ? 8'h07 : 
				     (InvRows_to_InvSbox[95:88] == 8'hc6) ? 8'hc7 : 
				     (InvRows_to_InvSbox[95:88] == 8'hc7) ? 8'h31 : 
				     (InvRows_to_InvSbox[95:88] == 8'hc8) ? 8'hb1 : 
				     (InvRows_to_InvSbox[95:88] == 8'hc9) ? 8'h12 : 
				     (InvRows_to_InvSbox[95:88] == 8'hca) ? 8'h10 : 
				     (InvRows_to_InvSbox[95:88] == 8'hcb) ? 8'h59 : 
				     (InvRows_to_InvSbox[95:88] == 8'hcc) ? 8'h27 : 
				     (InvRows_to_InvSbox[95:88] == 8'hcd) ? 8'h80 : 
				     (InvRows_to_InvSbox[95:88] == 8'hce) ? 8'hec : 
				     (InvRows_to_InvSbox[95:88] == 8'hcf) ? 8'h5f : 

				     (InvRows_to_InvSbox[95:88] == 8'hd0) ? 8'h60 :	// row d
				     (InvRows_to_InvSbox[95:88] == 8'hd1) ? 8'h51 : 
				     (InvRows_to_InvSbox[95:88] == 8'hd2) ? 8'h7f : 
				     (InvRows_to_InvSbox[95:88] == 8'hd3) ? 8'ha9 : 
				     (InvRows_to_InvSbox[95:88] == 8'hd4) ? 8'h19 : 
				     (InvRows_to_InvSbox[95:88] == 8'hd5) ? 8'hb5 : 
				     (InvRows_to_InvSbox[95:88] == 8'hd6) ? 8'h4a : 
				     (InvRows_to_InvSbox[95:88] == 8'hd7) ? 8'h0d : 
				     (InvRows_to_InvSbox[95:88] == 8'hd8) ? 8'h2d : 
				     (InvRows_to_InvSbox[95:88] == 8'hd9) ? 8'he5 : 
				     (InvRows_to_InvSbox[95:88] == 8'hda) ? 8'h7a : 
				     (InvRows_to_InvSbox[95:88] == 8'hdb) ? 8'h9f : 
				     (InvRows_to_InvSbox[95:88] == 8'hdc) ? 8'h93 : 
				     (InvRows_to_InvSbox[95:88] == 8'hdd) ? 8'hc9 : 
				     (InvRows_to_InvSbox[95:88] == 8'hde) ? 8'h9c : 
				     (InvRows_to_InvSbox[95:88] == 8'hdf) ? 8'hef : 

				     (InvRows_to_InvSbox[95:88] == 8'he0) ? 8'ha0 :	// row e
				     (InvRows_to_InvSbox[95:88] == 8'he1) ? 8'he0 : 
				     (InvRows_to_InvSbox[95:88] == 8'he2) ? 8'h3b : 
				     (InvRows_to_InvSbox[95:88] == 8'he3) ? 8'h4d : 
				     (InvRows_to_InvSbox[95:88] == 8'he4) ? 8'hae : 
				     (InvRows_to_InvSbox[95:88] == 8'he5) ? 8'h2a : 
				     (InvRows_to_InvSbox[95:88] == 8'he6) ? 8'hf5 : 
				     (InvRows_to_InvSbox[95:88] == 8'he7) ? 8'hb0 : 
				     (InvRows_to_InvSbox[95:88] == 8'he8) ? 8'hc8 : 
				     (InvRows_to_InvSbox[95:88] == 8'he9) ? 8'heb : 
				     (InvRows_to_InvSbox[95:88] == 8'hea) ? 8'hbb : 
				     (InvRows_to_InvSbox[95:88] == 8'heb) ? 8'h3c : 
				     (InvRows_to_InvSbox[95:88] == 8'hec) ? 8'h83 : 
				     (InvRows_to_InvSbox[95:88] == 8'hed) ? 8'h53 : 
				     (InvRows_to_InvSbox[95:88] == 8'hee) ? 8'h99 : 
				     (InvRows_to_InvSbox[95:88] == 8'hef) ? 8'h61 :

				     (InvRows_to_InvSbox[95:88] == 8'hf0) ? 8'h17 :	// row f
				     (InvRows_to_InvSbox[95:88] == 8'hf1) ? 8'h2b : 
				     (InvRows_to_InvSbox[95:88] == 8'hf2) ? 8'h04 : 
				     (InvRows_to_InvSbox[95:88] == 8'hf3) ? 8'h7e : 
				     (InvRows_to_InvSbox[95:88] == 8'hf4) ? 8'hba : 
				     (InvRows_to_InvSbox[95:88] == 8'hf5) ? 8'h77 : 
				     (InvRows_to_InvSbox[95:88] == 8'hf6) ? 8'hd6 : 
				     (InvRows_to_InvSbox[95:88] == 8'hf7) ? 8'h26 : 
				     (InvRows_to_InvSbox[95:88] == 8'hf8) ? 8'he1 : 
				     (InvRows_to_InvSbox[95:88] == 8'hf9) ? 8'h69 : 
				     (InvRows_to_InvSbox[95:88] == 8'hfa) ? 8'h14 : 
				     (InvRows_to_InvSbox[95:88] == 8'hfb) ? 8'h63 : 
				     (InvRows_to_InvSbox[95:88] == 8'hfc) ? 8'h55 : 
				     (InvRows_to_InvSbox[95:88] == 8'hfd) ? 8'h21 : 
				     (InvRows_to_InvSbox[95:88] == 8'hfe) ? 8'h0c : 
				     (InvRows_to_InvSbox[95:88] == 8'hff) ? 8'h7d : 8'hxx;
					  
					  assign InvSBox_out[103:96] = (InvRows_to_InvSbox[103:96] == 8'h00) ? 8'h52 :	// row 0
				     (InvRows_to_InvSbox[103:96] == 8'h01) ? 8'h09 : 
				     (InvRows_to_InvSbox[103:96] == 8'h02) ? 8'h6a : 
				     (InvRows_to_InvSbox[103:96] == 8'h03) ? 8'hd5 : 
				     (InvRows_to_InvSbox[103:96] == 8'h04) ? 8'h30 : 
				     (InvRows_to_InvSbox[103:96] == 8'h05) ? 8'h36 : 
				     (InvRows_to_InvSbox[103:96] == 8'h06) ? 8'ha5 : 
				     (InvRows_to_InvSbox[103:96] == 8'h07) ? 8'h38 : 
				     (InvRows_to_InvSbox[103:96] == 8'h08) ? 8'hbf : 
				     (InvRows_to_InvSbox[103:96] == 8'h09) ? 8'h40 : 
				     (InvRows_to_InvSbox[103:96] == 8'h0a) ? 8'ha3 : 
				     (InvRows_to_InvSbox[103:96] == 8'h0b) ? 8'h9e : 
				     (InvRows_to_InvSbox[103:96] == 8'h0c) ? 8'h81 : 
				     (InvRows_to_InvSbox[103:96] == 8'h0d) ? 8'hf3 : 
				     (InvRows_to_InvSbox[103:96] == 8'h0e) ? 8'hd7 : 
				     (InvRows_to_InvSbox[103:96] == 8'h0f) ? 8'hfb : 

				     (InvRows_to_InvSbox[103:96] == 8'h10) ? 8'h7c :	// row 1
				     (InvRows_to_InvSbox[103:96] == 8'h11) ? 8'he3 : 
				     (InvRows_to_InvSbox[103:96] == 8'h12) ? 8'h39 : 
				     (InvRows_to_InvSbox[103:96] == 8'h13) ? 8'h82 : 
				     (InvRows_to_InvSbox[103:96] == 8'h14) ? 8'h9b : 
				     (InvRows_to_InvSbox[103:96] == 8'h15) ? 8'h2f : 
				     (InvRows_to_InvSbox[103:96] == 8'h16) ? 8'hff : 
				     (InvRows_to_InvSbox[103:96] == 8'h17) ? 8'h87 : 
				     (InvRows_to_InvSbox[103:96] == 8'h18) ? 8'h34 : 
				     (InvRows_to_InvSbox[103:96] == 8'h19) ? 8'h8e : 
				     (InvRows_to_InvSbox[103:96] == 8'h1a) ? 8'h43 : 
				     (InvRows_to_InvSbox[103:96] == 8'h1b) ? 8'h44 : 
				     (InvRows_to_InvSbox[103:96] == 8'h1c) ? 8'hc4 : 
				     (InvRows_to_InvSbox[103:96] == 8'h1d) ? 8'hde : 
				     (InvRows_to_InvSbox[103:96] == 8'h1e) ? 8'he9 : 
				     (InvRows_to_InvSbox[103:96] == 8'h1f) ? 8'hcb : 

				     (InvRows_to_InvSbox[103:96] == 8'h20) ? 8'h54 :	// row 2
				     (InvRows_to_InvSbox[103:96] == 8'h21) ? 8'h7b : 
				     (InvRows_to_InvSbox[103:96] == 8'h22) ? 8'h94 : 
				     (InvRows_to_InvSbox[103:96] == 8'h23) ? 8'h32 : 
				     (InvRows_to_InvSbox[103:96] == 8'h24) ? 8'ha6 : 
				     (InvRows_to_InvSbox[103:96] == 8'h25) ? 8'hc2 : 
				     (InvRows_to_InvSbox[103:96] == 8'h26) ? 8'h23 : 
				     (InvRows_to_InvSbox[103:96] == 8'h27) ? 8'h3d : 
				     (InvRows_to_InvSbox[103:96] == 8'h28) ? 8'hee : 
				     (InvRows_to_InvSbox[103:96] == 8'h29) ? 8'h4c : 
				     (InvRows_to_InvSbox[103:96] == 8'h2a) ? 8'h95 : 
				     (InvRows_to_InvSbox[103:96] == 8'h2b) ? 8'h0b : 
				     (InvRows_to_InvSbox[103:96] == 8'h2c) ? 8'h42 : 
				     (InvRows_to_InvSbox[103:96] == 8'h2d) ? 8'hfa : 
				     (InvRows_to_InvSbox[103:96] == 8'h2e) ? 8'hc3 : 
				     (InvRows_to_InvSbox[103:96] == 8'h2f) ? 8'h4e :

				     (InvRows_to_InvSbox[103:96] == 8'h30) ? 8'h08 : 	// row 3
				     (InvRows_to_InvSbox[103:96] == 8'h31) ? 8'h2e : 
				     (InvRows_to_InvSbox[103:96] == 8'h32) ? 8'ha1 : 
				     (InvRows_to_InvSbox[103:96] == 8'h33) ? 8'h66 : 
				     (InvRows_to_InvSbox[103:96] == 8'h34) ? 8'h28 : 
				     (InvRows_to_InvSbox[103:96] == 8'h35) ? 8'hd9 : 
				     (InvRows_to_InvSbox[103:96] == 8'h36) ? 8'h24 : 
				     (InvRows_to_InvSbox[103:96] == 8'h37) ? 8'hb2 : 
				     (InvRows_to_InvSbox[103:96] == 8'h38) ? 8'h76 : 
				     (InvRows_to_InvSbox[103:96] == 8'h39) ? 8'h5b : 
				     (InvRows_to_InvSbox[103:96] == 8'h3a) ? 8'ha2 : 
				     (InvRows_to_InvSbox[103:96] == 8'h3b) ? 8'h49 : 
				     (InvRows_to_InvSbox[103:96] == 8'h3c) ? 8'h6d : 
				     (InvRows_to_InvSbox[103:96] == 8'h3d) ? 8'h8b : 
				     (InvRows_to_InvSbox[103:96] == 8'h3e) ? 8'hd1 : 
				     (InvRows_to_InvSbox[103:96] == 8'h3f) ? 8'h25 : 

				     (InvRows_to_InvSbox[103:96] == 8'h40) ? 8'h72 :	// row 4
				     (InvRows_to_InvSbox[103:96] == 8'h41) ? 8'hf8 : 
				     (InvRows_to_InvSbox[103:96] == 8'h42) ? 8'hf6 : 
				     (InvRows_to_InvSbox[103:96] == 8'h43) ? 8'h64 : 
				     (InvRows_to_InvSbox[103:96] == 8'h44) ? 8'h86 : 
				     (InvRows_to_InvSbox[103:96] == 8'h45) ? 8'h68 : 
				     (InvRows_to_InvSbox[103:96] == 8'h46) ? 8'h98 : 
				     (InvRows_to_InvSbox[103:96] == 8'h47) ? 8'h16 : 
				     (InvRows_to_InvSbox[103:96] == 8'h48) ? 8'hd4 : 
				     (InvRows_to_InvSbox[103:96] == 8'h49) ? 8'ha4 : 
				     (InvRows_to_InvSbox[103:96] == 8'h4a) ? 8'h5c : 
				     (InvRows_to_InvSbox[103:96] == 8'h4b) ? 8'hcc : 
				     (InvRows_to_InvSbox[103:96] == 8'h4c) ? 8'h5d : 
				     (InvRows_to_InvSbox[103:96] == 8'h4d) ? 8'h65 : 
				     (InvRows_to_InvSbox[103:96] == 8'h4e) ? 8'hb6 : 
				     (InvRows_to_InvSbox[103:96] == 8'h4f) ? 8'h92 : 

				     (InvRows_to_InvSbox[103:96] == 8'h50) ? 8'h6c :	// row 5
				     (InvRows_to_InvSbox[103:96] == 8'h51) ? 8'h70 : 
				     (InvRows_to_InvSbox[103:96] == 8'h52) ? 8'h48 : 
				     (InvRows_to_InvSbox[103:96] == 8'h53) ? 8'h50 : 
				     (InvRows_to_InvSbox[103:96] == 8'h54) ? 8'hfd : 
				     (InvRows_to_InvSbox[103:96] == 8'h55) ? 8'hed : 
				     (InvRows_to_InvSbox[103:96] == 8'h56) ? 8'hb9 : 
				     (InvRows_to_InvSbox[103:96] == 8'h57) ? 8'hda : 
				     (InvRows_to_InvSbox[103:96] == 8'h58) ? 8'h5e : 
				     (InvRows_to_InvSbox[103:96] == 8'h59) ? 8'h15 : 
				     (InvRows_to_InvSbox[103:96] == 8'h5a) ? 8'h46 : 
				     (InvRows_to_InvSbox[103:96] == 8'h5b) ? 8'h57 : 
				     (InvRows_to_InvSbox[103:96] == 8'h5c) ? 8'ha7 : 
				     (InvRows_to_InvSbox[103:96] == 8'h5d) ? 8'h8d : 
				     (InvRows_to_InvSbox[103:96] == 8'h5e) ? 8'h9d : 
				     (InvRows_to_InvSbox[103:96] == 8'h5f) ? 8'h84 : 

				     (InvRows_to_InvSbox[103:96] == 8'h60) ? 8'h90 :	// row 6
				     (InvRows_to_InvSbox[103:96] == 8'h61) ? 8'hd8 : 
				     (InvRows_to_InvSbox[103:96] == 8'h62) ? 8'hab : 
				     (InvRows_to_InvSbox[103:96] == 8'h63) ? 8'h00 : 
				     (InvRows_to_InvSbox[103:96] == 8'h64) ? 8'h8c : 
				     (InvRows_to_InvSbox[103:96] == 8'h65) ? 8'hbc : 
				     (InvRows_to_InvSbox[103:96] == 8'h66) ? 8'hd3 : 
				     (InvRows_to_InvSbox[103:96] == 8'h67) ? 8'h0a : 
				     (InvRows_to_InvSbox[103:96] == 8'h68) ? 8'hf7 : 
				     (InvRows_to_InvSbox[103:96] == 8'h69) ? 8'he4 : 
				     (InvRows_to_InvSbox[103:96] == 8'h6a) ? 8'h58 : 
				     (InvRows_to_InvSbox[103:96] == 8'h6b) ? 8'h05 : 
				     (InvRows_to_InvSbox[103:96] == 8'h6c) ? 8'hb8 : 
				     (InvRows_to_InvSbox[103:96] == 8'h6d) ? 8'hb3 : 
				     (InvRows_to_InvSbox[103:96] == 8'h6e) ? 8'h45 : 
				     (InvRows_to_InvSbox[103:96] == 8'h6f) ? 8'h06 : 

				     (InvRows_to_InvSbox[103:96] == 8'h70) ? 8'hd0 :	// row 7
				     (InvRows_to_InvSbox[103:96] == 8'h71) ? 8'h2c : 
				     (InvRows_to_InvSbox[103:96] == 8'h72) ? 8'h1e : 
				     (InvRows_to_InvSbox[103:96] == 8'h73) ? 8'h8f : 
				     (InvRows_to_InvSbox[103:96] == 8'h74) ? 8'hca : 
				     (InvRows_to_InvSbox[103:96] == 8'h75) ? 8'h3f : 
				     (InvRows_to_InvSbox[103:96] == 8'h76) ? 8'h0f : 
				     (InvRows_to_InvSbox[103:96] == 8'h77) ? 8'h02 : 
				     (InvRows_to_InvSbox[103:96] == 8'h78) ? 8'hc1 : 
				     (InvRows_to_InvSbox[103:96] == 8'h79) ? 8'haf : 
				     (InvRows_to_InvSbox[103:96] == 8'h7a) ? 8'hbd : 
				     (InvRows_to_InvSbox[103:96] == 8'h7b) ? 8'h03 : 
				     (InvRows_to_InvSbox[103:96] == 8'h7c) ? 8'h01 : 
				     (InvRows_to_InvSbox[103:96] == 8'h7d) ? 8'h13 : 
				     (InvRows_to_InvSbox[103:96] == 8'h7e) ? 8'h8a : 
				     (InvRows_to_InvSbox[103:96] == 8'h7f) ? 8'h6b :
 
				     (InvRows_to_InvSbox[103:96] == 8'h80) ? 8'h3a :	// row 8
				     (InvRows_to_InvSbox[103:96] == 8'h81) ? 8'h91 : 
				     (InvRows_to_InvSbox[103:96] == 8'h82) ? 8'h11 : 
				     (InvRows_to_InvSbox[103:96] == 8'h83) ? 8'h41 : 
				     (InvRows_to_InvSbox[103:96] == 8'h84) ? 8'h4f : 
				     (InvRows_to_InvSbox[103:96] == 8'h85) ? 8'h67 : 
				     (InvRows_to_InvSbox[103:96] == 8'h86) ? 8'hdc : 
				     (InvRows_to_InvSbox[103:96] == 8'h87) ? 8'hea : 
				     (InvRows_to_InvSbox[103:96] == 8'h88) ? 8'h97 : 
				     (InvRows_to_InvSbox[103:96] == 8'h89) ? 8'hf2 : 
				     (InvRows_to_InvSbox[103:96] == 8'h8a) ? 8'hcf : 
				     (InvRows_to_InvSbox[103:96] == 8'h8b) ? 8'hce : 
				     (InvRows_to_InvSbox[103:96] == 8'h8c) ? 8'hf0 : 
				     (InvRows_to_InvSbox[103:96] == 8'h8d) ? 8'hb4 : 
				     (InvRows_to_InvSbox[103:96] == 8'h8e) ? 8'he6 : 
				     (InvRows_to_InvSbox[103:96] == 8'h8f) ? 8'h73 :

				     (InvRows_to_InvSbox[103:96] == 8'h90) ? 8'h96 :	// row 9
				     (InvRows_to_InvSbox[103:96] == 8'h91) ? 8'hac : 
				     (InvRows_to_InvSbox[103:96] == 8'h92) ? 8'h74 : 
				     (InvRows_to_InvSbox[103:96] == 8'h93) ? 8'h22 : 
				     (InvRows_to_InvSbox[103:96] == 8'h94) ? 8'he7 : 
				     (InvRows_to_InvSbox[103:96] == 8'h95) ? 8'had : 
				     (InvRows_to_InvSbox[103:96] == 8'h96) ? 8'h35 : 
				     (InvRows_to_InvSbox[103:96] == 8'h97) ? 8'h85 : 
				     (InvRows_to_InvSbox[103:96] == 8'h98) ? 8'he2 : 
				     (InvRows_to_InvSbox[103:96] == 8'h99) ? 8'hf9 : 
				     (InvRows_to_InvSbox[103:96] == 8'h9a) ? 8'h37 : 
				     (InvRows_to_InvSbox[103:96] == 8'h9b) ? 8'he8 : 
				     (InvRows_to_InvSbox[103:96] == 8'h9c) ? 8'h1c : 
				     (InvRows_to_InvSbox[103:96] == 8'h9d) ? 8'h75 : 
				     (InvRows_to_InvSbox[103:96] == 8'h9e) ? 8'hdf : 
				     (InvRows_to_InvSbox[103:96] == 8'h9f) ? 8'h6e : 

				     (InvRows_to_InvSbox[103:96] == 8'ha0) ? 8'h47 :	// row a
				     (InvRows_to_InvSbox[103:96] == 8'ha1) ? 8'hf1 : 
				     (InvRows_to_InvSbox[103:96] == 8'ha2) ? 8'h1a : 
				     (InvRows_to_InvSbox[103:96] == 8'ha3) ? 8'h71 : 
				     (InvRows_to_InvSbox[103:96] == 8'ha4) ? 8'h1d : 
				     (InvRows_to_InvSbox[103:96] == 8'ha5) ? 8'h29 : 
				     (InvRows_to_InvSbox[103:96] == 8'ha6) ? 8'hc5 : 
				     (InvRows_to_InvSbox[103:96] == 8'ha7) ? 8'h89 : 
				     (InvRows_to_InvSbox[103:96] == 8'ha8) ? 8'h6f : 
				     (InvRows_to_InvSbox[103:96] == 8'ha9) ? 8'hb7 : 
				     (InvRows_to_InvSbox[103:96] == 8'haa) ? 8'h62 : 
				     (InvRows_to_InvSbox[103:96] == 8'hab) ? 8'h0e : 
				     (InvRows_to_InvSbox[103:96] == 8'hac) ? 8'haa : 
				     (InvRows_to_InvSbox[103:96] == 8'had) ? 8'h18 : 
				     (InvRows_to_InvSbox[103:96] == 8'hae) ? 8'hbe : 
				     (InvRows_to_InvSbox[103:96] == 8'haf) ? 8'h1b : 

				     (InvRows_to_InvSbox[103:96] == 8'hb0) ? 8'hfc :	// row b
				     (InvRows_to_InvSbox[103:96] == 8'hb1) ? 8'h56 : 
				     (InvRows_to_InvSbox[103:96] == 8'hb2) ? 8'h3e : 
				     (InvRows_to_InvSbox[103:96] == 8'hb3) ? 8'h4b : 
				     (InvRows_to_InvSbox[103:96] == 8'hb4) ? 8'hc6 : 
				     (InvRows_to_InvSbox[103:96] == 8'hb5) ? 8'hd2 : 
				     (InvRows_to_InvSbox[103:96] == 8'hb6) ? 8'h79 : 
				     (InvRows_to_InvSbox[103:96] == 8'hb7) ? 8'h20 : 
				     (InvRows_to_InvSbox[103:96] == 8'hb8) ? 8'h9a : 
				     (InvRows_to_InvSbox[103:96] == 8'hb9) ? 8'hdb : 
				     (InvRows_to_InvSbox[103:96] == 8'hba) ? 8'hc0 : 
				     (InvRows_to_InvSbox[103:96] == 8'hbb) ? 8'hfe : 
				     (InvRows_to_InvSbox[103:96] == 8'hbc) ? 8'h78 : 
				     (InvRows_to_InvSbox[103:96] == 8'hbd) ? 8'hcd : 
				     (InvRows_to_InvSbox[103:96] == 8'hbe) ? 8'h5a : 
				     (InvRows_to_InvSbox[103:96] == 8'hbf) ? 8'hf4 : 

				     (InvRows_to_InvSbox[103:96] == 8'hc0) ? 8'h1f :	// row c
				     (InvRows_to_InvSbox[103:96] == 8'hc1) ? 8'hdd : 
				     (InvRows_to_InvSbox[103:96] == 8'hc2) ? 8'ha8 : 
				     (InvRows_to_InvSbox[103:96] == 8'hc3) ? 8'h33 : 
				     (InvRows_to_InvSbox[103:96] == 8'hc4) ? 8'h88 : 
				     (InvRows_to_InvSbox[103:96] == 8'hc5) ? 8'h07 : 
				     (InvRows_to_InvSbox[103:96] == 8'hc6) ? 8'hc7 : 
				     (InvRows_to_InvSbox[103:96] == 8'hc7) ? 8'h31 : 
				     (InvRows_to_InvSbox[103:96] == 8'hc8) ? 8'hb1 : 
				     (InvRows_to_InvSbox[103:96] == 8'hc9) ? 8'h12 : 
				     (InvRows_to_InvSbox[103:96] == 8'hca) ? 8'h10 : 
				     (InvRows_to_InvSbox[103:96] == 8'hcb) ? 8'h59 : 
				     (InvRows_to_InvSbox[103:96] == 8'hcc) ? 8'h27 : 
				     (InvRows_to_InvSbox[103:96] == 8'hcd) ? 8'h80 : 
				     (InvRows_to_InvSbox[103:96] == 8'hce) ? 8'hec : 
				     (InvRows_to_InvSbox[103:96] == 8'hcf) ? 8'h5f : 

				     (InvRows_to_InvSbox[103:96] == 8'hd0) ? 8'h60 :	// row d
				     (InvRows_to_InvSbox[103:96] == 8'hd1) ? 8'h51 : 
				     (InvRows_to_InvSbox[103:96] == 8'hd2) ? 8'h7f : 
				     (InvRows_to_InvSbox[103:96] == 8'hd3) ? 8'ha9 : 
				     (InvRows_to_InvSbox[103:96] == 8'hd4) ? 8'h19 : 
				     (InvRows_to_InvSbox[103:96] == 8'hd5) ? 8'hb5 : 
				     (InvRows_to_InvSbox[103:96] == 8'hd6) ? 8'h4a : 
				     (InvRows_to_InvSbox[103:96] == 8'hd7) ? 8'h0d : 
				     (InvRows_to_InvSbox[103:96] == 8'hd8) ? 8'h2d : 
				     (InvRows_to_InvSbox[103:96] == 8'hd9) ? 8'he5 : 
				     (InvRows_to_InvSbox[103:96] == 8'hda) ? 8'h7a : 
				     (InvRows_to_InvSbox[103:96] == 8'hdb) ? 8'h9f : 
				     (InvRows_to_InvSbox[103:96] == 8'hdc) ? 8'h93 : 
				     (InvRows_to_InvSbox[103:96] == 8'hdd) ? 8'hc9 : 
				     (InvRows_to_InvSbox[103:96] == 8'hde) ? 8'h9c : 
				     (InvRows_to_InvSbox[103:96] == 8'hdf) ? 8'hef : 

				     (InvRows_to_InvSbox[103:96] == 8'he0) ? 8'ha0 :	// row e
				     (InvRows_to_InvSbox[103:96] == 8'he1) ? 8'he0 : 
				     (InvRows_to_InvSbox[103:96] == 8'he2) ? 8'h3b : 
				     (InvRows_to_InvSbox[103:96] == 8'he3) ? 8'h4d : 
				     (InvRows_to_InvSbox[103:96] == 8'he4) ? 8'hae : 
				     (InvRows_to_InvSbox[103:96] == 8'he5) ? 8'h2a : 
				     (InvRows_to_InvSbox[103:96] == 8'he6) ? 8'hf5 : 
				     (InvRows_to_InvSbox[103:96] == 8'he7) ? 8'hb0 : 
				     (InvRows_to_InvSbox[103:96] == 8'he8) ? 8'hc8 : 
				     (InvRows_to_InvSbox[103:96] == 8'he9) ? 8'heb : 
				     (InvRows_to_InvSbox[103:96] == 8'hea) ? 8'hbb : 
				     (InvRows_to_InvSbox[103:96] == 8'heb) ? 8'h3c : 
				     (InvRows_to_InvSbox[103:96] == 8'hec) ? 8'h83 : 
				     (InvRows_to_InvSbox[103:96] == 8'hed) ? 8'h53 : 
				     (InvRows_to_InvSbox[103:96] == 8'hee) ? 8'h99 : 
				     (InvRows_to_InvSbox[103:96] == 8'hef) ? 8'h61 :

				     (InvRows_to_InvSbox[103:96] == 8'hf0) ? 8'h17 :	// row f
				     (InvRows_to_InvSbox[103:96] == 8'hf1) ? 8'h2b : 
				     (InvRows_to_InvSbox[103:96] == 8'hf2) ? 8'h04 : 
				     (InvRows_to_InvSbox[103:96] == 8'hf3) ? 8'h7e : 
				     (InvRows_to_InvSbox[103:96] == 8'hf4) ? 8'hba : 
				     (InvRows_to_InvSbox[103:96] == 8'hf5) ? 8'h77 : 
				     (InvRows_to_InvSbox[103:96] == 8'hf6) ? 8'hd6 : 
				     (InvRows_to_InvSbox[103:96] == 8'hf7) ? 8'h26 : 
				     (InvRows_to_InvSbox[103:96] == 8'hf8) ? 8'he1 : 
				     (InvRows_to_InvSbox[103:96] == 8'hf9) ? 8'h69 : 
				     (InvRows_to_InvSbox[103:96] == 8'hfa) ? 8'h14 : 
				     (InvRows_to_InvSbox[103:96] == 8'hfb) ? 8'h63 : 
				     (InvRows_to_InvSbox[103:96] == 8'hfc) ? 8'h55 : 
				     (InvRows_to_InvSbox[103:96] == 8'hfd) ? 8'h21 : 
				     (InvRows_to_InvSbox[103:96] == 8'hfe) ? 8'h0c : 
				     (InvRows_to_InvSbox[103:96] == 8'hff) ? 8'h7d : 8'hxx;
					  
					  assign InvSBox_out[111:104] = (InvRows_to_InvSbox[111:104] == 8'h00) ? 8'h52 :	// row 0
				     (InvRows_to_InvSbox[111:104] == 8'h01) ? 8'h09 : 
				     (InvRows_to_InvSbox[111:104] == 8'h02) ? 8'h6a : 
				     (InvRows_to_InvSbox[111:104] == 8'h03) ? 8'hd5 : 
				     (InvRows_to_InvSbox[111:104] == 8'h04) ? 8'h30 : 
				     (InvRows_to_InvSbox[111:104] == 8'h05) ? 8'h36 : 
				     (InvRows_to_InvSbox[111:104] == 8'h06) ? 8'ha5 : 
				     (InvRows_to_InvSbox[111:104] == 8'h07) ? 8'h38 : 
				     (InvRows_to_InvSbox[111:104] == 8'h08) ? 8'hbf : 
				     (InvRows_to_InvSbox[111:104] == 8'h09) ? 8'h40 : 
				     (InvRows_to_InvSbox[111:104] == 8'h0a) ? 8'ha3 : 
				     (InvRows_to_InvSbox[111:104] == 8'h0b) ? 8'h9e : 
				     (InvRows_to_InvSbox[111:104] == 8'h0c) ? 8'h81 : 
				     (InvRows_to_InvSbox[111:104] == 8'h0d) ? 8'hf3 : 
				     (InvRows_to_InvSbox[111:104] == 8'h0e) ? 8'hd7 : 
				     (InvRows_to_InvSbox[111:104] == 8'h0f) ? 8'hfb : 

				     (InvRows_to_InvSbox[111:104] == 8'h10) ? 8'h7c :	// row 1
				     (InvRows_to_InvSbox[111:104] == 8'h11) ? 8'he3 : 
				     (InvRows_to_InvSbox[111:104] == 8'h12) ? 8'h39 : 
				     (InvRows_to_InvSbox[111:104] == 8'h13) ? 8'h82 : 
				     (InvRows_to_InvSbox[111:104] == 8'h14) ? 8'h9b : 
				     (InvRows_to_InvSbox[111:104] == 8'h15) ? 8'h2f : 
				     (InvRows_to_InvSbox[111:104] == 8'h16) ? 8'hff : 
				     (InvRows_to_InvSbox[111:104] == 8'h17) ? 8'h87 : 
				     (InvRows_to_InvSbox[111:104] == 8'h18) ? 8'h34 : 
				     (InvRows_to_InvSbox[111:104] == 8'h19) ? 8'h8e : 
				     (InvRows_to_InvSbox[111:104] == 8'h1a) ? 8'h43 : 
				     (InvRows_to_InvSbox[111:104] == 8'h1b) ? 8'h44 : 
				     (InvRows_to_InvSbox[111:104] == 8'h1c) ? 8'hc4 : 
				     (InvRows_to_InvSbox[111:104] == 8'h1d) ? 8'hde : 
				     (InvRows_to_InvSbox[111:104] == 8'h1e) ? 8'he9 : 
				     (InvRows_to_InvSbox[111:104] == 8'h1f) ? 8'hcb : 

				     (InvRows_to_InvSbox[111:104] == 8'h20) ? 8'h54 :	// row 2
				     (InvRows_to_InvSbox[111:104] == 8'h21) ? 8'h7b : 
				     (InvRows_to_InvSbox[111:104] == 8'h22) ? 8'h94 : 
				     (InvRows_to_InvSbox[111:104] == 8'h23) ? 8'h32 : 
				     (InvRows_to_InvSbox[111:104] == 8'h24) ? 8'ha6 : 
				     (InvRows_to_InvSbox[111:104] == 8'h25) ? 8'hc2 : 
				     (InvRows_to_InvSbox[111:104] == 8'h26) ? 8'h23 : 
				     (InvRows_to_InvSbox[111:104] == 8'h27) ? 8'h3d : 
				     (InvRows_to_InvSbox[111:104] == 8'h28) ? 8'hee : 
				     (InvRows_to_InvSbox[111:104] == 8'h29) ? 8'h4c : 
				     (InvRows_to_InvSbox[111:104] == 8'h2a) ? 8'h95 : 
				     (InvRows_to_InvSbox[111:104] == 8'h2b) ? 8'h0b : 
				     (InvRows_to_InvSbox[111:104] == 8'h2c) ? 8'h42 : 
				     (InvRows_to_InvSbox[111:104] == 8'h2d) ? 8'hfa : 
				     (InvRows_to_InvSbox[111:104] == 8'h2e) ? 8'hc3 : 
				     (InvRows_to_InvSbox[111:104] == 8'h2f) ? 8'h4e :

				     (InvRows_to_InvSbox[111:104] == 8'h30) ? 8'h08 : 	// row 3
				     (InvRows_to_InvSbox[111:104] == 8'h31) ? 8'h2e : 
				     (InvRows_to_InvSbox[111:104] == 8'h32) ? 8'ha1 : 
				     (InvRows_to_InvSbox[111:104] == 8'h33) ? 8'h66 : 
				     (InvRows_to_InvSbox[111:104] == 8'h34) ? 8'h28 : 
				     (InvRows_to_InvSbox[111:104] == 8'h35) ? 8'hd9 : 
				     (InvRows_to_InvSbox[111:104] == 8'h36) ? 8'h24 : 
				     (InvRows_to_InvSbox[111:104] == 8'h37) ? 8'hb2 : 
				     (InvRows_to_InvSbox[111:104] == 8'h38) ? 8'h76 : 
				     (InvRows_to_InvSbox[111:104] == 8'h39) ? 8'h5b : 
				     (InvRows_to_InvSbox[111:104] == 8'h3a) ? 8'ha2 : 
				     (InvRows_to_InvSbox[111:104] == 8'h3b) ? 8'h49 : 
				     (InvRows_to_InvSbox[111:104] == 8'h3c) ? 8'h6d : 
				     (InvRows_to_InvSbox[111:104] == 8'h3d) ? 8'h8b : 
				     (InvRows_to_InvSbox[111:104] == 8'h3e) ? 8'hd1 : 
				     (InvRows_to_InvSbox[111:104] == 8'h3f) ? 8'h25 : 

				     (InvRows_to_InvSbox[111:104] == 8'h40) ? 8'h72 :	// row 4
				     (InvRows_to_InvSbox[111:104] == 8'h41) ? 8'hf8 : 
				     (InvRows_to_InvSbox[111:104] == 8'h42) ? 8'hf6 : 
				     (InvRows_to_InvSbox[111:104] == 8'h43) ? 8'h64 : 
				     (InvRows_to_InvSbox[111:104] == 8'h44) ? 8'h86 : 
				     (InvRows_to_InvSbox[111:104] == 8'h45) ? 8'h68 : 
				     (InvRows_to_InvSbox[111:104] == 8'h46) ? 8'h98 : 
				     (InvRows_to_InvSbox[111:104] == 8'h47) ? 8'h16 : 
				     (InvRows_to_InvSbox[111:104] == 8'h48) ? 8'hd4 : 
				     (InvRows_to_InvSbox[111:104] == 8'h49) ? 8'ha4 : 
				     (InvRows_to_InvSbox[111:104] == 8'h4a) ? 8'h5c : 
				     (InvRows_to_InvSbox[111:104] == 8'h4b) ? 8'hcc : 
				     (InvRows_to_InvSbox[111:104] == 8'h4c) ? 8'h5d : 
				     (InvRows_to_InvSbox[111:104] == 8'h4d) ? 8'h65 : 
				     (InvRows_to_InvSbox[111:104] == 8'h4e) ? 8'hb6 : 
				     (InvRows_to_InvSbox[111:104] == 8'h4f) ? 8'h92 : 

				     (InvRows_to_InvSbox[111:104] == 8'h50) ? 8'h6c :	// row 5
				     (InvRows_to_InvSbox[111:104] == 8'h51) ? 8'h70 : 
				     (InvRows_to_InvSbox[111:104] == 8'h52) ? 8'h48 : 
				     (InvRows_to_InvSbox[111:104] == 8'h53) ? 8'h50 : 
				     (InvRows_to_InvSbox[111:104] == 8'h54) ? 8'hfd : 
				     (InvRows_to_InvSbox[111:104] == 8'h55) ? 8'hed : 
				     (InvRows_to_InvSbox[111:104] == 8'h56) ? 8'hb9 : 
				     (InvRows_to_InvSbox[111:104] == 8'h57) ? 8'hda : 
				     (InvRows_to_InvSbox[111:104] == 8'h58) ? 8'h5e : 
				     (InvRows_to_InvSbox[111:104] == 8'h59) ? 8'h15 : 
				     (InvRows_to_InvSbox[111:104] == 8'h5a) ? 8'h46 : 
				     (InvRows_to_InvSbox[111:104] == 8'h5b) ? 8'h57 : 
				     (InvRows_to_InvSbox[111:104] == 8'h5c) ? 8'ha7 : 
				     (InvRows_to_InvSbox[111:104] == 8'h5d) ? 8'h8d : 
				     (InvRows_to_InvSbox[111:104] == 8'h5e) ? 8'h9d : 
				     (InvRows_to_InvSbox[111:104] == 8'h5f) ? 8'h84 : 

				     (InvRows_to_InvSbox[111:104] == 8'h60) ? 8'h90 :	// row 6
				     (InvRows_to_InvSbox[111:104] == 8'h61) ? 8'hd8 : 
				     (InvRows_to_InvSbox[111:104] == 8'h62) ? 8'hab : 
				     (InvRows_to_InvSbox[111:104] == 8'h63) ? 8'h00 : 
				     (InvRows_to_InvSbox[111:104] == 8'h64) ? 8'h8c : 
				     (InvRows_to_InvSbox[111:104] == 8'h65) ? 8'hbc : 
				     (InvRows_to_InvSbox[111:104] == 8'h66) ? 8'hd3 : 
				     (InvRows_to_InvSbox[111:104] == 8'h67) ? 8'h0a : 
				     (InvRows_to_InvSbox[111:104] == 8'h68) ? 8'hf7 : 
				     (InvRows_to_InvSbox[111:104] == 8'h69) ? 8'he4 : 
				     (InvRows_to_InvSbox[111:104] == 8'h6a) ? 8'h58 : 
				     (InvRows_to_InvSbox[111:104] == 8'h6b) ? 8'h05 : 
				     (InvRows_to_InvSbox[111:104] == 8'h6c) ? 8'hb8 : 
				     (InvRows_to_InvSbox[111:104] == 8'h6d) ? 8'hb3 : 
				     (InvRows_to_InvSbox[111:104] == 8'h6e) ? 8'h45 : 
				     (InvRows_to_InvSbox[111:104] == 8'h6f) ? 8'h06 : 

				     (InvRows_to_InvSbox[111:104] == 8'h70) ? 8'hd0 :	// row 7
				     (InvRows_to_InvSbox[111:104] == 8'h71) ? 8'h2c : 
				     (InvRows_to_InvSbox[111:104] == 8'h72) ? 8'h1e : 
				     (InvRows_to_InvSbox[111:104] == 8'h73) ? 8'h8f : 
				     (InvRows_to_InvSbox[111:104] == 8'h74) ? 8'hca : 
				     (InvRows_to_InvSbox[111:104] == 8'h75) ? 8'h3f : 
				     (InvRows_to_InvSbox[111:104] == 8'h76) ? 8'h0f : 
				     (InvRows_to_InvSbox[111:104] == 8'h77) ? 8'h02 : 
				     (InvRows_to_InvSbox[111:104] == 8'h78) ? 8'hc1 : 
				     (InvRows_to_InvSbox[111:104] == 8'h79) ? 8'haf : 
				     (InvRows_to_InvSbox[111:104] == 8'h7a) ? 8'hbd : 
				     (InvRows_to_InvSbox[111:104] == 8'h7b) ? 8'h03 : 
				     (InvRows_to_InvSbox[111:104] == 8'h7c) ? 8'h01 : 
				     (InvRows_to_InvSbox[111:104] == 8'h7d) ? 8'h13 : 
				     (InvRows_to_InvSbox[111:104] == 8'h7e) ? 8'h8a : 
				     (InvRows_to_InvSbox[111:104] == 8'h7f) ? 8'h6b :
 
				     (InvRows_to_InvSbox[111:104] == 8'h80) ? 8'h3a :	// row 8
				     (InvRows_to_InvSbox[111:104] == 8'h81) ? 8'h91 : 
				     (InvRows_to_InvSbox[111:104] == 8'h82) ? 8'h11 : 
				     (InvRows_to_InvSbox[111:104] == 8'h83) ? 8'h41 : 
				     (InvRows_to_InvSbox[111:104] == 8'h84) ? 8'h4f : 
				     (InvRows_to_InvSbox[111:104] == 8'h85) ? 8'h67 : 
				     (InvRows_to_InvSbox[111:104] == 8'h86) ? 8'hdc : 
				     (InvRows_to_InvSbox[111:104] == 8'h87) ? 8'hea : 
				     (InvRows_to_InvSbox[111:104] == 8'h88) ? 8'h97 : 
				     (InvRows_to_InvSbox[111:104] == 8'h89) ? 8'hf2 : 
				     (InvRows_to_InvSbox[111:104] == 8'h8a) ? 8'hcf : 
				     (InvRows_to_InvSbox[111:104] == 8'h8b) ? 8'hce : 
				     (InvRows_to_InvSbox[111:104] == 8'h8c) ? 8'hf0 : 
				     (InvRows_to_InvSbox[111:104] == 8'h8d) ? 8'hb4 : 
				     (InvRows_to_InvSbox[111:104] == 8'h8e) ? 8'he6 : 
				     (InvRows_to_InvSbox[111:104] == 8'h8f) ? 8'h73 :

				     (InvRows_to_InvSbox[111:104] == 8'h90) ? 8'h96 :	// row 9
				     (InvRows_to_InvSbox[111:104] == 8'h91) ? 8'hac : 
				     (InvRows_to_InvSbox[111:104] == 8'h92) ? 8'h74 : 
				     (InvRows_to_InvSbox[111:104] == 8'h93) ? 8'h22 : 
				     (InvRows_to_InvSbox[111:104] == 8'h94) ? 8'he7 : 
				     (InvRows_to_InvSbox[111:104] == 8'h95) ? 8'had : 
				     (InvRows_to_InvSbox[111:104] == 8'h96) ? 8'h35 : 
				     (InvRows_to_InvSbox[111:104] == 8'h97) ? 8'h85 : 
				     (InvRows_to_InvSbox[111:104] == 8'h98) ? 8'he2 : 
				     (InvRows_to_InvSbox[111:104] == 8'h99) ? 8'hf9 : 
				     (InvRows_to_InvSbox[111:104] == 8'h9a) ? 8'h37 : 
				     (InvRows_to_InvSbox[111:104] == 8'h9b) ? 8'he8 : 
				     (InvRows_to_InvSbox[111:104] == 8'h9c) ? 8'h1c : 
				     (InvRows_to_InvSbox[111:104] == 8'h9d) ? 8'h75 : 
				     (InvRows_to_InvSbox[111:104] == 8'h9e) ? 8'hdf : 
				     (InvRows_to_InvSbox[111:104] == 8'h9f) ? 8'h6e : 

				     (InvRows_to_InvSbox[111:104] == 8'ha0) ? 8'h47 :	// row a
				     (InvRows_to_InvSbox[111:104] == 8'ha1) ? 8'hf1 : 
				     (InvRows_to_InvSbox[111:104] == 8'ha2) ? 8'h1a : 
				     (InvRows_to_InvSbox[111:104] == 8'ha3) ? 8'h71 : 
				     (InvRows_to_InvSbox[111:104] == 8'ha4) ? 8'h1d : 
				     (InvRows_to_InvSbox[111:104] == 8'ha5) ? 8'h29 : 
				     (InvRows_to_InvSbox[111:104] == 8'ha6) ? 8'hc5 : 
				     (InvRows_to_InvSbox[111:104] == 8'ha7) ? 8'h89 : 
				     (InvRows_to_InvSbox[111:104] == 8'ha8) ? 8'h6f : 
				     (InvRows_to_InvSbox[111:104] == 8'ha9) ? 8'hb7 : 
				     (InvRows_to_InvSbox[111:104] == 8'haa) ? 8'h62 : 
				     (InvRows_to_InvSbox[111:104] == 8'hab) ? 8'h0e : 
				     (InvRows_to_InvSbox[111:104] == 8'hac) ? 8'haa : 
				     (InvRows_to_InvSbox[111:104] == 8'had) ? 8'h18 : 
				     (InvRows_to_InvSbox[111:104] == 8'hae) ? 8'hbe : 
				     (InvRows_to_InvSbox[111:104] == 8'haf) ? 8'h1b : 

				     (InvRows_to_InvSbox[111:104] == 8'hb0) ? 8'hfc :	// row b
				     (InvRows_to_InvSbox[111:104] == 8'hb1) ? 8'h56 : 
				     (InvRows_to_InvSbox[111:104] == 8'hb2) ? 8'h3e : 
				     (InvRows_to_InvSbox[111:104] == 8'hb3) ? 8'h4b : 
				     (InvRows_to_InvSbox[111:104] == 8'hb4) ? 8'hc6 : 
				     (InvRows_to_InvSbox[111:104] == 8'hb5) ? 8'hd2 : 
				     (InvRows_to_InvSbox[111:104] == 8'hb6) ? 8'h79 : 
				     (InvRows_to_InvSbox[111:104] == 8'hb7) ? 8'h20 : 
				     (InvRows_to_InvSbox[111:104] == 8'hb8) ? 8'h9a : 
				     (InvRows_to_InvSbox[111:104] == 8'hb9) ? 8'hdb : 
				     (InvRows_to_InvSbox[111:104] == 8'hba) ? 8'hc0 : 
				     (InvRows_to_InvSbox[111:104] == 8'hbb) ? 8'hfe : 
				     (InvRows_to_InvSbox[111:104] == 8'hbc) ? 8'h78 : 
				     (InvRows_to_InvSbox[111:104] == 8'hbd) ? 8'hcd : 
				     (InvRows_to_InvSbox[111:104] == 8'hbe) ? 8'h5a : 
				     (InvRows_to_InvSbox[111:104] == 8'hbf) ? 8'hf4 : 

				     (InvRows_to_InvSbox[111:104] == 8'hc0) ? 8'h1f :	// row c
				     (InvRows_to_InvSbox[111:104] == 8'hc1) ? 8'hdd : 
				     (InvRows_to_InvSbox[111:104] == 8'hc2) ? 8'ha8 : 
				     (InvRows_to_InvSbox[111:104] == 8'hc3) ? 8'h33 : 
				     (InvRows_to_InvSbox[111:104] == 8'hc4) ? 8'h88 : 
				     (InvRows_to_InvSbox[111:104] == 8'hc5) ? 8'h07 : 
				     (InvRows_to_InvSbox[111:104] == 8'hc6) ? 8'hc7 : 
				     (InvRows_to_InvSbox[111:104] == 8'hc7) ? 8'h31 : 
				     (InvRows_to_InvSbox[111:104] == 8'hc8) ? 8'hb1 : 
				     (InvRows_to_InvSbox[111:104] == 8'hc9) ? 8'h12 : 
				     (InvRows_to_InvSbox[111:104] == 8'hca) ? 8'h10 : 
				     (InvRows_to_InvSbox[111:104] == 8'hcb) ? 8'h59 : 
				     (InvRows_to_InvSbox[111:104] == 8'hcc) ? 8'h27 : 
				     (InvRows_to_InvSbox[111:104] == 8'hcd) ? 8'h80 : 
				     (InvRows_to_InvSbox[111:104] == 8'hce) ? 8'hec : 
				     (InvRows_to_InvSbox[111:104] == 8'hcf) ? 8'h5f : 

				     (InvRows_to_InvSbox[111:104] == 8'hd0) ? 8'h60 :	// row d
				     (InvRows_to_InvSbox[111:104] == 8'hd1) ? 8'h51 : 
				     (InvRows_to_InvSbox[111:104] == 8'hd2) ? 8'h7f : 
				     (InvRows_to_InvSbox[111:104] == 8'hd3) ? 8'ha9 : 
				     (InvRows_to_InvSbox[111:104] == 8'hd4) ? 8'h19 : 
				     (InvRows_to_InvSbox[111:104] == 8'hd5) ? 8'hb5 : 
				     (InvRows_to_InvSbox[111:104] == 8'hd6) ? 8'h4a : 
				     (InvRows_to_InvSbox[111:104] == 8'hd7) ? 8'h0d : 
				     (InvRows_to_InvSbox[111:104] == 8'hd8) ? 8'h2d : 
				     (InvRows_to_InvSbox[111:104] == 8'hd9) ? 8'he5 : 
				     (InvRows_to_InvSbox[111:104] == 8'hda) ? 8'h7a : 
				     (InvRows_to_InvSbox[111:104] == 8'hdb) ? 8'h9f : 
				     (InvRows_to_InvSbox[111:104] == 8'hdc) ? 8'h93 : 
				     (InvRows_to_InvSbox[111:104] == 8'hdd) ? 8'hc9 : 
				     (InvRows_to_InvSbox[111:104] == 8'hde) ? 8'h9c : 
				     (InvRows_to_InvSbox[111:104] == 8'hdf) ? 8'hef : 

				     (InvRows_to_InvSbox[111:104] == 8'he0) ? 8'ha0 :	// row e
				     (InvRows_to_InvSbox[111:104] == 8'he1) ? 8'he0 : 
				     (InvRows_to_InvSbox[111:104] == 8'he2) ? 8'h3b : 
				     (InvRows_to_InvSbox[111:104] == 8'he3) ? 8'h4d : 
				     (InvRows_to_InvSbox[111:104] == 8'he4) ? 8'hae : 
				     (InvRows_to_InvSbox[111:104] == 8'he5) ? 8'h2a : 
				     (InvRows_to_InvSbox[111:104] == 8'he6) ? 8'hf5 : 
				     (InvRows_to_InvSbox[111:104] == 8'he7) ? 8'hb0 : 
				     (InvRows_to_InvSbox[111:104] == 8'he8) ? 8'hc8 : 
				     (InvRows_to_InvSbox[111:104] == 8'he9) ? 8'heb : 
				     (InvRows_to_InvSbox[111:104] == 8'hea) ? 8'hbb : 
				     (InvRows_to_InvSbox[111:104] == 8'heb) ? 8'h3c : 
				     (InvRows_to_InvSbox[111:104] == 8'hec) ? 8'h83 : 
				     (InvRows_to_InvSbox[111:104] == 8'hed) ? 8'h53 : 
				     (InvRows_to_InvSbox[111:104] == 8'hee) ? 8'h99 : 
				     (InvRows_to_InvSbox[111:104] == 8'hef) ? 8'h61 :

				     (InvRows_to_InvSbox[111:104] == 8'hf0) ? 8'h17 :	// row f
				     (InvRows_to_InvSbox[111:104] == 8'hf1) ? 8'h2b : 
				     (InvRows_to_InvSbox[111:104] == 8'hf2) ? 8'h04 : 
				     (InvRows_to_InvSbox[111:104] == 8'hf3) ? 8'h7e : 
				     (InvRows_to_InvSbox[111:104] == 8'hf4) ? 8'hba : 
				     (InvRows_to_InvSbox[111:104] == 8'hf5) ? 8'h77 : 
				     (InvRows_to_InvSbox[111:104] == 8'hf6) ? 8'hd6 : 
				     (InvRows_to_InvSbox[111:104] == 8'hf7) ? 8'h26 : 
				     (InvRows_to_InvSbox[111:104] == 8'hf8) ? 8'he1 : 
				     (InvRows_to_InvSbox[111:104] == 8'hf9) ? 8'h69 : 
				     (InvRows_to_InvSbox[111:104] == 8'hfa) ? 8'h14 : 
				     (InvRows_to_InvSbox[111:104] == 8'hfb) ? 8'h63 : 
				     (InvRows_to_InvSbox[111:104] == 8'hfc) ? 8'h55 : 
				     (InvRows_to_InvSbox[111:104] == 8'hfd) ? 8'h21 : 
				     (InvRows_to_InvSbox[111:104] == 8'hfe) ? 8'h0c : 
				     (InvRows_to_InvSbox[111:104] == 8'hff) ? 8'h7d : 8'hxx;
					  
					  assign InvSBox_out[119:112] = (InvRows_to_InvSbox[119:112] == 8'h00) ? 8'h52 :	// row 0
				     (InvRows_to_InvSbox[119:112] == 8'h01) ? 8'h09 : 
				     (InvRows_to_InvSbox[119:112] == 8'h02) ? 8'h6a : 
				     (InvRows_to_InvSbox[119:112] == 8'h03) ? 8'hd5 : 
				     (InvRows_to_InvSbox[119:112] == 8'h04) ? 8'h30 : 
				     (InvRows_to_InvSbox[119:112] == 8'h05) ? 8'h36 : 
				     (InvRows_to_InvSbox[119:112] == 8'h06) ? 8'ha5 : 
				     (InvRows_to_InvSbox[119:112] == 8'h07) ? 8'h38 : 
				     (InvRows_to_InvSbox[119:112] == 8'h08) ? 8'hbf : 
				     (InvRows_to_InvSbox[119:112] == 8'h09) ? 8'h40 : 
				     (InvRows_to_InvSbox[119:112] == 8'h0a) ? 8'ha3 : 
				     (InvRows_to_InvSbox[119:112] == 8'h0b) ? 8'h9e : 
				     (InvRows_to_InvSbox[119:112] == 8'h0c) ? 8'h81 : 
				     (InvRows_to_InvSbox[119:112] == 8'h0d) ? 8'hf3 : 
				     (InvRows_to_InvSbox[119:112] == 8'h0e) ? 8'hd7 : 
				     (InvRows_to_InvSbox[119:112] == 8'h0f) ? 8'hfb : 

				     (InvRows_to_InvSbox[119:112] == 8'h10) ? 8'h7c :	// row 1
				     (InvRows_to_InvSbox[119:112] == 8'h11) ? 8'he3 : 
				     (InvRows_to_InvSbox[119:112] == 8'h12) ? 8'h39 : 
				     (InvRows_to_InvSbox[119:112] == 8'h13) ? 8'h82 : 
				     (InvRows_to_InvSbox[119:112] == 8'h14) ? 8'h9b : 
				     (InvRows_to_InvSbox[119:112] == 8'h15) ? 8'h2f : 
				     (InvRows_to_InvSbox[119:112] == 8'h16) ? 8'hff : 
				     (InvRows_to_InvSbox[119:112] == 8'h17) ? 8'h87 : 
				     (InvRows_to_InvSbox[119:112] == 8'h18) ? 8'h34 : 
				     (InvRows_to_InvSbox[119:112] == 8'h19) ? 8'h8e : 
				     (InvRows_to_InvSbox[119:112] == 8'h1a) ? 8'h43 : 
				     (InvRows_to_InvSbox[119:112] == 8'h1b) ? 8'h44 : 
				     (InvRows_to_InvSbox[119:112] == 8'h1c) ? 8'hc4 : 
				     (InvRows_to_InvSbox[119:112] == 8'h1d) ? 8'hde : 
				     (InvRows_to_InvSbox[119:112] == 8'h1e) ? 8'he9 : 
				     (InvRows_to_InvSbox[119:112] == 8'h1f) ? 8'hcb : 

				     (InvRows_to_InvSbox[119:112] == 8'h20) ? 8'h54 :	// row 2
				     (InvRows_to_InvSbox[119:112] == 8'h21) ? 8'h7b : 
				     (InvRows_to_InvSbox[119:112] == 8'h22) ? 8'h94 : 
				     (InvRows_to_InvSbox[119:112] == 8'h23) ? 8'h32 : 
				     (InvRows_to_InvSbox[119:112] == 8'h24) ? 8'ha6 : 
				     (InvRows_to_InvSbox[119:112] == 8'h25) ? 8'hc2 : 
				     (InvRows_to_InvSbox[119:112] == 8'h26) ? 8'h23 : 
				     (InvRows_to_InvSbox[119:112] == 8'h27) ? 8'h3d : 
				     (InvRows_to_InvSbox[119:112] == 8'h28) ? 8'hee : 
				     (InvRows_to_InvSbox[119:112] == 8'h29) ? 8'h4c : 
				     (InvRows_to_InvSbox[119:112] == 8'h2a) ? 8'h95 : 
				     (InvRows_to_InvSbox[119:112] == 8'h2b) ? 8'h0b : 
				     (InvRows_to_InvSbox[119:112] == 8'h2c) ? 8'h42 : 
				     (InvRows_to_InvSbox[119:112] == 8'h2d) ? 8'hfa : 
				     (InvRows_to_InvSbox[119:112] == 8'h2e) ? 8'hc3 : 
				     (InvRows_to_InvSbox[119:112] == 8'h2f) ? 8'h4e :

				     (InvRows_to_InvSbox[119:112] == 8'h30) ? 8'h08 : 	// row 3
				     (InvRows_to_InvSbox[119:112] == 8'h31) ? 8'h2e : 
				     (InvRows_to_InvSbox[119:112] == 8'h32) ? 8'ha1 : 
				     (InvRows_to_InvSbox[119:112] == 8'h33) ? 8'h66 : 
				     (InvRows_to_InvSbox[119:112] == 8'h34) ? 8'h28 : 
				     (InvRows_to_InvSbox[119:112] == 8'h35) ? 8'hd9 : 
				     (InvRows_to_InvSbox[119:112] == 8'h36) ? 8'h24 : 
				     (InvRows_to_InvSbox[119:112] == 8'h37) ? 8'hb2 : 
				     (InvRows_to_InvSbox[119:112] == 8'h38) ? 8'h76 : 
				     (InvRows_to_InvSbox[119:112] == 8'h39) ? 8'h5b : 
				     (InvRows_to_InvSbox[119:112] == 8'h3a) ? 8'ha2 : 
				     (InvRows_to_InvSbox[119:112] == 8'h3b) ? 8'h49 : 
				     (InvRows_to_InvSbox[119:112] == 8'h3c) ? 8'h6d : 
				     (InvRows_to_InvSbox[119:112] == 8'h3d) ? 8'h8b : 
				     (InvRows_to_InvSbox[119:112] == 8'h3e) ? 8'hd1 : 
				     (InvRows_to_InvSbox[119:112] == 8'h3f) ? 8'h25 : 

				     (InvRows_to_InvSbox[119:112] == 8'h40) ? 8'h72 :	// row 4
				     (InvRows_to_InvSbox[119:112] == 8'h41) ? 8'hf8 : 
				     (InvRows_to_InvSbox[119:112] == 8'h42) ? 8'hf6 : 
				     (InvRows_to_InvSbox[119:112] == 8'h43) ? 8'h64 : 
				     (InvRows_to_InvSbox[119:112] == 8'h44) ? 8'h86 : 
				     (InvRows_to_InvSbox[119:112] == 8'h45) ? 8'h68 : 
				     (InvRows_to_InvSbox[119:112] == 8'h46) ? 8'h98 : 
				     (InvRows_to_InvSbox[119:112] == 8'h47) ? 8'h16 : 
				     (InvRows_to_InvSbox[119:112] == 8'h48) ? 8'hd4 : 
				     (InvRows_to_InvSbox[119:112] == 8'h49) ? 8'ha4 : 
				     (InvRows_to_InvSbox[119:112] == 8'h4a) ? 8'h5c : 
				     (InvRows_to_InvSbox[119:112] == 8'h4b) ? 8'hcc : 
				     (InvRows_to_InvSbox[119:112] == 8'h4c) ? 8'h5d : 
				     (InvRows_to_InvSbox[119:112] == 8'h4d) ? 8'h65 : 
				     (InvRows_to_InvSbox[119:112] == 8'h4e) ? 8'hb6 : 
				     (InvRows_to_InvSbox[119:112] == 8'h4f) ? 8'h92 : 

				     (InvRows_to_InvSbox[119:112] == 8'h50) ? 8'h6c :	// row 5
				     (InvRows_to_InvSbox[119:112] == 8'h51) ? 8'h70 : 
				     (InvRows_to_InvSbox[119:112] == 8'h52) ? 8'h48 : 
				     (InvRows_to_InvSbox[119:112] == 8'h53) ? 8'h50 : 
				     (InvRows_to_InvSbox[119:112] == 8'h54) ? 8'hfd : 
				     (InvRows_to_InvSbox[119:112] == 8'h55) ? 8'hed : 
				     (InvRows_to_InvSbox[119:112] == 8'h56) ? 8'hb9 : 
				     (InvRows_to_InvSbox[119:112] == 8'h57) ? 8'hda : 
				     (InvRows_to_InvSbox[119:112] == 8'h58) ? 8'h5e : 
				     (InvRows_to_InvSbox[119:112] == 8'h59) ? 8'h15 : 
				     (InvRows_to_InvSbox[119:112] == 8'h5a) ? 8'h46 : 
				     (InvRows_to_InvSbox[119:112] == 8'h5b) ? 8'h57 : 
				     (InvRows_to_InvSbox[119:112] == 8'h5c) ? 8'ha7 : 
				     (InvRows_to_InvSbox[119:112] == 8'h5d) ? 8'h8d : 
				     (InvRows_to_InvSbox[119:112] == 8'h5e) ? 8'h9d : 
				     (InvRows_to_InvSbox[119:112] == 8'h5f) ? 8'h84 : 

				     (InvRows_to_InvSbox[119:112] == 8'h60) ? 8'h90 :	// row 6
				     (InvRows_to_InvSbox[119:112] == 8'h61) ? 8'hd8 : 
				     (InvRows_to_InvSbox[119:112] == 8'h62) ? 8'hab : 
				     (InvRows_to_InvSbox[119:112] == 8'h63) ? 8'h00 : 
				     (InvRows_to_InvSbox[119:112] == 8'h64) ? 8'h8c : 
				     (InvRows_to_InvSbox[119:112] == 8'h65) ? 8'hbc : 
				     (InvRows_to_InvSbox[119:112] == 8'h66) ? 8'hd3 : 
				     (InvRows_to_InvSbox[119:112] == 8'h67) ? 8'h0a : 
				     (InvRows_to_InvSbox[119:112] == 8'h68) ? 8'hf7 : 
				     (InvRows_to_InvSbox[119:112] == 8'h69) ? 8'he4 : 
				     (InvRows_to_InvSbox[119:112] == 8'h6a) ? 8'h58 : 
				     (InvRows_to_InvSbox[119:112] == 8'h6b) ? 8'h05 : 
				     (InvRows_to_InvSbox[119:112] == 8'h6c) ? 8'hb8 : 
				     (InvRows_to_InvSbox[119:112] == 8'h6d) ? 8'hb3 : 
				     (InvRows_to_InvSbox[119:112] == 8'h6e) ? 8'h45 : 
				     (InvRows_to_InvSbox[119:112] == 8'h6f) ? 8'h06 : 

				     (InvRows_to_InvSbox[119:112] == 8'h70) ? 8'hd0 :	// row 7
				     (InvRows_to_InvSbox[119:112] == 8'h71) ? 8'h2c : 
				     (InvRows_to_InvSbox[119:112] == 8'h72) ? 8'h1e : 
				     (InvRows_to_InvSbox[119:112] == 8'h73) ? 8'h8f : 
				     (InvRows_to_InvSbox[119:112] == 8'h74) ? 8'hca : 
				     (InvRows_to_InvSbox[119:112] == 8'h75) ? 8'h3f : 
				     (InvRows_to_InvSbox[119:112] == 8'h76) ? 8'h0f : 
				     (InvRows_to_InvSbox[119:112] == 8'h77) ? 8'h02 : 
				     (InvRows_to_InvSbox[119:112] == 8'h78) ? 8'hc1 : 
				     (InvRows_to_InvSbox[119:112] == 8'h79) ? 8'haf : 
				     (InvRows_to_InvSbox[119:112] == 8'h7a) ? 8'hbd : 
				     (InvRows_to_InvSbox[119:112] == 8'h7b) ? 8'h03 : 
				     (InvRows_to_InvSbox[119:112] == 8'h7c) ? 8'h01 : 
				     (InvRows_to_InvSbox[119:112] == 8'h7d) ? 8'h13 : 
				     (InvRows_to_InvSbox[119:112] == 8'h7e) ? 8'h8a : 
				     (InvRows_to_InvSbox[119:112] == 8'h7f) ? 8'h6b :
 
				     (InvRows_to_InvSbox[119:112] == 8'h80) ? 8'h3a :	// row 8
				     (InvRows_to_InvSbox[119:112] == 8'h81) ? 8'h91 : 
				     (InvRows_to_InvSbox[119:112] == 8'h82) ? 8'h11 : 
				     (InvRows_to_InvSbox[119:112] == 8'h83) ? 8'h41 : 
				     (InvRows_to_InvSbox[119:112] == 8'h84) ? 8'h4f : 
				     (InvRows_to_InvSbox[119:112] == 8'h85) ? 8'h67 : 
				     (InvRows_to_InvSbox[119:112] == 8'h86) ? 8'hdc : 
				     (InvRows_to_InvSbox[119:112] == 8'h87) ? 8'hea : 
				     (InvRows_to_InvSbox[119:112] == 8'h88) ? 8'h97 : 
				     (InvRows_to_InvSbox[119:112] == 8'h89) ? 8'hf2 : 
				     (InvRows_to_InvSbox[119:112] == 8'h8a) ? 8'hcf : 
				     (InvRows_to_InvSbox[119:112] == 8'h8b) ? 8'hce : 
				     (InvRows_to_InvSbox[119:112] == 8'h8c) ? 8'hf0 : 
				     (InvRows_to_InvSbox[119:112] == 8'h8d) ? 8'hb4 : 
				     (InvRows_to_InvSbox[119:112] == 8'h8e) ? 8'he6 : 
				     (InvRows_to_InvSbox[119:112] == 8'h8f) ? 8'h73 :

				     (InvRows_to_InvSbox[119:112] == 8'h90) ? 8'h96 :	// row 9
				     (InvRows_to_InvSbox[119:112] == 8'h91) ? 8'hac : 
				     (InvRows_to_InvSbox[119:112] == 8'h92) ? 8'h74 : 
				     (InvRows_to_InvSbox[119:112] == 8'h93) ? 8'h22 : 
				     (InvRows_to_InvSbox[119:112] == 8'h94) ? 8'he7 : 
				     (InvRows_to_InvSbox[119:112] == 8'h95) ? 8'had : 
				     (InvRows_to_InvSbox[119:112] == 8'h96) ? 8'h35 : 
				     (InvRows_to_InvSbox[119:112] == 8'h97) ? 8'h85 : 
				     (InvRows_to_InvSbox[119:112] == 8'h98) ? 8'he2 : 
				     (InvRows_to_InvSbox[119:112] == 8'h99) ? 8'hf9 : 
				     (InvRows_to_InvSbox[119:112] == 8'h9a) ? 8'h37 : 
				     (InvRows_to_InvSbox[119:112] == 8'h9b) ? 8'he8 : 
				     (InvRows_to_InvSbox[119:112] == 8'h9c) ? 8'h1c : 
				     (InvRows_to_InvSbox[119:112] == 8'h9d) ? 8'h75 : 
				     (InvRows_to_InvSbox[119:112] == 8'h9e) ? 8'hdf : 
				     (InvRows_to_InvSbox[119:112] == 8'h9f) ? 8'h6e : 

				     (InvRows_to_InvSbox[119:112] == 8'ha0) ? 8'h47 :	// row a
				     (InvRows_to_InvSbox[119:112] == 8'ha1) ? 8'hf1 : 
				     (InvRows_to_InvSbox[119:112] == 8'ha2) ? 8'h1a : 
				     (InvRows_to_InvSbox[119:112] == 8'ha3) ? 8'h71 : 
				     (InvRows_to_InvSbox[119:112] == 8'ha4) ? 8'h1d : 
				     (InvRows_to_InvSbox[119:112] == 8'ha5) ? 8'h29 : 
				     (InvRows_to_InvSbox[119:112] == 8'ha6) ? 8'hc5 : 
				     (InvRows_to_InvSbox[119:112] == 8'ha7) ? 8'h89 : 
				     (InvRows_to_InvSbox[119:112] == 8'ha8) ? 8'h6f : 
				     (InvRows_to_InvSbox[119:112] == 8'ha9) ? 8'hb7 : 
				     (InvRows_to_InvSbox[119:112] == 8'haa) ? 8'h62 : 
				     (InvRows_to_InvSbox[119:112] == 8'hab) ? 8'h0e : 
				     (InvRows_to_InvSbox[119:112] == 8'hac) ? 8'haa : 
				     (InvRows_to_InvSbox[119:112] == 8'had) ? 8'h18 : 
				     (InvRows_to_InvSbox[119:112] == 8'hae) ? 8'hbe : 
				     (InvRows_to_InvSbox[119:112] == 8'haf) ? 8'h1b : 

				     (InvRows_to_InvSbox[119:112] == 8'hb0) ? 8'hfc :	// row b
				     (InvRows_to_InvSbox[119:112] == 8'hb1) ? 8'h56 : 
				     (InvRows_to_InvSbox[119:112] == 8'hb2) ? 8'h3e : 
				     (InvRows_to_InvSbox[119:112] == 8'hb3) ? 8'h4b : 
				     (InvRows_to_InvSbox[119:112] == 8'hb4) ? 8'hc6 : 
				     (InvRows_to_InvSbox[119:112] == 8'hb5) ? 8'hd2 : 
				     (InvRows_to_InvSbox[119:112] == 8'hb6) ? 8'h79 : 
				     (InvRows_to_InvSbox[119:112] == 8'hb7) ? 8'h20 : 
				     (InvRows_to_InvSbox[119:112] == 8'hb8) ? 8'h9a : 
				     (InvRows_to_InvSbox[119:112] == 8'hb9) ? 8'hdb : 
				     (InvRows_to_InvSbox[119:112] == 8'hba) ? 8'hc0 : 
				     (InvRows_to_InvSbox[119:112] == 8'hbb) ? 8'hfe : 
				     (InvRows_to_InvSbox[119:112] == 8'hbc) ? 8'h78 : 
				     (InvRows_to_InvSbox[119:112] == 8'hbd) ? 8'hcd : 
				     (InvRows_to_InvSbox[119:112] == 8'hbe) ? 8'h5a : 
				     (InvRows_to_InvSbox[119:112] == 8'hbf) ? 8'hf4 : 

				     (InvRows_to_InvSbox[119:112] == 8'hc0) ? 8'h1f :	// row c
				     (InvRows_to_InvSbox[119:112] == 8'hc1) ? 8'hdd : 
				     (InvRows_to_InvSbox[119:112] == 8'hc2) ? 8'ha8 : 
				     (InvRows_to_InvSbox[119:112] == 8'hc3) ? 8'h33 : 
				     (InvRows_to_InvSbox[119:112] == 8'hc4) ? 8'h88 : 
				     (InvRows_to_InvSbox[119:112] == 8'hc5) ? 8'h07 : 
				     (InvRows_to_InvSbox[119:112] == 8'hc6) ? 8'hc7 : 
				     (InvRows_to_InvSbox[119:112] == 8'hc7) ? 8'h31 : 
				     (InvRows_to_InvSbox[119:112] == 8'hc8) ? 8'hb1 : 
				     (InvRows_to_InvSbox[119:112] == 8'hc9) ? 8'h12 : 
				     (InvRows_to_InvSbox[119:112] == 8'hca) ? 8'h10 : 
				     (InvRows_to_InvSbox[119:112] == 8'hcb) ? 8'h59 : 
				     (InvRows_to_InvSbox[119:112] == 8'hcc) ? 8'h27 : 
				     (InvRows_to_InvSbox[119:112] == 8'hcd) ? 8'h80 : 
				     (InvRows_to_InvSbox[119:112] == 8'hce) ? 8'hec : 
				     (InvRows_to_InvSbox[119:112] == 8'hcf) ? 8'h5f : 

				     (InvRows_to_InvSbox[119:112] == 8'hd0) ? 8'h60 :	// row d
				     (InvRows_to_InvSbox[119:112] == 8'hd1) ? 8'h51 : 
				     (InvRows_to_InvSbox[119:112] == 8'hd2) ? 8'h7f : 
				     (InvRows_to_InvSbox[119:112] == 8'hd3) ? 8'ha9 : 
				     (InvRows_to_InvSbox[119:112] == 8'hd4) ? 8'h19 : 
				     (InvRows_to_InvSbox[119:112] == 8'hd5) ? 8'hb5 : 
				     (InvRows_to_InvSbox[119:112] == 8'hd6) ? 8'h4a : 
				     (InvRows_to_InvSbox[119:112] == 8'hd7) ? 8'h0d : 
				     (InvRows_to_InvSbox[119:112] == 8'hd8) ? 8'h2d : 
				     (InvRows_to_InvSbox[119:112] == 8'hd9) ? 8'he5 : 
				     (InvRows_to_InvSbox[119:112] == 8'hda) ? 8'h7a : 
				     (InvRows_to_InvSbox[119:112] == 8'hdb) ? 8'h9f : 
				     (InvRows_to_InvSbox[119:112] == 8'hdc) ? 8'h93 : 
				     (InvRows_to_InvSbox[119:112] == 8'hdd) ? 8'hc9 : 
				     (InvRows_to_InvSbox[119:112] == 8'hde) ? 8'h9c : 
				     (InvRows_to_InvSbox[119:112] == 8'hdf) ? 8'hef : 

				     (InvRows_to_InvSbox[119:112] == 8'he0) ? 8'ha0 :	// row e
				     (InvRows_to_InvSbox[119:112] == 8'he1) ? 8'he0 : 
				     (InvRows_to_InvSbox[119:112] == 8'he2) ? 8'h3b : 
				     (InvRows_to_InvSbox[119:112] == 8'he3) ? 8'h4d : 
				     (InvRows_to_InvSbox[119:112] == 8'he4) ? 8'hae : 
				     (InvRows_to_InvSbox[119:112] == 8'he5) ? 8'h2a : 
				     (InvRows_to_InvSbox[119:112] == 8'he6) ? 8'hf5 : 
				     (InvRows_to_InvSbox[119:112] == 8'he7) ? 8'hb0 : 
				     (InvRows_to_InvSbox[119:112] == 8'he8) ? 8'hc8 : 
				     (InvRows_to_InvSbox[119:112] == 8'he9) ? 8'heb : 
				     (InvRows_to_InvSbox[119:112] == 8'hea) ? 8'hbb : 
				     (InvRows_to_InvSbox[119:112] == 8'heb) ? 8'h3c : 
				     (InvRows_to_InvSbox[119:112] == 8'hec) ? 8'h83 : 
				     (InvRows_to_InvSbox[119:112] == 8'hed) ? 8'h53 : 
				     (InvRows_to_InvSbox[119:112] == 8'hee) ? 8'h99 : 
				     (InvRows_to_InvSbox[119:112] == 8'hef) ? 8'h61 :

				     (InvRows_to_InvSbox[119:112] == 8'hf0) ? 8'h17 :	// row f
				     (InvRows_to_InvSbox[119:112] == 8'hf1) ? 8'h2b : 
				     (InvRows_to_InvSbox[119:112] == 8'hf2) ? 8'h04 : 
				     (InvRows_to_InvSbox[119:112] == 8'hf3) ? 8'h7e : 
				     (InvRows_to_InvSbox[119:112] == 8'hf4) ? 8'hba : 
				     (InvRows_to_InvSbox[119:112] == 8'hf5) ? 8'h77 : 
				     (InvRows_to_InvSbox[119:112] == 8'hf6) ? 8'hd6 : 
				     (InvRows_to_InvSbox[119:112] == 8'hf7) ? 8'h26 : 
				     (InvRows_to_InvSbox[119:112] == 8'hf8) ? 8'he1 : 
				     (InvRows_to_InvSbox[119:112] == 8'hf9) ? 8'h69 : 
				     (InvRows_to_InvSbox[119:112] == 8'hfa) ? 8'h14 : 
				     (InvRows_to_InvSbox[119:112] == 8'hfb) ? 8'h63 : 
				     (InvRows_to_InvSbox[119:112] == 8'hfc) ? 8'h55 : 
				     (InvRows_to_InvSbox[119:112] == 8'hfd) ? 8'h21 : 
				     (InvRows_to_InvSbox[119:112] == 8'hfe) ? 8'h0c : 
				     (InvRows_to_InvSbox[119:112] == 8'hff) ? 8'h7d : 8'hxx;
					  
					  assign InvSBox_out[127:120] = (InvRows_to_InvSbox[127:120] == 8'h00) ? 8'h52 :	// row 0
				     (InvRows_to_InvSbox[127:120] == 8'h01) ? 8'h09 : 
				     (InvRows_to_InvSbox[127:120] == 8'h02) ? 8'h6a : 
				     (InvRows_to_InvSbox[127:120] == 8'h03) ? 8'hd5 : 
				     (InvRows_to_InvSbox[127:120] == 8'h04) ? 8'h30 : 
				     (InvRows_to_InvSbox[127:120] == 8'h05) ? 8'h36 : 
				     (InvRows_to_InvSbox[127:120] == 8'h06) ? 8'ha5 : 
				     (InvRows_to_InvSbox[127:120] == 8'h07) ? 8'h38 : 
				     (InvRows_to_InvSbox[127:120] == 8'h08) ? 8'hbf : 
				     (InvRows_to_InvSbox[127:120] == 8'h09) ? 8'h40 : 
				     (InvRows_to_InvSbox[127:120] == 8'h0a) ? 8'ha3 : 
				     (InvRows_to_InvSbox[127:120] == 8'h0b) ? 8'h9e : 
				     (InvRows_to_InvSbox[127:120] == 8'h0c) ? 8'h81 : 
				     (InvRows_to_InvSbox[127:120] == 8'h0d) ? 8'hf3 : 
				     (InvRows_to_InvSbox[127:120] == 8'h0e) ? 8'hd7 : 
				     (InvRows_to_InvSbox[127:120] == 8'h0f) ? 8'hfb : 

				     (InvRows_to_InvSbox[127:120] == 8'h10) ? 8'h7c :	// row 1
				     (InvRows_to_InvSbox[127:120] == 8'h11) ? 8'he3 : 
				     (InvRows_to_InvSbox[127:120] == 8'h12) ? 8'h39 : 
				     (InvRows_to_InvSbox[127:120] == 8'h13) ? 8'h82 : 
				     (InvRows_to_InvSbox[127:120] == 8'h14) ? 8'h9b : 
				     (InvRows_to_InvSbox[127:120] == 8'h15) ? 8'h2f : 
				     (InvRows_to_InvSbox[127:120] == 8'h16) ? 8'hff : 
				     (InvRows_to_InvSbox[127:120] == 8'h17) ? 8'h87 : 
				     (InvRows_to_InvSbox[127:120] == 8'h18) ? 8'h34 : 
				     (InvRows_to_InvSbox[127:120] == 8'h19) ? 8'h8e : 
				     (InvRows_to_InvSbox[127:120] == 8'h1a) ? 8'h43 : 
				     (InvRows_to_InvSbox[127:120] == 8'h1b) ? 8'h44 : 
				     (InvRows_to_InvSbox[127:120] == 8'h1c) ? 8'hc4 : 
				     (InvRows_to_InvSbox[127:120] == 8'h1d) ? 8'hde : 
				     (InvRows_to_InvSbox[127:120] == 8'h1e) ? 8'he9 : 
				     (InvRows_to_InvSbox[127:120] == 8'h1f) ? 8'hcb : 

				     (InvRows_to_InvSbox[127:120] == 8'h20) ? 8'h54 :	// row 2
				     (InvRows_to_InvSbox[127:120] == 8'h21) ? 8'h7b : 
				     (InvRows_to_InvSbox[127:120] == 8'h22) ? 8'h94 : 
				     (InvRows_to_InvSbox[127:120] == 8'h23) ? 8'h32 : 
				     (InvRows_to_InvSbox[127:120] == 8'h24) ? 8'ha6 : 
				     (InvRows_to_InvSbox[127:120] == 8'h25) ? 8'hc2 : 
				     (InvRows_to_InvSbox[127:120] == 8'h26) ? 8'h23 : 
				     (InvRows_to_InvSbox[127:120] == 8'h27) ? 8'h3d : 
				     (InvRows_to_InvSbox[127:120] == 8'h28) ? 8'hee : 
				     (InvRows_to_InvSbox[127:120] == 8'h29) ? 8'h4c : 
				     (InvRows_to_InvSbox[127:120] == 8'h2a) ? 8'h95 : 
				     (InvRows_to_InvSbox[127:120] == 8'h2b) ? 8'h0b : 
				     (InvRows_to_InvSbox[127:120] == 8'h2c) ? 8'h42 : 
				     (InvRows_to_InvSbox[127:120] == 8'h2d) ? 8'hfa : 
				     (InvRows_to_InvSbox[127:120] == 8'h2e) ? 8'hc3 : 
				     (InvRows_to_InvSbox[127:120] == 8'h2f) ? 8'h4e :

				     (InvRows_to_InvSbox[127:120] == 8'h30) ? 8'h08 : 	// row 3
				     (InvRows_to_InvSbox[127:120] == 8'h31) ? 8'h2e : 
				     (InvRows_to_InvSbox[127:120] == 8'h32) ? 8'ha1 : 
				     (InvRows_to_InvSbox[127:120] == 8'h33) ? 8'h66 : 
				     (InvRows_to_InvSbox[127:120] == 8'h34) ? 8'h28 : 
				     (InvRows_to_InvSbox[127:120] == 8'h35) ? 8'hd9 : 
				     (InvRows_to_InvSbox[127:120] == 8'h36) ? 8'h24 : 
				     (InvRows_to_InvSbox[127:120] == 8'h37) ? 8'hb2 : 
				     (InvRows_to_InvSbox[127:120] == 8'h38) ? 8'h76 : 
				     (InvRows_to_InvSbox[127:120] == 8'h39) ? 8'h5b : 
				     (InvRows_to_InvSbox[127:120] == 8'h3a) ? 8'ha2 : 
				     (InvRows_to_InvSbox[127:120] == 8'h3b) ? 8'h49 : 
				     (InvRows_to_InvSbox[127:120] == 8'h3c) ? 8'h6d : 
				     (InvRows_to_InvSbox[127:120] == 8'h3d) ? 8'h8b : 
				     (InvRows_to_InvSbox[127:120] == 8'h3e) ? 8'hd1 : 
				     (InvRows_to_InvSbox[127:120] == 8'h3f) ? 8'h25 : 

				     (InvRows_to_InvSbox[127:120] == 8'h40) ? 8'h72 :	// row 4
				     (InvRows_to_InvSbox[127:120] == 8'h41) ? 8'hf8 : 
				     (InvRows_to_InvSbox[127:120] == 8'h42) ? 8'hf6 : 
				     (InvRows_to_InvSbox[127:120] == 8'h43) ? 8'h64 : 
				     (InvRows_to_InvSbox[127:120] == 8'h44) ? 8'h86 : 
				     (InvRows_to_InvSbox[127:120] == 8'h45) ? 8'h68 : 
				     (InvRows_to_InvSbox[127:120] == 8'h46) ? 8'h98 : 
				     (InvRows_to_InvSbox[127:120] == 8'h47) ? 8'h16 : 
				     (InvRows_to_InvSbox[127:120] == 8'h48) ? 8'hd4 : 
				     (InvRows_to_InvSbox[127:120] == 8'h49) ? 8'ha4 : 
				     (InvRows_to_InvSbox[127:120] == 8'h4a) ? 8'h5c : 
				     (InvRows_to_InvSbox[127:120] == 8'h4b) ? 8'hcc : 
				     (InvRows_to_InvSbox[127:120] == 8'h4c) ? 8'h5d : 
				     (InvRows_to_InvSbox[127:120] == 8'h4d) ? 8'h65 : 
				     (InvRows_to_InvSbox[127:120] == 8'h4e) ? 8'hb6 : 
				     (InvRows_to_InvSbox[127:120] == 8'h4f) ? 8'h92 : 

				     (InvRows_to_InvSbox[127:120] == 8'h50) ? 8'h6c :	// row 5
				     (InvRows_to_InvSbox[127:120] == 8'h51) ? 8'h70 : 
				     (InvRows_to_InvSbox[127:120] == 8'h52) ? 8'h48 : 
				     (InvRows_to_InvSbox[127:120] == 8'h53) ? 8'h50 : 
				     (InvRows_to_InvSbox[127:120] == 8'h54) ? 8'hfd : 
				     (InvRows_to_InvSbox[127:120] == 8'h55) ? 8'hed : 
				     (InvRows_to_InvSbox[127:120] == 8'h56) ? 8'hb9 : 
				     (InvRows_to_InvSbox[127:120] == 8'h57) ? 8'hda : 
				     (InvRows_to_InvSbox[127:120] == 8'h58) ? 8'h5e : 
				     (InvRows_to_InvSbox[127:120] == 8'h59) ? 8'h15 : 
				     (InvRows_to_InvSbox[127:120] == 8'h5a) ? 8'h46 : 
				     (InvRows_to_InvSbox[127:120] == 8'h5b) ? 8'h57 : 
				     (InvRows_to_InvSbox[127:120] == 8'h5c) ? 8'ha7 : 
				     (InvRows_to_InvSbox[127:120] == 8'h5d) ? 8'h8d : 
				     (InvRows_to_InvSbox[127:120] == 8'h5e) ? 8'h9d : 
				     (InvRows_to_InvSbox[127:120] == 8'h5f) ? 8'h84 : 

				     (InvRows_to_InvSbox[127:120] == 8'h60) ? 8'h90 :	// row 6
				     (InvRows_to_InvSbox[127:120] == 8'h61) ? 8'hd8 : 
				     (InvRows_to_InvSbox[127:120] == 8'h62) ? 8'hab : 
				     (InvRows_to_InvSbox[127:120] == 8'h63) ? 8'h00 : 
				     (InvRows_to_InvSbox[127:120] == 8'h64) ? 8'h8c : 
				     (InvRows_to_InvSbox[127:120] == 8'h65) ? 8'hbc : 
				     (InvRows_to_InvSbox[127:120] == 8'h66) ? 8'hd3 : 
				     (InvRows_to_InvSbox[127:120] == 8'h67) ? 8'h0a : 
				     (InvRows_to_InvSbox[127:120] == 8'h68) ? 8'hf7 : 
				     (InvRows_to_InvSbox[127:120] == 8'h69) ? 8'he4 : 
				     (InvRows_to_InvSbox[127:120] == 8'h6a) ? 8'h58 : 
				     (InvRows_to_InvSbox[127:120] == 8'h6b) ? 8'h05 : 
				     (InvRows_to_InvSbox[127:120] == 8'h6c) ? 8'hb8 : 
				     (InvRows_to_InvSbox[127:120] == 8'h6d) ? 8'hb3 : 
				     (InvRows_to_InvSbox[127:120] == 8'h6e) ? 8'h45 : 
				     (InvRows_to_InvSbox[127:120] == 8'h6f) ? 8'h06 : 

				     (InvRows_to_InvSbox[127:120] == 8'h70) ? 8'hd0 :	// row 7
				     (InvRows_to_InvSbox[127:120] == 8'h71) ? 8'h2c : 
				     (InvRows_to_InvSbox[127:120] == 8'h72) ? 8'h1e : 
				     (InvRows_to_InvSbox[127:120] == 8'h73) ? 8'h8f : 
				     (InvRows_to_InvSbox[127:120] == 8'h74) ? 8'hca : 
				     (InvRows_to_InvSbox[127:120] == 8'h75) ? 8'h3f : 
				     (InvRows_to_InvSbox[127:120] == 8'h76) ? 8'h0f : 
				     (InvRows_to_InvSbox[127:120] == 8'h77) ? 8'h02 : 
				     (InvRows_to_InvSbox[127:120] == 8'h78) ? 8'hc1 : 
				     (InvRows_to_InvSbox[127:120] == 8'h79) ? 8'haf : 
				     (InvRows_to_InvSbox[127:120] == 8'h7a) ? 8'hbd : 
				     (InvRows_to_InvSbox[127:120] == 8'h7b) ? 8'h03 : 
				     (InvRows_to_InvSbox[127:120] == 8'h7c) ? 8'h01 : 
				     (InvRows_to_InvSbox[127:120] == 8'h7d) ? 8'h13 : 
				     (InvRows_to_InvSbox[127:120] == 8'h7e) ? 8'h8a : 
				     (InvRows_to_InvSbox[127:120] == 8'h7f) ? 8'h6b :
 
				     (InvRows_to_InvSbox[127:120] == 8'h80) ? 8'h3a :	// row 8
				     (InvRows_to_InvSbox[127:120] == 8'h81) ? 8'h91 : 
				     (InvRows_to_InvSbox[127:120] == 8'h82) ? 8'h11 : 
				     (InvRows_to_InvSbox[127:120] == 8'h83) ? 8'h41 : 
				     (InvRows_to_InvSbox[127:120] == 8'h84) ? 8'h4f : 
				     (InvRows_to_InvSbox[127:120] == 8'h85) ? 8'h67 : 
				     (InvRows_to_InvSbox[127:120] == 8'h86) ? 8'hdc : 
				     (InvRows_to_InvSbox[127:120] == 8'h87) ? 8'hea : 
				     (InvRows_to_InvSbox[127:120] == 8'h88) ? 8'h97 : 
				     (InvRows_to_InvSbox[127:120] == 8'h89) ? 8'hf2 : 
				     (InvRows_to_InvSbox[127:120] == 8'h8a) ? 8'hcf : 
				     (InvRows_to_InvSbox[127:120] == 8'h8b) ? 8'hce : 
				     (InvRows_to_InvSbox[127:120] == 8'h8c) ? 8'hf0 : 
				     (InvRows_to_InvSbox[127:120] == 8'h8d) ? 8'hb4 : 
				     (InvRows_to_InvSbox[127:120] == 8'h8e) ? 8'he6 : 
				     (InvRows_to_InvSbox[127:120] == 8'h8f) ? 8'h73 :

				     (InvRows_to_InvSbox[127:120] == 8'h90) ? 8'h96 :	// row 9
				     (InvRows_to_InvSbox[127:120] == 8'h91) ? 8'hac : 
				     (InvRows_to_InvSbox[127:120] == 8'h92) ? 8'h74 : 
				     (InvRows_to_InvSbox[127:120] == 8'h93) ? 8'h22 : 
				     (InvRows_to_InvSbox[127:120] == 8'h94) ? 8'he7 : 
				     (InvRows_to_InvSbox[127:120] == 8'h95) ? 8'had : 
				     (InvRows_to_InvSbox[127:120] == 8'h96) ? 8'h35 : 
				     (InvRows_to_InvSbox[127:120] == 8'h97) ? 8'h85 : 
				     (InvRows_to_InvSbox[127:120] == 8'h98) ? 8'he2 : 
				     (InvRows_to_InvSbox[127:120] == 8'h99) ? 8'hf9 : 
				     (InvRows_to_InvSbox[127:120] == 8'h9a) ? 8'h37 : 
				     (InvRows_to_InvSbox[127:120] == 8'h9b) ? 8'he8 : 
				     (InvRows_to_InvSbox[127:120] == 8'h9c) ? 8'h1c : 
				     (InvRows_to_InvSbox[127:120] == 8'h9d) ? 8'h75 : 
				     (InvRows_to_InvSbox[127:120] == 8'h9e) ? 8'hdf : 
				     (InvRows_to_InvSbox[127:120] == 8'h9f) ? 8'h6e : 

				     (InvRows_to_InvSbox[127:120] == 8'ha0) ? 8'h47 :	// row a
				     (InvRows_to_InvSbox[127:120] == 8'ha1) ? 8'hf1 : 
				     (InvRows_to_InvSbox[127:120] == 8'ha2) ? 8'h1a : 
				     (InvRows_to_InvSbox[127:120] == 8'ha3) ? 8'h71 : 
				     (InvRows_to_InvSbox[127:120] == 8'ha4) ? 8'h1d : 
				     (InvRows_to_InvSbox[127:120] == 8'ha5) ? 8'h29 : 
				     (InvRows_to_InvSbox[127:120] == 8'ha6) ? 8'hc5 : 
				     (InvRows_to_InvSbox[127:120] == 8'ha7) ? 8'h89 : 
				     (InvRows_to_InvSbox[127:120] == 8'ha8) ? 8'h6f : 
				     (InvRows_to_InvSbox[127:120] == 8'ha9) ? 8'hb7 : 
				     (InvRows_to_InvSbox[127:120] == 8'haa) ? 8'h62 : 
				     (InvRows_to_InvSbox[127:120] == 8'hab) ? 8'h0e : 
				     (InvRows_to_InvSbox[127:120] == 8'hac) ? 8'haa : 
				     (InvRows_to_InvSbox[127:120] == 8'had) ? 8'h18 : 
				     (InvRows_to_InvSbox[127:120] == 8'hae) ? 8'hbe : 
				     (InvRows_to_InvSbox[127:120] == 8'haf) ? 8'h1b : 

				     (InvRows_to_InvSbox[127:120] == 8'hb0) ? 8'hfc :	// row b
				     (InvRows_to_InvSbox[127:120] == 8'hb1) ? 8'h56 : 
				     (InvRows_to_InvSbox[127:120] == 8'hb2) ? 8'h3e : 
				     (InvRows_to_InvSbox[127:120] == 8'hb3) ? 8'h4b : 
				     (InvRows_to_InvSbox[127:120] == 8'hb4) ? 8'hc6 : 
				     (InvRows_to_InvSbox[127:120] == 8'hb5) ? 8'hd2 : 
				     (InvRows_to_InvSbox[127:120] == 8'hb6) ? 8'h79 : 
				     (InvRows_to_InvSbox[127:120] == 8'hb7) ? 8'h20 : 
				     (InvRows_to_InvSbox[127:120] == 8'hb8) ? 8'h9a : 
				     (InvRows_to_InvSbox[127:120] == 8'hb9) ? 8'hdb : 
				     (InvRows_to_InvSbox[127:120] == 8'hba) ? 8'hc0 : 
				     (InvRows_to_InvSbox[127:120] == 8'hbb) ? 8'hfe : 
				     (InvRows_to_InvSbox[127:120] == 8'hbc) ? 8'h78 : 
				     (InvRows_to_InvSbox[127:120] == 8'hbd) ? 8'hcd : 
				     (InvRows_to_InvSbox[127:120] == 8'hbe) ? 8'h5a : 
				     (InvRows_to_InvSbox[127:120] == 8'hbf) ? 8'hf4 : 

				     (InvRows_to_InvSbox[127:120] == 8'hc0) ? 8'h1f :	// row c
				     (InvRows_to_InvSbox[127:120] == 8'hc1) ? 8'hdd : 
				     (InvRows_to_InvSbox[127:120] == 8'hc2) ? 8'ha8 : 
				     (InvRows_to_InvSbox[127:120] == 8'hc3) ? 8'h33 : 
				     (InvRows_to_InvSbox[127:120] == 8'hc4) ? 8'h88 : 
				     (InvRows_to_InvSbox[127:120] == 8'hc5) ? 8'h07 : 
				     (InvRows_to_InvSbox[127:120] == 8'hc6) ? 8'hc7 : 
				     (InvRows_to_InvSbox[127:120] == 8'hc7) ? 8'h31 : 
				     (InvRows_to_InvSbox[127:120] == 8'hc8) ? 8'hb1 : 
				     (InvRows_to_InvSbox[127:120] == 8'hc9) ? 8'h12 : 
				     (InvRows_to_InvSbox[127:120] == 8'hca) ? 8'h10 : 
				     (InvRows_to_InvSbox[127:120] == 8'hcb) ? 8'h59 : 
				     (InvRows_to_InvSbox[127:120] == 8'hcc) ? 8'h27 : 
				     (InvRows_to_InvSbox[127:120] == 8'hcd) ? 8'h80 : 
				     (InvRows_to_InvSbox[127:120] == 8'hce) ? 8'hec : 
				     (InvRows_to_InvSbox[127:120] == 8'hcf) ? 8'h5f : 

				     (InvRows_to_InvSbox[127:120] == 8'hd0) ? 8'h60 :	// row d
				     (InvRows_to_InvSbox[127:120] == 8'hd1) ? 8'h51 : 
				     (InvRows_to_InvSbox[127:120] == 8'hd2) ? 8'h7f : 
				     (InvRows_to_InvSbox[127:120] == 8'hd3) ? 8'ha9 : 
				     (InvRows_to_InvSbox[127:120] == 8'hd4) ? 8'h19 : 
				     (InvRows_to_InvSbox[127:120] == 8'hd5) ? 8'hb5 : 
				     (InvRows_to_InvSbox[127:120] == 8'hd6) ? 8'h4a : 
				     (InvRows_to_InvSbox[127:120] == 8'hd7) ? 8'h0d : 
				     (InvRows_to_InvSbox[127:120] == 8'hd8) ? 8'h2d : 
				     (InvRows_to_InvSbox[127:120] == 8'hd9) ? 8'he5 : 
				     (InvRows_to_InvSbox[127:120] == 8'hda) ? 8'h7a : 
				     (InvRows_to_InvSbox[127:120] == 8'hdb) ? 8'h9f : 
				     (InvRows_to_InvSbox[127:120] == 8'hdc) ? 8'h93 : 
				     (InvRows_to_InvSbox[127:120] == 8'hdd) ? 8'hc9 : 
				     (InvRows_to_InvSbox[127:120] == 8'hde) ? 8'h9c : 
				     (InvRows_to_InvSbox[127:120] == 8'hdf) ? 8'hef : 

				     (InvRows_to_InvSbox[127:120] == 8'he0) ? 8'ha0 :	// row e
				     (InvRows_to_InvSbox[127:120] == 8'he1) ? 8'he0 : 
				     (InvRows_to_InvSbox[127:120] == 8'he2) ? 8'h3b : 
				     (InvRows_to_InvSbox[127:120] == 8'he3) ? 8'h4d : 
				     (InvRows_to_InvSbox[127:120] == 8'he4) ? 8'hae : 
				     (InvRows_to_InvSbox[127:120] == 8'he5) ? 8'h2a : 
				     (InvRows_to_InvSbox[127:120] == 8'he6) ? 8'hf5 : 
				     (InvRows_to_InvSbox[127:120] == 8'he7) ? 8'hb0 : 
				     (InvRows_to_InvSbox[127:120] == 8'he8) ? 8'hc8 : 
				     (InvRows_to_InvSbox[127:120] == 8'he9) ? 8'heb : 
				     (InvRows_to_InvSbox[127:120] == 8'hea) ? 8'hbb : 
				     (InvRows_to_InvSbox[127:120] == 8'heb) ? 8'h3c : 
				     (InvRows_to_InvSbox[127:120] == 8'hec) ? 8'h83 : 
				     (InvRows_to_InvSbox[127:120] == 8'hed) ? 8'h53 : 
				     (InvRows_to_InvSbox[127:120] == 8'hee) ? 8'h99 : 
				     (InvRows_to_InvSbox[127:120] == 8'hef) ? 8'h61 :

				     (InvRows_to_InvSbox[127:120] == 8'hf0) ? 8'h17 :	// row f
				     (InvRows_to_InvSbox[127:120] == 8'hf1) ? 8'h2b : 
				     (InvRows_to_InvSbox[127:120] == 8'hf2) ? 8'h04 : 
				     (InvRows_to_InvSbox[127:120] == 8'hf3) ? 8'h7e : 
				     (InvRows_to_InvSbox[127:120] == 8'hf4) ? 8'hba : 
				     (InvRows_to_InvSbox[127:120] == 8'hf5) ? 8'h77 : 
				     (InvRows_to_InvSbox[127:120] == 8'hf6) ? 8'hd6 : 
				     (InvRows_to_InvSbox[127:120] == 8'hf7) ? 8'h26 : 
				     (InvRows_to_InvSbox[127:120] == 8'hf8) ? 8'he1 : 
				     (InvRows_to_InvSbox[127:120] == 8'hf9) ? 8'h69 : 
				     (InvRows_to_InvSbox[127:120] == 8'hfa) ? 8'h14 : 
				     (InvRows_to_InvSbox[127:120] == 8'hfb) ? 8'h63 : 
				     (InvRows_to_InvSbox[127:120] == 8'hfc) ? 8'h55 : 
				     (InvRows_to_InvSbox[127:120] == 8'hfd) ? 8'h21 : 
				     (InvRows_to_InvSbox[127:120] == 8'hfe) ? 8'h0c : 
				     (InvRows_to_InvSbox[127:120] == 8'hff) ? 8'h7d : 8'hxx;
endmodule