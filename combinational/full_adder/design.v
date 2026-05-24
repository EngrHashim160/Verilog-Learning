module full_adder (
    input wire A,
    input wire B,
    input wire Cin,
    output wire Sum,
    output wire Cout
);

    // Internal wires to connect the two half adders and the OR gate
    wire S1;   // sum output of the first half adder
    wire C1;   // carry output of the first half adder
    wire C2;   // carry output of the second half adder

    // First Half Adder: adds A and B
    assign S1 = A ^ B;
    assign C1 = A & B;

    // Second Half Adder: adds S1 and Cin
    assign Sum = S1 ^ Cin;
    assign C2  = S1 & Cin;

    // Final OR gate: combines the two carries to produce final Cout
    assign Cout = C1 | C2;

endmodule
