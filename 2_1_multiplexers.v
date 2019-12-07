module multiplexer_2_1(a,i_0,i_1,o);
  input a,i_0,i_1;
  output o;
  wire t1,t2;

  assign t1 = ~a & i_0;
  assign t2 = a & i_1;
  assign o = t1 | t2;
endmodule

module multiplexer_2_1_4bit(a,i_0,i_1,o);
  input a;
  input [3:0] i_0,i_1;
  output [3:0] o;
  wire [3:0] t1,t2;
  

  assign t1[0] = ~a & i_0[0];
  assign t1[1] = ~a & i_0[1];
  assign t1[2] = ~a & i_0[2];
  assign t1[3] = ~a & i_0[3];

  assign t2[0] = a & i_1[0];
  assign t2[1] = a & i_1[1];
  assign t2[2] = a & i_1[2];
  assign t2[3] = a & i_1[3];

  assign o[0] = t1[0] | t2[0];
  assign o[1] = t1[1] | t2[1];
  assign o[2] = t1[2] | t2[2];
  assign o[3] = t1[3] | t2[3];
endmodule
