module register26(input clk, rst_n, output reg [3:0]D);
        reg [3:0] delta = 1; //

        always @(posedge clk, negedge rst_n) begin
                if(!rst_n) begin
                        D <=0;
                end else begin
                        D<= D + delta;
                end

        end
        always @(posedge clk) begin
                case(D)
                        1: delta <= 1;
                        14: delta <= 15;
                endcase
        end
endmodule
