module zad1_f_1(
    input A, B, C, D, 
    output F
);
    assign F = ((B & D) | (A & B & (~C)));
endmodule

module zad1_f_2(input [3:0] in, output F);
    wire A, B, C, D;
    assign {A, B, C, D} = in;
    assign F = (A & ~B & D)|(~A & B & D) | (C & ~B & D);
endmodule

module zad1_f_3(input [3:0] in, output reg F);
    always @(in) begin
        case(in)
            5, 7, 12, 13, 15: F=1;
            default: F=0;
        endcase
    end
endmodule