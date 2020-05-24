// Full Adder/Subtractor test bench template
module fas_test;

// Put your code here
// ------------------
    logic fas_a;
    logic fas_b;
    logic fas_cin;
    logic fas_a_ns;
    logic fas_s;
    logic fas_cout;

    fas uut(
        .a(fas_a),
        .b(fas_b),
        .cin(fas_cin),
        .a_ns(fas_a_ns),
        .s(fas_s),
        .cout(fas_cout)
    );

    initial begin
        // 0 - 40
        // 0,0,0,0 -> 0,0
        fas_a = 1'b0;
        fas_b = 1'b0;
        fas_cin = 1'b0;
        fas_a_ns = 1'b0;

        // fas needs 30ns to stabilize
        // 40 - 60
        // 1,0,0,0 -> 1,0
        #40
        fas_a = 1'b1;
        fas_b = 1'b0;
        fas_cin = 1'b0;
        fas_a_ns = 1'b0;

        // 60 - 80
        // 0,0,0,0 -> 0,0
        #20
        fas_a = 1'b0;
        fas_b = 1'b0;
        fas_cin = 1'b0;
        fas_a_ns = 1'b0;

        // safety wait for easy testing
        #20;

    end

// End of your code

endmodule