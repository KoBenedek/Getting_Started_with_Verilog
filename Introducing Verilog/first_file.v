
//First verilog file, creating a data selector

module data_selector
(
    input A,
    input B,
    input SEL,
    output reg Q
);

always @(A or B or SEL)
begin
    if(SEL) begin
        Q = A;
    end
    else begin
        Q = B;
    end
end

endmodule

module counter
(
    input clock,
    output reg [3:0] Q
);

always @(posedge clock)
begin
    Q <= Q + 1;
end

endmodule
