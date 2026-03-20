module two_bit_4to1muxV2 (s,u,v,w,x,m);
 
	input[1:0] s;
	input[1:0] u,v,w,x;
	output reg[1:0] m;
	
	reg[1:0] t1, t2;
	
   always @(u, v, w, x, s[0]) begin
        if (s[0] == 1'b0) begin
            t1 = u;  //u[0] and u[1]   
            t2 = w;
        end else begin
            t1 = v;
            t2 = x;
        end
    end

    always @(t1, t2, s[1]) begin
        if (s[1] == 1'b0) begin
            m = t1;
        end else begin
            m = t2;
        end
    end

endmodule
