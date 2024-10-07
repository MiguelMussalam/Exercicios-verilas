`include "meio_somador.v"
`include "somador_completo.v"

`include "meio_subtrator.v"
`include "subtrator_completo.v"

module somador_e_subtrator(a, b, s1, s2);

    input [7:0] a,b;
    output [8:0] s1, s2;
    wire [6:0] c_soma,c_sub;

    meio_somador m1(a[0],b[0],s1[0],c_soma[0]);
    somador_completo m2(a[1],b[1],c_soma[0],s1[1],c_soma[1]);
    somador_completo m3(a[2],b[2],c_soma[1],s1[2],c_soma[2]);
    somador_completo m4(a[3],b[3],c_soma[2],s1[3],c_soma[3]);
    somador_completo m5(a[4],b[4],c_soma[3],s1[4],c_soma[4]);
    somador_completo m6(a[5],b[5],c_soma[4],s1[5],c_soma[5]);
    somador_completo m7(a[6],b[6],c_soma[5],s1[6],c_soma[6]);
    somador_completo m8(a[7],b[7],c_soma[6],s1[7],s1[8]);

    meio_subtrator n1(a[0],b[0],s2[0],c_sub[0]);
    subtrator_completo n2(a[1],b[1],c_sub[0],s2[1],c_sub[1]);
    subtrator_completo n3(a[2],b[2],c_sub[1],s2[2],c_sub[2]);
    subtrator_completo n4(a[3],b[3],c_sub[2],s2[3],c_sub[3]);
    subtrator_completo n5(a[4],b[4],c_sub[3],s2[4],c_sub[4]);
    subtrator_completo n6(a[5],b[5],c_sub[4],s2[5],c_sub[5]);
    subtrator_completo n7(a[6],b[6],c_sub[5],s2[6],c_sub[6]);
    subtrator_completo n8(a[7],b[7],c_sub[6],s2[7],s2[8]);

endmodule
