`timescale 1ns/10ps

module testmux;
parameter width = 8;
// Inputs to mux
reg [width-1:0] a, b;
reg s;
// Outputs from mux
wire [width-1:0] out;

mux2to1 mymux(a, b, s, out);

initial
begin
	$dumpfile("testmux.vcd");
	$dumpvars(0, testmux);
	a = 60;
	b = 'b00000010;
	s = 0; 
	#1;
	a = 150;
	#1;
	s = 1;
	b = 300;
	#1;
	$finish;
end

endmodule