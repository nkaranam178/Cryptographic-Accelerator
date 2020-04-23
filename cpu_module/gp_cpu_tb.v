// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module gp_cpu_tb();
  
   wire [15:0] PC;
   wire [15:0] Instr;           
                               
   wire        RegWrite;       /* Whether register file is being written to */
   wire [2:0]  Rd;  	       /* What register is written */
   wire [15:0] WriteData;      /* Data */
   wire        MemWrite;       /* Similar as above but for memory */
   wire        MemRead;
   wire [15:0] MemAddress;
   wire [15:0] MemData;
   wire [10:0] mem_index;

   wire        Halt;         /* Halt executed and in writeback stage */
        
   integer     inst_count;
   integer     cycle_count;

   integer     trace_file;
   integer     sim_log_file;

   reg clk; /* Clock input */
   reg rst_n; /* (Active low) Reset input */
   
   reg ImemWrite;
   reg[15:0] ImemData;
   
   reg writeToFile;

     
   // General purpose cpu instance
   gp_cpu DUT(.clk(clk), .rst_n(rst_n), .H_done(H_done), .E_done(E_done),
		.ImemWrite(ImemWrite), .ImemData(ImemData), .writeToFile(writeToFile), .D_done(D_done), 
		.H_int(H_int), .E_int(E_int), .D_int(D_int), .index(mem_index), .cpu_done(Halt));






   /* Setup */
   initial begin
      $display("Simulation starting...");
      $display("See GP_CPU.log and GP_CPU.trace for output");
      inst_count = 0;
      trace_file = $fopen("GP_CPU.trace");
      sim_log_file = $fopen("GP_CPU.log");
   end





  /* Clock and Reset */
// Clock period is 100 time units, and reset length
// to 201 time units (two rising edges of clock).

   initial begin
      $dumpvars;
      cycle_count = 0;
      rst_n = 0; /* Intial reset state */
      clk = 0;
	  ImemWrite = 0;
	  ImemData = 16'h2027;	// I0: ADDI R0 R1 #7 ([R1] <- [R0] + 7)
	  writeToFile = 0;
	  
	  
	  @(posedge clk);
	  @(negedge clk);
      rst_n = 1; // delay until slightly after two clock periods
	  ImemWrite = 1;
	  
	  @(posedge clk);
	  @(negedge clk);
	  ImemData = 16'h2265;	// I1: ADDI R2 R3 #5 ([R3] <- [R2] + 5) 0x2265

	  @(posedge clk);
	  @(negedge clk);
	  ImemData = 16'h3175;	// I2: SUB R1 R3 R5 ([R5] <- [R1] - [R3])
	  
	  @(posedge clk);
	  @(negedge clk);
	  //ImemData = 16'h87F8;	// I3: BNE -8		// infinite loop
	  ImemData = 16'h8FF8;		// I3: BEQ -8
	  
	  @(posedge clk);
	  @(negedge clk);
	  ImemData = 16'h6562;	// I4: ST R5 R3 2 (Dmem[[R5] + 2] <- [R3])
	  
	  @(posedge clk);
	  @(negedge clk);
	  ImemData = 16'h6DE2;	// I5: LD R2 R7 2 ([R7] <- (Dmem[[R5] + 2]))
	  
	  @(posedge clk);
	  @(negedge clk);
	  ImemData = 16'h8006;	// I6:  BNE 6
	  
	  @(posedge clk);
	  @(negedge clk);
	  ImemData = 16'h0000;	// I7: NOP
	  
	  @(posedge clk);
	  @(negedge clk);
	  ImemData = 16'h0000;	// I8: NOP
	  
	  @(posedge clk);
	  @(negedge clk);
	  ImemData = 16'h0000;	// I9: NOP
	  
	  @(posedge clk);
	  @(negedge clk);
	  ImemData = 16'hFFFF;	// I10: HLT
	  
	  @(posedge clk);
	  @(negedge clk);
	  ImemData = 16'h2266;	// I11: ADDI R2 R3 #6 ([R3] <- [R2] + 6)
	  
	  @(posedge clk);
	  @(negedge clk);
	  rst_n = 0;
	  ImemWrite = 0;
	  writeToFile = 1;
	  
	  @(posedge clk);
	  @(posedge clk);
	  @(negedge clk);
	  rst_n = 1;
    end

    always #50 begin   // delay 1/2 clock period each time through loop
      clk = ~clk;
    end
    // catch infinite programs
    always @(posedge clk) begin
    if (writeToFile)
	  cycle_count = cycle_count + 1;
	else
	  cycle_count = 0;
	if (cycle_count > 100000) begin
		$display("More than 100000 cycles of simulation...error?\n");
		$finish;
	end
    end




   /* Stats */
   always @ (posedge clk) begin
      if (rst_n & writeToFile) begin
         if (Halt || RegWrite || MemWrite) begin
            inst_count = inst_count + 1;
         end
         $fdisplay(sim_log_file, "SIMLOG:: Cycle %d PC: %8x I: %8x R: %d %3d %8x M: %d %d %8x %8x",
                  cycle_count,
                  PC,
                  Instr,
                  RegWrite,
                  Rd,
                  WriteData,
                  MemRead,
                  MemWrite,
                  MemAddress,
                  MemData);
         if (RegWrite) begin
            if (MemRead) begin
               // ld
               $fdisplay(trace_file,"INUM: %8d PC: 0x%04x REG: %d VALUE: 0x%04x ADDR: 0x%04x",
                         (inst_count-1),
                        PC,
                        Rd,
                        WriteData,
                        MemAddress);
            end else begin
               $fdisplay(trace_file,"INUM: %8d PC: 0x%04x REG: %d VALUE: 0x%04x",
                         (inst_count-1),
                        PC,
                        Rd,
                        WriteData );
            end
         end else if (Halt) begin
            $fdisplay(sim_log_file, "SIMLOG:: Processor halted\n");
            $fdisplay(sim_log_file, "SIMLOG:: sim_cycles %d\n", cycle_count);
            $fdisplay(sim_log_file, "SIMLOG:: inst_count %d\n", inst_count);
            $fdisplay(trace_file, "INUM: %8d PC: 0x%04x",
                      (inst_count-1),
                      PC );
            $fclose(trace_file);
            $fclose(sim_log_file);            
            $stop;
         end else begin
            if (MemWrite) begin
               // store
               $fdisplay(trace_file,"INUM: %8d PC: 0x%04x ADDR: 0x%04x VALUE: 0x%04x",
                         (inst_count-1),
                        PC,
                        MemAddress,
                        MemData);
            end else begin
               // conditional branch or NOP
               inst_count = inst_count + 1;
               $fdisplay(trace_file, "INUM: %8d PC: 0x%04x",
                         (inst_count-1),
                         PC );
            end
         end 
      end
      
   end


   /* Assigns internal signals to top level wires */

   // Current PC
   assign PC = DUT.If_stage.cur_pc;
   
   // Current Instruction
   assign Instr = DUT.If_stage.instr;
   
   // RegWrite in writeback stage
   assign RegWrite = DUT.MemWb_regWrite;

   // Desitination register writeback stage
   assign Rd = DUT.MemWb_rd;

   // Data to be written to register in writeback stage
   assign WriteData = DUT.Wb_writeData;

   // Memory read signal Mem stage
   assign MemRead = DUT.ExMem_memToReg;

   // Memory write signal Mem stage
   assign MemWrite = DUT.ExMem_memWrite;

   // Memory address being accessed
   assign MemAddress = DUT.ExMem_alu_out;

   // Data to be written to Dmem 
   assign MemData = DUT.ExMem_val_to_write;

   
endmodule
