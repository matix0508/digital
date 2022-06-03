module counter 
(
    input clk,
    input rstn,
    output reg[5:0] out
);
always @(posedge clk, negedge rstn) begin
    if(!rstn) begin
        out <= 0;
    end else begin
        case(out)
            17: out <= 0;
            4: out <= 6;
            12: out <= 14;
            default: out <= out + 1;
        endcase

        
    end
end

endmodule