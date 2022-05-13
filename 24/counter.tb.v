module tb_counter;
reg clk;
reg rst_n;  
wire [5:0] cnt;


always
    #10 clk = ~clk;
initial begin
    rst_n = 0;
    clk = 0;
    #5 rst_n = 1;
    #100; $finish;
end
counter c0(
    .clk(clk),
    .rst_n(rst_n),
    .cnt(cnt)
);
   initial begin
      $dumpfile("counter.vcd");
      $dumpvars(0,tb_counter);
      clk <= 0;
      rst_n <= 0;

   end

endmodule