module vector_tb;

reg reset = 0;
reg A, B, C, D;
wire F;
integer i;

zad1_f_3 f3 ({A, B, C, D}, F3);

initial begin

    $dumpfile("zad1_f_1_tb.vcd");
    $dumpvars(0,vector_tb);


    A = 0;
    B = 0;
    C = 0;
    D = 0;

    for(i = 0; i < 16; i = i+1) begin
        {A,B,C,D} = i;
        #10;
    end

    $display("Test is complete");

end

endmodule