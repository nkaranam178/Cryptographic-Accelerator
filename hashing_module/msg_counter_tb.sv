module msg_counter_tb();

	reg rst_ext, rst_rounds;
	reg clk;
	reg [7:0] msg_cnt;
	msg_counter dut0(	.rst_ext(rst_ext),
						.rst_rounds(rst_rounds),
						.clk(clk),
						.msg_cnt(msg_cnt));
		
	always
		#1 clk = ~clk;
		
	initial begin
		clk = 0;
		rst_ext = 1;
		
		#2 rst_ext = 0;
		
		#128 $stop;
		
		#2 rst_rounds = 1;
		#2 rst_rounds = 0;
		#160 $stop;
		
	end
endmodule