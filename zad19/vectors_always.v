module zad1_f_4_always (input [3:0] in, output F);
    always @* begin
        case (in)
            4'd0, 4d'2, 4d'3, 4d'8, 4d'10: F = 0;
            default: F = 1;
    end
endmodule