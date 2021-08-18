module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire [399:0] cout_temp;
    bcd_fadd instance1(.a(a[3:0]), .b(b[3:0]), .cin(cin), .cout(cout_temp[0]), .sum(sum[3:0]));
    assign cout = cout_temp[396];

    generate
        genvar i;
        for(i = 4; i < 400; i = i + 4) begin : adder
            bcd_fadd instances(.a(a[i+3:i]), .b(b[i+3:i]), .cin(cout_temp[i-4]), .cout(cout_temp[i]), .sum(sum[i+3:i]));
        end
    endgenerate

endmodule
