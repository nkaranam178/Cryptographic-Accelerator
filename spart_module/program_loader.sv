module program_loader(data_out, addr, enable, wr, clk, rst);
	parameter 	ADDR_WIDTH = 16;
	output  	[15:0]	data_out;
	input 		[ADDR_WIDTH-1 :0]	addr;
	input		enable;
	input      	wr;
	input      	clk;
	input       rst;

	reg [15:0]   mem [0:2**ADDR_WIDTH-1];
	reg          loaded;


	assign data_out = (enable & (~wr))? {mem[addr[ADDR_WIDTH-1 :1]]}: 0; //Read
	initial begin
		loaded = 0;
	end

	always @(posedge clk) begin
		if (rst) begin
			//load assembled code via .txt file
			if (!loaded) begin
				$readmemb("L3demo.txt", mem);
				loaded = 1;
			end

		end
	end


endmodule