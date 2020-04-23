module Mem(clk, rst_n, alu_out, alu_in2, memRead, DmemWrite, mem_out, DmemStall);

input clk, rst_n, memRead, DmemWrite;
input[15:0] alu_out, alu_in2;
output[15:0] mem_out;
output DmemStall;

reg done, stall;

assign DmemStall = ((memRead | DmemWrite) & !done);

// BRAM IP
ram16_256 Dmem(.address(alu_out[7:0]), .clock(clk), .data(alu_in2), .wren(DmemWrite), .q(mem_out));



always @(posedge clk, negedge rst_n) begin
	if(!rst_n)
	  stall <= 0;
	else if ((memRead | DmemWrite) & !stall)
	  stall <= 1;
	else 
	  stall <= 0;

end


always @(posedge clk, negedge rst_n) begin
	if (!rst_n) begin
	  done <= 0;
	end
	else if (!memRead & !DmemWrite) begin
	  done <= 0;
	end
	else begin
	  done <= stall;
	end
end


endmodule
