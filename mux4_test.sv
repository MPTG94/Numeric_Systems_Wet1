// 4->1 multiplexer test bench template
module mux4_test;

// Put your code here
// ------------------
    logic mux_d0;
    logic mux_d1;
    logic mux_d2;
    logic mux_d3;
    logic [1:0] mux_sel;
    logic mux_z;

    mux4 uut(
        .d0(mux_d0),
        .d1(mux_d1),
        .d2(mux_d2),
        .d3(mux_d3),
        .sel(mux_sel),
        .z(mux_z)
    );

    initial begin
        // 0 - 50
        // 0,0,0,0,0,0 -> 0
        mux_d0 = 1'b0;
        mux_d1 = 1'b0;
        mux_d2 = 1'b0;
        mux_d3 = 1'b0;
        mux_sel[1] = 1'b0;
        mux_sel[0] = 1'b0;

        // 50 - 100
        // 1,0,0,0,0,0 -> 1
        #50
        mux_d0 = 1'b1;
        mux_d1 = 1'b0;
        mux_d2 = 1'b0;
        mux_d3 = 1'b0;
        mux_sel[1] = 1'b0;
        mux_sel[0] = 1'b0;

        // 100 - 150
        // 0,0,0,0,0,0 -> 0
        #50
        mux_d0 = 1'b0;
        mux_d1 = 1'b0;
        mux_d2 = 1'b0;
        mux_d3 = 1'b0;
        mux_sel[1] = 1'b0;
        mux_sel[0] = 1'b0;

        // safety wait for easy testing
        #50;
    end


// End of your code

endmodule