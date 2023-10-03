`default_nettype none

// DATA = {D, C, B, A}
// Q = [Qd, Qc, Qb, Qa]

module hc161 (
    input wire nCLR,
    input wire CLK,
    input wire ENP,
    input wire nLOAD,
    input wire ENT,
    input wire [3:0] DATA,
    output reg [3:0] Q
);

    always @(posedge CLK or negedge nCLR) begin
        if(!nCLR) begin 
            Q <= 4'b0;
        end
        else begin 
            if(!nLOAD) begin
                Q <= DATA;
            end
            if(ENT && ENP && nLOAD) begin
                Q <= Q + 1'b1;
            end
        end
    end

endmodule