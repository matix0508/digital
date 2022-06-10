`timescale 1ns/1ps

module test;
    reg clk;
    reg rstn;
    reg [3:0] in;
    wire reset;

    wire [4:0] out;
    wire [4:0] temp;

    res two(
        .clk(clk),
        .rstn(rstn),
        .temp(temp),
        .reset(reset)
    );

    counter one(
         .clk(clk),
         .rstn(reset),
         .in(in),
         .out(out)
    );



    always #10 clk = ~clk;

    initial begin
        $dumpfile("projekt.vcd");
        $dumpvars(0, test);

        clk = 0;
        rstn = 0;
        in = 4;
        #15 rstn = 1;
      #1000 $finish;
    end


endmodule