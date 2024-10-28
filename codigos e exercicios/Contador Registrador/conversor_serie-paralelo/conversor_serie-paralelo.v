`include "FF_d.v"

module conversor_serie_paralelo(d,pr,clr,q,clk);
    input d,pr,clr,clk;
    output [3:0] q;
    output nq;

    FF_d ff1(d,pr,clr,q[0],nq,clk);
    FF_d ff2(q[0],pr,clr,q[1],nq,clk);
    FF_d ff3(q[1],pr,clr,q[2],nq,clk);
    FF_d ff4(q[2],pr,clr,q[3],nq,clk);
endmodule