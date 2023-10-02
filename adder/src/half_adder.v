`default_nettype none

module half_adder (
    input wire a,
    input wire b,
    output wire s,
    output wire c
);

    xor2 x1(.IN_A(a),
            .IN_B(b),
            .OUT(s)
    );
    
    and2 a1(.IN_A(a),
            .IN_B(b),
            .OUT(c)
    );

endmodule