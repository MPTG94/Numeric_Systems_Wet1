// 2->1 multiplexer template
module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);

// Put your code here
// ------------------
    logic c,d,e,f,g,h,i;
    NOT #(
        .Tpdlh(1),
        .Tpdhl(3)
    ) NOT1 (
        .A(d0),
        .Z(c)
    );

    NOT #(
        .Tpdlh(1),
        .Tpdhl(3)
    ) NOT2 (
        .A(d1),
        .Z(d)
    );

    NOT #(
        .Tpdlh(1),
        .Tpdhl(3)
    ) NOT4 (
        .A(sel),
        .Z(e)
    );

    NOT #(
        .Tpdlh(1),
        .Tpdhl(3)
    ) NOT6 (
        .A(f),
        .Z(h)
    );

    NOT #(
        .Tpdlh(1),
        .Tpdhl(3)
    ) NOT7 (
        .A(g),
        .Z(i)
    );

    OR2 #(
        .Tpdlh(6),
        .Tpdhl(10)
    ) OR3 (
        .A(c),
        .B(sel),
        .Z(f)
    );

    OR2 #(
        .Tpdlh(6),
        .Tpdhl(10)
    ) OR5 (
        .A(d),
        .B(e),
        .Z(g)
    );

    OR2 #(
        .Tpdlh(6),
        .Tpdhl(10)
    ) OR8 (
        .A(h),
        .B(i),
        .Z(z)
    );

// End of your code

endmodule
