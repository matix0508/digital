module register24 (input clk, input rst_n, output reg[3:0] out);

wire x;


always @(posedge clk, negedge rst_n)
    begin
      if(!rst_n) begin
        out <= 0;
      end else begin
        out <= {out[2:0], x};
      end
    end
  assign x = out[3] ^~ out[2];
   
endmodule