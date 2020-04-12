module Spart_Control_tb();
	
	reg rst_n; 
	reg clk;

	Spart_Control_TL iDUT(.clk(clk), .rst_n(rst_n), .to_IMEM(), .to_HASH(), .to_DEC(), .to_ENC(), .cpu_start());

	always
		#10 clk = ~clk;
		
	initial begin
		rst_n = 0;
		clk = 0;
		@(posedge clk);
		rst_n = 1;
	end
endmodule
