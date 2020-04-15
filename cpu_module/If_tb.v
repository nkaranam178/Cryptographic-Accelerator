// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module If_tb();

reg clk, rst_n, branch, write, DmemStall;
reg[15:0] data;
wire[15:0] target_pc, cur_pc, instr;
wire ImemStall;

assign curPC = cur_pc;

// Fetch stage instance 
If DUT(.clk(clk), .rst_n(rst_n), .branch(branch), .target_pc(target_pc), .instr_to_write(data), .ImemWrite(write), 
       .ImemStall(ImemStall), .cur_pc(cur_pc), .instr(instr), .DmemStall(DmemStall));

assign target_pc = 16'h2;

initial begin


	// Load instr 0x0 - 0x8 with abcd, ffff, 1234, dead, beef
	DmemStall = 0;
	branch = 0;
	rst_n = 0;
	clk = 0;
	data = 16'hABCD;	// 0x0   <-- ABCD
	write = 0;
	@(posedge clk);
	@(negedge clk);
	rst_n = 1;
	write = 1;
	////////////////
	// cur_pc = 0
	@(posedge clk);
	@(negedge clk);
	////////////////
	data = 16'hFFFF;	// 0x2   <-- FFFF
	@(posedge clk);
	@(negedge clk);
	///////////////
	data = 16'h1234;	// 0x4   <-- 1234
	@(posedge clk);
	//cur_pc = 2
	@(negedge clk);
	///////////////
	data = 16'hdead;	// 0x6   <-- dead
	@(posedge clk);
	//cur_pc = 4
	@(negedge clk);
	///////////////
	data = 16'hbeef;	// 0x8   <-- beef
	@(posedge clk);
	//cur_pc = 6
	@(negedge clk);
	write = 0;

	// Cycle through again to read values

	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	write = 0;
	rst_n = 0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	rst_n = 1;
	@(posedge clk);
	@(posedge clk);  
	//cur_pc = 0;
	@(negedge clk);
	if (instr != 16'habcd) 
	  $display("Error %h != abcd", instr);
	else
	  $display("PC: %H , instr: %H", cur_pc, instr);
	@(posedge clk);
	//cur_pc = 2;
	@(negedge clk);
	if (instr != 16'hffff) 
	  $display("Error %h != ffff", instr);
	else
	  $display("PC: %H , instr: %H", cur_pc, instr);
	@(posedge clk);
	// cur_pc = 4
	@(negedge clk);
	if (instr != 16'h1234) 
	  $display("Error %h != 1234", instr);
	else
	  $display("PC: %H , instr: %H", cur_pc, instr);
	@(posedge clk);
	// cur_pc = 6
	@(negedge clk);
	if (instr != 16'hdead) 
	  $display("Error %h != dead", instr);
	else
	  $display("PC: %H , instr: %H", cur_pc, instr);
	@(posedge clk);
	// cur_pc = 8
	@(negedge clk);
	if (instr != 16'hbeef) 
	  $display("Error %h != beef", instr);
	else
	  $display("PC: %H , instr: %H", cur_pc, instr);

// try branching
	$display("\nBRANCH TO 0x2\n");
	branch = 1;
	@(posedge clk);
	// cur_pc = 2
	@(negedge clk);
	branch = 0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);
	if (instr != 16'hffff) 
	  $display("Error %h != ffff", instr);
	else
	  $display("PC: %H , instr: %H", cur_pc, instr);
	@(posedge clk);
	DmemStall = 1;
	// cur_pc = 4
	@(negedge clk);
	if (instr != 16'h1234) 
	  $display("Error %h != 1234", instr);
	else
	  $display("PC: %H , instr: %H", cur_pc, instr);
// Stall signal from Dmem
	//DmemStall = 0;
	@(posedge clk);
	DmemStall = 0;
	@(negedge clk);
	//DmemStall = 0;
	@(posedge clk);
	@(negedge clk);
	@(posedge clk);
	@(negedge clk);

// unstall
	@(posedge clk);
	// cur_pc = 6
	@(negedge clk);
	if (instr != 16'hdead) 
	  $display("Error %h != dead", instr);
	else
	  $display("PC: %H , instr: %H", cur_pc, instr);
	@(posedge clk);
	// cur_pc = 8
	@(negedge clk);
	if (instr != 16'hbeef) 
	  $display("Error %h != beef", instr);
	else
	  $display("PC: %H , instr: %H", cur_pc, instr);


	$stop;
end


always
  #1 clk = ~clk;

endmodule
