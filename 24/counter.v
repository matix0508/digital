module counter
(
    input clk,
    input en,

    input [5-1:0] in,
    output [5-1:0] out
);
reg [5-1:0] r_counter = 0;
reg r_XNOR;

always @(posedge clk)
begin
    if (en) begin
        r_counter <= r_counter + 1;
        r_XNOR <= {r_counter[5-1:1], r_XNOR};
end

always @(*)
begin
    r_XNOR = r_counter[5] ^~ r_counter[3];
end

assign out = r_counter[5-1:1];

endmodule