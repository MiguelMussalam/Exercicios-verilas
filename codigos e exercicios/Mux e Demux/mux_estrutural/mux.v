module mux(d,s,y);
    input [3:0] d;
    input [1:0] s;
    output y;
    wire not_s0, not_s1, y1, y2, y3, y4;

    not (not_s0,s[0]);
    not (not_s1,s[1]);

    and (y1,d[0],not_s1,not_s0);

    and (y2,d[1],not_s1,s[0]);

    and (y3,d[2],s[1],not_s0);

    and (y4,d[3],s[1],s[0]);

    or (y,y1,y2,y3,y4);

endmodule
