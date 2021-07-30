module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);

    wire [7:0] wire1, wire2, wire3;
    my_dff8 instance1(.clk(clk), .d(d), .q(wire1));
    my_dff8 instance2(.clk(clk), .d(wire1), .q(wire2));
    my_dff8 instance3(.clk(clk), .d(wire2), .q(wire3));

    always @(*) begin
        case(sel)
            0 : q = d;
            1 : q = wire1;
            2 : q = wire2;
            3 : q = wire3;
        endcase
    end

endmodule
