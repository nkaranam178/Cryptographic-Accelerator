module rounds_loop(	input wire clk,
					input wire rst_n,
					input wire rounds_en,
					input wire [7:0] rounds_cnt,
					input reg [31:0] msg [79:0],
					output reg rounds_done,
					output reg [319:0] h,
					output reg [159:0] hh);
	
	parameter [31:0] h0t = 32'h67452301;
	parameter [31:0] h1t = 32'hEFCDAB89;
	parameter [31:0] h2t = 32'h98BADCFE;
	parameter [31:0] h3t = 32'h10325476;
	parameter [31:0] h4t = 32'hC3D2E1F0;
	
	reg [159:0] a,b,c,d,e,f,k,temp,h0,h1,h2,h3,h4;
	
	assign h = {h0,h1,h2,h3,h4};
	
	always @(posedge clk, negedge rst_n) begin
		if (rst_n == 0) begin
			a = 159'h67452301;
			b = 159'hEFCDAB89;
			c = 159'h98BADCFE; 
			d = 159'h10325476;
			e = 159'hC3D2E1F0;
		end
		else if (rounds_en) begin
			if (rounds_cnt < 20) begin
				/* if (rounds_cnt == 0) begin
					a = 32'h67452301;
					b = 32'hEFCDAB89;
					c = 32'h98BADCFE; 
					d = 32'h10325476;
					e = 32'hC3D2E1F0;
				end */
				f = (b & c) | ((~b) & d);
				k = 159'h5A827999;
			end
			else if (rounds_cnt < 39) begin
				f = b ^ c ^ d;
	            k = 159'h6ED9EBA1;
			end
			else if (rounds_cnt < 59) begin
				f = (b & c) | (b & d) | (c & d);
	            k = 159'h8F1BBCDC;
			end
			else if (rounds_cnt < 79) begin
				f = b ^ c ^ d;
	            k = 159'hCA62C1D6;
			end
			
			// temp = (a leftrotate 5) + f + e + k + w[i]
			temp = ({a[154:0],a[159:155]}) + f + e + k + msg[rounds_cnt];
			e = d;
			d = c;
			//c = b leftrotate 30
			c = {b[129:0], b[159:130]};
			b = a;
			a = temp;
			
			if (rounds_cnt == 79) begin
				/* h0 = h0t + a;
				h1 = h1t + b;
				h2 = h2t + c;
				h3 = h3t + d;
				h4 = h4t + e; */
				h0 = 159'h67452301 + a;
				h1 = 159'hEFCDAB89 + b;
				h2 = 159'h98BADCFE + c; 
				h3 = 159'h10325476 + d;
				h4 = 159'hC3D2E1F0 + e;
				
				hh = (h0 << 128) | (h1 << 96) | (h2 << 64) | (h3 << 32) | h4;
				rounds_done = 1'b1;
			end
		end
	end
	
endmodule