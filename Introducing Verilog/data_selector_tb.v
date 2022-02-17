`timescale 1ns/1ns
`include "first_file.v"

/* Test bench setup for iVerilog simulator. */
module data_selector_tb;

reg A;
reg B;
reg SEL;

wire Q;

data_selector uut(A, B, SEL, Q);

initial
begin
    $dumpfile("data_selector_tb.vcd");
    $dumpvars(0, data_selector_tb);

    A = 0;
    #20;

    /**
     *
     *. . . 
     *
     */

     $display("Test complete.");
end

endmodule
