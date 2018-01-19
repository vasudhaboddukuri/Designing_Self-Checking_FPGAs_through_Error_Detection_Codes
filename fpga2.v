module fpga2(a,b,c,d,g0,g1,g2,g3,g4,g5,g6,e,f,g,x,y);
	output g0,g1,g2,g3,g4,g5,g6,e,f,g,x,y;
	input a,b,c,d;
	wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;
	not G1(w1,a);
	not G2(w2,b);
	not G3(w3,c);
	not G4(w4,d);
	and G5(g0,w2,w4);
	and G6(g1,w3,w4);
	and G7(g2,w3,d);
	and G8(g3,w1,b,c,w4);
	and G9(g4,w1,w2,c,d);
	and G10(g5,w1,b,c,d);
	and G11(g6,a,b,w3);
	or G12(e,g2,g3,g4,g6);
	and G13(w5,b,g1);
	and G14(w6,w1,w2,c,d);
	and G15(w7,a,b,c,d);
	or G16(f,w5,g3,w6,w7);
	or G17(g,g0,g2,g5);
	and G18(w8,a,c);
	and G19(w9,w1,g1);
	or G20(x,g0,w8,g5,w9);
	and G21(w10,w2,d);
	or G22(y,g3,g2,w10,g6);
endmodule
	