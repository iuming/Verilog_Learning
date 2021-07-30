module top_module ( input clk, input d, output q );

    wire wire1, wire2;
    my_dff instance1(.clk(clk), .d(d), .q(wire1));
    my_dff instance2(.clk(clk), .d(wire1), .q(wire2));
    my_dff instance3(.clk(clk), .d(wire2), .q(q));

endmodule
