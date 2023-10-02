`default_nettype none

module top (
    input wire [1:0] IN_A,
    input wire [1:0] IN_B,
    output wire [6:0] OUT
);
    wire [1:0] a = ~IN_A[1:0];
    wire [1:0] b = ~IN_B[1:0];
     
    wire s0;
    wire s1;
    wire c0;
    wire c1;

    wire low = 1'b0;
    

    half_adder h1 (.a(a[0]),
        .b(b[0]),
        .s(s0),
        .c(c0)
    );

    full_adder f1 (
        .a(a[1]),
        .b(b[1]),
        .c(c0),
        .sum(s1),
        .ca(c1)
    );
    
    decoder sd(
        .IN_A(low),
        .IN_B(c1),
        .IN_C(s1),
        .IN_D(s0),
        .OUT(OUT[6:0])
    );

endmodule