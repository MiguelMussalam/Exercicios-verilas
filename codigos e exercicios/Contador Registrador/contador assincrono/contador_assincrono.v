`include "FF_JK.v"

module contador_assincrono(t,clr,q,clk);
    input t,clr,clk;
    output [3:0] q;
    output nq;

    FF_JK ff1(t,t,1'b1,clr,q[0],nq,clk);
    FF_JK ff2(t,t,1'b1,clr,q[1],nq,q[0]);
    FF_JK ff3(t,t,1'b1,clr,q[2],nq,q[1]);
    FF_JK ff4(t,t,1'b1,clr,q[3],nq,q[2]);
endmodule