module address_decode_4
(

    input wire[3:0] addr_src,

    output wire[15:0] addr_positional
);



assign addr_positional[15] = (addr_src==4'b1111) ?1'b1:1'b0;

assign addr_positional[14] = (addr_src==4'b1110) ?1'b1:1'b0;

assign addr_positional[13] = (addr_src==4'b1101) ?1'b1:1'b0;

assign addr_positional[12] = (addr_src==4'b1100) ?1'b1:1'b0;

assign addr_positional[11] = (addr_src==4'b1011) ?1'b1:1'b0;

assign addr_positional[10] = (addr_src==4'b1010) ?1'b1:1'b0;

assign addr_positional[9] = (addr_src==4'b1001) ?1'b1:1'b0;

assign addr_positional[8] = (addr_src==4'b1000) ?1'b1:1'b0;

assign addr_positional[7] = (addr_src==4'b0111) ?1'b1:1'b0;

assign addr_positional[6] = (addr_src==4'b0110) ?1'b1:1'b0;

assign addr_positional[5] = (addr_src==4'b0101) ?1'b1:1'b0;

assign addr_positional[4] = (addr_src==4'b0100) ?1'b1:1'b0;

assign addr_positional[3] = (addr_src==4'b0011) ?1'b1:1'b0;

assign addr_positional[2] = (addr_src==4'b0010) ?1'b1:1'b0;

assign addr_positional[1] = (addr_src==4'b0001) ?1'b1:1'b0;

assign addr_positional[0] = (addr_src==4'b0000) ?1'b1:1'b0;



endmodule

module address_decode_8
(

    input wire[7:0] addr_src,

    output wire[31:0] addr_positional
);



address_decode_4 enc0(addr_src[3:0], addr_positional[31:16]);

address_decode_4 enc1(addr_src[7:4], addr_positional[15:0]);



endmodule

module Selector_4
(

    input wire selector_enabled,

    input wire[31:0] addr_src,

    output wire[15:0] addr_positional,

    output wire[31:0] addr_remain
);




assign addr_remain =        (selector_enabled==1'b1)? {16'b0,addr_src[31:16]}:32'b0;
assign addr_positional =    (selector_enabled==1'b1)? addr_src[15:0] : 16'b0;

endmodule



module Selector_8
(

    input wire[7:0] addr,

    output wire[255:0] addr_positional
);





 

   wire[31:0] addr_src;

   address_decode_8 sel_1 (addr, addr_src);
   
 wire[15:0] wires_0_0;

wire[31:0] addr_0_0;

Selector_4 s0_0(1'b1, addr_src, wires_0_0, addr_0_0);

wire[31:0] addr_0_1;

Selector_4 s0_1(wires_0_0[0], addr_0_0, addr_positional[15:0], addr_0_1);

wire[31:0] addr_1_1;

Selector_4 s1_1(wires_0_0[1], addr_0_0, addr_positional[31:16], addr_1_1);

wire[31:0] addr_2_1;

Selector_4 s2_1(wires_0_0[2], addr_0_0, addr_positional[47:32], addr_2_1);

wire[31:0] addr_3_1;

Selector_4 s3_1(wires_0_0[3], addr_0_0, addr_positional[63:48], addr_3_1);

wire[31:0] addr_4_1;

Selector_4 s4_1(wires_0_0[4], addr_0_0, addr_positional[79:64], addr_4_1);

wire[31:0] addr_5_1;

Selector_4 s5_1(wires_0_0[5], addr_0_0, addr_positional[95:80], addr_5_1);

wire[31:0] addr_6_1;

Selector_4 s6_1(wires_0_0[6], addr_0_0, addr_positional[111:96], addr_6_1);

wire[31:0] addr_7_1;

Selector_4 s7_1(wires_0_0[7], addr_0_0, addr_positional[127:112], addr_7_1);

wire[31:0] addr_8_1;

Selector_4 s8_1(wires_0_0[8], addr_0_0, addr_positional[143:128], addr_8_1);

wire[31:0] addr_9_1;

Selector_4 s9_1(wires_0_0[9], addr_0_0, addr_positional[159:144], addr_9_1);

wire[31:0] addr_10_1;

Selector_4 s10_1(wires_0_0[10], addr_0_0, addr_positional[175:160], addr_10_1);

wire[31:0] addr_11_1;

Selector_4 s11_1(wires_0_0[11], addr_0_0, addr_positional[191:176], addr_11_1);

wire[31:0] addr_12_1;

Selector_4 s12_1(wires_0_0[12], addr_0_0, addr_positional[207:192], addr_12_1);

wire[31:0] addr_13_1;

Selector_4 s13_1(wires_0_0[13], addr_0_0, addr_positional[223:208], addr_13_1);

wire[31:0] addr_14_1;

Selector_4 s14_1(wires_0_0[14], addr_0_0, addr_positional[239:224], addr_14_1);

wire[31:0] addr_15_1;

Selector_4 s15_1(wires_0_0[15], addr_0_0, addr_positional[255:240], addr_15_1);



endmodule

