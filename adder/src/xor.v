`default_nettype none

module xor2 (
        input wire IN_A,
        input wire IN_B,
        output wire OUT
);

    assign OUT = IN_A ^ IN_B;

endmodule