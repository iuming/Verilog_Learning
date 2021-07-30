module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire [15:0] sum1, sum2, sum3, wire4;
    wire cin1, cout1, cin2, cout2, cin3, cout3;
    assign cin1 = 0;
    assign cin2 = 0;
    assign cin3 = 1;

    add16 instance1(.a(a[15:0]), .b(b[15:0]), .cin(cin1), .sum(sum1), .cout(cout1));
    add16 instance2(.a(a[31:16]), .b(b[31:16]), .cin(cin2), .sum(sum2), .cout(cout2));
    add16 instance3(.a(a[31:16]), .b(b[31:16]), .cin(cin3), .sum(sum3), .cout(cout3));

    always @(*) begin
        case(cout1)
            0 : wire4 = sum2;
            1 : wire4 = sum3;
        endcase
    end

    assign sum = {wire4, sum1};

endmodule
 