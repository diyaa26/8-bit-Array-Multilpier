//full adder
module full_adder(a,b,cin,s,co);
input a,b,cin;
output s,co;
assign s=a^b^cin;
assign co=(a&b)|(b&cin)|(cin&a);
endmodule

//half adder
module half_adder(a,b,s,c);
input a,b;
output s,c;
assign s=a^b;
assign c=(a&b);
endmodule

//and gate
module andgate(a,b,c);
input a,b;
output c;
assign c=a&b;
endmodule

//8 bit array multiplier
module array_multiplier(a,b,s);
input [7:0]a;
input [7:0]b;
output [15:0]s;
wire x1,x2,
     y1,y2,y3,
 z1,z2,z3,z4,
 w1,w2,w3,w4,w5,
 p1,p2,p3,p4,p5,p6,
 q1,q2,q3,q4,q5,q6,q7,
 r1,r2,r3,r4,r5,r6,r7,r8,       //input to half adder and full adder
     t1,t2,t3,t4,t5,t6,t7,
 u1,u2,u3,u4,u5,u6,
 v1,v2,v3,v4,v5,
 l1,l2,l3,l4,
 n1,n2,n3,
 o1,o2,
 h1,
 c1,
 a1,a2,a3,a4,c2,
 b1,b2,b3,b4,c3,
 d1,d2,d3,d4,d5,d6,c4,
 e1,e2,e3,e4,e5,e6,e7,e8,c5,
 f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,c6,
 g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,g12,c7,     //input to main half and full adders for getting sum and carry
 i1,i2,i3, i4,i5,i6,i7,i8,i9,i10,i11,i12,c8,
 j1,j2,j3,j4,j5,j6,j7,j8,j9,j10,c9,
 k1,k2,k3,k4,k5,k6,k7,k8,c10,
 s1,s2,s3,s4,s5,s6,c11,
 h2,h3,h4,h5,c12,
 o3,o4,c13;
 
//all and gates
 
andgate m0(a[0],b[0],s[0]); //for s0
 
andgate m1(a[0],b[1],x1); //for s1
andgate m2(a[1],b[0],x2);

andgate m3(a[0],b[2],y1);  //for s2
andgate m4(a[1],b[1],y2);
andgate m5(a[2],b[0],y3);

andgate m6(a[0],b[3],z1);   //for s3
andgate m7(a[1],b[2],z2);
andgate m8(a[2],b[1],z3);
andgate m9(a[3],b[0],z4);

andgate m10(a[0],b[4],w1);  //for s4
andgate m11(a[1],b[3],w2);
andgate m12(a[2],b[2],w3);
andgate m13(a[3],b[1],w4);
andgate m14(a[4],b[0],w5);

andgate m15(a[0],b[5],p1);  //for s5
andgate m16(a[1],b[4],p2);
andgate m17(a[2],b[3],p3);
andgate m18(a[3],b[2],p4);
andgate m19(a[4],b[1],p5);
andgate m20(a[5],b[0],p6);

andgate m21(a[0],b[6],q1);  //for s6
andgate m22(a[1],b[5],q2);
andgate m23(a[2],b[4],q3);
andgate m24(a[3],b[3],q4);
andgate m25(a[4],b[2],q5);
andgate m26(a[5],b[1],q6);
andgate m27(a[6],b[0],q7);

andgate m28(a[0],b[7],r1);  //for s7
andgate m29(a[1],b[6],r2);
andgate m30(a[2],b[5],r3);
andgate m31(a[3],b[4],r4);
andgate m32(a[4],b[3],r5);
andgate m33(a[5],b[2],r6);
andgate m34(a[6],b[1],r7);
andgate m35(a[7],b[0],r8);

andgate m36(a[1],b[7],t1);  //for s8
andgate m37(a[2],b[6],t2);
andgate m38(a[3],b[5],t3);
andgate m39(a[4],b[4],t4);
andgate m40(a[5],b[3],t5);
andgate m41(a[6],b[2],t6);
andgate m42(a[7],b[1],t7);

andgate m43(a[2],b[7],u1);  //for s9
andgate m44(a[3],b[6],u2);
andgate m45(a[4],b[5],u3);
andgate m46(a[5],b[4],u4);
andgate m47(a[6],b[3],u5);
andgate m48(a[7],b[2],u6);

andgate m49(a[3],b[7],v1);  //for s10
andgate m50(a[4],b[6],v2);
andgate m51(a[5],b[5],v3);
andgate m52(a[6],b[4],v4);
andgate m53(a[7],b[3],v5);

andgate m54(a[4],b[7],l1);  //for s11
andgate m55(a[5],b[6],l2);
andgate m56(a[6],b[5],l3);
andgate m57(a[7],b[4],l4);

andgate m58(a[5],b[7],n1);  //for s12
andgate m59(a[6],b[6],n2);
andgate m60(a[7],b[5],n3);

andgate m61(a[6],b[7],o1);  //for s13
andgate m62(a[7],b[6],o2);

andgate m63(a[7],b[7],h1);  //for s14


//main circuit using half adder and full adder

half_adder m64(x1,x2,s[1],c1); //s1

half_adder m65(c1,y1,a1,a3); //s2
half_adder m66(y2,y3,a2,a4);
half_adder m67(a1,a2,s[2],c2);

full_adder m68(c2,a3,a4,b1,b3); //s3
full_adder m69(z1,z2,z3,b2,b4);
full_adder m70(b1,b2,z4,s[3],c3);

full_adder m71(c3,b3,b4,d1,d4); //s4
full_adder m72(w1,w2,w3,d2,d5);
half_adder m73(w4,w5,d3,d6);
full_adder m74(d1,d2,d3,s[4],c4);

full_adder m75(c4,d4,d5,e1,e4);   //s5
full_adder m76(d6,p1,p2,e2,e5);
full_adder m77(p3,p4,p5,e3,e6);
full_adder m78(e1,e2,e3,e7,e8);
half_adder m79(e7,p6,s[5],c5);

full_adder m80(c5,e4,e5,f1,f5);  //s6
full_adder m81(e6,e8,q1,f2,f6);
full_adder m82(q2,q3,q4,f3,f7);
full_adder m83(q5,q6,q7,f4,f8);
full_adder m84(f1,f2,f3,f9,f10);
half_adder m85(f9,f4,s[6],c6);

full_adder m86(c6,f5,f6,g1,g5);  //s7
full_adder m87(f7,f8,f10,g2,g6);
full_adder m88(r1,r2,r3,g3,g7);
full_adder m89(r4,r5,r6,g4,g8);
full_adder m90(g1,g2,g3,g9,g10);
full_adder m91(r7,r8,g4,g11,g12);
half_adder m92(g9,g11,s[7],c7);

full_adder m93(c7,g5,g6,i1,i5);  //s8
full_adder m94(g7,g8,g10,i2,i6);
full_adder m95(g12,t1,t2,i3,i7);
full_adder m96(t3,t4,t5,i4,i8);
full_adder m97(i1,i2,i3,i9,i10);
full_adder m98(i4,t6,t7,i11,i12);
half_adder m99(i9,i11,s[8],c8);

full_adder m100(c8,i5,i6,j1,j5);  //s9
full_adder m101(i7,i8,i10,j2,j6);
full_adder m102(i12,u1,u2,j3,j7);
full_adder m103(u3,u4,u5,j4,j8);
full_adder m104(j1,j2,j3,j9,j10);
full_adder m105(j9,j4,u6,s[9],c9);

full_adder m106(c9,j5,j6,k1,k4);  //s10
full_adder m107(j7,j8,j10,k2,k5);
full_adder m108(v1,v2,v3,k3,k6);
full_adder m109(k1,k2,k3,k7,k8);
full_adder m110(k7,v4,v5,s[10],c10);

full_adder m111(c10,k4,k5,s1,s4);   //s11
full_adder m112(k6,k8,l1,s2,s5);
full_adder m113(l2,l3,l4,s3,s6);
full_adder m114(s1,s2,s3,s[11],c11);

full_adder m115(c11,s4,s5,h2,h4);  //s12
full_adder m116(s6,n1,n2,h3,h5);
full_adder m117(h2,h3,n3,s[12],c12);

full_adder m118(c12,h4,h5,o3,o4);  //s13
full_adder m119(o3,o1,o2,s[13],c13);

full_adder m120(c13,o4,h1,s[14],s[15]);  //s14 and s15
endmodule