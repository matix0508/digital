module zad1_f_3(input [3:0] in, output reg F);
    always @(in) begin
        case(in)
            5, 7, 12, 13, 15: F=1;
            default: F=0;
        endcase
    end
endmodule