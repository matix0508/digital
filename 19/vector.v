module zad1_f_632_6(input a, b, c, d, output f1);
    assign f1 = (~c & d) | (b & ~c);
endmodule

module zad1_f_632_3(input [3:0] f2input, output f2);
    wire a, b, c, d;
    assign {a, b, c, d} = f2input;
    assign f2 = (~b & ~c & d) | (a & ~b &d) | (b & c);
endmodule

module zad1_f_632_2(input [3:0] f3input, output reg f3);
    always @(f3input) begin
        case(f3input)
        5, 7, 12, 13, 15: f3=1;
        default: f3=0;
        endcase
    end
endmodule