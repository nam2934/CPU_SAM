module multiplexer_4_1(a,b,i_0,i_1,i_2,i_3,o);
  input a,b;
  input [3:0] i_0,i_1,i_2,i_3;
  output reg [3:0] o;
  reg [3:0] t1,t2;

  multiplexer_2_1 first(b,i_0,i_1,t1);
  multiplexer_2_1 second(b,i_2,i_3,t2);
  multiplexer_2_1 third(a,t1,t2,o);
endmodule
