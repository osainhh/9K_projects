`default_nettype none

module decoder (
    input wire IN_A,
    input wire IN_B,
    input wire IN_C,
    input wire IN_D,
    output wire [6:0] OUT
);
// OUT = 7seg a b c d e f g
    assign OUT[0] = ~IN_A & ~IN_B & ~IN_C & IN_D | IN_B & ~IN_C & ~IN_D;
    assign OUT[1] = IN_B & ~IN_C & IN_D | IN_B & IN_C & ~IN_D;
    assign OUT[2] = ~IN_B & IN_C & ~IN_D;
    assign OUT[3] = IN_B & ~IN_C & ~IN_D | ~IN_A & ~IN_B & ~IN_C & IN_D | IN_B & IN_C & IN_D;
    assign OUT[4] = IN_B & ~IN_C | IN_D;
    assign OUT[5] = ~IN_A & ~IN_B & IN_D | IN_C & IN_D | ~IN_B & IN_C;
    assign OUT[6] = ~IN_A & ~IN_B & ~IN_C | IN_B & IN_C & IN_D;

endmodule