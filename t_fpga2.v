`timescale 1ns/10ps
module t_fpga2;
	wire g0,g1,g2,g3,g4,g5,g6,e,f,g,x,y;
	reg a,b,c,d;

	fpga2 M1(a,b,c,d,g0,g1,g2,g3,g4,g5,g6,e,f,g,x,y);
	initial
	begin
		$dumpfile("t_fpga2.vcd");
		$dumpvars(0,t_fpga2);
		a=1'b0;
		b=1'b0;
		c=1'b0;
		d=1'b1;
		#100;
		
		a=1'b1;
		b=1'b0;
		c=1'b0;
		d=1'b0;
		#100;
				
		a=1'b1;
		b=1'b0;
		c=1'b0;
		d=1'b1;
		#100;
		

		a=1'b0;
		b=1'b1;
		c=1'b0;
		d=1'b1;
		#100;
				

		a=1'b1;
		b=1'b0;
		c=1'b1;
		d=1'b1;
		#100;


		a=1'b0;
		b=1'b1;
		c=1'b1;
		d=1'b1;
		#100;


		a=1'b0;
		b=1'b1;
		c=1'b1;
		d=1'b0;
		


		a=1'b1;
		b=1'b1;
		c=1'b1;
		d=1'b1;
		
	
	end

	initial #800 $finish;

endmodule	