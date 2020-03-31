module msg_extend(
	input wire clk,
	input wire ext_en,
	input wire [7:0] msg_cnt,
	input reg [31:0] hash_data [15:0],
	output reg ext_done,
	output reg [31:0] msg [79:0]);
	
	reg [31:0] temp_data;
	always @(posedge clk) begin
		if (ext_en) begin
			msg[15:0] = hash_data;
			//							-3				    -8				   -16
			temp_data = (msg[msg_cnt - 3] ^ msg[msg_cnt - 8] ^ msg[msg_cnt - 14] ^ msg[msg_cnt -16]);
			msg[msg_cnt] = {temp_data[30:0],temp_data[31]};
			
			if (msg_cnt == 79) begin
				ext_done <= 1'b1;
			end
			else
				ext_done <= 1'b0;
		end
		else	
			temp_data <= 32'h0;
	end
	
	
endmodule
