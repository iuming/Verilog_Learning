module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);

    integer i;
    wire [4:0] cout;
    assign cout[0] = 0;
    always @(*) begin
        for (i = 0; i < 4; i++) begin
            sum[i] = x[i] ^ y[i] ^ cout[i];
            cout[i+1] = x[i] & y[i] | x[i] & cout[i] | y[i] & cout[i];
        end    
        sum[4] = cout[4];
    end

endmodule
