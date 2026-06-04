module mux_4to1 (
    input wire i0,
    input wire i1,
    input wire i2,
    input wire i3,
    input wire [1:0] s,
    output reg y
);

    always @(*) begin
        case (s)
            2'b00: y = i0;
            2'b01: y = i1;
            2'b10: y = i2;
            2'b11: y = i3;
        endcase
    end

endmodule
