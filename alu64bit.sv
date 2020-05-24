// 64-bit ALU template
module alu64bit (
    input logic [63:0] a,    // Input bit a
    input logic [63:0] b,    // Input bit b
    input logic cin,         // Carry in
    input logic [1:0] op,    // Operation
    output logic [63:0] s,   // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------
    logic [63:0] cin_vec;
    alu1bit alu_s (
        .a(a[0]),
        .b(b[0]),
        .cin(cin),
        .op(op),
        .s(s[0]),
        .cout(cin_vec[1])
    );
    genvar i;
    generate
        for (i = 1; i < 63; i++) 
        begin
            alu1bit alu_inst(
                .a(a[i]),
                .b(b[i]),
                .cin(cin_vec[i]),
                .op(op),
                .s(s[i]),
                .cout(cin_vec[i+1])
            );    
        end
    endgenerate
    alu1bit alu_f (
        .a(a[63]),
        .b(b[63]),
        .cin(cin_vec[63]),
        .op(op),
        .s(s[63]),
        .cout(cout)
    );

// End of your code

endmodule


// // 1-bit ALU template
// module alu1bit (
//     input logic a,           // Input bit a
//     input logic b,           // Input bit b
//     input logic cin,         // Carry in
//     input logic [1:0] op,    // Operation
//     output logic s,          // Output S
//     output logic cout        // Carry out
// );