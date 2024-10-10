module mux_using_buffer( out, in1,in2,s );
	 output out;
	 input in1,in2,s;
	 
bufif1(out,in1,s);
bufif0(out,in2,s);
endmodule 

module mux_using_buffer_tb;
reg in1,in2,s;
wire out;
 mux_using_buffer uut(
          .out(out),
			 .in1(in1),
			 .in2(in2),
			 .s(s) 
			 ); 
			 
initial 
begin
$monitor(" #time =%t, in1 =%b,in2=%b, s=%b,out=%b", $time,in1,in2,s,out);
in1 = 1'b0; in2 = 1'b0; s=1'b0;
#10;
in1 = 1'b0; in2 = 1'b0; s=1'b1;
#10;
in1 = 1'b0; in2 = 1'b1; s=1'b0;
#10;
in1 = 1'b0; in2 = 1'b1; s=1'b1;
#10;
in1 = 1'b1; in2 = 1'b0; s=1'b0;
#10;
in1 = 1'b1; in2 = 1'b0; s=1'b1;
#10;
in1 = 1'b1; in2 = 1'b1; s=1'b0;
#10;
in1 = 1'b1; in2 = 1'b1; s=1'b1;
#10;
end 
endmodule

//a=22



