module controller (
  input clk,
  input wait_, IR15, AC15, IR14,
  output [21:0] bus_controller
);
  wire [39:0] micro_instructions;
  wire [1:0] muxout;

  reg [3:0] state;
  reg [3:0] next_state;

  controllerROM rom(state, micro_instructions);
  //2_1 multiplexer with alpha, beta. output is muxouts each bit
  multiplexer_2_1 mux1(micro_instructions[39] ,wait_, AC15, muxout[0]);
  multiplexer_2_1 mux2(micro_instructions[38] ,IR15, IR14, muxout[1]);

  if(muxout == 4'b00){
      next_state = micro_instructions[37:34];
  }
  else if(muxout == 4'b01){
      next_state = micro_instructions[33:30];
  }
  else if(muxout == 4'b10){
      next_state = micro_instructions[29:26];
  }
  else{
      next_state = micro_instructions[25:22];
  }

  always @ (posedge clk) state = next_state;

  // TODO: write codes to implement controller in lecture note, page 59















endmodule