`timescale 1ns / 1ps

module bitcell(sel, inp, rw, outp);

    input sel, inp, rw;
    output outp;
    
    wire S, R;
    
    assign S = sel & inp & ~rw;
endmodule
