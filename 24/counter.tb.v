module test;
reg clk = 0;
reg rst_n = 0;  
wire [3:0] cnt;


always #1 clk = ~clk;

counter c0(clk, rst_n, cnt);
   initial begin
      $dumpfile("counter.vcd");
      $dumpvars(0,test);
        # 15 rst_n = 1;
        # 72 $finish;

   end

   initial begin
       $monitor("At time %t, value = %d (%b)", $time, cnt, cnt);
   end

endmodule