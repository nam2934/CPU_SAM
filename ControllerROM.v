module controllerROM (
  input [3:0] state,
  output reg [39:0] out
);

  always @ ( out or state ) begin
    case (state)
    // TODO: refer to lecture note, page 58
    4'b0000: out = 40'b0000010001000100010000000000000001000000; //RES
    4'b0001: out = 40'b0000010001001000101000000000010000100000; //IF0
    4'b0010: out = 40'b0000110011001000100000000010000000001100; //IF1
    4'b0011: out = 40'b0000110011010001000000000000001000000000; //IF2
    4'b0100: out = 40'b0001000100010101010010000000100000000000; //IF3
    4'b0101: out = 40'b1101101001101111100000000000000000000000; //OD
    4'b0110: out = 40'b0001100110011101110100000000010000000000; //LD0
    4'b0111: out = 40'b0010001000011101110000000010001000001100; //LD1
    4'b1000: out = 40'b0000010001000100010001010100000010000001; //LD2
    4'b1001: out = 40'b0010101010101010100100000000010100000010; //ST0
    4'b1010: out = 40'b0000010001101010100000000011000000000100; //ST1
    4'b1011: out = 40'b0011001100110011000100000000010000000000; //AD0
    4'b1100: out = 40'b0011011101110011000000000010001000001100; //AD1
    4'b1101: out = 40'b0000010001000100010001111000000010000001; //AD2
    4'b1110: out = 40'b0000011111000111110000000000000000000000; //BR0
    4'b1111: out = 40'b0000010001000100010100000000000000010000; //BR1
    endcase
  end

endmodule