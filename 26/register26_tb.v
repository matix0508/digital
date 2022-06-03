module test;

    reg reset = 0;
    reg clk = 0;
    wire[3:0] vec;

    always #1 clk = ~clk;

    register26 c1 (clk, reset, vec);

    initial begin
        $dumpfile("register26.vcd");
        $dumpvars(0, test);

        # 15 reset = 1;
        # 90 $finish;


    end

    initial begin
        $monitor("At time %t, value = %d (%b)", $time, vec, vec);
    end


endmodule