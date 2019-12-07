module multiplexer_2_1(a,i_0,i_1,o);
  input a,i_0,i_1;
  output o;
  wire t1,t2;

  assign t1 = ~a & i_0;
  assign t2 = a & i_1;
  assign o = t1 | t2;
endmodule

module multiplexer_2_1_reg(
  input a,
  input i_0,
  input i_1,
  output reg o
);
  reg t1, t2;
  
  t1 = ~a & i_0;
  t2 = a & i_1;
  o = t1 | t2;
endmodule
