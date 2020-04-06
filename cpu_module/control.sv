module control(clk, rst_n, opcode, Branch, MemWrite, MemToReg, RegWrite, ALUSrc, H_int, E_int, D_int);

input clk, rst_n;
input [4:0] opcode;

output reg Branch, MemWrite, MemToReg, RegWrite, ALUSrc, H_int, E_int, D_int;

// Branch 
always @ (opcode[4:3]) begin
    case (opcode[4:3])
        2'b10 : Branch = rst_n ? 1'b1 : 1'b0;
        default : Branch = 1'b0;
    endcase
end

// MemToReg
always @ (opcode) begin
    case (opcode)
        5'b01101 : MemToReg = rst_n ? 1'b1 : 1'b0;
        default : MemToReg = 1'b0;
    endcase
end

// MemWrite
always @ (opcode) begin
    case (opcode)
        5'b01100 : MemWrite = rst_n ? 1'b1 : 1'b0;
        default : MemWrite = 1'b0;
    endcase
end

//RegWrite
always @ (opcode) begin
    casex (opcode)
        5'b11111 : RegWrite = 1'b0;
        5'b00000 : RegWrite = 1'b0;
        5'b10xxx : RegWrite = 1'b0;
        5'b01100 : RegWrite = 1'b0;
        5'b11xxx : RegWrite = 1'b0;
        default : RegWrite = rst_n ? 1'b1 : 1'b0;
    endcase
end

// ALUSrc 0 means RT; 1 means imm
always @ (opcode) begin
    case (opcode)
        5'b00110 : ALUSrc =  1'b0;
	5'b00111 : ALUSrc = 1'b0;
        default : ALUSrc = rst_n ? 1'b1 : 1'b0;
    endcase
end
// H_int
always @ (opcode) begin
    case (opcode)
        5'b11100 : H_int = rst_n ? 1'b1 : 1'b0;
        default : H_int = 1'b0;
    endcase
end

// E_int
always @ (opcode) begin
    case (opcode)
        5'b11101 : E_int = rst_n ? 1'b1 : 1'b0;
        default : E_int = 1'b0;
    endcase
end

// D_int
always @ (opcode) begin
    case (opcode)
        5'b11110 : D_int = rst_n ? 1'b1 : 1'b0;
        default : D_int = 1'b0;
    endcase
end

endmodule
