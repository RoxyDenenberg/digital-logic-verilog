`timescale 1ns / 1ps

module part1_TB;

    // Signals
    reg [3:0] count;
    reg select;
    reg [3:0] input1, input2;
    wire [3:0] output1;
    
    // Instantiation
    four_bit_2to1mux instantiate_mux4(.sel(select), .a(input1), .b(input2), .chosen(output1));
    
    // Logic for GTKWave
    initial begin 
        $dumpfile("part1_sim.vcd");
        $dumpvars(0, part1_TB);
        count = 4'b0000;
        #500 $finish; // This stops the simulation after 500ns
    end
    
    // Clock/Counter logic
    always begin
        #50 count = count + 4'b0001;
    end
    
    // Stimulus logic
    always @(count) begin
        case (count)
            4'b0000 : begin input1 = 4'b0000; input2 = 4'b0001; select = 1'b0; end
            4'b0001 : begin input1 = 4'b0110; input2 = 4'b0011; select = 1'b1; end
            4'b0010 : begin input1 = 4'b0100; input2 = 4'b0111; select = 1'b0; end 
            4'b0011 : begin input1 = 4'b1000; input2 = 4'b1111; select = 1'b1; end
            default : begin input1 = 4'b0000; input2 = 4'b0000; select = 1'b0; end
        endcase // Check if you have 'endcase' here!
    end

endmodule // Check if you have 'endmodule' here!