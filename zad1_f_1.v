module gate ( input A, B, C, D, output F);
assign F = ((B & D) | (A & B & (~C)));
endmodule