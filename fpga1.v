module fpga1(a,b,c,d,e);
	output e;
	input a,b,c,d;
	wire w1,w2,w3,w4,w5,w6,w7,w8;
	not G1(w1,a);
	not G2(w2,b);
	not G3(w3,c);
	not G4(w4,d);
	and G5(w5,w3,d);
	and G6(w6,a,b,w3);
	and G7(w7,w1,w2,d);
	and G8(w8,w1,b,c,w4);
	or G9(e,w5,w6,w7,w8);
endmodule