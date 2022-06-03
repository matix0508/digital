module test;
    reg clk = 0;
    reg rstn = 0;
    wire [5:0] out;

    always #1 clk = ~clk;
    counter c0(clk, rstn, out);

    initial begin
      $dumpfile("counter25.vcd");
      $dumpvars(0, test);

      # 15 rstn = 1;
      # 72 $finish;
    end

    initial begin
      $monitor("At time %t, value = %d (%b)", $time, out, out);
    end


endmodule