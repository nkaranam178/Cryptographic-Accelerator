`timescale 1 ps / 1 ps

module capstone_tb();

	//////////// CLOCK //////////
	reg 		          		CLOCK2_50;
	reg 		          		CLOCK3_50;
	reg 		          		CLOCK4_50;
	reg 		          		CLOCK_50;		// clk

	//////////// SEG7 //////////
	wire		     [6:0]		HEX0;
	wire		     [6:0]		HEX1;
	wire		     [6:0]		HEX2;
	wire		     [6:0]		HEX3;
	wire		     [6:0]		HEX4;
	wire		     [6:0]		HEX5;

	//////////// KEY //////////
	reg 		     [3:0]		KEY;

	//////////// LED //////////
	wire		     [9:0]		LEDR;

	//////////// SW //////////
	reg 		     [9:0]		SW;		// rst_n
	wire			 [127:0]	ciphertext;
	wire						cpu_done;
	
	
	
	// DUT
	capstone top_level(.CLOCK2_50(CLOCK2_50), .CLOCK3_50(CLOCK3_50), .CLOCK4_50(CLOCK4_50),
	.CLOCK_50(CLOCK_50), .HEX0(HEX0), .HEX1(HEX1), .HEX2(HEX2), .HEX3(HEX3), .HEX4(HEX4),
	.HEX5(HEX5), .KEY(KEY), .LEDR(LEDR), .SW(SW), /*.ciphertext(ciphertext),*/ .cpu_done(cpu_done));
	
	always
		#10 CLOCK_50 = ~CLOCK_50;
		
	initial begin
		SW = 10'h000;
		CLOCK_50 = 0;
		@(posedge CLOCK_50);
		@(posedge CLOCK_50);
		@(posedge CLOCK_50);
		@(posedge CLOCK_50);
		SW = 10'hFFF;
		
		@(posedge cpu_done);
		$stop;
	end



endmodule