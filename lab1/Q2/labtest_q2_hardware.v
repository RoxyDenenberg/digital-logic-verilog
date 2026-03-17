module labtest_q2_hardware  (a,b,c,d,x,y);
    input[3:0] a, b, d;
    input c;
    output[3:0] x;
    output y;

    wire t1,t2,t3;
    wire[3:0] t4,t5, t6; //you may use this, but do not have to
    reg[3:0] t7; //you may use this, but do not have to

    circuitA comb1(.a(a),.b(b),.c(c),.x(t1),.y(t4));
    circuitB comb2(.a(d),.b(a),.x(t5),.y(t6),.z(y));
    
    always @(t1, t5, t4) begin
        if (t1) begin
            t7<= t5;
        end else begin
			t7<= t4;
		end
		
    end
    
    circuitC comb3(.a(t7),.b(t6),.x(x));

endmodule

