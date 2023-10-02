module led (
    input sys_clk,
    input sys_rst_n,
    output reg [5:0] led
);

reg [23:0] counter;

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n)
        counter <= 24'd0;
    else if (counter < 24'd1349_9999)
        counter <= counter + 1'b1;
    else
        counter <= 24'd0;
end

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n)
        led <= 6'b111110;
    else if (counter == 24'd139_9999)
        led[5:0] <= {led[4:0], led[5]};
    else
        led <= led;
end

endmodule