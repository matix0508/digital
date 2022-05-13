module counter (input clk, input rst_n, output [5:0] cnt);

reg [5:0] r_LFSR = 0;
reg r_XNOR;

always @(posedge clk)
    begin
      r_LFSR <= {r_LFSR[5:1], r_XNOR};
    end


always @(*) begin
    r_XNOR = r_LFSR[6] ^~ r_LFSR[5];
end
assign cnt = r_LFSR[5:1];
   
endmodule