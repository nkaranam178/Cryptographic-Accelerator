// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module Mem_tb();

reg clk, rst_n, memRead, DmemWrite;
reg[15:0] dataIn, addr;
wire[15:0] mem_out;
wire DmemStall;


Mem DUT(.clk(clk), .rst_n(rst_n), .alu_out(addr), .alu_in2(dataIn), .memRead(memRead), 
	.DmemWrite(DmemWrite), .mem_out(mem_out), .DmemStall(DmemStall));


initial begin

	rst_n = 0;
	clk = 0;
	addr = 16'h0;
	dataIn = 16'hABCD;	// 0x0   <-- ABCD
	memRead = 0;
	DmemWrite = 0;
	@(posedge clk);
	@(negedge clk);
	rst_n = 1;
	DmemWrite = 1;
	////////////////
	@(posedge clk);
	@(negedge clk);

	@(posedge clk);
	@(negedge clk);
	DmemWrite = 0;
	addr = 16'h2;
	dataIn = 16'hFFFF;	// 0x2   <-- FFFF
	DmemWrite = 1;
	@(posedge clk);
	@(negedge clk);
	//DmemWrite = 1;
	////////////////
	@(posedge clk);
	@(negedge clk);	
	addr = 16'h4;
	dataIn = 16'h1234;	// 0x4   <-- 1234
	DmemWrite = 1;
	@(posedge clk);
	@(negedge clk);
	////////////////
	@(posedge clk);
	@(negedge clk);
	addr = 16'h6;
	dataIn = 16'hdead;	// 0x6   <-- dead
	memRead = 0;
	DmemWrite = 1;
	@(posedge clk);
	@(negedge clk);
	////////////////
	@(posedge clk);
	@(negedge clk);
	addr = 16'h8;
	dataIn = 16'hbeef;	// 0x8   <-- beef
	memRead = 0;
	DmemWrite = 1;
	@(posedge clk);
	@(negedge clk);
	////////////////
	@(posedge clk);
	@(negedge clk);
	DmemWrite = 0;

// READING
	@(posedge clk);
	@(negedge clk);	
	addr = 16'h0;	// 0xabcd
	memRead = 1;
	DmemWrite = 0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	if (mem_out != 16'habcd) begin
	  $display("Error %h != abcd", mem_out);
	  $stop;
	end
	else
	  $display("Addr: %H , value: %H", addr, mem_out);
	addr = 16'h2;	// 0xffff
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	if (mem_out != 16'hffff) begin
	  $display("Error %h != ffff", mem_out);
	  $stop;
	end
	else
	  $display("Addr: %H , value: %H", addr, mem_out);
	addr = 16'h4;  // 0x1234
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	if (mem_out != 16'h1234) begin
	  $display("Error %h != 1234", mem_out);
	  $stop;
	end
	else
	  $display("Addr: %H , value: %H", addr, mem_out);
	addr = 16'h6;  // 0xdead
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	if (mem_out != 16'hdead) begin
	  $display("Error %h != dead", mem_out);
	  $stop;
	end
	else
	  $display("Addr: %H , value: %H", addr, mem_out);
	addr = 16'h8;  // 0xbeef
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	if (mem_out != 16'hbeef) begin
	  $display("Error %h != beef", mem_out);
	  $stop;
	end
	else
	  $display("Addr: %H , value: %H", addr, mem_out);
	@(posedge clk);
	@(negedge clk);
	$display("\nPassed\n");
	$stop;

end


always
  #1 clk = ~clk;


endmodule
