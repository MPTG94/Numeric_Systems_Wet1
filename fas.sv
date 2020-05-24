// Full Adder/Subtractor template
module fas (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic a_ns,        // A_nS (add/not subtract) control
    output logic s,          // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------
    logic d,e,f,g,h,i,j,k,l,m;
    XOR2 #(
        .Tpdlh(2),
        .Tpdhl(1)
    ) XOR1 (
        .A(a),
        .B(b),
        .Z(d)
    );

    XOR2 #(
        .Tpdlh(2),
        .Tpdhl(1)
    ) XOR2 (
        .A(d),
        .B(cin),
        .Z(s)
    );

    XOR2 #(
        .Tpdlh(2),
        .Tpdhl(1)
    ) XOR5 (
        .A(a_ns),
        .B(a),
        .Z(g)
    );

    OR2 #(
        .Tpdlh(6),
        .Tpdhl(10)
    ) OR3 (
        .A(b),
        .B(cin),
        .Z(h)
    );

    OR2 #(
        .Tpdlh(6),
        .Tpdhl(10)
    ) OR7 (
        .A(g),
        .B(i),
        .Z(j)
    );

    OR2 #(
        .Tpdlh(6),
        .Tpdhl(10)
    ) OR9 (
        .A(e),
        .B(f),
        .Z(k)
    );

    OR2 #(
        .Tpdlh(6),
        .Tpdhl(10)
    ) OR12 (
        .A(l),
        .B(m),
        .Z(cout)
    );

    NOT #(
        .Tpdlh(1),
        .Tpdhl(3)
    ) NOT4 (
        .A(b),
        .Z(e)
    );

    NOT #(
        .Tpdlh(1),
        .Tpdhl(3)
    ) NOT6 (
        .A(h),
        .Z(i)
    );

    NOT #(
        .Tpdlh(1),
        .Tpdhl(3)
    ) NOT8 (
        .A(cin),
        .Z(f)
    );

    NOT #(
        .Tpdlh(1),
        .Tpdhl(3)
    ) NOT10 (
        .A(k),
        .Z(l)
    );

    NOT #(
        .Tpdlh(1),
        .Tpdhl(3)
    ) NOT11 (
        .A(j),
        .Z(m)
    );

// End of your code

endmodule
