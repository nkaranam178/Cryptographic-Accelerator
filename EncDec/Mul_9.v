module Mul_9(index, data);

input[7:0] index;
output[7:0] data;

// output byte determined by Lookup Table
assign data = (index == 8'h00) ? 8'h00 :	// row 0 
				     (index == 8'h01) ? 8'h09 : 
				     (index == 8'h02) ? 8'h12 : 
				     (index == 8'h03) ? 8'h1b : 
				     (index == 8'h04) ? 8'h24 : 
				     (index == 8'h05) ? 8'h2d : 
				     (index == 8'h06) ? 8'h36 : 
				     (index == 8'h07) ? 8'h3f : 
				     (index == 8'h08) ? 8'h48 : 
				     (index == 8'h09) ? 8'h41 : 
				     (index == 8'h0a) ? 8'h5a : 
				     (index == 8'h0b) ? 8'h53 : 
				     (index == 8'h0c) ? 8'h6c : 
				     (index == 8'h0d) ? 8'h65 : 
				     (index == 8'h0e) ? 8'h7e : 
				     (index == 8'h0f) ? 8'h77 : 

				     (index == 8'h10) ? 8'h90 :	// row 1
				     (index == 8'h11) ? 8'h99 : 
				     (index == 8'h12) ? 8'h82 : 
				     (index == 8'h13) ? 8'h8b : 
				     (index == 8'h14) ? 8'hb4 : 
				     (index == 8'h15) ? 8'hbd : 
				     (index == 8'h16) ? 8'ha6 : 
				     (index == 8'h17) ? 8'haf : 
				     (index == 8'h18) ? 8'hd8 : 
				     (index == 8'h19) ? 8'hd1 : 
				     (index == 8'h1a) ? 8'hca : 
				     (index == 8'h1b) ? 8'hc3 : 
				     (index == 8'h1c) ? 8'hfc : 
				     (index == 8'h1d) ? 8'hf5 : 
				     (index == 8'h1e) ? 8'hee : 
				     (index == 8'h1f) ? 8'he7 : 

				     (index == 8'h20) ? 8'h3b :	// row 2
				     (index == 8'h21) ? 8'h32 : 
				     (index == 8'h22) ? 8'h29 : 
				     (index == 8'h23) ? 8'h20 : 
				     (index == 8'h24) ? 8'h1f : 
				     (index == 8'h25) ? 8'h16 : 
				     (index == 8'h26) ? 8'h0d : 
				     (index == 8'h27) ? 8'h04 : 
				     (index == 8'h28) ? 8'h73 : 
				     (index == 8'h29) ? 8'h7a : 
				     (index == 8'h2a) ? 8'h61 : 
				     (index == 8'h2b) ? 8'h68 : 
				     (index == 8'h2c) ? 8'h57 : 
				     (index == 8'h2d) ? 8'h5e : 
				     (index == 8'h2e) ? 8'h45 : 
				     (index == 8'h2f) ? 8'h4c :

				     (index == 8'h30) ? 8'hab : 	// row 3
				     (index == 8'h31) ? 8'ha2 : 
				     (index == 8'h32) ? 8'hb9 : 
				     (index == 8'h33) ? 8'hb0 : 
				     (index == 8'h34) ? 8'h8f : 
				     (index == 8'h35) ? 8'h86 : 
				     (index == 8'h36) ? 8'h9d : 
				     (index == 8'h37) ? 8'h94 : 
				     (index == 8'h38) ? 8'he3 : 
				     (index == 8'h39) ? 8'hea : 
				     (index == 8'h3a) ? 8'hf1 : 
				     (index == 8'h3b) ? 8'hf8 : 
				     (index == 8'h3c) ? 8'hc7 : 
				     (index == 8'h3d) ? 8'hce : 
				     (index == 8'h3e) ? 8'hd5 : 
				     (index == 8'h3f) ? 8'hdc : 

				     (index == 8'h40) ? 8'h76 :	// row 4
				     (index == 8'h41) ? 8'h7f : 
				     (index == 8'h42) ? 8'h64 : 
				     (index == 8'h43) ? 8'h6d : 
				     (index == 8'h44) ? 8'h52 : 
				     (index == 8'h45) ? 8'h5b : 
				     (index == 8'h46) ? 8'h40 : 
				     (index == 8'h47) ? 8'h49 : 
				     (index == 8'h48) ? 8'h3e : 
				     (index == 8'h49) ? 8'h37 : 
				     (index == 8'h4a) ? 8'h2c : 
				     (index == 8'h4b) ? 8'h25 : 
				     (index == 8'h4c) ? 8'h1a : 
				     (index == 8'h4d) ? 8'h13 : 
				     (index == 8'h4e) ? 8'h08 : 
				     (index == 8'h4f) ? 8'h01 : 

				     (index == 8'h50) ? 8'he6 :	// row 5
				     (index == 8'h51) ? 8'hef : 
				     (index == 8'h52) ? 8'hf4 : 
				     (index == 8'h53) ? 8'hfd : 
				     (index == 8'h54) ? 8'hc2 : 
				     (index == 8'h55) ? 8'hcb : 
				     (index == 8'h56) ? 8'hd0 : 
				     (index == 8'h57) ? 8'hd9 : 
				     (index == 8'h58) ? 8'hae : 
				     (index == 8'h59) ? 8'ha7 : 
				     (index == 8'h5a) ? 8'hbc : 
				     (index == 8'h5b) ? 8'hb5 : 
				     (index == 8'h5c) ? 8'h8a : 
				     (index == 8'h5d) ? 8'h83 : 
				     (index == 8'h5e) ? 8'h98 : 
				     (index == 8'h5f) ? 8'h91 : 

				     (index == 8'h60) ? 8'h4d :	// row 6
				     (index == 8'h61) ? 8'h44 : 
				     (index == 8'h62) ? 8'h5f : 
				     (index == 8'h63) ? 8'h56 : 
				     (index == 8'h64) ? 8'h69 : 
				     (index == 8'h65) ? 8'h60 : 
				     (index == 8'h66) ? 8'h7b : 
				     (index == 8'h67) ? 8'h72 : 
				     (index == 8'h68) ? 8'h05 : 
				     (index == 8'h69) ? 8'h0c : 
				     (index == 8'h6a) ? 8'h17 : 
				     (index == 8'h6b) ? 8'h1e : 
				     (index == 8'h6c) ? 8'h21 : 
				     (index == 8'h6d) ? 8'h28 : 
				     (index == 8'h6e) ? 8'h33 : 
				     (index == 8'h6f) ? 8'h3a : 

				     (index == 8'h70) ? 8'hdd :	// row 7
				     (index == 8'h71) ? 8'hd4 : 
				     (index == 8'h72) ? 8'hcf : 
				     (index == 8'h73) ? 8'hc6 : 
				     (index == 8'h74) ? 8'hf9 : 
				     (index == 8'h75) ? 8'hf0 : 
				     (index == 8'h76) ? 8'heb : 
				     (index == 8'h77) ? 8'he2 : 
				     (index == 8'h78) ? 8'h95 : 
				     (index == 8'h79) ? 8'h9c : 
				     (index == 8'h7a) ? 8'h87 : 
				     (index == 8'h7b) ? 8'h8e : 
				     (index == 8'h7c) ? 8'hb1 : 
				     (index == 8'h7d) ? 8'hb8 : 
				     (index == 8'h7e) ? 8'ha3 : 
				     (index == 8'h7f) ? 8'haa : 

				     (index == 8'h80) ? 8'hec :	// row 8
				     (index == 8'h81) ? 8'he5 : 
				     (index == 8'h82) ? 8'hfe : 
				     (index == 8'h83) ? 8'hf7 : 
				     (index == 8'h84) ? 8'hc8 : 
				     (index == 8'h85) ? 8'hc1 : 
				     (index == 8'h86) ? 8'hda : 
				     (index == 8'h87) ? 8'hd3 : 
				     (index == 8'h88) ? 8'ha4 : 
				     (index == 8'h89) ? 8'had : 
				     (index == 8'h8a) ? 8'hb6 : 
				     (index == 8'h8b) ? 8'hbf : 
				     (index == 8'h8c) ? 8'h80 : 
				     (index == 8'h8d) ? 8'h89 : 
				     (index == 8'h8e) ? 8'h92 : 
				     (index == 8'h8f) ? 8'h9b : 

				     (index == 8'h90) ? 8'h7c :	// row 9
				     (index == 8'h91) ? 8'h75 : 
				     (index == 8'h92) ? 8'h6e : 
				     (index == 8'h93) ? 8'h67 : 
				     (index == 8'h94) ? 8'h58 : 
				     (index == 8'h95) ? 8'h51 : 
				     (index == 8'h96) ? 8'h4a : 
				     (index == 8'h97) ? 8'h43 : 
				     (index == 8'h98) ? 8'h34 : 
				     (index == 8'h99) ? 8'h3d : 
				     (index == 8'h9a) ? 8'h26 : 
				     (index == 8'h9b) ? 8'h2f : 
				     (index == 8'h9c) ? 8'h10 : 
				     (index == 8'h9d) ? 8'h19 : 
				     (index == 8'h9e) ? 8'h02 : 
				     (index == 8'h9f) ? 8'h0b : 

				     (index == 8'ha0) ? 8'hd7 :	// row a
				     (index == 8'ha1) ? 8'hde : 
				     (index == 8'ha2) ? 8'hc5 : 
				     (index == 8'ha3) ? 8'hcc : 
				     (index == 8'ha4) ? 8'hf3 : 
				     (index == 8'ha5) ? 8'hfa : 
				     (index == 8'ha6) ? 8'he1 : 
				     (index == 8'ha7) ? 8'he8 : 
				     (index == 8'ha8) ? 8'h9f : 
				     (index == 8'ha9) ? 8'h96 : 
				     (index == 8'haa) ? 8'h8d : 
				     (index == 8'hab) ? 8'h84 : 
				     (index == 8'hac) ? 8'hbb : 
				     (index == 8'had) ? 8'hb2 : 
				     (index == 8'hae) ? 8'ha9 : 
				     (index == 8'haf) ? 8'ha0 :

				     (index == 8'hb0) ? 8'h47 :	// row b
				     (index == 8'hb1) ? 8'h4e : 
				     (index == 8'hb2) ? 8'h55 : 
				     (index == 8'hb3) ? 8'h5c : 
				     (index == 8'hb4) ? 8'h63 : 
			             (index == 8'hb5) ? 8'h6a :
				     (index == 8'hb6) ? 8'h71 : 
				     (index == 8'hb7) ? 8'h78 : 
				     (index == 8'hb8) ? 8'h0f : 
				     (index == 8'hb9) ? 8'h06 : 
				     (index == 8'hba) ? 8'h1d : 
				     (index == 8'hbb) ? 8'h14 : 
				     (index == 8'hbc) ? 8'h2b : 
				     (index == 8'hbd) ? 8'h22 : 
				     (index == 8'hbe) ? 8'h39 : 
				     (index == 8'hbf) ? 8'h30 :  

				     (index == 8'hc0) ? 8'h9a :	// row c
				     (index == 8'hc1) ? 8'h93 : 
				     (index == 8'hc2) ? 8'h88 : 
				     (index == 8'hc3) ? 8'h81 : 
				     (index == 8'hc4) ? 8'hbe : 
				     (index == 8'hc5) ? 8'hb7 : 
				     (index == 8'hc6) ? 8'hac : 
				     (index == 8'hc7) ? 8'ha5 : 
				     (index == 8'hc8) ? 8'hd2 : 
				     (index == 8'hc9) ? 8'hdb : 
				     (index == 8'hca) ? 8'hc0 : 
				     (index == 8'hcb) ? 8'hc9 : 
				     (index == 8'hcc) ? 8'hf6 : 
				     (index == 8'hcd) ? 8'hff : 
				     (index == 8'hce) ? 8'he4 : 
				     (index == 8'hcf) ? 8'hed : 

				     (index == 8'hd0) ? 8'h0a :	// row c
				     (index == 8'hd1) ? 8'h03 : 
				     (index == 8'hd2) ? 8'h18 : 
				     (index == 8'hd3) ? 8'h11 : 
				     (index == 8'hd4) ? 8'h2e : 
				     (index == 8'hd5) ? 8'h27 : 
				     (index == 8'hd6) ? 8'h3c : 
				     (index == 8'hd7) ? 8'h35 : 
				     (index == 8'hd8) ? 8'h42 : 
				     (index == 8'hd9) ? 8'h4b : 
				     (index == 8'hda) ? 8'h50 : 
				     (index == 8'hdb) ? 8'h59 : 
				     (index == 8'hdc) ? 8'h66 : 
				     (index == 8'hdd) ? 8'h6f : 
				     (index == 8'hde) ? 8'h74 : 
				     (index == 8'hdf) ? 8'h7d : 

				     (index == 8'he0) ? 8'ha1 :	// row e
				     (index == 8'he1) ? 8'ha8 : 
				     (index == 8'he2) ? 8'hb3 : 
				     (index == 8'he3) ? 8'hba : 
				     (index == 8'he4) ? 8'h85 : 
				     (index == 8'he5) ? 8'h8c : 
				     (index == 8'he6) ? 8'h97 : 
				     (index == 8'he7) ? 8'h9e : 
				     (index == 8'he8) ? 8'he9 : 
				     (index == 8'he9) ? 8'he0 : 
				     (index == 8'hea) ? 8'hfb : 
				     (index == 8'heb) ? 8'hf2 : 
				     (index == 8'hec) ? 8'hcd : 
				     (index == 8'hed) ? 8'hc4 : 
				     (index == 8'hee) ? 8'hdf : 
				     (index == 8'hef) ? 8'hd6 : 
 

				     (index == 8'hf0) ? 8'h31 :	// row f
				     (index == 8'hf1) ? 8'h38 : 
				     (index == 8'hf2) ? 8'h23 : 
				     (index == 8'hf3) ? 8'h2a : 
				     (index == 8'hf4) ? 8'h15 : 
				     (index == 8'hf5) ? 8'h1c : 
				     (index == 8'hf6) ? 8'h07 : 
				     (index == 8'hf7) ? 8'h0e : 
				     (index == 8'hf8) ? 8'h79 : 
				     (index == 8'hf9) ? 8'h70 : 
				     (index == 8'hfa) ? 8'h6b : 
				     (index == 8'hfb) ? 8'h62 : 
				     (index == 8'hfc) ? 8'h5d : 
				     (index == 8'hfd) ? 8'h54 : 
				     (index == 8'hfe) ? 8'h4f : 
				     (index == 8'hff) ? 8'h46 : 8'hxx;





endmodule
