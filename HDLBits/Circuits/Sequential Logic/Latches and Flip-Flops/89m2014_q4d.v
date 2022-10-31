module top_module (
    input clk,
    input in, 
    output out);

    wire tmp;
    always @(posedge clk) begin
        out = in ^ tmp;
        tmp = out;
    end

endmodule
