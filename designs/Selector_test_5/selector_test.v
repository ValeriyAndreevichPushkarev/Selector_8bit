module address_decode_2
(

    input wire[1:0] addr_src,

    output wire[3:0] addr_positional
);



assign addr_positional[3] = (addr_src==2'b11) ?1'b1:1'b0;

assign addr_positional[2] = (addr_src==2'b10) ?1'b1:1'b0;

assign addr_positional[1] = (addr_src==2'b01) ?1'b1:1'b0;

assign addr_positional[0] = (addr_src==2'b00) ?1'b1:1'b0;



endmodule

module address_decode_8
(

    input wire[7:0] addr_src,

    output wire[15:0] addr_positional
);



address_decode_2 enc0(addr_src[1:0], addr_positional[15:12]);

address_decode_2 enc1(addr_src[3:2], addr_positional[11:8]);

address_decode_2 enc2(addr_src[5:4], addr_positional[7:4]);

address_decode_2 enc3(addr_src[7:6], addr_positional[3:0]);



endmodule

module Selector_2
(

    input wire selector_enabled,

    input wire[15:0] addr_src,

    output wire[3:0] addr_positional,

    output wire[15:0] addr_remain
);




assign addr_remain =        (selector_enabled==1'b1)? {4'b0,addr_src[15:4]}:16'b0;
assign addr_positional =    (selector_enabled==1'b1)? addr_src[3:0] : 4'b0;

endmodule



module Selector_8
(

    input wire[7:0] addr,

    output wire[255:0] addr_positional
);





 

   wire[15:0] addr_src;

   address_decode_8 sel_1 (addr, addr_src);wire[3:0] wires_0_0;

wire[15:0] addr_0_0;

Selector_2 s0_0(1'b1, addr_src, wires_0_0, addr_0_0);

wire[3:0] wires_0_1;

wire[15:0] addr_0_1;

Selector_2 s0_1(wires_0_0[0], addr_0_0, wires_0_1,addr_0_1);

wire[3:0] wires_1_1;

wire[15:0] addr_1_1;

Selector_2 s1_1(wires_0_0[1], addr_0_0, wires_1_1,addr_1_1);

wire[3:0] wires_2_1;

wire[15:0] addr_2_1;

Selector_2 s2_1(wires_0_0[2], addr_0_0, wires_2_1,addr_2_1);

wire[3:0] wires_3_1;

wire[15:0] addr_3_1;

Selector_2 s3_1(wires_0_0[3], addr_0_0, wires_3_1,addr_3_1);

wire[3:0] wires_0_2;

wire[15:0] addr_0_2;

Selector_2 s0_2(wires_0_1[0], addr_0_1, wires_0_2,addr_0_2);

wire[3:0] wires_1_2;

wire[15:0] addr_1_2;

Selector_2 s1_2(wires_0_1[1], addr_0_1, wires_1_2,addr_1_2);

wire[3:0] wires_2_2;

wire[15:0] addr_2_2;

Selector_2 s2_2(wires_0_1[2], addr_0_1, wires_2_2,addr_2_2);

wire[3:0] wires_3_2;

wire[15:0] addr_3_2;

Selector_2 s3_2(wires_0_1[3], addr_0_1, wires_3_2,addr_3_2);

wire[3:0] wires_4_2;

wire[15:0] addr_4_2;

Selector_2 s4_2(wires_1_1[0], addr_1_1, wires_4_2,addr_4_2);

wire[3:0] wires_5_2;

wire[15:0] addr_5_2;

Selector_2 s5_2(wires_1_1[1], addr_1_1, wires_5_2,addr_5_2);

wire[3:0] wires_6_2;

wire[15:0] addr_6_2;

Selector_2 s6_2(wires_1_1[2], addr_1_1, wires_6_2,addr_6_2);

wire[3:0] wires_7_2;

wire[15:0] addr_7_2;

Selector_2 s7_2(wires_1_1[3], addr_1_1, wires_7_2,addr_7_2);

wire[3:0] wires_8_2;

wire[15:0] addr_8_2;

Selector_2 s8_2(wires_2_1[0], addr_2_1, wires_8_2,addr_8_2);

wire[3:0] wires_9_2;

wire[15:0] addr_9_2;

Selector_2 s9_2(wires_2_1[1], addr_2_1, wires_9_2,addr_9_2);

wire[3:0] wires_10_2;

wire[15:0] addr_10_2;

Selector_2 s10_2(wires_2_1[2], addr_2_1, wires_10_2,addr_10_2);

wire[3:0] wires_11_2;

wire[15:0] addr_11_2;

Selector_2 s11_2(wires_2_1[3], addr_2_1, wires_11_2,addr_11_2);

wire[3:0] wires_12_2;

wire[15:0] addr_12_2;

Selector_2 s12_2(wires_3_1[0], addr_3_1, wires_12_2,addr_12_2);

wire[3:0] wires_13_2;

wire[15:0] addr_13_2;

Selector_2 s13_2(wires_3_1[1], addr_3_1, wires_13_2,addr_13_2);

wire[3:0] wires_14_2;

wire[15:0] addr_14_2;

Selector_2 s14_2(wires_3_1[2], addr_3_1, wires_14_2,addr_14_2);

wire[3:0] wires_15_2;

wire[15:0] addr_15_2;

Selector_2 s15_2(wires_3_1[3], addr_3_1, wires_15_2,addr_15_2);

wire[15:0] addr_0_3;

Selector_2 s0_3(wires_0_2[0], addr_0_2, addr_positional[3:0], addr_0_3);

wire[15:0] addr_1_3;

Selector_2 s1_3(wires_0_2[1], addr_0_2, addr_positional[7:4], addr_1_3);

wire[15:0] addr_2_3;

Selector_2 s2_3(wires_0_2[2], addr_0_2, addr_positional[11:8], addr_2_3);

wire[15:0] addr_3_3;

Selector_2 s3_3(wires_0_2[3], addr_0_2, addr_positional[15:12], addr_3_3);

wire[15:0] addr_4_3;

Selector_2 s4_3(wires_1_2[0], addr_1_2, addr_positional[19:16], addr_4_3);

wire[15:0] addr_5_3;

Selector_2 s5_3(wires_1_2[1], addr_1_2, addr_positional[23:20], addr_5_3);

wire[15:0] addr_6_3;

Selector_2 s6_3(wires_1_2[2], addr_1_2, addr_positional[27:24], addr_6_3);

wire[15:0] addr_7_3;

Selector_2 s7_3(wires_1_2[3], addr_1_2, addr_positional[31:28], addr_7_3);

wire[15:0] addr_8_3;

Selector_2 s8_3(wires_2_2[0], addr_2_2, addr_positional[35:32], addr_8_3);

wire[15:0] addr_9_3;

Selector_2 s9_3(wires_2_2[1], addr_2_2, addr_positional[39:36], addr_9_3);

wire[15:0] addr_10_3;

Selector_2 s10_3(wires_2_2[2], addr_2_2, addr_positional[43:40], addr_10_3);

wire[15:0] addr_11_3;

Selector_2 s11_3(wires_2_2[3], addr_2_2, addr_positional[47:44], addr_11_3);

wire[15:0] addr_12_3;

Selector_2 s12_3(wires_3_2[0], addr_3_2, addr_positional[51:48], addr_12_3);

wire[15:0] addr_13_3;

Selector_2 s13_3(wires_3_2[1], addr_3_2, addr_positional[55:52], addr_13_3);

wire[15:0] addr_14_3;

Selector_2 s14_3(wires_3_2[2], addr_3_2, addr_positional[59:56], addr_14_3);

wire[15:0] addr_15_3;

Selector_2 s15_3(wires_3_2[3], addr_3_2, addr_positional[63:60], addr_15_3);

wire[15:0] addr_16_3;

Selector_2 s16_3(wires_4_2[0], addr_4_2, addr_positional[67:64], addr_16_3);

wire[15:0] addr_17_3;

Selector_2 s17_3(wires_4_2[1], addr_4_2, addr_positional[71:68], addr_17_3);

wire[15:0] addr_18_3;

Selector_2 s18_3(wires_4_2[2], addr_4_2, addr_positional[75:72], addr_18_3);

wire[15:0] addr_19_3;

Selector_2 s19_3(wires_4_2[3], addr_4_2, addr_positional[79:76], addr_19_3);

wire[15:0] addr_20_3;

Selector_2 s20_3(wires_5_2[0], addr_5_2, addr_positional[83:80], addr_20_3);

wire[15:0] addr_21_3;

Selector_2 s21_3(wires_5_2[1], addr_5_2, addr_positional[87:84], addr_21_3);

wire[15:0] addr_22_3;

Selector_2 s22_3(wires_5_2[2], addr_5_2, addr_positional[91:88], addr_22_3);

wire[15:0] addr_23_3;

Selector_2 s23_3(wires_5_2[3], addr_5_2, addr_positional[95:92], addr_23_3);

wire[15:0] addr_24_3;

Selector_2 s24_3(wires_6_2[0], addr_6_2, addr_positional[99:96], addr_24_3);

wire[15:0] addr_25_3;

Selector_2 s25_3(wires_6_2[1], addr_6_2, addr_positional[103:100], addr_25_3);

wire[15:0] addr_26_3;

Selector_2 s26_3(wires_6_2[2], addr_6_2, addr_positional[107:104], addr_26_3);

wire[15:0] addr_27_3;

Selector_2 s27_3(wires_6_2[3], addr_6_2, addr_positional[111:108], addr_27_3);

wire[15:0] addr_28_3;

Selector_2 s28_3(wires_7_2[0], addr_7_2, addr_positional[115:112], addr_28_3);

wire[15:0] addr_29_3;

Selector_2 s29_3(wires_7_2[1], addr_7_2, addr_positional[119:116], addr_29_3);

wire[15:0] addr_30_3;

Selector_2 s30_3(wires_7_2[2], addr_7_2, addr_positional[123:120], addr_30_3);

wire[15:0] addr_31_3;

Selector_2 s31_3(wires_7_2[3], addr_7_2, addr_positional[127:124], addr_31_3);

wire[15:0] addr_32_3;

Selector_2 s32_3(wires_8_2[0], addr_8_2, addr_positional[131:128], addr_32_3);

wire[15:0] addr_33_3;

Selector_2 s33_3(wires_8_2[1], addr_8_2, addr_positional[135:132], addr_33_3);

wire[15:0] addr_34_3;

Selector_2 s34_3(wires_8_2[2], addr_8_2, addr_positional[139:136], addr_34_3);

wire[15:0] addr_35_3;

Selector_2 s35_3(wires_8_2[3], addr_8_2, addr_positional[143:140], addr_35_3);

wire[15:0] addr_36_3;

Selector_2 s36_3(wires_9_2[0], addr_9_2, addr_positional[147:144], addr_36_3);

wire[15:0] addr_37_3;

Selector_2 s37_3(wires_9_2[1], addr_9_2, addr_positional[151:148], addr_37_3);

wire[15:0] addr_38_3;

Selector_2 s38_3(wires_9_2[2], addr_9_2, addr_positional[155:152], addr_38_3);

wire[15:0] addr_39_3;

Selector_2 s39_3(wires_9_2[3], addr_9_2, addr_positional[159:156], addr_39_3);

wire[15:0] addr_40_3;

Selector_2 s40_3(wires_10_2[0], addr_10_2, addr_positional[163:160], addr_40_3);

wire[15:0] addr_41_3;

Selector_2 s41_3(wires_10_2[1], addr_10_2, addr_positional[167:164], addr_41_3);

wire[15:0] addr_42_3;

Selector_2 s42_3(wires_10_2[2], addr_10_2, addr_positional[171:168], addr_42_3);

wire[15:0] addr_43_3;

Selector_2 s43_3(wires_10_2[3], addr_10_2, addr_positional[175:172], addr_43_3);

wire[15:0] addr_44_3;

Selector_2 s44_3(wires_11_2[0], addr_11_2, addr_positional[179:176], addr_44_3);

wire[15:0] addr_45_3;

Selector_2 s45_3(wires_11_2[1], addr_11_2, addr_positional[183:180], addr_45_3);

wire[15:0] addr_46_3;

Selector_2 s46_3(wires_11_2[2], addr_11_2, addr_positional[187:184], addr_46_3);

wire[15:0] addr_47_3;

Selector_2 s47_3(wires_11_2[3], addr_11_2, addr_positional[191:188], addr_47_3);

wire[15:0] addr_48_3;

Selector_2 s48_3(wires_12_2[0], addr_12_2, addr_positional[195:192], addr_48_3);

wire[15:0] addr_49_3;

Selector_2 s49_3(wires_12_2[1], addr_12_2, addr_positional[199:196], addr_49_3);

wire[15:0] addr_50_3;

Selector_2 s50_3(wires_12_2[2], addr_12_2, addr_positional[203:200], addr_50_3);

wire[15:0] addr_51_3;

Selector_2 s51_3(wires_12_2[3], addr_12_2, addr_positional[207:204], addr_51_3);

wire[15:0] addr_52_3;

Selector_2 s52_3(wires_13_2[0], addr_13_2, addr_positional[211:208], addr_52_3);

wire[15:0] addr_53_3;

Selector_2 s53_3(wires_13_2[1], addr_13_2, addr_positional[215:212], addr_53_3);

wire[15:0] addr_54_3;

Selector_2 s54_3(wires_13_2[2], addr_13_2, addr_positional[219:216], addr_54_3);

wire[15:0] addr_55_3;

Selector_2 s55_3(wires_13_2[3], addr_13_2, addr_positional[223:220], addr_55_3);

wire[15:0] addr_56_3;

Selector_2 s56_3(wires_14_2[0], addr_14_2, addr_positional[227:224], addr_56_3);

wire[15:0] addr_57_3;

Selector_2 s57_3(wires_14_2[1], addr_14_2, addr_positional[231:228], addr_57_3);

wire[15:0] addr_58_3;

Selector_2 s58_3(wires_14_2[2], addr_14_2, addr_positional[235:232], addr_58_3);

wire[15:0] addr_59_3;

Selector_2 s59_3(wires_14_2[3], addr_14_2, addr_positional[239:236], addr_59_3);

wire[15:0] addr_60_3;

Selector_2 s60_3(wires_15_2[0], addr_15_2, addr_positional[243:240], addr_60_3);

wire[15:0] addr_61_3;

Selector_2 s61_3(wires_15_2[1], addr_15_2, addr_positional[247:244], addr_61_3);

wire[15:0] addr_62_3;

Selector_2 s62_3(wires_15_2[2], addr_15_2, addr_positional[251:248], addr_62_3);

wire[15:0] addr_63_3;

Selector_2 s63_3(wires_15_2[3], addr_15_2, addr_positional[255:252], addr_63_3);



endmodule

