module tb_shift_reg;    

   reg data;               
   reg clk;              
   reg en;                 
   reg rstn;         
   wire [4:0] out;       

   shift_reg  sr0  (
        .d (data),
        .clk (clk),
        .en (en),
        .rstn (rstn),
        .out (out)
    );

   always #10 clk = ~clk;

   initial begin
      $dumpfile("shift_register_zad23_tb.vcd");
      $dumpvars(0,tb_shift_reg);
      clk <= 0;
      en <= 0;
      rstn <= 0;
      data <= 5'b00000;
   end

   initial begin
      rstn <= 0;
      #20 rstn <= 1;
          en <= 1;

      repeat (7) @ (posedge clk)
         data <= ~data;

      repeat (7) @ (posedge clk);

      $finish;
   end

   initial
      $monitor ("rstn=%0b data=%b, en=%0b, out=%b", rstn, data, en, out);
endmodule