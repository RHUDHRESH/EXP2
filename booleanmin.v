module booleanmin(a, b, c, d, w, x, y, z, f1, f2);
    input a, b, c, d, w, x, y, z;
    output f1, f2;

    wire not_a, not_b, not_c, not_d, not_w, not_x, not_y, not_z;

    // Generate inverted signals
    assign not_a = ~a;
    assign not_b = ~b;
    assign not_c = ~c;
    assign not_d = ~d;
    assign not_w = ~w;
    assign not_x = ~x;
    assign not_y = ~y;
    assign not_z = ~z;

    // Intermediate wires for logic
    wire p = not_a & not_b & not_d;
    wire q = a & not_b & c & not_d;
    wire r = not_a & b & c & not_c;
    wire s = a & not_b & not_c & not_d;

    wire t = not_w & not_x & not_y;
    wire u = not_w & x & not_y;
    wire v = not_w & not_x & y;

    // Output logic
    assign f1 = p | q | r | s;
    assign f2 = t | u | v;

endmodule
