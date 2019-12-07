module multiplexer_4_1(a,b,i_0,i_1,i_2,i_3,o);
  input a,b;
  input [3:0] i_0,i_1,i_2,i_3;
  output [3:0] o;
  wire [3:0] t1,t2;

  multiplexer_2_1 first0(b,i_0[0],i_1[0],t1[0]);
  multiplexer_2_1 first1(b,i_0[1],i_1[1],t1[1]);
  multiplexer_2_1 first2(b,i_0[2],i_1[2],t1[2]);
  multiplexer_2_1 first3(b,i_0[3],i_1[3],t1[3]);
  
  multiplexer_2_1 second0(b,i_2[0],i_3[0],t2[0]);
  multiplexer_2_1 second1(b,i_2[1],i_3[1],t2[1]);
  multiplexer_2_1 second2(b,i_2[2],i_3[2],t2[2]);
  multiplexer_2_1 second3(b,i_2[3],i_3[3],t2[3]);
  
  multiplexer_2_1 third0(a,t1[0],t2[0],o[0]);
  multiplexer_2_1 third1(a,t1[1],t2[1],o[1]);
  multiplexer_2_1 third2(a,t1[2],t2[2],o[2]);
  multiplexer_2_1 third3(a,t1[3],t2[3],o[3]);
endmodule
