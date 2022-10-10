module top_module( 
    input [255:0] in,
    input [7:0] sel,
    output out );

    integer i;

    assign i = sel;
    assign out = in[i];

endmodule
