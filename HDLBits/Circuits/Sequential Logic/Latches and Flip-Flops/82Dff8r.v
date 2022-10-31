module top_module (
    input clk,
    input reset,            // Synchronous reset
    input [7:0] d,
    output [7:0] q
);

    always @(posedge clk) begin
        case (reset)
            0 : q = d;
            default: q = 0;
        endcase
    end

endmodule
