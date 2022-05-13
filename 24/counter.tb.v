module LFSR_TB ();

   
  reg r_Clk = 1'b0;
   
  wire [5-1:0] w_LFSR_Data;
  wire w_LFSR_Done;
   
  LFSR  LFSR_inst
         (.clk(r_Clk),
          .en(1'b1), // Replication
          .in(w_LFSR_Data),
          .out(w_LFSR_Done)
          );
  
  always @(*)
    #10 r_Clk <= ~r_Clk; 
   
endmodule // LFSR_TB