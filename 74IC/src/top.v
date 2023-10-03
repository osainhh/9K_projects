`default_nettype none

// test 153
module top (
    input wire IN_A,
    input wire IN_B,
    input wire IN_1G,
    input wire IN_2G,
    input wire [3:0] IN_C1,
    input wire [3:0] IN_C2,
    output wire led_Y1,
    output wire led_Y2
);
    wire [3:0] nC1 = ~IN_C1[3:0];
    wire [3:0] nC2 = ~IN_C2[3:0];
    wire Y1, Y2;

    hc153 (
        .nG1(~IN_1G),
        .B(~IN_B),
        .C1(nC1),
        .C2(nC2),
        .A(~IN_A),
        .nG2(~IN_2G),
        .Y1(Y1),
        .Y2(Y2)
    );

    assign led_Y1 = ~Y1;
    assign led_Y2 = ~Y2;

endmodule

// test 161
/*
module top (
    input wire sys_clk,
    input wire sys_rst_n,
    input wire ET,
    input wire EP,
    input wire LD,
    input wire [3:0] data,
    output wire [3:0] led
);
    wire [3:0] ndata = ~data[3:0];
    wire nCLR = sys_rst_n;
    wire CLK = ~sys_clk;
    wire nLD = ~LD;
    wire [3:0] q;
    hc161 ic1(
        .CLK(CLK),
        .nCLR(nCLR),
        .nLOAD(nLD),
        .ENT(ET),
        .ENP(EP),
        .DATA(ndata),
        .Q(q)
    );

    assign led[3:0] = ~q[3:0];

endmodule
*/