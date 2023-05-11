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

module Selector_8
(

    input wire[7:0] addr_src,

    output wire[255:0] addr_positional
);




wire [15:0] addr1;

address_decode_4 ad1 (addr_src[3:0],addr1);

wire [15:0] addr2;

address_decode_4 ad2 (addr_src[7:4],addr2);

assign addr_positional = {addr2[15]&addr1[15],addr2[15]&addr1[14],addr2[15]&addr1[13],addr2[15]&addr1[12],addr2[15]&addr1[11],addr2[15]&addr1[10],addr2[15]&addr1[9],addr2[15]&addr1[8],addr2[15]&addr1[7],addr2[15]&addr1[6],addr2[15]&addr1[5],addr2[15]&addr1[4],addr2[15]&addr1[3],addr2[15]&addr1[2],addr2[15]&addr1[1],addr2[15]&addr1[0],addr2[14]&addr1[15],addr2[14]&addr1[14],addr2[14]&addr1[13],addr2[14]&addr1[12],addr2[14]&addr1[11],addr2[14]&addr1[10],addr2[14]&addr1[9],addr2[14]&addr1[8],addr2[14]&addr1[7],addr2[14]&addr1[6],addr2[14]&addr1[5],addr2[14]&addr1[4],addr2[14]&addr1[3],addr2[14]&addr1[2],addr2[14]&addr1[1],addr2[14]&addr1[0],addr2[13]&addr1[15],addr2[13]&addr1[14],addr2[13]&addr1[13],addr2[13]&addr1[12],addr2[13]&addr1[11],addr2[13]&addr1[10],addr2[13]&addr1[9],addr2[13]&addr1[8],addr2[13]&addr1[7],addr2[13]&addr1[6],addr2[13]&addr1[5],addr2[13]&addr1[4],addr2[13]&addr1[3],addr2[13]&addr1[2],addr2[13]&addr1[1],addr2[13]&addr1[0],addr2[12]&addr1[15],addr2[12]&addr1[14],addr2[12]&addr1[13],addr2[12]&addr1[12],addr2[12]&addr1[11],addr2[12]&addr1[10],addr2[12]&addr1[9],addr2[12]&addr1[8],addr2[12]&addr1[7],addr2[12]&addr1[6],addr2[12]&addr1[5],addr2[12]&addr1[4],addr2[12]&addr1[3],addr2[12]&addr1[2],addr2[12]&addr1[1],addr2[12]&addr1[0],addr2[11]&addr1[15],addr2[11]&addr1[14],addr2[11]&addr1[13],addr2[11]&addr1[12],addr2[11]&addr1[11],addr2[11]&addr1[10],addr2[11]&addr1[9],addr2[11]&addr1[8],addr2[11]&addr1[7],addr2[11]&addr1[6],addr2[11]&addr1[5],addr2[11]&addr1[4],addr2[11]&addr1[3],addr2[11]&addr1[2],addr2[11]&addr1[1],addr2[11]&addr1[0],addr2[10]&addr1[15],addr2[10]&addr1[14],addr2[10]&addr1[13],addr2[10]&addr1[12],addr2[10]&addr1[11],addr2[10]&addr1[10],addr2[10]&addr1[9],addr2[10]&addr1[8],addr2[10]&addr1[7],addr2[10]&addr1[6],addr2[10]&addr1[5],addr2[10]&addr1[4],addr2[10]&addr1[3],addr2[10]&addr1[2],addr2[10]&addr1[1],addr2[10]&addr1[0],addr2[9]&addr1[15],addr2[9]&addr1[14],addr2[9]&addr1[13],addr2[9]&addr1[12],addr2[9]&addr1[11],addr2[9]&addr1[10],addr2[9]&addr1[9],addr2[9]&addr1[8],addr2[9]&addr1[7],addr2[9]&addr1[6],addr2[9]&addr1[5],addr2[9]&addr1[4],addr2[9]&addr1[3],addr2[9]&addr1[2],addr2[9]&addr1[1],addr2[9]&addr1[0],addr2[8]&addr1[15],addr2[8]&addr1[14],addr2[8]&addr1[13],addr2[8]&addr1[12],addr2[8]&addr1[11],addr2[8]&addr1[10],addr2[8]&addr1[9],addr2[8]&addr1[8],addr2[8]&addr1[7],addr2[8]&addr1[6],addr2[8]&addr1[5],addr2[8]&addr1[4],addr2[8]&addr1[3],addr2[8]&addr1[2],addr2[8]&addr1[1],addr2[8]&addr1[0],addr2[7]&addr1[15],addr2[7]&addr1[14],addr2[7]&addr1[13],addr2[7]&addr1[12],addr2[7]&addr1[11],addr2[7]&addr1[10],addr2[7]&addr1[9],addr2[7]&addr1[8],addr2[7]&addr1[7],addr2[7]&addr1[6],addr2[7]&addr1[5],addr2[7]&addr1[4],addr2[7]&addr1[3],addr2[7]&addr1[2],addr2[7]&addr1[1],addr2[7]&addr1[0],addr2[6]&addr1[15],addr2[6]&addr1[14],addr2[6]&addr1[13],addr2[6]&addr1[12],addr2[6]&addr1[11],addr2[6]&addr1[10],addr2[6]&addr1[9],addr2[6]&addr1[8],addr2[6]&addr1[7],addr2[6]&addr1[6],addr2[6]&addr1[5],addr2[6]&addr1[4],addr2[6]&addr1[3],addr2[6]&addr1[2],addr2[6]&addr1[1],addr2[6]&addr1[0],addr2[5]&addr1[15],addr2[5]&addr1[14],addr2[5]&addr1[13],addr2[5]&addr1[12],addr2[5]&addr1[11],addr2[5]&addr1[10],addr2[5]&addr1[9],addr2[5]&addr1[8],addr2[5]&addr1[7],addr2[5]&addr1[6],addr2[5]&addr1[5],addr2[5]&addr1[4],addr2[5]&addr1[3],addr2[5]&addr1[2],addr2[5]&addr1[1],addr2[5]&addr1[0],addr2[4]&addr1[15],addr2[4]&addr1[14],addr2[4]&addr1[13],addr2[4]&addr1[12],addr2[4]&addr1[11],addr2[4]&addr1[10],addr2[4]&addr1[9],addr2[4]&addr1[8],addr2[4]&addr1[7],addr2[4]&addr1[6],addr2[4]&addr1[5],addr2[4]&addr1[4],addr2[4]&addr1[3],addr2[4]&addr1[2],addr2[4]&addr1[1],addr2[4]&addr1[0],addr2[3]&addr1[15],addr2[3]&addr1[14],addr2[3]&addr1[13],addr2[3]&addr1[12],addr2[3]&addr1[11],addr2[3]&addr1[10],addr2[3]&addr1[9],addr2[3]&addr1[8],addr2[3]&addr1[7],addr2[3]&addr1[6],addr2[3]&addr1[5],addr2[3]&addr1[4],addr2[3]&addr1[3],addr2[3]&addr1[2],addr2[3]&addr1[1],addr2[3]&addr1[0],addr2[2]&addr1[15],addr2[2]&addr1[14],addr2[2]&addr1[13],addr2[2]&addr1[12],addr2[2]&addr1[11],addr2[2]&addr1[10],addr2[2]&addr1[9],addr2[2]&addr1[8],addr2[2]&addr1[7],addr2[2]&addr1[6],addr2[2]&addr1[5],addr2[2]&addr1[4],addr2[2]&addr1[3],addr2[2]&addr1[2],addr2[2]&addr1[1],addr2[2]&addr1[0],addr2[1]&addr1[15],addr2[1]&addr1[14],addr2[1]&addr1[13],addr2[1]&addr1[12],addr2[1]&addr1[11],addr2[1]&addr1[10],addr2[1]&addr1[9],addr2[1]&addr1[8],addr2[1]&addr1[7],addr2[1]&addr1[6],addr2[1]&addr1[5],addr2[1]&addr1[4],addr2[1]&addr1[3],addr2[1]&addr1[2],addr2[1]&addr1[1],addr2[1]&addr1[0],addr2[0]&addr1[15],addr2[0]&addr1[14],addr2[0]&addr1[13],addr2[0]&addr1[12],addr2[0]&addr1[11],addr2[0]&addr1[10],addr2[0]&addr1[9],addr2[0]&addr1[8],addr2[0]&addr1[7],addr2[0]&addr1[6],addr2[0]&addr1[5],addr2[0]&addr1[4],addr2[0]&addr1[3],addr2[0]&addr1[2],addr2[0]&addr1[1],addr2[0]&addr1[0]};

endmodule









