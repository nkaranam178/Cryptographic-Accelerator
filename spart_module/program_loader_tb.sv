module program_loader_tb();

	reg [15:0] cur_pc;
	wire [15:0] instruction;
	reg rst_n; 
	reg clk;

	program_loader iDut(.data_out(instruction), .data_in(16'h0000), .addr(cur_pc), 
				.enable(1'b1), .wr(1'b0), .clk(clk), .rst(~rst_n));
	
	always
		#10 clk = ~clk;

	initial begin
		rst_n = 0;
		clk = 0;
		cur_pc = 16'h0000;
		
		@(posedge clk);
		rst_n = 1;
		
		@(posedge clk);
		@(posedge clk);
		cur_pc = 16'h0001;
		
		@(posedge clk);
		cur_pc = 16'h0002;
		
		@(posedge clk);
		cur_pc = 16'h0003;
		
		@(posedge clk);
		cur_pc = 16'h0004;
		
		@(posedge clk);
		cur_pc = 16'h0005;
		
		@(posedge clk);
		cur_pc = 16'h0006;
		
		@(posedge clk);
		cur_pc = 16'h0007;
		
		@(posedge clk);
		cur_pc = 16'h0008;
		
		
		$stop();
		
		
	end

endmodule
