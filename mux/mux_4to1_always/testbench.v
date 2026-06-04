module testbench;
    reg i0, i1, i2, i3;
    reg [1:0] s;
    wire y;

    mux_4to1 uut (
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .s(s),
        .y(y)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        // Distinct values so we can see which input is selected
        i0 = 1;
        i1 = 0;
        i2 = 1;
        i3 = 0;

        s = 2'b00; #10;   // y should = i0 = 1
        s = 2'b01; #10;   // y should = i1 = 0
        s = 2'b10; #10;   // y should = i2 = 1
        s = 2'b11; #10;   // y should = i3 = 0

        $finish;
    end

endmodule
