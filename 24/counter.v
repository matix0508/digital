module register24 (input clk, input rst_n, output reg[3:0] out);

reg x = 0;


always @(posedge clk, negedge rst_n)
    begin
      if(!rst_n) begin
        out <= 0;
      end else begin
        x <= out[3] ^~ out[2];
        out <= {out[2:0], x};
      end
    end
   
endmodule