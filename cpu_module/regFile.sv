module regFile(clk, rst_n, regWrite, rs, rt, rd, write_data, read_data_1, read_data_2);

input clk, rst_n, regWrite;
input [2:0] rs,rt,rd;	// register number
input [15:0] write_data;
output reg [15:0] read_data_1, read_data_2;

///// data in 8 reg: R0~R7, each 16b /////
reg [15:0] r0;
reg [15:0] r1;
reg [15:0] r2;
reg [15:0] r3;
reg [15:0] r4;
reg [15:0] r5;
reg [15:0] r6;
reg [15:0] r7;
wire r0Write, r1Write, r2Write, r3Write, r4Write, r5Write, r6Write, r7Write;	// enable signal for each reg
wire [15:0] r0bypass, r1bypass, r2bypass, r3bypass, r4bypass, r5bypass, r6bypass, r7bypass;

// enable signals for each reg
assign r0Write = rd == 3'd0 ? regWrite : 1'b0;
assign r1Write = rd == 3'd1 ? regWrite : 1'b0;
assign r2Write = rd == 3'd2 ? regWrite : 1'b0;
assign r3Write = rd == 3'd3 ? regWrite : 1'b0;
assign r4Write = rd == 3'd4 ? regWrite : 1'b0;
assign r5Write = rd == 3'd5 ? regWrite : 1'b0;
assign r6Write = rd == 3'd6 ? regWrite : 1'b0;
assign r7Write = rd == 3'd7 ? regWrite : 1'b0;

// bypassed value for reg read
assign r0bypass = r0Write ? write_data : r0;
assign r1bypass = r1Write ? write_data : r1;
assign r2bypass = r2Write ? write_data : r2;
assign r3bypass = r3Write ? write_data : r3;
assign r4bypass = r4Write ? write_data : r4;
assign r5bypass = r5Write ? write_data : r5;
assign r6bypass = r6Write ? write_data : r6;
assign r7bypass = r7Write ? write_data : r7;

// determine which register is the read1 register and get the data from there
always @ (rs, r0bypass, r1bypass, r2bypass, r3bypass, r4bypass, r5bypass, r6bypass, r7bypass) begin
    case(rs)
        3'd0: read_data_1 = r0bypass;
        3'd1: read_data_1 = r1bypass;
        3'd2: read_data_1 = r2bypass;
        3'd3: read_data_1 = r3bypass;
        3'd4: read_data_1 = r4bypass;
        3'd5: read_data_1 = r5bypass;
        3'd6: read_data_1 = r6bypass;
        3'd7: read_data_1 = r7bypass;
    endcase
end

// determine which register is the read1 register and get the data from there
always @ (rt, r0bypass, r1bypass, r2bypass, r3bypass, r4bypass, r5bypass, r6bypass, r7bypass) begin
    case(rt)
        3'd0: read_data_2 = r0bypass;
        3'd1: read_data_2 = r1bypass;
        3'd2: read_data_2 = r2bypass;
        3'd3: read_data_2 = r3bypass;
        3'd4: read_data_2 = r4bypass;
        3'd5: read_data_2 = r5bypass;
        3'd6: read_data_2 = r6bypass;
        3'd7: read_data_2 = r7bypass;
    endcase
end

//r0
always @ (posedge clk, negedge rst_n, posedge r0Write) begin
    if (!rst_n)
        r0 <= 16'b0;
    else if (r0Write)
        r0 <= write_data;
    else
        r0 <= r0;
end

//r1
always @ (posedge clk, negedge rst_n, posedge r1Write) begin
    if (!rst_n)
        r1 <= 16'b0;
    else if (r1Write)
        r1 <= write_data;
    else
        r1 <= r1;
end

//r2
always @ (posedge clk, negedge rst_n, posedge r2Write) begin
    if (!rst_n)
        r2 <= 16'b0;
    else if (r2Write)
        r2 <= write_data;
    else
        r2 <= r2;
end

//r3
always @ (posedge clk, negedge rst_n, posedge r3Write) begin
    if (!rst_n)
        r3 <= 16'b0;
    else if (r3Write)
        r3 <= write_data;
    else
        r3 <= r3;
end

//r4
always @ (posedge clk, negedge rst_n, posedge r4Write) begin
    if (!rst_n)
        r4 <= 16'b0;
    else if (r4Write)
        r4 <= write_data;
    else
        r4 <= r4;
end

//r5
always @ (posedge clk, negedge rst_n, posedge r5Write) begin
    if (!rst_n)
        r5 <= 16'b0;
    else if (r5Write)
        r5 <= write_data;
    else
        r5 <= r5;
end

//r6
always @ (posedge clk, negedge rst_n, posedge r6Write) begin
    if (!rst_n)
        r6 <= 16'b0;
    else if (r6Write)
        r6 <= write_data;
    else
        r6 <= r6;
end

//r7
always @ (posedge clk, negedge rst_n, posedge r7Write) begin
    if (!rst_n)
        r7 <= 16'b0;
    else if (r7Write)
        r7 <= write_data;
    else
        r7 <= r7;
end

endmodule
