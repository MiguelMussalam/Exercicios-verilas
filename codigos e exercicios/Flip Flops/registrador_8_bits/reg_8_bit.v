`include "FF_d.v"

module reg_8_bit(d,q,nq,pr,clr,clk);
    input pr, clr, clk;
    input [7:0] d;
    output [7:0] q, nq;
    genvar i;
    generate
        for(i = 0; i < 8; i = i+1) begin : ffd_inst
            FF_d ff(d[i],pr,clr,q[i],nq[i],clk);
        end
    endgenerate
endmodule