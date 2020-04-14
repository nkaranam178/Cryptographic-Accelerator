module branching(clk, rst_n, Branch, flags, instruction, pc_plus_two, branch, target_pc);

input clk, rst_n;
input Branch;			// from control, see if the instr is a branch instr
input [2:0] flags;	 	// from exe
input [15:0] instruction;	//decode is stallled so current instr is enough
input [15:0] pc_plus_two;	// incremented pc from IFID reg

output reg branch;		// select input to fetch stage's mux
output [15:0] target_pc;	// input to fetch stage's mux

wire internal_branch;
wire [2:0] condcode = instruction[13:11];
wire signed [15:0] offset;

// Compute target pc
assign offset = {{5{instruction[10]}}, instruction[10:0]};
assign target_pc  = pc_plus_two + offset;

// determine whether should branch
assign internal_branch = condcode[2] ? ( condcode[1] ? 1'b0 :		// undefined when condcode is 110 and 111
							(condcode[0] ? ( (!flags[2] && !flags[0])  ? 1'b1 : 1'b0 ) :	//101
									( (flags[2] && !flags[0]) ? 1'b1 : 1'b0 )) ) :	//100
					( condcode[1] ? 
							(condcode[0] ? 	( (!flags[1]) ? 1'b1 : 1'b0 ) :	 		//011
									( flags[1] ? 1'b1 : 1'b0 )) :			//010
							(condcode[0] ? 	( flags[0] ? 1'b1 : 1'b0 ) :			//001
									( (!flags[0]) ? 1'b1 : 1'b0 )) ); 		//000	
assign branch = rst_n ? Branch ? internal_branch : 1'b0 : 1'b0;
/*
always @(posedge clk, negedge rst_n) begin
    if (!rst_n) 
	branch = 1'b0;
    else if (Branch)
	branch = internal_branch;
    else 
   	branch = branch;
end
*/
endmodule
