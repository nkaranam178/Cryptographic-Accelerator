module msg_extend_tb();

	reg rst_ext;
	reg clk;
	reg [7:0] msg_cnt;
	msg_counter dut0(	.rst_ext(rst_ext),
						.clk(clk),
						.msg_cnt(msg_cnt));
						
	reg ext_en;
	reg ext_done;
	//reg [15:0] hash_data [31:0];					
	//reg [79:0] msg [31:0];
	reg [31:0] hash_data [15:0];
	reg [31:0] msg [79:0];
	msg_extend dut1(	.clk(clk),
						.ext_en(ext_en),
						.msg_cnt(msg_cnt),
						.hash_data(hash_data),
						.ext_done(ext_done),
						.msg(msg));
	
	always 
		#1 clk = ~clk;
		
	initial begin
		// Set hash_data
		hash_data[0] = 32'h0;
		hash_data[1] = 32'h1;
		hash_data[2] = 32'h2;
		hash_data[3] = 32'h3;
		hash_data[4] = 32'h4;
		hash_data[5] = 32'h5;
		hash_data[6] = 32'h6;
		hash_data[7] = 32'h7;
		hash_data[8] = 32'h8;
		hash_data[9] = 32'h9;
		hash_data[10] = 32'd20;
		hash_data[11] = 32'hb;
		hash_data[12] = 32'hc;
		hash_data[13] = 32'hd;
		hash_data[14] = 32'he;
		hash_data[15] = 32'hf;
		
		msg[15:0] = hash_data[15:0];
		clk = 0;
		rst_ext = 1;
		ext_en = 1;
		@(posedge clk)
		rst_ext = 0;

		@(posedge ext_done)
		$stop;
		
	end
endmodule