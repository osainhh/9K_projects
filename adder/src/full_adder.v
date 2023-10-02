`default_nettype none

module full_adder (
    input wire a,
    input wire b,
    input wire c,
    output wire sum,
    output wire ca
);
    wire s_0;
    wire c_0;
    wire c_1;

    half_adder h1(.a(a),
                .b(b),
                .s(s_0),
                .c(c_0)
    );

    half_adder h2(.a(s_0),
            .b(c),
            .s(sum),
            .c(c_1)
    );

    or2 o1(.IN_A(c_0),
            .IN_B(c_1),
            .OUT(ca)
    );

endmodule