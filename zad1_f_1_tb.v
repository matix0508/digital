// `timescale 1ns/100ps

module my_tb;

	wire a, b, c, d;
	integer k=0;

	assign {a, b, c, d} = k;
	gate circu(a, b, c, d, f);

	initial begin
		$dumpfile("my_res.vcd");
		$dumpvars(0, my_tb);
        
        #10;

		for(k=0; k<16; k=k+1)
			#10 $display("%2d (%b) -> %b", k, k[3:0], f );
		$finish;
	end
endmodule

