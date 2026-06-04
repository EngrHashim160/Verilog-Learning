module mux_2to1 (
    input wire a,
    input wire b,
    input wire s,
    output reg y       
);
    always @(*) begin
        if (s==0)
            y = a;
        else
            y = b;
    end

endmodule