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

   wire        Halt;         /* Halt executed and in writeback stage */
        
   integer     inst_count;
   integer     cycle_count;

   integer     trace_file;
   integer     sim_log_file;

   reg clk; /* Clock input */
   reg rst_n; /* (Active low) Reset input */

     
   // General purpose cpu instance
   gp_cpu DUT(.clk(clk), .rst_n(rst_n), .H_done(H_done), .E_done(E_done), .D_done(D_done), 
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
      clk = 1;
      #201 rst_n = 1; // delay until slightly after two clock periods
    end

    always #50 begin   // delay 1/2 clock period each time through loop
      clk = ~clk;
    end
    // catch infinite programs
    always @(posedge clk) begin
    	cycle_count = cycle_count + 1;
	if (cycle_count > 100000) begin
		$display("More than 100000 cycles of simulation...error?\n");
		$finish;
	end
    end




   /* Stats */
   always @ (posedge clk) begin
      if (rst_n) begin
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
            $finish;
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
   assign PC = DUT.If.pc;
   
   // Current Instruction
   assign Instr = DUT.If.instr;
   
   // RegWrite in writeback stage
   assign RegWrite = DUT.MemWbRegWrite;

   // Desitination register writeback stage
   assign Rd = DUT.MemWb_rd;

   // Data to be written to register in writeback stage
   assign WriteData = DUT.MemWb_writeData;

   // Memory read signal Mem stage
   assign MemRead = DUT.ExMem_memRead;

   // Memory write signal Mem stage
   assign MemWrite = DUT.ExMem_memWrite;

   // Memory address being accessed
   assign MemAddress = DUT.ExMem_alu_out;

   // Data to be written to Dmem 
   assign MemData = DUT.ExMem_alu_in2;

   
endmodule
