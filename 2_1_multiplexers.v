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
  wire [3:0] a_, t1,t2;
  
  assign a_[0] = a;
  assign a_[1] = a;
  assign a_[2] = a;
  assign a_[3] = a;

  assign t1 = ~a & i_0;
  assign t2 = a & i_1;
  assign o = t1 | t2;
endmodule
