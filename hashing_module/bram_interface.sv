module bram_interface(
	input wire clk,
	input reg [3:0] hash_address,
	output reg [511:0] hash_data,
	output reg bram_done,
	input reg bram_en);
	
	
	reg wren_a, wren_b, ready;
	reg[3:0] address_a, address_b;
	reg[255:0] data_a, data_b;
	wire[255:0] q_a, q_b;
	
ram256x2_10 bigram(
	.address_a(address_a),
	.address_b(address_b),
	.clock(clk),
	.data_a(data_a),
	.data_b(data_b),
	.wren_a(wren_a),
	.wren_b(wren_b),
	.q_a(q_a),
	.q_b(q_b));
	
	//assign hash_data = {data_b,data_a};
	
	always @(posedge clk) begin
		// Never write to BRAM
		wren_a = 1'b0;
		wren_b = 1'b0;
		
		// If supposed to read, set address to base address and base address + 1
		if (bram_en) begin
			address_a = hash_address;
			address_b = hash_address + 1;
			ready = 1'b1;
			
			// Need to wait a cycle for the data to be ready. Flop ready signal
		end
		else begin
			ready = 1'b0;
			bram_done = 1'b0;
		end
	end
	
	always @(posedge ready) begin
		// With orientation of altera generated BRAM, this is how long it takes to access memory
		repeat(3) @(posedge clk);
		bram_done = 1'b1;
		hash_data[255:0] = q_a;
		hash_data[511:256] = q_b;
	end
	

endmodule