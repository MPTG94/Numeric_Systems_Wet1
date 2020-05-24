// 64-bit ALU test bench template
module alu64bit_test;

// Put your code here
// ------------------
    logic [63:0] alu64bit_a;
    logic [63:0] alu64bit_b;
    logic alu64bit_cin;
    logic [1:0] alu64bit_op;
    logic [63:0] alu64bit_s;
    logic alu64bit_cout;

    alu64bit uut(
        .a(alu64bit_a),
        .b(alu64bit_b),
        .cin(alu64bit_cin),
        .op(alu64bit_op),
        .s(alu64bit_s),
        .cout(alu64bit_cout)
    );

    initial begin
        // alu64 takes 1932ns to stabilize
        // 0 - 2000
        // [1*],[0*],0,1,0 - [1*],0
        alu64bit_a = {64{1'b1}};
        alu64bit_b = {64{1'b0}};
        alu64bit_cin = 1'b1;
        alu64bit_op[1] = 1'b1;
        alu64bit_op[0] = 1'b0;

        // alu64 takes 1932ns to stabilize
        // 0 - 2000
        // [1*],[0*],1,1,0 - [0*],1
        #2000;
        alu64bit_a = {64{1'b1}};
        alu64bit_b = {64{1'b0}};
        //alu64bit_b[0] = 1'b1;
        alu64bit_cin = 1'b0;
        alu64bit_op[1] = 1'b1;
        alu64bit_op[0] = 1'b0;

        // safety wait for easy testing
        #2000;
    end

// End of your code

endmodule