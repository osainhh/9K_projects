`default_nettype none

module or2 (
    input wire IN_A,
    input wire IN_B,
    output wire OUT
);

    assign OUT = IN_A | IN_B;

endmodule
