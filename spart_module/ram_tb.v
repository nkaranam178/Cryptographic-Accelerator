`include "ram.v"
`timescale 1 ps / 1 ps

module ram_tb();

// synopsys translate_off

// synopsys translate_on
	
	// Input Signals
	reg clk, rst_n, wren;
	reg[7:0] addr;
	reg[15:0] d;
	wire[15:0] q;

BRAM myram(
	.address(addr),
	.clock(clk),
	.data(d),
	.wren(wren),
	.q(q));
	
	always
		#10 clk = ~clk;
		
	initial begin
	
		clk = 1'b0;
		rst_n = 1'b0;
		wren = 1'b0;
		d = 16'h0000;
		addr = 8'h00;
		
		// Let reset propagate
		@(posedge clk);
		@(negedge clk);
		rst_n = 1;
		
		// Write 
		// Ignore q during this time
		@(posedge clk);
		wren = 1'b1;
		d = 16'haaaa;
		addr = 8'h00;
		
		@(posedge clk);
		wren = 1'b1;
		d = 16'hdddd;
		addr = 8'h01;
		
		@(posedge clk);
		wren = 1'b1;
		d = 16'hcccc;
		addr = 8'h02;
		
		@(posedge clk);
		wren = 1'b1;
		d = 16'hbbbb;
		addr = 8'h01;
		
		@(posedge clk);
		wren = 1'b1;
		d = 16'hbeef;
		addr = 8'hff;
		
		// Read
		@(posedge clk);
		wren = 1'b0;
		d = 16'hxxxx;
		addr = 8'h00;
		
		@(posedge clk);
		wren = 1'b0;
		d = 16'hxxxx;
		addr = 8'h01;
		
		@(posedge clk);
		wren = 1'b0;
		d = 16'hxxxx;
		addr = 8'h02;
		
		@(posedge clk);
		wren = 1'b0;
		d = 16'hxxxx;
		addr = 8'hff;
		
		
		$stop;
		
		
	end
	
endmodule