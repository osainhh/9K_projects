`default_nettype none

// C{C3, C2, C1, C0}

module hc153 (
    input wire nG1,
    input wire B,
    input wire [3:0] C1,
    input wire A,
    input wire nG2,
    input wire [3:0] C2,
    output wire Y1,
    output wire Y2
);
    reg rY1;
    reg rY2;
    wire [1:0] SELECT = {B, A};
    
    always @(nG1, C1, SELECT) begin
        if(!nG1) begin
            case(SELECT)
                2'b00   :   rY1 <= C1[3];
                2'b01   :   rY1 <= C1[2];
                2'b10   :   rY1 <= C1[1];
                2'b11   :   rY1 <= C1[0];    
            endcase    
        end
        else rY1 <= 1'b0;
    end

    always @(nG2, C2, SELECT) begin
        if(!nG2) begin
            case(SELECT)
                2'b00   :   rY2 <= C2[3];
                2'b01   :   rY2 <= C2[2];
                2'b10   :   rY2 <= C2[1];
                2'b11   :   rY2 <= C2[0];
            endcase
        end
        else rY2 <= 1'b0;
    end

    assign Y1 = rY1;
    assign Y2 = rY2;

endmodule