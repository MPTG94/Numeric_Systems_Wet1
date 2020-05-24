// 2->1 multiplexer test bench template
module mux2_test;

// Put your code here
// ------------------
    logic mux_d0;
    logic mux_d1;
    logic mux_sel;
    logic mux_z;

    mux2 uut(
        .d0(mux_d0),
        .d1(mux_d1),
        .sel(mux_sel),
        .z(mux_z)
    );

    initial begin
        // 0 - 30
        // 0,0,0 -> 0
        mux_d0 = 1'b0;
        mux_d1 = 1'b0;
        mux_sel = 1'b0;

        // 30 - 60
        // 0,0,1 -> 0
        #30
        mux_d0 = 1'b0;
        mux_d1 = 1'b0;
        mux_sel = 1'b1;

        // 60 - 90
        // 0,1,1 -> 1
        #30
        mux_d0 = 1'b0;
        mux_d1 = 1'b1;
        mux_sel = 1'b1;

        // 90 - 120
        // 1,1,1 -> 1
        #30
        mux_d0 = 1'b1;
        mux_d1 = 1'b1;
        mux_sel = 1'b1;

        // 120 - 150
        // 1,0,1 -> 0
        #30
        mux_d0 = 1'b1;
        mux_d1 = 1'b0;
        mux_sel = 1'b1;

        // 150 - 180
        // 1,0,0 -> 1
        #30
        mux_d0 = 1'b1;
        mux_d1 = 1'b0;
        mux_sel = 1'b0;

        // 180 - 210
        // 1,1,0 -> 1
        #30
        mux_d0 = 1'b1;
        mux_d1 = 1'b1;
        mux_sel = 1'b0;

        // 210 - 240
        // 0,1,0 -> 0
        #30
        mux_d0 = 1'b0;
        mux_d1 = 1'b1;
        mux_sel = 1'b0;

        // 240 - 270
        #30;
    end


// End of your code

endmodule
