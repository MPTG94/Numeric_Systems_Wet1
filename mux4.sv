// 4->1 multiplexer template
module mux4 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic d2,          // Data input 2
    input logic d3,          // Data input 3
    input logic [1:0] sel,   // Select input
    output logic z           // Output
);

// Put your code here
// ------------------
    logic e,f;
    mux2 mux1 (
        .d0(d0),
        .d1(d2),
        .sel(sel[1]),
        .z(e)
    );

    mux2 mux2 (
        .d0(d1),
        .d1(d3),
        .sel(sel[1]),
        .z(f)
    );

    mux2 mux3 (
        .d0(e),
        .d1(f),
        .sel(sel[0]),
        .z(z)
    );


// End of your code

endmodule