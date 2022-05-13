module shift_reg #(parameter MSB = 5) 
(
    input d, 
    input clk, 
    input en,
    input rstn, 
    output reg [MSB-1:0] out
);
    always @ (posedge clk)  
        if (!rstn)
            out <= 0;
        else begin
            if (!en)
                out <= out;
            else
                out <= {d, out[MSB-1:1]};
        end
endmodule  