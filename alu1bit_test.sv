// ALU 1bit test bench template
module alu1bit_test;

// Put your code here
// ------------------
    logic alu_a;
    logic alu_b;
    logic alu_cin;
    logic [1:0] alu_op;
    logic alu_s;
    logic alu_cout;

    alu1bit uut(
        .a(alu_a),
        .b(alu_b),
        .cin(alu_cin),
        .op(alu_op),
        .s(alu_s),
        .cout(alu_cout)
    );

    initial begin
        // // 0 - 60
        // // 0,0,0,[1,0] -> 0,0
        // alu_a = 1'b0;
        // alu_b = 1'b0;
        // alu_cin = 1'b0;
        // alu_op[1] = 1'b1;
        // alu_op[0] = 1'b0;

        // // ADD op
        // // 60 - 120
        // // 0,0,1,[1,0] -> 1,0
        // #60
        // alu_a = 1'b0;
        // alu_b = 1'b0;
        // alu_cin = 1'b1;
        // alu_op[1] = 1'b1;
        // alu_op[0] = 1'b0;

        // // ADD op
        // // 120 - 180
        // // 0,0,0,[1,0] -> 0,0
        // #60
        // alu_a = 1'b0;
        // alu_b = 1'b0;
        // alu_cin = 1'b0;
        // alu_op[1] = 1'b1;
        // alu_op[0] = 1'b0;

        // // NOR op
        // // 180 - 240
        // // 0,0,0,[0,0] -> 1,dc
        // #60
        // alu_a = 1'b0;
        // alu_b = 1'b0;
        // alu_cin = 1'b0;
        // alu_op[1] = 1'b0;
        // alu_op[0] = 1'b0;

        // // NOR op
        // // 240 - 300
        // // 1,0,0,[0,0] -> 0,dc
        // #60
        // alu_a = 1'b1;
        // alu_b = 1'b0;
        // alu_cin = 1'b0;
        // alu_op[1] = 1'b0;
        // alu_op[0] = 1'b0;

        // // NOR op
        // // 300 - 360
        // // 1,1,0,[0,0] -> 0,dc
        // #60
        // alu_a = 1'b1;
        // alu_b = 1'b1;
        // alu_cin = 1'b0;
        // alu_op[1] = 1'b0;
        // alu_op[0] = 1'b0;

        // // NOR op
        // // 360 - 420
        // // 0,1,0,[0,0] -> 0,dc
        // #60
        // alu_a = 1'b0;
        // alu_b = 1'b1;
        // alu_cin = 1'b0;
        // alu_op[1] = 1'b0;
        // alu_op[0] = 1'b0;

        // // XOR op
        // // 420 - 480
        // // 0,0,0,[0,1] -> 0,dc
        // #60
        // alu_a = 1'b0;
        // alu_b = 1'b0;
        // alu_cin = 1'b0;
        // alu_op[1] = 1'b0;
        // alu_op[0] = 1'b1;

        // // XOR op
        // // 480 - 540
        // // 1,0,0,[0,1] -> 1,dc
        // #60
        // alu_a = 1'b1;
        // alu_b = 1'b0;
        // alu_cin = 1'b0;
        // alu_op[1] = 1'b0;
        // alu_op[0] = 1'b1;

        // // XOR op
        // // 600 - 660
        // // 1,1,0,[0,1] -> 0,dc
        // #60
        // alu_a = 1'b1;
        // alu_b = 1'b1;
        // alu_cin = 1'b0;
        // alu_op[1] = 1'b0;
        // alu_op[0] = 1'b1;

        // // XOR op
        // // 660 - 720
        // // 0,1,0,[0,1] -> 1,dc
        // #60
        // alu_a = 1'b0;
        // alu_b = 1'b1;
        // alu_cin = 1'b0;
        // alu_op[1] = 1'b0;
        // alu_op[0] = 1'b1;

        // // ADD op
        // // 720 - 780
        // // 1,1,0,[1,0] -> 0,1
        // #60
        // alu_a = 1'b1;
        // alu_b = 1'b1;
        // alu_cin = 1'b0;
        // alu_op[1] = 1'b1;
        // alu_op[0] = 1'b0;

        // // SUB op
        // // 780 - 840
        // // 1,1,0,[1,1] -> 0,0
        // #60
        // alu_a = 1'b1;
        // alu_b = 1'b1;
        // alu_cin = 1'b0;
        // alu_op[1] = 1'b1;
        // alu_op[0] = 1'b1;


        // // NEW TESTS FOR TIMINGS

        // // #1

        // // ADD op
        // // 840 - 900
        // // 1,1,1,[1,0] -> 0,0
        // #60
        // alu_a = 1'b1;
        // alu_b = 1'b1;
        // alu_cin = 1'b1;
        // alu_op[1] = 1'b1;
        // alu_op[0] = 1'b0;

        // // ADD op
        // // 900 - 960
        // // 0,1,1,[1,0] -> 0,0
        // #60
        // alu_a = 1'b0;
        // alu_b = 1'b1;
        // alu_cin = 1'b1;
        // alu_op[1] = 1'b1;
        // alu_op[0] = 1'b0;

        // // #2

        // // ADD op
        // // 960 - 1020
        // // 1,1,0,[1,0] -> 0,0
        // #60
        // alu_a = 1'b1;
        // alu_b = 1'b1;
        // alu_cin = 1'b0;
        // alu_op[1] = 1'b1;
        // alu_op[0] = 1'b0;

        // // ADD op
        // // 1020 - 1080
        // // 1,1,1,[1,0] -> 0,0
        // #60
        // alu_a = 1'b1;
        // alu_b = 1'b1;
        // alu_cin = 1'b1;
        // alu_op[1] = 1'b1;
        // alu_op[0] = 1'b0;

        // // #3

        // // ADD op
        // // 1080 - 1140
        // // 1,1,0,[1,0] -> 0,0
        // #60
        // alu_a = 1'b1;
        // alu_b = 1'b1;
        // alu_cin = 1'b0;
        // alu_op[1] = 1'b1;
        // alu_op[0] = 1'b0;

        // // ADD op
        // // 1140 - 1200
        // // 1,1,0,[1,1] -> 0,0
        // #60
        // alu_a = 1'b1;
        // alu_b = 1'b1;
        // alu_cin = 1'b0;
        // alu_op[1] = 1'b1;
        // alu_op[0] = 1'b1;

        // safety wait for easy testing
        // #60
        alu_a = 1'b1;
        alu_b = 1'b0;
        alu_cin = 1'b1;
        alu_op[1] = 1'b1;
        alu_op[0] = 1'b0;

        #60
        alu_a = 1'b1;
        alu_b = 1'b0;
        alu_cin = 1'b0;
        alu_op[1] = 1'b1;
        alu_op[0] = 1'b0;

        #60
        alu_a = 1'b1;
        alu_b = 1'b0;
        alu_cin = 1'b1;
        alu_op[1] = 1'b1;
        alu_op[0] = 1'b0;

        // safety wait for easy testing
        #60;

    end

// End of your code

endmodule