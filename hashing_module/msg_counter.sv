// CAN USE SAME COUNTER BUT RESET TO DIFFERENT NUMBERS FOR EXT AND ROUNDS

module msg_counter( 
	input reg rst_ext,
	input reg rst_rounds,
	input wire clk,
	output reg[7:0] msg_cnt);
	
	
	// Loop counter from 16 to 79 after reset
	// output the current message count
	always_ff @(posedge clk) begin
		if (rst_ext) 
			msg_cnt <= 16;
		else if (rst_rounds)
			msg_cnt <= 0;
		else begin
			msg_cnt <= msg_cnt + 1;
		end
			
	end
endmodule
