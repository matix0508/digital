module register26(
input clk, 
rst_n, 
output reg [3:0]OUT
);
        reg [3:0] d = 1; //

        always @(posedge clk, negedge rst_n) 
        begin
                if(!rst_n) begin
                        OUT <=0;
                end else 
                begin
                        OUT <= OUT + d;
                end

        end
        always @(posedge clk) begin
                case(OUT)
                        1: d <= 1;
                        14: d <= 15;
                endcase
        end
endmodule
