`timescale 1ns/10ps
module t_fpga1;
	wire e;
	reg a,b,c,d;

	fpga1 M1(a,b,c,d,e);
	initial
	begin
		$dumpfile("t_fpga1.vcd");
		$dumpvars(0,t_fpga1);
		a=1'b0;
		b=1'b0;
		c=1'b0;
		d=1'b0;
		#100;
		
		a=1'b1;
		b=1'b1;
		c=1'b0;
		d=1'b0;
		#100;
				
		a=1'b1;
		b=1'b1;
		c=1'b0;
		d=1'b1;
		#100;
		

		a=1'b0;
		b=1'b1;
		c=1'b0;
		d=1'b1;
		#100;
				

		a=1'b0;
		b=1'b0;
		c=1'b0;
		d=1'b1;
		#100;


		a=1'b1;
		b=1'b0;
		c=1'b0;
		d=1'b1;
		#100;


		a=1'b1;
		b=1'b1;
		c=1'b1;
		d=1'b1;
		
	
	end	

	initial #700 $finish;

	

endmodule	