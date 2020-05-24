// 1-bit ALU template
module alu1bit (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic [1:0] op,    // Operation
    output logic s,          // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------
    logic d,e,f,g,h;
    OR2 #(
        .Tpdlh(6),
        .Tpdhl(10)
    ) OR1 (
        .A(a),
        .B(b),
        .Z(e)
    );

    XOR2 #(
        .Tpdlh(2),
        .Tpdhl(1)
    ) XOR4 (
        .A(a),
        .B(b),
        .Z(g)
    );

    NOT #(
        .Tpdlh(1),
        .Tpdhl(3)
    ) NOT2 (
        .A(op[0]),
        .Z(d)
    );

    NOT #(
        .Tpdlh(1),
        .Tpdhl(3)
    ) NOT3 (
        .A(e),
        .Z(f)
    );

    mux4 mux (
        .d0(f),
        .d1(g),
        .d2(h),
        .d3(h),
        .sel(op),
        .z(s)
    );

    fas fas (
        .a(a),
        .b(b),
        .cin(cin),
        .a_ns(d),
        .s(h),
        .cout(cout)
    );

// End of your code

endmodule