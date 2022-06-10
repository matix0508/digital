module counter 
(
    input clk,
    input wire rstn,
    input [3:0] in,
    output reg[4:0] out
);

reg[8:0] temp;

always @(posedge clk) begin
    if(!rstn) begin
        temp <= 0;
        out[4:0] <= temp[8:4];

    end else begin
    
        temp <= temp + in;
        out[4:0] <= temp[8:4];
    end
end

endmodule

module res
(
    input clk,
    input rstn,
    output reg reset,
    output reg[4:0] temp

);

parameter temp_2 = 31;

always @(posedge clk) begin
    if(!rstn) begin
        temp <= 0;
        reset <= 0;
    end else begin
        if (temp == 31) begin 
            temp <= 0;
            reset <= 0;
        end else begin 
            temp <= temp +1;
            reset <= 1;
        end
        
    end
end
endmodule
