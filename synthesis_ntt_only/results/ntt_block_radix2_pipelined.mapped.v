/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12-SP5
// Date      : Sun Dec  7 23:21:58 2025
/////////////////////////////////////////////////////////////


module ntt_block_radix2_pipelined ( clk, reset, data_valid_in, iNTT_mode, 
        Data_in, Data_out, data_valid_out, mode_out );
  input [127:0] Data_in;
  output [127:0] Data_out;
  input clk, reset, data_valid_in, iNTT_mode;
  output data_valid_out, mode_out;
  wire   stage_regs_0__0__31_, stage_regs_0__0__30_, stage_regs_0__0__29_,
         stage_regs_0__0__28_, stage_regs_0__0__27_, stage_regs_0__0__26_,
         stage_regs_0__0__25_, stage_regs_0__0__24_, stage_regs_0__0__23_,
         stage_regs_0__0__22_, stage_regs_0__0__21_, stage_regs_0__0__20_,
         stage_regs_0__0__19_, stage_regs_0__0__18_, stage_regs_0__0__17_,
         stage_regs_0__0__16_, stage_regs_0__0__15_, stage_regs_0__0__14_,
         stage_regs_0__0__13_, stage_regs_0__0__12_, stage_regs_0__0__11_,
         stage_regs_0__0__10_, stage_regs_0__0__9_, stage_regs_0__0__8_,
         stage_regs_0__0__7_, stage_regs_0__0__6_, stage_regs_0__0__5_,
         stage_regs_0__0__4_, stage_regs_0__0__3_, stage_regs_0__0__2_,
         stage_regs_0__0__1_, stage_regs_0__0__0_, stage_regs_0__2__31_,
         stage_regs_0__2__30_, stage_regs_0__2__29_, stage_regs_0__2__28_,
         stage_regs_0__2__27_, stage_regs_0__2__26_, stage_regs_0__2__25_,
         stage_regs_0__2__24_, stage_regs_0__2__23_, stage_regs_0__2__22_,
         stage_regs_0__2__21_, stage_regs_0__2__20_, stage_regs_0__2__19_,
         stage_regs_0__2__18_, stage_regs_0__2__17_, stage_regs_0__2__16_,
         stage_regs_0__2__15_, stage_regs_0__2__14_, stage_regs_0__2__13_,
         stage_regs_0__2__12_, stage_regs_0__2__11_, stage_regs_0__2__10_,
         stage_regs_0__2__9_, stage_regs_0__2__8_, stage_regs_0__2__7_,
         stage_regs_0__2__6_, stage_regs_0__2__5_, stage_regs_0__2__4_,
         stage_regs_0__2__3_, stage_regs_0__2__2_, stage_regs_0__2__1_,
         stage_regs_0__2__0_, stage_regs_1__0__31_, stage_regs_1__0__30_,
         stage_regs_1__0__29_, stage_regs_1__0__28_, stage_regs_1__0__27_,
         stage_regs_1__0__26_, stage_regs_1__0__25_, stage_regs_1__0__24_,
         stage_regs_1__0__23_, stage_regs_1__0__22_, stage_regs_1__0__21_,
         stage_regs_1__0__20_, stage_regs_1__0__19_, stage_regs_1__0__18_,
         stage_regs_1__0__17_, stage_regs_1__0__16_, stage_regs_1__0__15_,
         stage_regs_1__0__14_, stage_regs_1__0__13_, stage_regs_1__0__12_,
         stage_regs_1__0__11_, stage_regs_1__0__10_, stage_regs_1__0__9_,
         stage_regs_1__0__8_, stage_regs_1__0__7_, stage_regs_1__0__6_,
         stage_regs_1__0__5_, stage_regs_1__0__4_, stage_regs_1__0__3_,
         stage_regs_1__0__2_, stage_regs_1__0__1_, stage_regs_1__0__0_,
         stage_regs_1__1__31_, stage_regs_1__1__30_, stage_regs_1__1__29_,
         stage_regs_1__1__28_, stage_regs_1__1__27_, stage_regs_1__1__26_,
         stage_regs_1__1__25_, stage_regs_1__1__24_, stage_regs_1__1__23_,
         stage_regs_1__1__22_, stage_regs_1__1__21_, stage_regs_1__1__20_,
         stage_regs_1__1__19_, stage_regs_1__1__18_, stage_regs_1__1__17_,
         stage_regs_1__1__16_, stage_regs_1__1__15_, stage_regs_1__1__14_,
         stage_regs_1__1__13_, stage_regs_1__1__12_, stage_regs_1__1__11_,
         stage_regs_1__1__10_, stage_regs_1__1__9_, stage_regs_1__1__8_,
         stage_regs_1__1__7_, stage_regs_1__1__6_, stage_regs_1__1__5_,
         stage_regs_1__1__4_, stage_regs_1__1__3_, stage_regs_1__1__2_,
         stage_regs_1__1__1_, stage_regs_1__1__0_, stage_regs_1__3__30_,
         stage_regs_1__3__29_, stage_regs_1__3__28_, stage_regs_1__3__27_,
         stage_regs_1__3__26_, stage_regs_1__3__25_, stage_regs_1__3__24_,
         stage_regs_1__3__23_, stage_regs_1__3__22_, stage_regs_1__3__21_,
         stage_regs_1__3__20_, stage_regs_1__3__19_, stage_regs_1__3__18_,
         stage_regs_1__3__17_, stage_regs_1__3__16_, stage_regs_1__3__15_,
         stage_regs_1__3__14_, stage_regs_1__3__13_, stage_regs_1__3__12_,
         stage_regs_1__3__11_, stage_regs_1__3__10_, stage_regs_1__3__9_,
         stage_regs_1__3__8_, stage_regs_1__3__7_, stage_regs_1__3__6_,
         stage_regs_1__3__5_, stage_regs_1__3__4_, stage_regs_1__3__3_,
         stage_regs_1__3__2_, stage_regs_1__3__1_, stage_regs_1__3__0_,
         STAGE_LOOP_0__valid_mid_delay, STAGE_LOOP_1__valid_mid_delay,
         STAGE_LOOP_1__mode_mid_delay,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N36,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N35,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N34,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N33,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N32,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N31,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N30,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N29,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N28,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N27,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N26,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N25,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N24,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N23,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N22,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N21,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N20,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N19,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N18,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N17,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N16,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N15,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N14,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N13,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N12,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N11,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N10,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N9,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N8,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N7,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N6,
         STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N5,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N36,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N35,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N34,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N33,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N32,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N31,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N30,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N29,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N28,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N27,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N26,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N25,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N24,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N23,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N22,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N21,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N20,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N19,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N18,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N17,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N16,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N15,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N14,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N13,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N12,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N11,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N10,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N9,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N8,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N7,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N6,
         STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N5,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N36,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N35,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N34,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N33,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N32,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N31,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N30,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N29,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N28,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N27,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N26,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N25,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N24,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N23,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N22,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N21,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N20,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N19,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N18,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N17,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N16,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N15,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N14,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N13,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N12,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N11,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N10,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N9,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N8,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N7,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N6,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N5,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N36,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N35,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N34,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N33,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N32,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N31,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N30,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N29,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N28,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N27,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N26,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N25,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N24,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N23,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N22,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N21,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N20,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N19,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N18,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N17,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N16,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N15,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N14,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N13,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N12,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N11,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N10,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N9,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N8,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N7,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N6,
         STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N5, n5,
         intadd_0_A_24_, intadd_0_A_23_, intadd_0_A_22_, intadd_0_A_21_,
         intadd_0_A_20_, intadd_0_A_19_, intadd_0_A_18_, intadd_0_A_17_,
         intadd_0_A_16_, intadd_0_A_15_, intadd_0_A_14_, intadd_0_A_13_,
         intadd_0_A_12_, intadd_0_A_11_, intadd_0_A_10_, intadd_0_A_9_,
         intadd_0_A_8_, intadd_0_A_7_, intadd_0_A_6_, intadd_0_A_5_,
         intadd_0_A_4_, intadd_0_A_3_, intadd_0_A_2_, intadd_0_A_1_,
         intadd_0_A_0_, intadd_0_B_24_, intadd_0_B_23_, intadd_0_B_22_,
         intadd_0_B_21_, intadd_0_B_20_, intadd_0_B_19_, intadd_0_B_18_,
         intadd_0_B_17_, intadd_0_B_16_, intadd_0_B_15_, intadd_0_B_14_,
         intadd_0_B_13_, intadd_0_B_12_, intadd_0_B_11_, intadd_0_B_10_,
         intadd_0_B_9_, intadd_0_B_8_, intadd_0_B_7_, intadd_0_B_6_,
         intadd_0_B_5_, intadd_0_B_4_, intadd_0_B_3_, intadd_0_B_2_,
         intadd_0_B_1_, intadd_0_B_0_, intadd_0_CI, intadd_0_SUM_1_,
         intadd_0_SUM_0_, intadd_0_n26, intadd_0_n25, intadd_0_n24,
         intadd_0_n23, intadd_0_n22, intadd_0_n21, intadd_0_n20, intadd_0_n19,
         intadd_0_n18, intadd_0_n17, intadd_0_n16, intadd_0_n15, intadd_0_n14,
         intadd_0_n13, intadd_0_n12, intadd_0_n11, intadd_0_n10, intadd_0_n9,
         intadd_0_n8, intadd_0_n7, intadd_0_n6, intadd_0_n5, intadd_0_n4,
         intadd_0_n3, intadd_0_n2, intadd_1_A_2_, intadd_1_A_1_, intadd_1_A_0_,
         intadd_1_B_2_, intadd_1_B_1_, intadd_1_B_0_, intadd_1_CI,
         intadd_1_SUM_2_, intadd_1_SUM_1_, intadd_1_SUM_0_, intadd_1_n3,
         intadd_1_n2, intadd_1_n1, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n43,
         n44, n46, n48, n51, n52, n53, n55, n56, n57, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657,
         n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, n668,
         n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679,
         n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n690,
         n691, n692, n693, n694, n695, n696, n697, n698, n699, n700, n701,
         n702, n703, n704, n705, n706, n707, n708, n709, n710, n711, n712,
         n713, n714, n715, n716, n717, n718, n719, n720, n721, n722, n723,
         n724, n725, n726, n727, n728, n729, n730, n731, n732, n733, n734,
         n735, n736, n737, n738, n739, n740, n741, n742, n743, n744, n745,
         n746, n747, n748, n749, n750, n751, n752, n753, n754, n755, n756,
         n757, n758, n759, n760, n761, n762, n763, n764, n765, n766, n767,
         n768, n769, n770, n771, n772, n773, n774, n775, n776, n777, n778,
         n779, n780, n781, n782, n783, n784, n785, n786, n787, n788, n789,
         n790, n791, n792, n793, n794, n795, n796, n797, n798, n799, n800,
         n801, n802, n803, n804, n805, n806, n807, n808, n809, n810, n811,
         n812, n813, n814, n815, n816, n817, n818, n819, n820, n821, n822,
         n823, n824, n825, n826, n827, n828, n830, n831, n832, n833, n834,
         n836, n837, n838, n839, n840, n841, n842, n843, n844, n845, n846,
         n847, n848, n849, n850, n851, n852, n853, n854, n855, n856, n857,
         n858, n859, n860, n861, n862, n863, n864, n865, n866, n867, n868,
         n869, n870, n871, n872, n873, n874, n875, n876, n877, n878, n879,
         n880, n881, n882, n883, n884, n885, n886, n887, n888, n889, n890,
         n891, n892, n893, n894, n895, n896, n897, n898, n899, n900, n901,
         n902, n903, n904, n905, n906, n907, n908, n909, n910, n911, n912,
         n913, n914, n915, n916, n917, n918, n919, n920, n921, n922, n923,
         n924, n925, n926, n927, n928, n929, n930, n931, n932, n933, n934,
         n935, n936, n937, n938, n939, n940, n941, n942, n943, n944, n945,
         n946, n947, n948, n949, n950, n951, n952, n953, n954, n955, n956,
         n957, n958, n959, n960, n961, n962, n963, n964, n965, n966, n967,
         n968, n969, n970, n971, n972, n973, n974, n975, n976, n977, n978,
         n979, n980, n981, n982, n983, n984, n985, n986, n988, n989, n990,
         n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001,
         n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011,
         n1012, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022,
         n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032,
         n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042,
         n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052,
         n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062,
         n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072,
         n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082,
         n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092,
         n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102,
         n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112,
         n1113, n1114, n1115, n1117, n1118, n1119, n1120, n1122, n1123, n1124,
         n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134,
         n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144,
         n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154,
         n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164,
         n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174,
         n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184,
         n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194,
         n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204,
         n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214,
         n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224,
         n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234,
         n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244,
         n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254,
         n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264,
         n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273, n1274,
         n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284,
         n1285, n1286, n1287, n1289, n1290, n1291, n1292, n1293, n1294, n1295,
         n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304, n1305,
         n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314, n1315,
         n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324, n1325,
         n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334, n1335,
         n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344, n1345,
         n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354, n1355,
         n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364, n1366,
         n1367, n1368, n1369, n1370, n1371, n1372, n1373, n1374, n1375, n1376,
         n1377, n1378, n1379, n1380, n1381, n1382, n1383, n1384, n1385, n1386,
         n1387, n1388, n1389, n1390, n1391, n1392, n1393, n1394, n1395, n1396,
         n1397, n1398, n1399, n1400, n1401, n1402, n1403, n1404, n1405, n1406,
         n1407, n1408, n1409, n1410, n1411, n1412, n1413, n1414, n1415, n1416,
         n1417, n1418, n1419, n1420, n1421, n1422, n1423, n1424, n1425, n1426,
         n1427, n1428, n1429, n1430, n1431, n1432, n1433, n1434, n1435, n1436,
         n1437, n1438, n1439, n1440, n1441, n1442, n1443, n1444, n1445, n1446,
         n1447, n1448, n1449, n1451, n1452, n1453, n1454, n1456, n1457, n1458,
         n1459, n1460, n1461, n1462, n1463, n1464, n1465, n1466, n1467, n1468,
         n1469, n1470, n1471, n1472, n1473, n1474, n1475, n1476, n1477, n1478,
         n1479, n1480, n1481, n1482, n1483, n1484, n1485, n1486, n1487, n1488,
         n1489, n1490, n1491, n1492, n1493, n1494, n1495, n1496, n1497, n1498,
         n1499, n1500, n1501, n1502, n1503, n1504, n1505, n1506, n1507, n1508,
         n1509, n1510, n1511, n1512, n1513, n1514, n1515, n1516, n1517, n1518,
         n1519, n1520, n1521, n1522, n1523, n1524, n1525, n1526, n1527, n1528,
         n1529, n1530, n1531, n1532, n1533, n1534, n1535, n1536, n1537, n1538,
         n1539, n1540, n1541, n1542, n1543, n1544, n1545, n1546, n1547, n1548,
         n1549, n1550, n1551, n1552, n1553, n1554, n1555, n1556, n1557, n1558,
         n1559, n1560, n1561, n1562, n1563, n1564, n1565, n1566, n1567, n1568,
         n1569, n1570, n1571, n1572, n1573, n1574, n1575, n1576, n1577, n1578,
         n1579, n1580, n1581, n1582, n1583, n1584, n1585, n1586, n1587, n1588,
         n1589, n1590, n1591, n1592, n1593, n1594, n1595, n1596, n1597, n1598,
         n1599, n1600, n1601, n1602, n1603, n1604, n1605, n1606, n1607, n1608,
         n1609, n1610, n1611, n1612, n1613, n1614, n1615, n1616, n1617, n1618,
         n1619, n1620, n1621, n1622, n1623, n1624, n1625, n1626, n1627, n1628,
         n1629, n1630, n1631, n1632, n1633, n1634, n1635, n1636, n1637, n1638,
         n1639, n1640, n1641, n1642, n1643, n1644, n1645, n1646, n1647, n1648,
         n1649, n1650, n1651, n1652, n1653, n1654, n1655, n1656, n1657, n1658,
         n1659, n1660, n1661, n1662, n1663, n1664, n1665, n1666, n1667, n1668,
         n1669, n1670, n1671, n1672, n1673, n1674, n1675, n1676, n1677, n1678,
         n1679, n1680, n1681, n1682, n1683, n1684, n1685, n1686, n1687, n1688,
         n1689, n1690, n1691, n1692, n1693, n1694, n1695, n1696, n1697, n1698,
         n1699, n1700, n1701, n1702, n1703, n1704, n1705, n1706, n1707, n1708,
         n1709, n1710, n1711, n1712, n1713, n1714, n1715, n1716, n1717, n1718,
         n1719, n1720, n1721, n1722, n1723, n1724, n1725, n1726, n1727, n1728,
         n1729, n1730, n1731, n1732, n1733, n1734, n1735, n1736, n1737, n1738,
         n1739, n1740, n1741, n1742, n1743, n1745, n1746, n1747, n1748, n1749,
         n1750, n1751, n1752, n1753, n1754, n1755, n1756, n1757;
  wire   [1:0] valid_pipe;
  wire   [1:0] mode_pipe;
  wire   [255:0] butterfly_out_wires;
  wire   [31:0] STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod;
  wire  
         [31:0] STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg
;
  wire   [31:0] STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod;
  wire  
         [31:0] STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg
;
  wire   [31:0] STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod;
  wire  
         [31:0] STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg
;
  wire   [31:0] STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod;
  wire  
         [31:0] STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg
;

  DFFARX1_RVT mode_pipe_reg_0_ ( .D(iNTT_mode), .CLK(clk), .RSTB(n22), .Q(
        mode_pipe[0]) );
  DFFARX1_RVT stage_regs_reg_0__0__31_ ( .D(Data_in[127]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__31_) );
  DFFARX1_RVT stage_regs_reg_0__0__30_ ( .D(Data_in[126]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__30_) );
  DFFARX1_RVT stage_regs_reg_0__0__29_ ( .D(Data_in[125]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__29_) );
  DFFARX1_RVT stage_regs_reg_0__0__28_ ( .D(Data_in[124]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__28_) );
  DFFARX1_RVT stage_regs_reg_0__0__27_ ( .D(Data_in[123]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__27_) );
  DFFARX1_RVT stage_regs_reg_0__0__26_ ( .D(Data_in[122]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__26_) );
  DFFARX1_RVT stage_regs_reg_0__0__25_ ( .D(Data_in[121]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__25_) );
  DFFARX1_RVT stage_regs_reg_0__0__24_ ( .D(Data_in[120]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__24_) );
  DFFARX1_RVT stage_regs_reg_0__0__23_ ( .D(Data_in[119]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__23_) );
  DFFARX1_RVT stage_regs_reg_0__0__22_ ( .D(Data_in[118]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__22_) );
  DFFARX1_RVT stage_regs_reg_0__0__21_ ( .D(Data_in[117]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__21_) );
  DFFARX1_RVT stage_regs_reg_0__0__20_ ( .D(Data_in[116]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__20_) );
  DFFARX1_RVT stage_regs_reg_0__0__19_ ( .D(Data_in[115]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__19_) );
  DFFARX1_RVT stage_regs_reg_0__0__18_ ( .D(Data_in[114]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__18_) );
  DFFARX1_RVT stage_regs_reg_0__0__17_ ( .D(Data_in[113]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__17_) );
  DFFARX1_RVT stage_regs_reg_0__0__16_ ( .D(Data_in[112]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__16_) );
  DFFARX1_RVT stage_regs_reg_0__0__15_ ( .D(Data_in[111]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__15_) );
  DFFARX1_RVT stage_regs_reg_0__0__14_ ( .D(Data_in[110]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__14_) );
  DFFARX1_RVT stage_regs_reg_0__0__13_ ( .D(Data_in[109]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__13_) );
  DFFARX1_RVT stage_regs_reg_0__0__12_ ( .D(Data_in[108]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__12_) );
  DFFARX1_RVT stage_regs_reg_0__0__11_ ( .D(Data_in[107]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__11_) );
  DFFARX1_RVT stage_regs_reg_0__0__10_ ( .D(Data_in[106]), .CLK(clk), .RSTB(
        n22), .Q(stage_regs_0__0__10_) );
  DFFARX1_RVT stage_regs_reg_0__0__9_ ( .D(Data_in[105]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__0__9_) );
  DFFARX1_RVT stage_regs_reg_0__0__8_ ( .D(Data_in[104]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__0__8_) );
  DFFARX1_RVT stage_regs_reg_0__0__7_ ( .D(Data_in[103]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__0__7_) );
  DFFARX1_RVT stage_regs_reg_0__0__6_ ( .D(Data_in[102]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__0__6_) );
  DFFARX1_RVT stage_regs_reg_0__0__5_ ( .D(Data_in[101]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__0__5_) );
  DFFARX1_RVT stage_regs_reg_0__0__4_ ( .D(Data_in[100]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__0__4_) );
  DFFARX1_RVT stage_regs_reg_0__0__3_ ( .D(Data_in[99]), .CLK(clk), .RSTB(n22), 
        .Q(stage_regs_0__0__3_) );
  DFFARX1_RVT stage_regs_reg_0__0__2_ ( .D(Data_in[98]), .CLK(clk), .RSTB(n22), 
        .Q(stage_regs_0__0__2_) );
  DFFARX1_RVT stage_regs_reg_0__0__1_ ( .D(Data_in[97]), .CLK(clk), .RSTB(n22), 
        .Q(stage_regs_0__0__1_) );
  DFFARX1_RVT stage_regs_reg_0__0__0_ ( .D(Data_in[96]), .CLK(clk), .RSTB(n22), 
        .Q(stage_regs_0__0__0_) );
  DFFARX1_RVT stage_regs_reg_0__1__31_ ( .D(Data_in[63]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N36) );
  DFFARX1_RVT stage_regs_reg_0__1__30_ ( .D(Data_in[62]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N35) );
  DFFARX1_RVT stage_regs_reg_0__1__29_ ( .D(Data_in[61]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N34) );
  DFFARX1_RVT stage_regs_reg_0__1__28_ ( .D(Data_in[60]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N33) );
  DFFARX1_RVT stage_regs_reg_0__1__27_ ( .D(Data_in[59]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N32) );
  DFFARX1_RVT stage_regs_reg_0__1__26_ ( .D(Data_in[58]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N31) );
  DFFARX1_RVT stage_regs_reg_0__1__25_ ( .D(Data_in[57]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N30) );
  DFFARX1_RVT stage_regs_reg_0__1__24_ ( .D(Data_in[56]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N29) );
  DFFARX1_RVT stage_regs_reg_0__1__23_ ( .D(Data_in[55]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N28) );
  DFFARX1_RVT stage_regs_reg_0__1__22_ ( .D(Data_in[54]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N27) );
  DFFARX1_RVT stage_regs_reg_0__1__21_ ( .D(Data_in[53]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N26) );
  DFFARX1_RVT stage_regs_reg_0__1__20_ ( .D(Data_in[52]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N25) );
  DFFARX1_RVT stage_regs_reg_0__1__19_ ( .D(Data_in[51]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N24) );
  DFFARX1_RVT stage_regs_reg_0__1__18_ ( .D(Data_in[50]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N23) );
  DFFARX1_RVT stage_regs_reg_0__1__17_ ( .D(Data_in[49]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N22) );
  DFFARX1_RVT stage_regs_reg_0__1__16_ ( .D(Data_in[48]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N21) );
  DFFARX1_RVT stage_regs_reg_0__1__15_ ( .D(Data_in[47]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N20) );
  DFFARX1_RVT stage_regs_reg_0__1__14_ ( .D(Data_in[46]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N19) );
  DFFARX1_RVT stage_regs_reg_0__1__13_ ( .D(Data_in[45]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N18) );
  DFFARX1_RVT stage_regs_reg_0__1__12_ ( .D(Data_in[44]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N17) );
  DFFARX1_RVT stage_regs_reg_0__1__11_ ( .D(Data_in[43]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N16) );
  DFFARX1_RVT stage_regs_reg_0__1__10_ ( .D(Data_in[42]), .CLK(clk), .RSTB(n22), .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N15) );
  DFFARX1_RVT stage_regs_reg_0__1__9_ ( .D(Data_in[41]), .CLK(clk), .RSTB(n22), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N14) );
  DFFARX1_RVT stage_regs_reg_0__1__8_ ( .D(Data_in[40]), .CLK(clk), .RSTB(n22), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N13) );
  DFFARX1_RVT stage_regs_reg_0__1__7_ ( .D(Data_in[39]), .CLK(clk), .RSTB(n22), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N12) );
  DFFARX1_RVT stage_regs_reg_0__1__6_ ( .D(Data_in[38]), .CLK(clk), .RSTB(n22), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N11) );
  DFFARX1_RVT stage_regs_reg_0__1__5_ ( .D(Data_in[37]), .CLK(clk), .RSTB(n22), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N10) );
  DFFARX1_RVT stage_regs_reg_0__1__4_ ( .D(Data_in[36]), .CLK(clk), .RSTB(n22), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N9) );
  DFFARX1_RVT stage_regs_reg_0__1__3_ ( .D(Data_in[35]), .CLK(clk), .RSTB(n22), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N8) );
  DFFARX1_RVT stage_regs_reg_0__1__2_ ( .D(Data_in[34]), .CLK(clk), .RSTB(n22), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N7) );
  DFFARX1_RVT stage_regs_reg_0__1__1_ ( .D(Data_in[33]), .CLK(clk), .RSTB(n22), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N6) );
  DFFARX1_RVT stage_regs_reg_0__1__0_ ( .D(Data_in[32]), .CLK(clk), .RSTB(n22), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N5) );
  DFFARX1_RVT stage_regs_reg_0__2__31_ ( .D(Data_in[95]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__2__31_) );
  DFFARX1_RVT stage_regs_reg_0__2__30_ ( .D(Data_in[94]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__2__30_) );
  DFFARX1_RVT stage_regs_reg_0__2__29_ ( .D(Data_in[93]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__2__29_) );
  DFFARX1_RVT stage_regs_reg_0__2__28_ ( .D(Data_in[92]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__2__28_) );
  DFFARX1_RVT stage_regs_reg_0__2__27_ ( .D(Data_in[91]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__2__27_) );
  DFFARX1_RVT stage_regs_reg_0__2__26_ ( .D(Data_in[90]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__2__26_) );
  DFFARX1_RVT stage_regs_reg_0__2__25_ ( .D(Data_in[89]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__2__25_) );
  DFFARX1_RVT stage_regs_reg_0__2__24_ ( .D(Data_in[88]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__2__24_) );
  DFFARX1_RVT stage_regs_reg_0__2__23_ ( .D(Data_in[87]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__2__23_) );
  DFFARX1_RVT stage_regs_reg_0__2__22_ ( .D(Data_in[86]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__2__22_) );
  DFFARX1_RVT stage_regs_reg_0__2__21_ ( .D(Data_in[85]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__2__21_) );
  DFFARX1_RVT stage_regs_reg_0__2__20_ ( .D(Data_in[84]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__2__20_) );
  DFFARX1_RVT stage_regs_reg_0__2__19_ ( .D(Data_in[83]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__2__19_) );
  DFFARX1_RVT stage_regs_reg_0__2__18_ ( .D(Data_in[82]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__2__18_) );
  DFFARX1_RVT stage_regs_reg_0__2__17_ ( .D(Data_in[81]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__2__17_) );
  DFFARX1_RVT stage_regs_reg_0__2__16_ ( .D(Data_in[80]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__2__16_) );
  DFFARX1_RVT stage_regs_reg_0__2__15_ ( .D(Data_in[79]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__2__15_) );
  DFFARX1_RVT stage_regs_reg_0__2__14_ ( .D(Data_in[78]), .CLK(clk), .RSTB(n22), .Q(stage_regs_0__2__14_) );
  DFFARX1_RVT stage_regs_reg_0__2__13_ ( .D(Data_in[77]), .CLK(clk), .RSTB(
        n1742), .Q(stage_regs_0__2__13_) );
  DFFARX1_RVT stage_regs_reg_0__2__12_ ( .D(Data_in[76]), .CLK(clk), .RSTB(
        n1742), .Q(stage_regs_0__2__12_) );
  DFFARX1_RVT stage_regs_reg_0__2__11_ ( .D(Data_in[75]), .CLK(clk), .RSTB(
        n1742), .Q(stage_regs_0__2__11_) );
  DFFARX1_RVT stage_regs_reg_0__2__10_ ( .D(Data_in[74]), .CLK(clk), .RSTB(
        n1742), .Q(stage_regs_0__2__10_) );
  DFFARX1_RVT stage_regs_reg_0__2__9_ ( .D(Data_in[73]), .CLK(clk), .RSTB(
        n1742), .Q(stage_regs_0__2__9_) );
  DFFARX1_RVT stage_regs_reg_0__2__8_ ( .D(Data_in[72]), .CLK(clk), .RSTB(
        n1742), .Q(stage_regs_0__2__8_) );
  DFFARX1_RVT stage_regs_reg_0__2__7_ ( .D(Data_in[71]), .CLK(clk), .RSTB(
        n1742), .Q(stage_regs_0__2__7_) );
  DFFARX1_RVT stage_regs_reg_0__2__6_ ( .D(Data_in[70]), .CLK(clk), .RSTB(
        n1742), .Q(stage_regs_0__2__6_) );
  DFFARX1_RVT stage_regs_reg_0__2__5_ ( .D(Data_in[69]), .CLK(clk), .RSTB(
        n1742), .Q(stage_regs_0__2__5_) );
  DFFARX1_RVT stage_regs_reg_0__2__4_ ( .D(Data_in[68]), .CLK(clk), .RSTB(
        n1742), .Q(stage_regs_0__2__4_) );
  DFFARX1_RVT stage_regs_reg_0__2__3_ ( .D(Data_in[67]), .CLK(clk), .RSTB(
        n1742), .Q(stage_regs_0__2__3_) );
  DFFARX1_RVT stage_regs_reg_0__2__2_ ( .D(Data_in[66]), .CLK(clk), .RSTB(
        n1742), .Q(stage_regs_0__2__2_) );
  DFFARX1_RVT stage_regs_reg_0__2__1_ ( .D(Data_in[65]), .CLK(clk), .RSTB(
        n1743), .Q(stage_regs_0__2__1_) );
  DFFARX1_RVT stage_regs_reg_0__2__0_ ( .D(Data_in[64]), .CLK(clk), .RSTB(
        n1743), .Q(stage_regs_0__2__0_) );
  DFFARX1_RVT stage_regs_reg_0__3__31_ ( .D(Data_in[31]), .CLK(clk), .RSTB(
        n1743), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N36)
         );
  DFFARX1_RVT stage_regs_reg_0__3__30_ ( .D(Data_in[30]), .CLK(clk), .RSTB(
        n1743), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N35)
         );
  DFFARX1_RVT stage_regs_reg_0__3__29_ ( .D(Data_in[29]), .CLK(clk), .RSTB(
        n1743), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N34)
         );
  DFFARX1_RVT stage_regs_reg_0__3__28_ ( .D(Data_in[28]), .CLK(clk), .RSTB(
        n1743), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N33)
         );
  DFFARX1_RVT stage_regs_reg_0__3__27_ ( .D(Data_in[27]), .CLK(clk), .RSTB(
        n1743), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N32)
         );
  DFFARX1_RVT stage_regs_reg_0__3__26_ ( .D(Data_in[26]), .CLK(clk), .RSTB(
        n1743), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N31)
         );
  DFFARX1_RVT stage_regs_reg_0__3__25_ ( .D(Data_in[25]), .CLK(clk), .RSTB(
        n1743), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N30)
         );
  DFFARX1_RVT stage_regs_reg_0__3__24_ ( .D(Data_in[24]), .CLK(clk), .RSTB(
        n1743), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N29)
         );
  DFFARX1_RVT stage_regs_reg_0__3__23_ ( .D(Data_in[23]), .CLK(clk), .RSTB(
        n1743), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N28)
         );
  DFFARX1_RVT stage_regs_reg_0__3__22_ ( .D(Data_in[22]), .CLK(clk), .RSTB(
        n1743), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N27)
         );
  DFFARX1_RVT stage_regs_reg_0__3__21_ ( .D(Data_in[21]), .CLK(clk), .RSTB(
        n1743), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N26)
         );
  DFFARX1_RVT stage_regs_reg_0__3__20_ ( .D(Data_in[20]), .CLK(clk), .RSTB(
        n1742), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N25)
         );
  DFFARX1_RVT stage_regs_reg_0__3__19_ ( .D(Data_in[19]), .CLK(clk), .RSTB(
        n1743), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N24)
         );
  DFFARX1_RVT stage_regs_reg_0__3__18_ ( .D(Data_in[18]), .CLK(clk), .RSTB(
        n1742), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N23)
         );
  DFFARX1_RVT stage_regs_reg_0__3__17_ ( .D(Data_in[17]), .CLK(clk), .RSTB(
        n1743), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N22)
         );
  DFFARX1_RVT stage_regs_reg_0__3__16_ ( .D(Data_in[16]), .CLK(clk), .RSTB(
        n1742), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N21)
         );
  DFFARX1_RVT stage_regs_reg_0__3__15_ ( .D(Data_in[15]), .CLK(clk), .RSTB(
        n1743), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N20)
         );
  DFFARX1_RVT stage_regs_reg_0__3__14_ ( .D(Data_in[14]), .CLK(clk), .RSTB(
        n1742), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N19)
         );
  DFFARX1_RVT stage_regs_reg_0__3__13_ ( .D(Data_in[13]), .CLK(clk), .RSTB(
        n1743), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N18)
         );
  DFFARX1_RVT stage_regs_reg_0__3__12_ ( .D(Data_in[12]), .CLK(clk), .RSTB(
        n1742), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N17)
         );
  DFFARX1_RVT stage_regs_reg_0__3__11_ ( .D(Data_in[11]), .CLK(clk), .RSTB(
        n1743), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N16)
         );
  DFFARX1_RVT stage_regs_reg_0__3__10_ ( .D(Data_in[10]), .CLK(clk), .RSTB(
        n1742), .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N15)
         );
  DFFARX1_RVT stage_regs_reg_0__3__9_ ( .D(Data_in[9]), .CLK(clk), .RSTB(n16), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N14) );
  DFFARX1_RVT stage_regs_reg_0__3__8_ ( .D(Data_in[8]), .CLK(clk), .RSTB(n17), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N13) );
  DFFARX1_RVT stage_regs_reg_0__3__7_ ( .D(Data_in[7]), .CLK(clk), .RSTB(n16), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N12) );
  DFFARX1_RVT stage_regs_reg_0__3__6_ ( .D(Data_in[6]), .CLK(clk), .RSTB(n17), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N11) );
  DFFARX1_RVT stage_regs_reg_0__3__5_ ( .D(Data_in[5]), .CLK(clk), .RSTB(n16), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N10) );
  DFFARX1_RVT stage_regs_reg_0__3__4_ ( .D(Data_in[4]), .CLK(clk), .RSTB(n17), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N9) );
  DFFARX1_RVT stage_regs_reg_0__3__3_ ( .D(Data_in[3]), .CLK(clk), .RSTB(n16), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N8) );
  DFFARX1_RVT stage_regs_reg_0__3__2_ ( .D(Data_in[2]), .CLK(clk), .RSTB(n17), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N7) );
  DFFARX1_RVT stage_regs_reg_0__3__1_ ( .D(Data_in[1]), .CLK(clk), .RSTB(n16), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N6) );
  DFFARX1_RVT stage_regs_reg_0__3__0_ ( .D(Data_in[0]), .CLK(clk), .RSTB(n16), 
        .Q(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N5) );
  DFFARX1_RVT valid_pipe_reg_0_ ( .D(data_valid_in), .CLK(clk), .RSTB(n22), 
        .Q(valid_pipe[0]) );
  DFFARX1_RVT stage_regs_reg_1__0__31_ ( .D(butterfly_out_wires[255]), .CLK(
        clk), .RSTB(n16), .Q(stage_regs_1__0__31_) );
  DFFARX1_RVT stage_regs_reg_1__0__30_ ( .D(butterfly_out_wires[254]), .CLK(
        clk), .RSTB(n17), .Q(stage_regs_1__0__30_) );
  DFFARX1_RVT stage_regs_reg_1__0__29_ ( .D(butterfly_out_wires[253]), .CLK(
        clk), .RSTB(n12), .Q(stage_regs_1__0__29_) );
  DFFARX1_RVT stage_regs_reg_1__0__28_ ( .D(butterfly_out_wires[252]), .CLK(
        clk), .RSTB(n15), .Q(stage_regs_1__0__28_) );
  DFFARX1_RVT stage_regs_reg_1__0__27_ ( .D(butterfly_out_wires[251]), .CLK(
        clk), .RSTB(n14), .Q(stage_regs_1__0__27_) );
  DFFARX1_RVT stage_regs_reg_1__0__26_ ( .D(butterfly_out_wires[250]), .CLK(
        clk), .RSTB(n15), .Q(stage_regs_1__0__26_) );
  DFFARX1_RVT stage_regs_reg_1__0__25_ ( .D(butterfly_out_wires[249]), .CLK(
        clk), .RSTB(n13), .Q(stage_regs_1__0__25_) );
  DFFARX1_RVT stage_regs_reg_1__0__24_ ( .D(butterfly_out_wires[248]), .CLK(
        clk), .RSTB(n15), .Q(stage_regs_1__0__24_) );
  DFFARX1_RVT stage_regs_reg_1__0__23_ ( .D(butterfly_out_wires[247]), .CLK(
        clk), .RSTB(n10), .Q(stage_regs_1__0__23_) );
  DFFARX1_RVT stage_regs_reg_1__0__22_ ( .D(butterfly_out_wires[246]), .CLK(
        clk), .RSTB(n15), .Q(stage_regs_1__0__22_) );
  DFFARX1_RVT stage_regs_reg_1__0__21_ ( .D(butterfly_out_wires[245]), .CLK(
        clk), .RSTB(n15), .Q(stage_regs_1__0__21_) );
  DFFARX1_RVT stage_regs_reg_1__0__20_ ( .D(butterfly_out_wires[244]), .CLK(
        clk), .RSTB(n11), .Q(stage_regs_1__0__20_) );
  DFFARX1_RVT stage_regs_reg_1__0__19_ ( .D(butterfly_out_wires[243]), .CLK(
        clk), .RSTB(n14), .Q(stage_regs_1__0__19_) );
  DFFARX1_RVT stage_regs_reg_1__0__18_ ( .D(butterfly_out_wires[242]), .CLK(
        clk), .RSTB(n15), .Q(stage_regs_1__0__18_) );
  DFFARX1_RVT stage_regs_reg_1__0__17_ ( .D(butterfly_out_wires[241]), .CLK(
        clk), .RSTB(n17), .Q(stage_regs_1__0__17_) );
  DFFARX1_RVT stage_regs_reg_1__0__16_ ( .D(butterfly_out_wires[240]), .CLK(
        clk), .RSTB(n15), .Q(stage_regs_1__0__16_) );
  DFFARX1_RVT stage_regs_reg_1__0__15_ ( .D(butterfly_out_wires[239]), .CLK(
        clk), .RSTB(n13), .Q(stage_regs_1__0__15_) );
  DFFARX1_RVT stage_regs_reg_1__0__14_ ( .D(butterfly_out_wires[238]), .CLK(
        clk), .RSTB(n11), .Q(stage_regs_1__0__14_) );
  DFFARX1_RVT stage_regs_reg_1__0__13_ ( .D(butterfly_out_wires[237]), .CLK(
        clk), .RSTB(n11), .Q(stage_regs_1__0__13_) );
  DFFARX1_RVT stage_regs_reg_1__0__12_ ( .D(butterfly_out_wires[236]), .CLK(
        clk), .RSTB(n14), .Q(stage_regs_1__0__12_) );
  DFFARX1_RVT stage_regs_reg_1__0__11_ ( .D(butterfly_out_wires[235]), .CLK(
        clk), .RSTB(n1757), .Q(stage_regs_1__0__11_) );
  DFFARX1_RVT stage_regs_reg_1__0__10_ ( .D(butterfly_out_wires[234]), .CLK(
        clk), .RSTB(n1757), .Q(stage_regs_1__0__10_) );
  DFFARX1_RVT stage_regs_reg_1__0__9_ ( .D(butterfly_out_wires[233]), .CLK(clk), .RSTB(n12), .Q(stage_regs_1__0__9_) );
  DFFARX1_RVT stage_regs_reg_1__0__8_ ( .D(butterfly_out_wires[232]), .CLK(clk), .RSTB(n10), .Q(stage_regs_1__0__8_) );
  DFFARX1_RVT stage_regs_reg_1__0__7_ ( .D(butterfly_out_wires[231]), .CLK(clk), .RSTB(n10), .Q(stage_regs_1__0__7_) );
  DFFARX1_RVT stage_regs_reg_1__0__6_ ( .D(butterfly_out_wires[230]), .CLK(clk), .RSTB(n13), .Q(stage_regs_1__0__6_) );
  DFFARX1_RVT stage_regs_reg_1__0__5_ ( .D(butterfly_out_wires[229]), .CLK(clk), .RSTB(n1745), .Q(stage_regs_1__0__5_) );
  DFFARX1_RVT stage_regs_reg_1__0__4_ ( .D(butterfly_out_wires[228]), .CLK(clk), .RSTB(n1745), .Q(stage_regs_1__0__4_) );
  DFFARX1_RVT stage_regs_reg_1__0__3_ ( .D(butterfly_out_wires[227]), .CLK(clk), .RSTB(n1745), .Q(stage_regs_1__0__3_) );
  DFFARX1_RVT stage_regs_reg_1__0__2_ ( .D(butterfly_out_wires[226]), .CLK(clk), .RSTB(n1745), .Q(stage_regs_1__0__2_) );
  DFFARX1_RVT stage_regs_reg_1__0__1_ ( .D(butterfly_out_wires[225]), .CLK(clk), .RSTB(n1745), .Q(stage_regs_1__0__1_) );
  DFFARX1_RVT stage_regs_reg_1__0__0_ ( .D(butterfly_out_wires[224]), .CLK(clk), .RSTB(n1745), .Q(stage_regs_1__0__0_) );
  DFFARX1_RVT stage_regs_reg_1__1__31_ ( .D(butterfly_out_wires[223]), .CLK(
        clk), .RSTB(n1745), .Q(stage_regs_1__1__31_) );
  DFFARX1_RVT stage_regs_reg_1__1__30_ ( .D(butterfly_out_wires[222]), .CLK(
        clk), .RSTB(n1745), .Q(stage_regs_1__1__30_) );
  DFFARX1_RVT stage_regs_reg_1__1__29_ ( .D(butterfly_out_wires[221]), .CLK(
        clk), .RSTB(n1745), .Q(stage_regs_1__1__29_) );
  DFFARX1_RVT stage_regs_reg_1__1__28_ ( .D(butterfly_out_wires[220]), .CLK(
        clk), .RSTB(n1745), .Q(stage_regs_1__1__28_) );
  DFFARX1_RVT stage_regs_reg_1__1__27_ ( .D(butterfly_out_wires[219]), .CLK(
        clk), .RSTB(n1745), .Q(stage_regs_1__1__27_) );
  DFFARX1_RVT stage_regs_reg_1__1__26_ ( .D(butterfly_out_wires[218]), .CLK(
        clk), .RSTB(n1745), .Q(stage_regs_1__1__26_) );
  DFFARX1_RVT stage_regs_reg_1__1__25_ ( .D(butterfly_out_wires[217]), .CLK(
        clk), .RSTB(n1746), .Q(stage_regs_1__1__25_) );
  DFFARX1_RVT stage_regs_reg_1__1__24_ ( .D(butterfly_out_wires[216]), .CLK(
        clk), .RSTB(n1746), .Q(stage_regs_1__1__24_) );
  DFFARX1_RVT stage_regs_reg_1__1__23_ ( .D(butterfly_out_wires[215]), .CLK(
        clk), .RSTB(n1746), .Q(stage_regs_1__1__23_) );
  DFFARX1_RVT stage_regs_reg_1__1__22_ ( .D(butterfly_out_wires[214]), .CLK(
        clk), .RSTB(n1746), .Q(stage_regs_1__1__22_) );
  DFFARX1_RVT stage_regs_reg_1__1__21_ ( .D(butterfly_out_wires[213]), .CLK(
        clk), .RSTB(n1746), .Q(stage_regs_1__1__21_) );
  DFFARX1_RVT stage_regs_reg_1__1__20_ ( .D(butterfly_out_wires[212]), .CLK(
        clk), .RSTB(n1746), .Q(stage_regs_1__1__20_) );
  DFFARX1_RVT stage_regs_reg_1__1__19_ ( .D(butterfly_out_wires[211]), .CLK(
        clk), .RSTB(n1746), .Q(stage_regs_1__1__19_) );
  DFFARX1_RVT stage_regs_reg_1__1__18_ ( .D(butterfly_out_wires[210]), .CLK(
        clk), .RSTB(n1746), .Q(stage_regs_1__1__18_) );
  DFFARX1_RVT stage_regs_reg_1__1__17_ ( .D(butterfly_out_wires[209]), .CLK(
        clk), .RSTB(n1746), .Q(stage_regs_1__1__17_) );
  DFFARX1_RVT stage_regs_reg_1__1__16_ ( .D(butterfly_out_wires[208]), .CLK(
        clk), .RSTB(n1746), .Q(stage_regs_1__1__16_) );
  DFFARX1_RVT stage_regs_reg_1__1__15_ ( .D(butterfly_out_wires[207]), .CLK(
        clk), .RSTB(n1746), .Q(stage_regs_1__1__15_) );
  DFFARX1_RVT stage_regs_reg_1__1__14_ ( .D(butterfly_out_wires[206]), .CLK(
        clk), .RSTB(n1746), .Q(stage_regs_1__1__14_) );
  DFFARX1_RVT stage_regs_reg_1__1__13_ ( .D(butterfly_out_wires[205]), .CLK(
        clk), .RSTB(n1746), .Q(stage_regs_1__1__13_) );
  DFFARX1_RVT stage_regs_reg_1__1__12_ ( .D(butterfly_out_wires[204]), .CLK(
        clk), .RSTB(n1745), .Q(stage_regs_1__1__12_) );
  DFFARX1_RVT stage_regs_reg_1__1__11_ ( .D(butterfly_out_wires[203]), .CLK(
        clk), .RSTB(n1746), .Q(stage_regs_1__1__11_) );
  DFFARX1_RVT stage_regs_reg_1__1__10_ ( .D(butterfly_out_wires[202]), .CLK(
        clk), .RSTB(n1745), .Q(stage_regs_1__1__10_) );
  DFFARX1_RVT stage_regs_reg_1__1__9_ ( .D(butterfly_out_wires[201]), .CLK(clk), .RSTB(n1746), .Q(stage_regs_1__1__9_) );
  DFFARX1_RVT stage_regs_reg_1__1__8_ ( .D(butterfly_out_wires[200]), .CLK(clk), .RSTB(n1745), .Q(stage_regs_1__1__8_) );
  DFFARX1_RVT stage_regs_reg_1__1__7_ ( .D(butterfly_out_wires[199]), .CLK(clk), .RSTB(n1746), .Q(stage_regs_1__1__7_) );
  DFFARX1_RVT stage_regs_reg_1__1__6_ ( .D(butterfly_out_wires[198]), .CLK(clk), .RSTB(n1745), .Q(stage_regs_1__1__6_) );
  DFFARX1_RVT stage_regs_reg_1__1__5_ ( .D(butterfly_out_wires[197]), .CLK(clk), .RSTB(n1746), .Q(stage_regs_1__1__5_) );
  DFFARX1_RVT stage_regs_reg_1__1__4_ ( .D(butterfly_out_wires[196]), .CLK(clk), .RSTB(n1745), .Q(stage_regs_1__1__4_) );
  DFFARX1_RVT stage_regs_reg_1__1__3_ ( .D(butterfly_out_wires[195]), .CLK(clk), .RSTB(n1746), .Q(stage_regs_1__1__3_) );
  DFFARX1_RVT stage_regs_reg_1__1__2_ ( .D(butterfly_out_wires[194]), .CLK(clk), .RSTB(n1745), .Q(stage_regs_1__1__2_) );
  DFFARX1_RVT stage_regs_reg_1__1__1_ ( .D(butterfly_out_wires[193]), .CLK(clk), .RSTB(n10), .Q(stage_regs_1__1__1_) );
  DFFARX1_RVT stage_regs_reg_1__1__0_ ( .D(butterfly_out_wires[192]), .CLK(clk), .RSTB(n13), .Q(stage_regs_1__1__0_) );
  DFFARX1_RVT stage_regs_reg_1__2__31_ ( .D(butterfly_out_wires[191]), .CLK(
        clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N36) );
  DFFARX1_RVT stage_regs_reg_1__2__30_ ( .D(butterfly_out_wires[190]), .CLK(
        clk), .RSTB(n12), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N35) );
  DFFARX1_RVT stage_regs_reg_1__2__29_ ( .D(butterfly_out_wires[189]), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N34) );
  DFFARX1_RVT stage_regs_reg_1__2__28_ ( .D(butterfly_out_wires[188]), .CLK(
        clk), .RSTB(n1757), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N33) );
  DFFARX1_RVT stage_regs_reg_1__2__27_ ( .D(butterfly_out_wires[187]), .CLK(
        clk), .RSTB(n10), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N32) );
  DFFARX1_RVT stage_regs_reg_1__2__26_ ( .D(butterfly_out_wires[186]), .CLK(
        clk), .RSTB(n13), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N31) );
  DFFARX1_RVT stage_regs_reg_1__2__25_ ( .D(butterfly_out_wires[185]), .CLK(
        clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N30) );
  DFFARX1_RVT stage_regs_reg_1__2__24_ ( .D(butterfly_out_wires[184]), .CLK(
        clk), .RSTB(n12), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N29) );
  DFFARX1_RVT stage_regs_reg_1__2__23_ ( .D(butterfly_out_wires[183]), .CLK(
        clk), .RSTB(n41), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N28) );
  DFFARX1_RVT stage_regs_reg_1__2__22_ ( .D(butterfly_out_wires[182]), .CLK(
        clk), .RSTB(n9), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N27) );
  DFFARX1_RVT stage_regs_reg_1__2__21_ ( .D(butterfly_out_wires[181]), .CLK(
        clk), .RSTB(n1757), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N26) );
  DFFARX1_RVT stage_regs_reg_1__2__20_ ( .D(butterfly_out_wires[180]), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N25) );
  DFFARX1_RVT stage_regs_reg_1__2__19_ ( .D(butterfly_out_wires[179]), .CLK(
        clk), .RSTB(n12), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N24) );
  DFFARX1_RVT stage_regs_reg_1__2__18_ ( .D(butterfly_out_wires[178]), .CLK(
        clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N23) );
  DFFARX1_RVT stage_regs_reg_1__2__17_ ( .D(butterfly_out_wires[177]), .CLK(
        clk), .RSTB(n13), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N22) );
  DFFARX1_RVT stage_regs_reg_1__2__16_ ( .D(butterfly_out_wires[176]), .CLK(
        clk), .RSTB(n12), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N21) );
  DFFARX1_RVT stage_regs_reg_1__2__15_ ( .D(butterfly_out_wires[175]), .CLK(
        clk), .RSTB(n12), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N20) );
  DFFARX1_RVT stage_regs_reg_1__2__14_ ( .D(butterfly_out_wires[174]), .CLK(
        clk), .RSTB(n10), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N19) );
  DFFARX1_RVT stage_regs_reg_1__2__13_ ( .D(butterfly_out_wires[173]), .CLK(
        clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N18) );
  DFFARX1_RVT stage_regs_reg_1__2__12_ ( .D(butterfly_out_wires[172]), .CLK(
        clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N17) );
  DFFARX1_RVT stage_regs_reg_1__2__11_ ( .D(butterfly_out_wires[171]), .CLK(
        clk), .RSTB(n17), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N16) );
  DFFARX1_RVT stage_regs_reg_1__2__10_ ( .D(butterfly_out_wires[170]), .CLK(
        clk), .RSTB(n13), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N15) );
  DFFARX1_RVT stage_regs_reg_1__2__9_ ( .D(butterfly_out_wires[169]), .CLK(clk), .RSTB(n12), .Q(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N14)
         );
  DFFARX1_RVT stage_regs_reg_1__2__8_ ( .D(butterfly_out_wires[168]), .CLK(clk), .RSTB(n13), .Q(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N13)
         );
  DFFARX1_RVT stage_regs_reg_1__2__7_ ( .D(butterfly_out_wires[167]), .CLK(clk), .RSTB(n11), .Q(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N12)
         );
  DFFARX1_RVT stage_regs_reg_1__2__6_ ( .D(butterfly_out_wires[166]), .CLK(clk), .RSTB(n11), .Q(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N11)
         );
  DFFARX1_RVT stage_regs_reg_1__2__5_ ( .D(butterfly_out_wires[165]), .CLK(clk), .RSTB(n14), .Q(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N10)
         );
  DFFARX1_RVT stage_regs_reg_1__2__4_ ( .D(butterfly_out_wires[164]), .CLK(clk), .RSTB(n1757), .Q(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N9)
         );
  DFFARX1_RVT stage_regs_reg_1__2__3_ ( .D(butterfly_out_wires[163]), .CLK(clk), .RSTB(n1757), .Q(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N8)
         );
  DFFARX1_RVT stage_regs_reg_1__2__2_ ( .D(butterfly_out_wires[162]), .CLK(clk), .RSTB(n12), .Q(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N7) );
  DFFARX1_RVT stage_regs_reg_1__2__1_ ( .D(butterfly_out_wires[161]), .CLK(clk), .RSTB(n10), .Q(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N6) );
  DFFARX1_RVT stage_regs_reg_1__2__0_ ( .D(butterfly_out_wires[160]), .CLK(clk), .RSTB(n10), .Q(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N5) );
  DFFARX1_RVT stage_regs_reg_1__3__31_ ( .D(butterfly_out_wires[159]), .CLK(
        clk), .RSTB(n11), .QN(n1724) );
  DFFARX1_RVT stage_regs_reg_1__3__30_ ( .D(butterfly_out_wires[158]), .CLK(
        clk), .RSTB(n13), .Q(stage_regs_1__3__30_) );
  DFFARX1_RVT stage_regs_reg_1__3__29_ ( .D(butterfly_out_wires[157]), .CLK(
        clk), .RSTB(n18), .Q(stage_regs_1__3__29_) );
  DFFARX1_RVT stage_regs_reg_1__3__28_ ( .D(butterfly_out_wires[156]), .CLK(
        clk), .RSTB(n18), .Q(stage_regs_1__3__28_) );
  DFFARX1_RVT stage_regs_reg_1__3__27_ ( .D(butterfly_out_wires[155]), .CLK(
        clk), .RSTB(n18), .Q(stage_regs_1__3__27_) );
  DFFARX1_RVT stage_regs_reg_1__3__26_ ( .D(butterfly_out_wires[154]), .CLK(
        clk), .RSTB(n18), .Q(stage_regs_1__3__26_), .QN(n25) );
  DFFARX1_RVT stage_regs_reg_1__3__25_ ( .D(butterfly_out_wires[153]), .CLK(
        clk), .RSTB(n18), .Q(stage_regs_1__3__25_) );
  DFFARX1_RVT stage_regs_reg_1__3__24_ ( .D(butterfly_out_wires[152]), .CLK(
        clk), .RSTB(n18), .Q(stage_regs_1__3__24_) );
  DFFARX1_RVT stage_regs_reg_1__3__23_ ( .D(butterfly_out_wires[151]), .CLK(
        clk), .RSTB(n18), .Q(stage_regs_1__3__23_) );
  DFFARX1_RVT stage_regs_reg_1__3__22_ ( .D(butterfly_out_wires[150]), .CLK(
        clk), .RSTB(n18), .Q(stage_regs_1__3__22_) );
  DFFARX1_RVT stage_regs_reg_1__3__21_ ( .D(butterfly_out_wires[149]), .CLK(
        clk), .RSTB(n18), .Q(stage_regs_1__3__21_) );
  DFFARX1_RVT stage_regs_reg_1__3__20_ ( .D(butterfly_out_wires[148]), .CLK(
        clk), .RSTB(n18), .Q(stage_regs_1__3__20_) );
  DFFARX1_RVT stage_regs_reg_1__3__19_ ( .D(butterfly_out_wires[147]), .CLK(
        clk), .RSTB(n18), .Q(stage_regs_1__3__19_) );
  DFFARX1_RVT stage_regs_reg_1__3__18_ ( .D(butterfly_out_wires[146]), .CLK(
        clk), .RSTB(n18), .Q(stage_regs_1__3__18_) );
  DFFARX1_RVT stage_regs_reg_1__3__17_ ( .D(butterfly_out_wires[145]), .CLK(
        clk), .RSTB(n41), .Q(stage_regs_1__3__17_) );
  DFFARX1_RVT stage_regs_reg_1__3__16_ ( .D(butterfly_out_wires[144]), .CLK(
        clk), .RSTB(n41), .Q(stage_regs_1__3__16_) );
  DFFARX1_RVT stage_regs_reg_1__3__15_ ( .D(butterfly_out_wires[143]), .CLK(
        clk), .RSTB(n41), .Q(stage_regs_1__3__15_) );
  DFFARX1_RVT stage_regs_reg_1__3__14_ ( .D(butterfly_out_wires[142]), .CLK(
        clk), .RSTB(n41), .Q(stage_regs_1__3__14_) );
  DFFARX1_RVT stage_regs_reg_1__3__13_ ( .D(butterfly_out_wires[141]), .CLK(
        clk), .RSTB(n41), .Q(stage_regs_1__3__13_) );
  DFFARX1_RVT stage_regs_reg_1__3__12_ ( .D(butterfly_out_wires[140]), .CLK(
        clk), .RSTB(n41), .Q(stage_regs_1__3__12_) );
  DFFARX1_RVT stage_regs_reg_1__3__11_ ( .D(butterfly_out_wires[139]), .CLK(
        clk), .RSTB(n41), .Q(stage_regs_1__3__11_) );
  DFFARX1_RVT stage_regs_reg_1__3__10_ ( .D(butterfly_out_wires[138]), .CLK(
        clk), .RSTB(n41), .Q(stage_regs_1__3__10_) );
  DFFARX1_RVT stage_regs_reg_1__3__9_ ( .D(butterfly_out_wires[137]), .CLK(clk), .RSTB(n41), .Q(stage_regs_1__3__9_) );
  DFFARX1_RVT stage_regs_reg_1__3__8_ ( .D(butterfly_out_wires[136]), .CLK(clk), .RSTB(n41), .Q(stage_regs_1__3__8_) );
  DFFARX1_RVT stage_regs_reg_1__3__7_ ( .D(butterfly_out_wires[135]), .CLK(clk), .RSTB(n41), .Q(stage_regs_1__3__7_) );
  DFFARX1_RVT stage_regs_reg_1__3__6_ ( .D(butterfly_out_wires[134]), .CLK(clk), .RSTB(n41), .Q(stage_regs_1__3__6_) );
  DFFARX1_RVT stage_regs_reg_1__3__4_ ( .D(butterfly_out_wires[132]), .CLK(clk), .RSTB(n41), .Q(stage_regs_1__3__4_) );
  DFFARX1_RVT stage_regs_reg_1__3__3_ ( .D(butterfly_out_wires[131]), .CLK(clk), .RSTB(n18), .Q(stage_regs_1__3__3_) );
  DFFARX1_RVT stage_regs_reg_1__3__2_ ( .D(butterfly_out_wires[130]), .CLK(clk), .RSTB(n41), .Q(stage_regs_1__3__2_), .QN(n1607) );
  DFFARX1_RVT stage_regs_reg_1__3__1_ ( .D(butterfly_out_wires[129]), .CLK(clk), .RSTB(n18), .Q(stage_regs_1__3__1_) );
  DFFARX1_RVT stage_regs_reg_1__3__0_ ( .D(butterfly_out_wires[128]), .CLK(clk), .RSTB(n41), .Q(stage_regs_1__3__0_), .QN(n1606) );
  DFFARX1_RVT STAGE_LOOP_0__valid_mid_delay_reg ( .D(valid_pipe[0]), .CLK(clk), 
        .RSTB(n18), .Q(STAGE_LOOP_0__valid_mid_delay) );
  DFFARX1_RVT valid_pipe_reg_1_ ( .D(STAGE_LOOP_0__valid_mid_delay), .CLK(clk), 
        .RSTB(n41), .Q(valid_pipe[1]) );
  DFFARX1_RVT STAGE_LOOP_0__mode_mid_delay_reg ( .D(mode_pipe[0]), .CLK(clk), 
        .RSTB(n18), .QN(n23) );
  DFFARX1_RVT stage_regs_reg_2__0__31_ ( .D(butterfly_out_wires[127]), .CLK(
        clk), .RSTB(n18), .Q(Data_out[127]) );
  DFFARX1_RVT stage_regs_reg_2__0__30_ ( .D(butterfly_out_wires[126]), .CLK(
        clk), .RSTB(n41), .Q(Data_out[126]) );
  DFFARX1_RVT stage_regs_reg_2__0__29_ ( .D(butterfly_out_wires[125]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[125]) );
  DFFARX1_RVT stage_regs_reg_2__0__28_ ( .D(butterfly_out_wires[124]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[124]) );
  DFFARX1_RVT stage_regs_reg_2__0__27_ ( .D(butterfly_out_wires[123]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[123]) );
  DFFARX1_RVT stage_regs_reg_2__0__26_ ( .D(butterfly_out_wires[122]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[122]) );
  DFFARX1_RVT stage_regs_reg_2__0__25_ ( .D(butterfly_out_wires[121]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[121]) );
  DFFARX1_RVT stage_regs_reg_2__0__24_ ( .D(butterfly_out_wires[120]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[120]) );
  DFFARX1_RVT stage_regs_reg_2__0__23_ ( .D(butterfly_out_wires[119]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[119]) );
  DFFARX1_RVT stage_regs_reg_2__0__22_ ( .D(butterfly_out_wires[118]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[118]) );
  DFFARX1_RVT stage_regs_reg_2__0__21_ ( .D(butterfly_out_wires[117]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[117]) );
  DFFARX1_RVT stage_regs_reg_2__0__20_ ( .D(butterfly_out_wires[116]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[116]) );
  DFFARX1_RVT stage_regs_reg_2__0__19_ ( .D(butterfly_out_wires[115]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[115]) );
  DFFARX1_RVT stage_regs_reg_2__0__18_ ( .D(butterfly_out_wires[114]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[114]) );
  DFFARX1_RVT stage_regs_reg_2__0__17_ ( .D(butterfly_out_wires[113]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[113]) );
  DFFARX1_RVT stage_regs_reg_2__0__16_ ( .D(butterfly_out_wires[112]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[112]) );
  DFFARX1_RVT stage_regs_reg_2__0__15_ ( .D(butterfly_out_wires[111]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[111]) );
  DFFARX1_RVT stage_regs_reg_2__0__14_ ( .D(butterfly_out_wires[110]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[110]) );
  DFFARX1_RVT stage_regs_reg_2__0__13_ ( .D(butterfly_out_wires[109]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[109]) );
  DFFARX1_RVT stage_regs_reg_2__0__12_ ( .D(butterfly_out_wires[108]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[108]) );
  DFFARX1_RVT stage_regs_reg_2__0__11_ ( .D(butterfly_out_wires[107]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[107]) );
  DFFARX1_RVT stage_regs_reg_2__0__10_ ( .D(butterfly_out_wires[106]), .CLK(
        clk), .RSTB(n12), .Q(Data_out[106]) );
  DFFARX1_RVT stage_regs_reg_2__0__9_ ( .D(butterfly_out_wires[105]), .CLK(clk), .RSTB(n12), .Q(Data_out[105]) );
  DFFARX1_RVT stage_regs_reg_2__0__8_ ( .D(butterfly_out_wires[104]), .CLK(clk), .RSTB(n12), .Q(Data_out[104]) );
  DFFARX1_RVT stage_regs_reg_2__0__7_ ( .D(butterfly_out_wires[103]), .CLK(clk), .RSTB(n12), .Q(Data_out[103]) );
  DFFARX1_RVT stage_regs_reg_2__0__6_ ( .D(butterfly_out_wires[102]), .CLK(clk), .RSTB(n12), .Q(Data_out[102]) );
  DFFARX1_RVT stage_regs_reg_2__0__5_ ( .D(butterfly_out_wires[101]), .CLK(clk), .RSTB(n12), .Q(Data_out[101]) );
  DFFARX1_RVT stage_regs_reg_2__0__4_ ( .D(butterfly_out_wires[100]), .CLK(clk), .RSTB(n12), .Q(Data_out[100]) );
  DFFARX1_RVT stage_regs_reg_2__0__3_ ( .D(butterfly_out_wires[99]), .CLK(clk), 
        .RSTB(n12), .Q(Data_out[99]) );
  DFFARX1_RVT stage_regs_reg_2__0__2_ ( .D(butterfly_out_wires[98]), .CLK(clk), 
        .RSTB(n12), .Q(Data_out[98]) );
  DFFARX1_RVT stage_regs_reg_2__0__1_ ( .D(butterfly_out_wires[97]), .CLK(clk), 
        .RSTB(n12), .Q(Data_out[97]) );
  DFFARX1_RVT stage_regs_reg_2__0__0_ ( .D(butterfly_out_wires[96]), .CLK(clk), 
        .RSTB(n12), .Q(Data_out[96]) );
  DFFARX1_RVT stage_regs_reg_2__1__31_ ( .D(butterfly_out_wires[95]), .CLK(clk), .RSTB(n12), .Q(Data_out[95]) );
  DFFARX1_RVT stage_regs_reg_2__1__30_ ( .D(butterfly_out_wires[94]), .CLK(clk), .RSTB(n12), .Q(Data_out[94]) );
  DFFARX1_RVT stage_regs_reg_2__1__29_ ( .D(butterfly_out_wires[93]), .CLK(clk), .RSTB(n12), .Q(Data_out[93]) );
  DFFARX1_RVT stage_regs_reg_2__1__28_ ( .D(butterfly_out_wires[92]), .CLK(clk), .RSTB(n12), .Q(Data_out[92]) );
  DFFARX1_RVT stage_regs_reg_2__1__27_ ( .D(butterfly_out_wires[91]), .CLK(clk), .RSTB(n12), .Q(Data_out[91]) );
  DFFARX1_RVT stage_regs_reg_2__1__26_ ( .D(butterfly_out_wires[90]), .CLK(clk), .RSTB(n12), .Q(Data_out[90]) );
  DFFARX1_RVT stage_regs_reg_2__1__25_ ( .D(butterfly_out_wires[89]), .CLK(clk), .RSTB(n1747), .Q(Data_out[89]) );
  DFFARX1_RVT stage_regs_reg_2__1__24_ ( .D(butterfly_out_wires[88]), .CLK(clk), .RSTB(n1747), .Q(Data_out[88]) );
  DFFARX1_RVT stage_regs_reg_2__1__23_ ( .D(butterfly_out_wires[87]), .CLK(clk), .RSTB(n1747), .Q(Data_out[87]) );
  DFFARX1_RVT stage_regs_reg_2__1__22_ ( .D(butterfly_out_wires[86]), .CLK(clk), .RSTB(n1747), .Q(Data_out[86]) );
  DFFARX1_RVT stage_regs_reg_2__1__21_ ( .D(butterfly_out_wires[85]), .CLK(clk), .RSTB(n1747), .Q(Data_out[85]) );
  DFFARX1_RVT stage_regs_reg_2__1__20_ ( .D(butterfly_out_wires[84]), .CLK(clk), .RSTB(n1747), .Q(Data_out[84]) );
  DFFARX1_RVT stage_regs_reg_2__1__19_ ( .D(butterfly_out_wires[83]), .CLK(clk), .RSTB(n1747), .Q(Data_out[83]) );
  DFFARX1_RVT stage_regs_reg_2__1__18_ ( .D(butterfly_out_wires[82]), .CLK(clk), .RSTB(n1747), .Q(Data_out[82]) );
  DFFARX1_RVT stage_regs_reg_2__1__17_ ( .D(butterfly_out_wires[81]), .CLK(clk), .RSTB(n1747), .Q(Data_out[81]) );
  DFFARX1_RVT stage_regs_reg_2__1__16_ ( .D(butterfly_out_wires[80]), .CLK(clk), .RSTB(n1747), .Q(Data_out[80]) );
  DFFARX1_RVT stage_regs_reg_2__1__15_ ( .D(butterfly_out_wires[79]), .CLK(clk), .RSTB(n1747), .Q(Data_out[79]) );
  DFFARX1_RVT stage_regs_reg_2__1__14_ ( .D(butterfly_out_wires[78]), .CLK(clk), .RSTB(n1747), .Q(Data_out[78]) );
  DFFARX1_RVT stage_regs_reg_2__1__13_ ( .D(butterfly_out_wires[77]), .CLK(clk), .RSTB(n1748), .Q(Data_out[77]) );
  DFFARX1_RVT stage_regs_reg_2__1__12_ ( .D(butterfly_out_wires[76]), .CLK(clk), .RSTB(n1748), .Q(Data_out[76]) );
  DFFARX1_RVT stage_regs_reg_2__1__11_ ( .D(butterfly_out_wires[75]), .CLK(clk), .RSTB(n1748), .Q(Data_out[75]) );
  DFFARX1_RVT stage_regs_reg_2__1__10_ ( .D(butterfly_out_wires[74]), .CLK(clk), .RSTB(n1748), .Q(Data_out[74]) );
  DFFARX1_RVT stage_regs_reg_2__1__9_ ( .D(butterfly_out_wires[73]), .CLK(clk), 
        .RSTB(n1748), .Q(Data_out[73]) );
  DFFARX1_RVT stage_regs_reg_2__1__8_ ( .D(butterfly_out_wires[72]), .CLK(clk), 
        .RSTB(n1748), .Q(Data_out[72]) );
  DFFARX1_RVT stage_regs_reg_2__1__7_ ( .D(butterfly_out_wires[71]), .CLK(clk), 
        .RSTB(n1748), .Q(Data_out[71]) );
  DFFARX1_RVT stage_regs_reg_2__1__6_ ( .D(butterfly_out_wires[70]), .CLK(clk), 
        .RSTB(n1748), .Q(Data_out[70]) );
  DFFARX1_RVT stage_regs_reg_2__1__5_ ( .D(butterfly_out_wires[69]), .CLK(clk), 
        .RSTB(n1748), .Q(Data_out[69]) );
  DFFARX1_RVT stage_regs_reg_2__1__4_ ( .D(butterfly_out_wires[68]), .CLK(clk), 
        .RSTB(n1748), .Q(Data_out[68]) );
  DFFARX1_RVT stage_regs_reg_2__1__3_ ( .D(butterfly_out_wires[67]), .CLK(clk), 
        .RSTB(n1748), .Q(Data_out[67]) );
  DFFARX1_RVT stage_regs_reg_2__1__2_ ( .D(butterfly_out_wires[66]), .CLK(clk), 
        .RSTB(n1748), .Q(Data_out[66]) );
  DFFARX1_RVT stage_regs_reg_2__1__1_ ( .D(butterfly_out_wires[65]), .CLK(clk), 
        .RSTB(n1748), .Q(Data_out[65]) );
  DFFARX1_RVT stage_regs_reg_2__1__0_ ( .D(butterfly_out_wires[64]), .CLK(clk), 
        .RSTB(n1747), .Q(Data_out[64]) );
  DFFARX1_RVT stage_regs_reg_2__2__31_ ( .D(butterfly_out_wires[63]), .CLK(clk), .RSTB(n1748), .Q(Data_out[63]) );
  DFFARX1_RVT stage_regs_reg_2__2__30_ ( .D(butterfly_out_wires[62]), .CLK(clk), .RSTB(n1747), .Q(Data_out[62]) );
  DFFARX1_RVT stage_regs_reg_2__2__29_ ( .D(butterfly_out_wires[61]), .CLK(clk), .RSTB(n1748), .Q(Data_out[61]) );
  DFFARX1_RVT stage_regs_reg_2__2__28_ ( .D(butterfly_out_wires[60]), .CLK(clk), .RSTB(n1747), .Q(Data_out[60]) );
  DFFARX1_RVT stage_regs_reg_2__2__27_ ( .D(butterfly_out_wires[59]), .CLK(clk), .RSTB(n1748), .Q(Data_out[59]) );
  DFFARX1_RVT stage_regs_reg_2__2__26_ ( .D(butterfly_out_wires[58]), .CLK(clk), .RSTB(n1747), .Q(Data_out[58]) );
  DFFARX1_RVT stage_regs_reg_2__2__25_ ( .D(butterfly_out_wires[57]), .CLK(clk), .RSTB(n1748), .Q(Data_out[57]) );
  DFFARX1_RVT stage_regs_reg_2__2__24_ ( .D(butterfly_out_wires[56]), .CLK(clk), .RSTB(n1747), .Q(Data_out[56]) );
  DFFARX1_RVT stage_regs_reg_2__2__23_ ( .D(butterfly_out_wires[55]), .CLK(clk), .RSTB(n1748), .Q(Data_out[55]) );
  DFFARX1_RVT stage_regs_reg_2__2__22_ ( .D(butterfly_out_wires[54]), .CLK(clk), .RSTB(n1747), .Q(Data_out[54]) );
  DFFARX1_RVT stage_regs_reg_2__2__21_ ( .D(butterfly_out_wires[53]), .CLK(clk), .RSTB(n10), .Q(Data_out[53]) );
  DFFARX1_RVT stage_regs_reg_2__2__20_ ( .D(butterfly_out_wires[52]), .CLK(clk), .RSTB(n10), .Q(Data_out[52]) );
  DFFARX1_RVT stage_regs_reg_2__2__19_ ( .D(butterfly_out_wires[51]), .CLK(clk), .RSTB(n10), .Q(Data_out[51]) );
  DFFARX1_RVT stage_regs_reg_2__2__18_ ( .D(butterfly_out_wires[50]), .CLK(clk), .RSTB(n10), .Q(Data_out[50]) );
  DFFARX1_RVT stage_regs_reg_2__2__17_ ( .D(butterfly_out_wires[49]), .CLK(clk), .RSTB(n10), .Q(Data_out[49]) );
  DFFARX1_RVT stage_regs_reg_2__2__16_ ( .D(butterfly_out_wires[48]), .CLK(clk), .RSTB(n10), .Q(Data_out[48]) );
  DFFARX1_RVT stage_regs_reg_2__2__15_ ( .D(butterfly_out_wires[47]), .CLK(clk), .RSTB(n10), .Q(Data_out[47]) );
  DFFARX1_RVT stage_regs_reg_2__2__14_ ( .D(butterfly_out_wires[46]), .CLK(clk), .RSTB(n10), .Q(Data_out[46]) );
  DFFARX1_RVT stage_regs_reg_2__2__13_ ( .D(butterfly_out_wires[45]), .CLK(clk), .RSTB(n10), .Q(Data_out[45]) );
  DFFARX1_RVT stage_regs_reg_2__2__12_ ( .D(butterfly_out_wires[44]), .CLK(clk), .RSTB(n10), .Q(Data_out[44]) );
  DFFARX1_RVT stage_regs_reg_2__2__11_ ( .D(butterfly_out_wires[43]), .CLK(clk), .RSTB(n10), .Q(Data_out[43]) );
  DFFARX1_RVT stage_regs_reg_2__2__10_ ( .D(butterfly_out_wires[42]), .CLK(clk), .RSTB(n10), .Q(Data_out[42]) );
  DFFARX1_RVT stage_regs_reg_2__2__9_ ( .D(butterfly_out_wires[41]), .CLK(clk), 
        .RSTB(n10), .Q(Data_out[41]) );
  DFFARX1_RVT stage_regs_reg_2__2__8_ ( .D(butterfly_out_wires[40]), .CLK(clk), 
        .RSTB(n10), .Q(Data_out[40]) );
  DFFARX1_RVT stage_regs_reg_2__2__7_ ( .D(butterfly_out_wires[39]), .CLK(clk), 
        .RSTB(n10), .Q(Data_out[39]) );
  DFFARX1_RVT stage_regs_reg_2__2__6_ ( .D(butterfly_out_wires[38]), .CLK(clk), 
        .RSTB(n10), .Q(Data_out[38]) );
  DFFARX1_RVT stage_regs_reg_2__2__5_ ( .D(butterfly_out_wires[37]), .CLK(clk), 
        .RSTB(n10), .Q(Data_out[37]) );
  DFFARX1_RVT stage_regs_reg_2__2__4_ ( .D(butterfly_out_wires[36]), .CLK(clk), 
        .RSTB(n10), .Q(Data_out[36]) );
  DFFARX1_RVT stage_regs_reg_2__2__3_ ( .D(butterfly_out_wires[35]), .CLK(clk), 
        .RSTB(n10), .Q(Data_out[35]) );
  DFFARX1_RVT stage_regs_reg_2__2__2_ ( .D(butterfly_out_wires[34]), .CLK(clk), 
        .RSTB(n10), .Q(Data_out[34]) );
  DFFARX1_RVT stage_regs_reg_2__2__1_ ( .D(butterfly_out_wires[33]), .CLK(clk), 
        .RSTB(n10), .Q(Data_out[33]) );
  DFFARX1_RVT stage_regs_reg_2__2__0_ ( .D(butterfly_out_wires[32]), .CLK(clk), 
        .RSTB(n10), .Q(Data_out[32]) );
  DFFARX1_RVT stage_regs_reg_2__3__31_ ( .D(butterfly_out_wires[31]), .CLK(clk), .RSTB(n10), .Q(Data_out[31]) );
  DFFARX1_RVT stage_regs_reg_2__3__30_ ( .D(butterfly_out_wires[30]), .CLK(clk), .RSTB(n10), .Q(Data_out[30]) );
  DFFARX1_RVT stage_regs_reg_2__3__29_ ( .D(butterfly_out_wires[29]), .CLK(clk), .RSTB(n10), .Q(Data_out[29]) );
  DFFARX1_RVT stage_regs_reg_2__3__28_ ( .D(butterfly_out_wires[28]), .CLK(clk), .RSTB(n10), .Q(Data_out[28]) );
  DFFARX1_RVT stage_regs_reg_2__3__27_ ( .D(butterfly_out_wires[27]), .CLK(clk), .RSTB(n10), .Q(Data_out[27]) );
  DFFARX1_RVT stage_regs_reg_2__3__26_ ( .D(butterfly_out_wires[26]), .CLK(clk), .RSTB(n10), .Q(Data_out[26]) );
  DFFARX1_RVT stage_regs_reg_2__3__25_ ( .D(butterfly_out_wires[25]), .CLK(clk), .RSTB(n10), .Q(Data_out[25]) );
  DFFARX1_RVT stage_regs_reg_2__3__24_ ( .D(butterfly_out_wires[24]), .CLK(clk), .RSTB(n10), .Q(Data_out[24]) );
  DFFARX1_RVT stage_regs_reg_2__3__23_ ( .D(butterfly_out_wires[23]), .CLK(clk), .RSTB(n10), .Q(Data_out[23]) );
  DFFARX1_RVT stage_regs_reg_2__3__22_ ( .D(butterfly_out_wires[22]), .CLK(clk), .RSTB(n10), .Q(Data_out[22]) );
  DFFARX1_RVT stage_regs_reg_2__3__21_ ( .D(butterfly_out_wires[21]), .CLK(clk), .RSTB(n10), .Q(Data_out[21]) );
  DFFARX1_RVT stage_regs_reg_2__3__20_ ( .D(butterfly_out_wires[20]), .CLK(clk), .RSTB(n10), .Q(Data_out[20]) );
  DFFARX1_RVT stage_regs_reg_2__3__19_ ( .D(butterfly_out_wires[19]), .CLK(clk), .RSTB(n10), .Q(Data_out[19]) );
  DFFARX1_RVT stage_regs_reg_2__3__18_ ( .D(butterfly_out_wires[18]), .CLK(clk), .RSTB(n10), .Q(Data_out[18]) );
  DFFARX1_RVT stage_regs_reg_2__3__17_ ( .D(butterfly_out_wires[17]), .CLK(clk), .RSTB(n1749), .Q(Data_out[17]) );
  DFFARX1_RVT stage_regs_reg_2__3__16_ ( .D(butterfly_out_wires[16]), .CLK(clk), .RSTB(n1749), .Q(Data_out[16]) );
  DFFARX1_RVT stage_regs_reg_2__3__15_ ( .D(butterfly_out_wires[15]), .CLK(clk), .RSTB(n1749), .Q(Data_out[15]) );
  DFFARX1_RVT stage_regs_reg_2__3__14_ ( .D(butterfly_out_wires[14]), .CLK(clk), .RSTB(n1749), .Q(Data_out[14]) );
  DFFARX1_RVT stage_regs_reg_2__3__13_ ( .D(butterfly_out_wires[13]), .CLK(clk), .RSTB(n1749), .Q(Data_out[13]) );
  DFFARX1_RVT stage_regs_reg_2__3__12_ ( .D(butterfly_out_wires[12]), .CLK(clk), .RSTB(n1749), .Q(Data_out[12]) );
  DFFARX1_RVT stage_regs_reg_2__3__11_ ( .D(butterfly_out_wires[11]), .CLK(clk), .RSTB(n1749), .Q(Data_out[11]) );
  DFFARX1_RVT stage_regs_reg_2__3__10_ ( .D(butterfly_out_wires[10]), .CLK(clk), .RSTB(n1749), .Q(Data_out[10]) );
  DFFARX1_RVT stage_regs_reg_2__3__9_ ( .D(butterfly_out_wires[9]), .CLK(clk), 
        .RSTB(n1749), .Q(Data_out[9]) );
  DFFARX1_RVT stage_regs_reg_2__3__8_ ( .D(butterfly_out_wires[8]), .CLK(clk), 
        .RSTB(n1749), .Q(Data_out[8]) );
  DFFARX1_RVT stage_regs_reg_2__3__7_ ( .D(butterfly_out_wires[7]), .CLK(clk), 
        .RSTB(n1749), .Q(Data_out[7]) );
  DFFARX1_RVT stage_regs_reg_2__3__6_ ( .D(butterfly_out_wires[6]), .CLK(clk), 
        .RSTB(n1749), .Q(Data_out[6]) );
  DFFARX1_RVT stage_regs_reg_2__3__5_ ( .D(butterfly_out_wires[5]), .CLK(clk), 
        .RSTB(n1750), .Q(Data_out[5]) );
  DFFARX1_RVT stage_regs_reg_2__3__4_ ( .D(butterfly_out_wires[4]), .CLK(clk), 
        .RSTB(n1750), .Q(Data_out[4]) );
  DFFARX1_RVT stage_regs_reg_2__3__3_ ( .D(butterfly_out_wires[3]), .CLK(clk), 
        .RSTB(n1750), .Q(Data_out[3]) );
  DFFARX1_RVT stage_regs_reg_2__3__2_ ( .D(butterfly_out_wires[2]), .CLK(clk), 
        .RSTB(n1750), .Q(Data_out[2]) );
  DFFARX1_RVT stage_regs_reg_2__3__1_ ( .D(butterfly_out_wires[1]), .CLK(clk), 
        .RSTB(n1750), .Q(Data_out[1]) );
  DFFARX1_RVT stage_regs_reg_2__3__0_ ( .D(butterfly_out_wires[0]), .CLK(clk), 
        .RSTB(n1750), .Q(Data_out[0]) );
  DFFARX1_RVT STAGE_LOOP_1__valid_mid_delay_reg ( .D(valid_pipe[1]), .CLK(clk), 
        .RSTB(n1750), .Q(STAGE_LOOP_1__valid_mid_delay) );
  DFFARX1_RVT valid_pipe_reg_2_ ( .D(STAGE_LOOP_1__valid_mid_delay), .CLK(clk), 
        .RSTB(n1750), .Q(data_valid_out) );
  DFFARX1_RVT STAGE_LOOP_1__mode_mid_delay_reg ( .D(mode_pipe[1]), .CLK(clk), 
        .RSTB(n1750), .Q(STAGE_LOOP_1__mode_mid_delay) );
  DFFARX1_RVT mode_pipe_reg_2_ ( .D(STAGE_LOOP_1__mode_mid_delay), .CLK(clk), 
        .RSTB(n1750), .Q(mode_out) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_0_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N5), .CLK(
        clk), .RSTB(n1750), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[0]) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_1_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N6), .CLK(
        clk), .RSTB(n1750), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[1]), .QN(
        n1603) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_2_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N7), .CLK(
        clk), .RSTB(n1750), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[2]), .QN(
        n1615) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_3_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N8), .CLK(
        clk), .RSTB(n1749), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[3]), .QN(
        n1619) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_4_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N9), .CLK(
        clk), .RSTB(n1750), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[4]), .QN(
        n1623) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_5_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N10), .CLK(
        clk), .RSTB(n1749), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[5]), .QN(
        n1627) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_6_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N11), .CLK(
        clk), .RSTB(n1750), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[6]), .QN(
        n1631) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_7_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N12), .CLK(
        clk), .RSTB(n1749), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[7]), .QN(
        n1635) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_8_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N13), .CLK(
        clk), .RSTB(n1750), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[8]), .QN(
        n1639) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_9_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N14), .CLK(
        clk), .RSTB(n1749), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[9]), .QN(
        n1643) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_10_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N15), .CLK(
        clk), .RSTB(n1750), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[10]), 
        .QN(n1651) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_11_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N16), .CLK(
        clk), .RSTB(n1749), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[11]), 
        .QN(n1655) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_12_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N17), .CLK(
        clk), .RSTB(n1750), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[12]), 
        .QN(n1659) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_13_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N18), .CLK(
        clk), .RSTB(n1749), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[13]), 
        .QN(n1663) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_14_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N19), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[14]), 
        .QN(n1671) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_15_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N20), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[15]), 
        .QN(n1667) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_16_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N21), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[16]), 
        .QN(n1687) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_17_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N22), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[17]), 
        .QN(n1683) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_18_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N23), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[18]), 
        .QN(n1679) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_19_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N24), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[19]), 
        .QN(n1675) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_20_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N25), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[20]), 
        .QN(n1695) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_21_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N26), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[21]), 
        .QN(n1691) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_22_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N27), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[22]), 
        .QN(n1703) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_23_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N28), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[23]), 
        .QN(n1696) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_24_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N29), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[24]), 
        .QN(n1711) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_25_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N30), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[25]), 
        .QN(n1715) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_26_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N31), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[26]), 
        .QN(n1723) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_27_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N32), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[27]), 
        .QN(n1719) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_28_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N33), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[28]), 
        .QN(n1728) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_29_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N34), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[29]), 
        .QN(n1732) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_30_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N35), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[30]), 
        .QN(n1736) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_31_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N36), .CLK(
        clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[31]), 
        .QN(n1605) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_0_ ( 
        .D(stage_regs_0__0__0_), .CLK(clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[0]), 
        .QN(n1611) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_1_ ( 
        .D(stage_regs_0__0__1_), .CLK(clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[1]), 
        .QN(n1644) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_2_ ( 
        .D(stage_regs_0__0__2_), .CLK(clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[2])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_3_ ( 
        .D(stage_regs_0__0__3_), .CLK(clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[3])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_4_ ( 
        .D(stage_regs_0__0__4_), .CLK(clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[4])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_5_ ( 
        .D(stage_regs_0__0__5_), .CLK(clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[5])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_6_ ( 
        .D(stage_regs_0__0__6_), .CLK(clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[6])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_7_ ( 
        .D(stage_regs_0__0__7_), .CLK(clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[7])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_8_ ( 
        .D(stage_regs_0__0__8_), .CLK(clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[8])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_9_ ( 
        .D(stage_regs_0__0__9_), .CLK(clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[9])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_10_ ( 
        .D(stage_regs_0__0__10_), .CLK(clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[10])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_11_ ( 
        .D(stage_regs_0__0__11_), .CLK(clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_12_ ( 
        .D(stage_regs_0__0__12_), .CLK(clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[12])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_13_ ( 
        .D(stage_regs_0__0__13_), .CLK(clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[13])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_14_ ( 
        .D(stage_regs_0__0__14_), .CLK(clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[14])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_15_ ( 
        .D(stage_regs_0__0__15_), .CLK(clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_16_ ( 
        .D(stage_regs_0__0__16_), .CLK(clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_17_ ( 
        .D(stage_regs_0__0__17_), .CLK(clk), .RSTB(n11), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[17])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_18_ ( 
        .D(stage_regs_0__0__18_), .CLK(clk), .RSTB(n1751), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[18])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_19_ ( 
        .D(stage_regs_0__0__19_), .CLK(clk), .RSTB(n1751), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_20_ ( 
        .D(stage_regs_0__0__20_), .CLK(clk), .RSTB(n1751), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[20])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_21_ ( 
        .D(stage_regs_0__0__21_), .CLK(clk), .RSTB(n1751), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[21])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_22_ ( 
        .D(stage_regs_0__0__22_), .CLK(clk), .RSTB(n1751), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[22]), 
        .QN(n1707) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_23_ ( 
        .D(stage_regs_0__0__23_), .CLK(clk), .RSTB(n1751), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[23])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_24_ ( 
        .D(stage_regs_0__0__24_), .CLK(clk), .RSTB(n1751), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[24])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_25_ ( 
        .D(stage_regs_0__0__25_), .CLK(clk), .RSTB(n1751), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[25])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_26_ ( 
        .D(stage_regs_0__0__26_), .CLK(clk), .RSTB(n1751), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[26])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_27_ ( 
        .D(stage_regs_0__0__27_), .CLK(clk), .RSTB(n1751), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_28_ ( 
        .D(stage_regs_0__0__28_), .CLK(clk), .RSTB(n1751), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_29_ ( 
        .D(stage_regs_0__0__29_), .CLK(clk), .RSTB(n1751), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[29])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_30_ ( 
        .D(stage_regs_0__0__30_), .CLK(clk), .RSTB(n1752), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[30])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_31_ ( 
        .D(stage_regs_0__0__31_), .CLK(clk), .RSTB(n1752), .Q(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[31]), 
        .QN(n1740) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_0_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N5), .CLK(
        clk), .RSTB(n1752), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[0]) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_1_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N6), .CLK(
        clk), .RSTB(n1752), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[1]), .QN(
        n1602) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_2_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N7), .CLK(
        clk), .RSTB(n1752), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[2]), .QN(
        n1614) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_3_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N8), .CLK(
        clk), .RSTB(n1752), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[3]), .QN(
        n1618) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_4_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N9), .CLK(
        clk), .RSTB(n1752), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[4]), .QN(
        n1622) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_5_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N10), .CLK(
        clk), .RSTB(n1752), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[5]), .QN(
        n1626) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_6_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N11), .CLK(
        clk), .RSTB(n1752), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[6]), .QN(
        n1630) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_7_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N12), .CLK(
        clk), .RSTB(n1752), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[7]), .QN(
        n1634) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_8_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N13), .CLK(
        clk), .RSTB(n1752), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[8]), .QN(
        n1638) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_9_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N14), .CLK(
        clk), .RSTB(n1752), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[9]), .QN(
        n1642) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_10_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N15), .CLK(
        clk), .RSTB(n1752), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[10]), 
        .QN(n1650) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_11_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N16), .CLK(
        clk), .RSTB(n1751), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[11]), 
        .QN(n1654) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_12_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N17), .CLK(
        clk), .RSTB(n1752), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[12]), 
        .QN(n1658) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_13_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N18), .CLK(
        clk), .RSTB(n1751), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[13]), 
        .QN(n1662) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_14_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N19), .CLK(
        clk), .RSTB(n1752), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[14]), 
        .QN(n1670) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_15_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N20), .CLK(
        clk), .RSTB(n1751), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[15]), 
        .QN(n1666) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_16_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N21), .CLK(
        clk), .RSTB(n1752), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[16]), 
        .QN(n1686) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_17_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N22), .CLK(
        clk), .RSTB(n1751), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[17]), 
        .QN(n1682) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_18_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N23), .CLK(
        clk), .RSTB(n1752), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[18]), 
        .QN(n1678) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_19_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N24), .CLK(
        clk), .RSTB(n1751), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[19]), 
        .QN(n1674) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_20_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N25), .CLK(
        clk), .RSTB(n1752), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[20]), 
        .QN(n1694) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_21_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N26), .CLK(
        clk), .RSTB(n1751), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[21]), 
        .QN(n1690) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_22_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N27), .CLK(
        clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[22]), 
        .QN(n1702) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_23_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N28), .CLK(
        clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[23]), 
        .QN(n1697) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_24_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N29), .CLK(
        clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[24]), 
        .QN(n1710) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_25_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N30), .CLK(
        clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[25]), 
        .QN(n1714) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_26_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N31), .CLK(
        clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[26]), 
        .QN(n1722) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_27_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N32), .CLK(
        clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[27]), 
        .QN(n1718) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_28_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N33), .CLK(
        clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[28]), 
        .QN(n1727) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_29_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N34), .CLK(
        clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[29]), 
        .QN(n1731) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_30_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N35), .CLK(
        clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[30]), 
        .QN(n1735) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_31_ ( 
        .D(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_N36), .CLK(
        clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[31]), 
        .QN(n1600) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_0_ ( 
        .D(stage_regs_0__2__0_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[0]), 
        .QN(n1610) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_1_ ( 
        .D(stage_regs_0__2__1_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[1]), 
        .QN(n1645) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_2_ ( 
        .D(stage_regs_0__2__2_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[2])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_3_ ( 
        .D(stage_regs_0__2__3_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[3])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_4_ ( 
        .D(stage_regs_0__2__4_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[4])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_5_ ( 
        .D(stage_regs_0__2__5_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[5])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_6_ ( 
        .D(stage_regs_0__2__6_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[6])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_7_ ( 
        .D(stage_regs_0__2__7_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[7])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_8_ ( 
        .D(stage_regs_0__2__8_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[8])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_9_ ( 
        .D(stage_regs_0__2__9_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[9])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_10_ ( 
        .D(stage_regs_0__2__10_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[10])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_11_ ( 
        .D(stage_regs_0__2__11_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_12_ ( 
        .D(stage_regs_0__2__12_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[12])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_13_ ( 
        .D(stage_regs_0__2__13_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[13])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_14_ ( 
        .D(stage_regs_0__2__14_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[14])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_15_ ( 
        .D(stage_regs_0__2__15_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_16_ ( 
        .D(stage_regs_0__2__16_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_17_ ( 
        .D(stage_regs_0__2__17_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[17])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_18_ ( 
        .D(stage_regs_0__2__18_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[18])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_19_ ( 
        .D(stage_regs_0__2__19_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_20_ ( 
        .D(stage_regs_0__2__20_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[20])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_21_ ( 
        .D(stage_regs_0__2__21_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[21])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_22_ ( 
        .D(stage_regs_0__2__22_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[22]), 
        .QN(n1706) );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_23_ ( 
        .D(stage_regs_0__2__23_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[23])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_24_ ( 
        .D(stage_regs_0__2__24_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[24])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_25_ ( 
        .D(stage_regs_0__2__25_), .CLK(clk), .RSTB(n13), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[25])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_26_ ( 
        .D(stage_regs_0__2__26_), .CLK(clk), .RSTB(n1753), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[26])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_27_ ( 
        .D(stage_regs_0__2__27_), .CLK(clk), .RSTB(n1753), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_28_ ( 
        .D(stage_regs_0__2__28_), .CLK(clk), .RSTB(n1753), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_29_ ( 
        .D(stage_regs_0__2__29_), .CLK(clk), .RSTB(n1753), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[29])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_30_ ( 
        .D(stage_regs_0__2__30_), .CLK(clk), .RSTB(n1753), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[30])
         );
  DFFARX1_RVT STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_31_ ( 
        .D(stage_regs_0__2__31_), .CLK(clk), .RSTB(n1753), .Q(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[31]), 
        .QN(n1739) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_0_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N5), .CLK(
        clk), .RSTB(n1753), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[0]) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_1_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N6), .CLK(
        clk), .RSTB(n1753), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[1]), .QN(
        n1598) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_2_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N7), .CLK(
        clk), .RSTB(n1753), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[2]), .QN(
        n1613) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_3_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N8), .CLK(
        clk), .RSTB(n1753), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[3]), .QN(
        n1617) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_4_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N9), .CLK(
        clk), .RSTB(n1753), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[4]), .QN(
        n1621) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_5_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N10), .CLK(
        clk), .RSTB(n1753), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[5]), .QN(
        n1625) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_6_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N11), .CLK(
        clk), .RSTB(n1754), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[6]), .QN(
        n1629) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_7_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N12), .CLK(
        clk), .RSTB(n1754), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[7]), .QN(
        n1633) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_8_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N13), .CLK(
        clk), .RSTB(n1754), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[8]), .QN(
        n1637) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_9_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N14), .CLK(
        clk), .RSTB(n1754), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[9]), .QN(
        n1641) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_10_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N15), .CLK(
        clk), .RSTB(n1754), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[10]), 
        .QN(n1649) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_11_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N16), .CLK(
        clk), .RSTB(n1754), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[11]), 
        .QN(n1653) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_12_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N17), .CLK(
        clk), .RSTB(n1754), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[12]), 
        .QN(n1657) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_13_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N18), .CLK(
        clk), .RSTB(n1754), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[13]), 
        .QN(n1661) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_14_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N19), .CLK(
        clk), .RSTB(n1754), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[14]), 
        .QN(n1669) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_15_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N20), .CLK(
        clk), .RSTB(n1754), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[15]), 
        .QN(n1665) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_16_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N21), .CLK(
        clk), .RSTB(n1754), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[16]), 
        .QN(n1685) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_17_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N22), .CLK(
        clk), .RSTB(n1754), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[17]), 
        .QN(n1681) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_18_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N23), .CLK(
        clk), .RSTB(n1754), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[18]), 
        .QN(n1677) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_19_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N24), .CLK(
        clk), .RSTB(n1753), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[19]), 
        .QN(n1673) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_20_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N25), .CLK(
        clk), .RSTB(n1754), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[20]), 
        .QN(n1693) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_21_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N26), .CLK(
        clk), .RSTB(n1753), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[21]), 
        .QN(n1689) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_22_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N27), .CLK(
        clk), .RSTB(n1754), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[22]), 
        .QN(n1701) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_23_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N28), .CLK(
        clk), .RSTB(n1753), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[23]), 
        .QN(n1698) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_24_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N29), .CLK(
        clk), .RSTB(n1754), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[24]), 
        .QN(n1709) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_25_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N30), .CLK(
        clk), .RSTB(n1753), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[25]), 
        .QN(n1713) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_26_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N31), .CLK(
        clk), .RSTB(n1754), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[26]), 
        .QN(n1721) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_27_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N32), .CLK(
        clk), .RSTB(n1753), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[27]), 
        .QN(n1717) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_28_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N33), .CLK(
        clk), .RSTB(n1754), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[28]), 
        .QN(n1726) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_29_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N34), .CLK(
        clk), .RSTB(n1753), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[29]), 
        .QN(n1730) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_30_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N35), .CLK(
        clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[30]), 
        .QN(n1734) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_mult_prod_reg_31_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_N36), .CLK(
        clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[31]), 
        .QN(n1599) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_0_ ( 
        .D(stage_regs_1__0__0_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[0]), 
        .QN(n1609) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_1_ ( 
        .D(stage_regs_1__0__1_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[1]), 
        .QN(n1646) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_2_ ( 
        .D(stage_regs_1__0__2_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[2])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_3_ ( 
        .D(stage_regs_1__0__3_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[3])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_4_ ( 
        .D(stage_regs_1__0__4_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[4])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_5_ ( 
        .D(stage_regs_1__0__5_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[5])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_6_ ( 
        .D(stage_regs_1__0__6_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[6])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_7_ ( 
        .D(stage_regs_1__0__7_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[7])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_8_ ( 
        .D(stage_regs_1__0__8_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[8])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_9_ ( 
        .D(stage_regs_1__0__9_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[9])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_10_ ( 
        .D(stage_regs_1__0__10_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[10])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_11_ ( 
        .D(stage_regs_1__0__11_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_12_ ( 
        .D(stage_regs_1__0__12_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[12])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_13_ ( 
        .D(stage_regs_1__0__13_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[13])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_14_ ( 
        .D(stage_regs_1__0__14_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[14])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_15_ ( 
        .D(stage_regs_1__0__15_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_16_ ( 
        .D(stage_regs_1__0__16_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_17_ ( 
        .D(stage_regs_1__0__17_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[17])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_18_ ( 
        .D(stage_regs_1__0__18_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[18])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_19_ ( 
        .D(stage_regs_1__0__19_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_20_ ( 
        .D(stage_regs_1__0__20_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[20])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_21_ ( 
        .D(stage_regs_1__0__21_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[21])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_22_ ( 
        .D(stage_regs_1__0__22_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[22]), 
        .QN(n1705) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_23_ ( 
        .D(stage_regs_1__0__23_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[23])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_24_ ( 
        .D(stage_regs_1__0__24_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[24])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_25_ ( 
        .D(stage_regs_1__0__25_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[25])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_26_ ( 
        .D(stage_regs_1__0__26_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[26])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_27_ ( 
        .D(stage_regs_1__0__27_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_28_ ( 
        .D(stage_regs_1__0__28_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_29_ ( 
        .D(stage_regs_1__0__29_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[29])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_30_ ( 
        .D(stage_regs_1__0__30_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[30])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg_reg_31_ ( 
        .D(stage_regs_1__0__31_), .CLK(clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[31]), 
        .QN(n1738) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_0_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N5), .CLK(
        clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[0]) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_1_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N6), .CLK(
        clk), .RSTB(n14), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[1]), .QN(
        n1601) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_2_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N7), .CLK(
        clk), .RSTB(n1755), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[2]), .QN(
        n1612) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_3_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N8), .CLK(
        clk), .RSTB(n1755), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[3]), .QN(
        n1616) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_4_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N9), .CLK(
        clk), .RSTB(n1755), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[4]), .QN(
        n1620) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_5_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N10), .CLK(
        clk), .RSTB(n1755), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[5]), .QN(
        n1624) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_6_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N11), .CLK(
        clk), .RSTB(n1755), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[6]), .QN(
        n1628) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_7_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N12), .CLK(
        clk), .RSTB(n1755), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[7]), .QN(
        n1632) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_8_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N13), .CLK(
        clk), .RSTB(n1755), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[8]), .QN(
        n1636) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_9_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N14), .CLK(
        clk), .RSTB(n1755), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[9]), .QN(
        n1640) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_10_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N15), .CLK(
        clk), .RSTB(n1755), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[10]), 
        .QN(n1648) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_11_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N16), .CLK(
        clk), .RSTB(n1755), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[11]), 
        .QN(n1652) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_12_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N17), .CLK(
        clk), .RSTB(n1755), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[12]), 
        .QN(n1656) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_13_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N18), .CLK(
        clk), .RSTB(n1755), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[13]), 
        .QN(n1660) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_14_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N19), .CLK(
        clk), .RSTB(n1756), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[14]), 
        .QN(n1668) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_15_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N20), .CLK(
        clk), .RSTB(n1756), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[15]), 
        .QN(n1664) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_16_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N21), .CLK(
        clk), .RSTB(n1756), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[16]), 
        .QN(n1684) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_17_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N22), .CLK(
        clk), .RSTB(n1756), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[17]), 
        .QN(n1680) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_18_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N23), .CLK(
        clk), .RSTB(n1756), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[18]), 
        .QN(n1676) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_19_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N24), .CLK(
        clk), .RSTB(n1756), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[19]), 
        .QN(n1672) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_20_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N25), .CLK(
        clk), .RSTB(n1756), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[20]), 
        .QN(n1692) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_21_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N26), .CLK(
        clk), .RSTB(n1756), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[21]), 
        .QN(n1688) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_22_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N27), .CLK(
        clk), .RSTB(n1756), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[22]), 
        .QN(n1700) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_23_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N28), .CLK(
        clk), .RSTB(n1756), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[23]), 
        .QN(n1699) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_24_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N29), .CLK(
        clk), .RSTB(n1756), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[24]), 
        .QN(n1708) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_25_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N30), .CLK(
        clk), .RSTB(n1756), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[25]), 
        .QN(n1712) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_26_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N31), .CLK(
        clk), .RSTB(n1756), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[26]), 
        .QN(n1720) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_27_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N32), .CLK(
        clk), .RSTB(n1755), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[27]), 
        .QN(n1716) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_28_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N33), .CLK(
        clk), .RSTB(n1756), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[28]), 
        .QN(n1725) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_29_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N34), .CLK(
        clk), .RSTB(n1755), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[29]), 
        .QN(n1729) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_30_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N35), .CLK(
        clk), .RSTB(n1756), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[30]), 
        .QN(n1733) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_mult_prod_reg_31_ ( 
        .D(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N36), .CLK(
        clk), .RSTB(n1755), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[31]), 
        .QN(n1604) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_0_ ( 
        .D(stage_regs_1__1__0_), .CLK(clk), .RSTB(n1756), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[0]), 
        .QN(n1608) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_1_ ( 
        .D(stage_regs_1__1__1_), .CLK(clk), .RSTB(n1755), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[1]), 
        .QN(n1647) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_2_ ( 
        .D(stage_regs_1__1__2_), .CLK(clk), .RSTB(n1756), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[2])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_3_ ( 
        .D(stage_regs_1__1__3_), .CLK(clk), .RSTB(n1755), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[3])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_4_ ( 
        .D(stage_regs_1__1__4_), .CLK(clk), .RSTB(n1756), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[4])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_5_ ( 
        .D(stage_regs_1__1__5_), .CLK(clk), .RSTB(n1755), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[5])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_6_ ( 
        .D(stage_regs_1__1__6_), .CLK(clk), .RSTB(n8), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[6])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_7_ ( 
        .D(stage_regs_1__1__7_), .CLK(clk), .RSTB(n8), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[7])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_8_ ( 
        .D(stage_regs_1__1__8_), .CLK(clk), .RSTB(n7), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[8])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_9_ ( 
        .D(stage_regs_1__1__9_), .CLK(clk), .RSTB(n8), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[9])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_10_ ( 
        .D(stage_regs_1__1__10_), .CLK(clk), .RSTB(n8), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[10])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_11_ ( 
        .D(stage_regs_1__1__11_), .CLK(clk), .RSTB(n7), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[11])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_12_ ( 
        .D(stage_regs_1__1__12_), .CLK(clk), .RSTB(n7), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[12])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_13_ ( 
        .D(stage_regs_1__1__13_), .CLK(clk), .RSTB(n9), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[13])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_14_ ( 
        .D(stage_regs_1__1__14_), .CLK(clk), .RSTB(n8), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[14])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_15_ ( 
        .D(stage_regs_1__1__15_), .CLK(clk), .RSTB(n7), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[15])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_16_ ( 
        .D(stage_regs_1__1__16_), .CLK(clk), .RSTB(n8), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[16])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_17_ ( 
        .D(stage_regs_1__1__17_), .CLK(clk), .RSTB(n7), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[17])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_18_ ( 
        .D(stage_regs_1__1__18_), .CLK(clk), .RSTB(n7), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[18])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_19_ ( 
        .D(stage_regs_1__1__19_), .CLK(clk), .RSTB(n8), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[19])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_20_ ( 
        .D(stage_regs_1__1__20_), .CLK(clk), .RSTB(n7), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[20])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_21_ ( 
        .D(stage_regs_1__1__21_), .CLK(clk), .RSTB(n9), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[21])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_22_ ( 
        .D(stage_regs_1__1__22_), .CLK(clk), .RSTB(n9), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[22]), 
        .QN(n1704) );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_23_ ( 
        .D(stage_regs_1__1__23_), .CLK(clk), .RSTB(n9), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[23])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_24_ ( 
        .D(stage_regs_1__1__24_), .CLK(clk), .RSTB(n9), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[24])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_25_ ( 
        .D(stage_regs_1__1__25_), .CLK(clk), .RSTB(n9), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[25])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_26_ ( 
        .D(stage_regs_1__1__26_), .CLK(clk), .RSTB(n7), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[26])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_27_ ( 
        .D(stage_regs_1__1__27_), .CLK(clk), .RSTB(n7), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[27])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_28_ ( 
        .D(stage_regs_1__1__28_), .CLK(clk), .RSTB(n9), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[28])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_29_ ( 
        .D(stage_regs_1__1__29_), .CLK(clk), .RSTB(n8), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[29])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_30_ ( 
        .D(stage_regs_1__1__30_), .CLK(clk), .RSTB(n8), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[30])
         );
  DFFARX1_RVT STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg_reg_31_ ( 
        .D(stage_regs_1__1__31_), .CLK(clk), .RSTB(n9), .Q(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[31]), 
        .QN(n1737) );
  FADDX1_RVT intadd_0_U27 ( .A(intadd_0_B_0_), .B(intadd_0_A_0_), .CI(
        intadd_0_CI), .CO(intadd_0_n26), .S(intadd_0_SUM_0_) );
  FADDX1_RVT intadd_0_U26 ( .A(intadd_0_B_1_), .B(intadd_0_A_1_), .CI(
        intadd_0_n26), .CO(intadd_0_n25), .S(intadd_0_SUM_1_) );
  FADDX1_RVT intadd_0_U25 ( .A(intadd_0_B_2_), .B(intadd_0_A_2_), .CI(
        intadd_0_n25), .CO(intadd_0_n24), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N13) );
  FADDX1_RVT intadd_0_U3 ( .A(intadd_0_B_24_), .B(intadd_0_A_24_), .CI(
        intadd_0_n3), .CO(intadd_0_n2), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N35) );
  FADDX1_RVT intadd_1_U4 ( .A(intadd_1_B_0_), .B(intadd_1_A_0_), .CI(
        intadd_1_CI), .CO(intadd_1_n3), .S(intadd_1_SUM_0_) );
  FADDX1_RVT intadd_1_U3 ( .A(intadd_1_B_1_), .B(intadd_1_A_1_), .CI(
        intadd_1_n3), .CO(intadd_1_n2), .S(intadd_1_SUM_1_) );
  DFFARX1_RVT stage_regs_reg_1__3__5_ ( .D(butterfly_out_wires[133]), .CLK(clk), .RSTB(n18), .Q(stage_regs_1__3__5_) );
  DFFASX2_RVT mode_pipe_reg_1_ ( .D(n23), .CLK(clk), .SETB(n41), .Q(n1741), 
        .QN(mode_pipe[1]) );
  FADDX1_RVT intadd_1_U2 ( .A(intadd_1_B_2_), .B(intadd_1_A_2_), .CI(
        intadd_1_n2), .CO(intadd_1_n1), .S(intadd_1_SUM_2_) );
  FADDX1_RVT intadd_0_U18 ( .A(intadd_0_B_9_), .B(intadd_0_A_9_), .CI(
        intadd_0_n18), .CO(intadd_0_n17), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N20) );
  FADDX1_RVT intadd_0_U4 ( .A(intadd_0_B_23_), .B(intadd_0_A_23_), .CI(
        intadd_0_n4), .CO(intadd_0_n3), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N34) );
  FADDX1_RVT intadd_0_U24 ( .A(intadd_0_B_3_), .B(intadd_0_A_3_), .CI(
        intadd_0_n24), .CO(intadd_0_n23), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N14) );
  FADDX1_RVT intadd_0_U22 ( .A(intadd_0_B_5_), .B(intadd_0_A_5_), .CI(
        intadd_0_n22), .CO(intadd_0_n21), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N16) );
  FADDX1_RVT intadd_0_U19 ( .A(intadd_0_B_8_), .B(intadd_0_A_8_), .CI(
        intadd_0_n19), .CO(intadd_0_n18), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N19) );
  FADDX1_RVT intadd_0_U17 ( .A(intadd_0_B_10_), .B(intadd_0_A_10_), .CI(
        intadd_0_n17), .CO(intadd_0_n16), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N21) );
  FADDX1_RVT intadd_0_U16 ( .A(intadd_0_B_11_), .B(intadd_0_A_11_), .CI(
        intadd_0_n16), .CO(intadd_0_n15), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N22) );
  FADDX1_RVT intadd_0_U14 ( .A(intadd_0_B_13_), .B(intadd_0_A_13_), .CI(
        intadd_0_n14), .CO(intadd_0_n13), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N24) );
  FADDX1_RVT intadd_0_U12 ( .A(intadd_0_B_15_), .B(intadd_0_A_15_), .CI(
        intadd_0_n12), .CO(intadd_0_n11), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N26) );
  FADDX1_RVT intadd_0_U10 ( .A(intadd_0_B_17_), .B(intadd_0_A_17_), .CI(
        intadd_0_n10), .CO(intadd_0_n9), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N28) );
  FADDX1_RVT intadd_0_U8 ( .A(intadd_0_B_19_), .B(intadd_0_A_19_), .CI(
        intadd_0_n8), .CO(intadd_0_n7), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N30) );
  FADDX1_RVT intadd_0_U5 ( .A(intadd_0_B_22_), .B(intadd_0_A_22_), .CI(
        intadd_0_n5), .CO(intadd_0_n4), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N33) );
  INVX4_RVT U139 ( .A(n5), .Y(n12) );
  INVX4_RVT U141 ( .A(n5), .Y(n11) );
  INVX4_RVT U142 ( .A(n5), .Y(n13) );
  INVX4_RVT U143 ( .A(n5), .Y(n14) );
  HADDX1_RVT U144 ( .A0(n905), .B0(n964), .SO(butterfly_out_wires[75]) );
  HADDX1_RVT U145 ( .A0(n907), .B0(n959), .SO(butterfly_out_wires[74]) );
  HADDX1_RVT U146 ( .A0(n491), .B0(n1126), .SO(butterfly_out_wires[106]) );
  HADDX1_RVT U147 ( .A0(n493), .B0(n1120), .SO(butterfly_out_wires[105]) );
  HADDX1_RVT U148 ( .A0(n909), .B0(n953), .SO(butterfly_out_wires[73]) );
  HADDX1_RVT U149 ( .A0(n911), .B0(n948), .SO(butterfly_out_wires[72]) );
  HADDX1_RVT U150 ( .A0(n497), .B0(n496), .SO(butterfly_out_wires[103]) );
  HADDX1_RVT U151 ( .A0(n489), .B0(n1131), .SO(butterfly_out_wires[107]) );
  HADDX1_RVT U152 ( .A0(n913), .B0(n912), .SO(butterfly_out_wires[71]) );
  HADDX1_RVT U153 ( .A0(n424), .B0(n1298), .SO(butterfly_out_wires[171]) );
  HADDX1_RVT U154 ( .A0(n426), .B0(n1293), .SO(butterfly_out_wires[170]) );
  HADDX1_RVT U155 ( .A0(n428), .B0(n1287), .SO(butterfly_out_wires[169]) );
  HADDX1_RVT U156 ( .A0(n363), .B0(n1454), .SO(butterfly_out_wires[233]) );
  HADDX1_RVT U157 ( .A0(n365), .B0(n1449), .SO(butterfly_out_wires[232]) );
  HADDX1_RVT U158 ( .A0(n367), .B0(n366), .SO(butterfly_out_wires[231]) );
  HADDX1_RVT U159 ( .A0(n432), .B0(n431), .SO(butterfly_out_wires[167]) );
  HADDX1_RVT U160 ( .A0(n369), .B0(n368), .SO(butterfly_out_wires[230]) );
  HADDX1_RVT U161 ( .A0(n359), .B0(n1465), .SO(butterfly_out_wires[235]) );
  HADDX1_RVT U162 ( .A0(n430), .B0(n1282), .SO(butterfly_out_wires[168]) );
  HADDX1_RVT U163 ( .A0(n881), .B0(n1043), .SO(butterfly_out_wires[87]) );
  HADDX1_RVT U164 ( .A0(n883), .B0(n1038), .SO(butterfly_out_wires[86]) );
  HADDX1_RVT U165 ( .A0(n467), .B0(n1205), .SO(butterfly_out_wires[118]) );
  HADDX1_RVT U166 ( .A0(n469), .B0(n1197), .SO(butterfly_out_wires[117]) );
  HADDX1_RVT U167 ( .A0(n885), .B0(n1030), .SO(butterfly_out_wires[85]) );
  HADDX1_RVT U168 ( .A0(n471), .B0(n1192), .SO(butterfly_out_wires[116]) );
  HADDX1_RVT U169 ( .A0(n887), .B0(n1025), .SO(butterfly_out_wires[84]) );
  HADDX1_RVT U170 ( .A0(n473), .B0(n1184), .SO(butterfly_out_wires[115]) );
  HADDX1_RVT U171 ( .A0(n475), .B0(n1179), .SO(butterfly_out_wires[114]) );
  HADDX1_RVT U172 ( .A0(n891), .B0(n1012), .SO(butterfly_out_wires[82]) );
  HADDX1_RVT U173 ( .A0(n893), .B0(n1004), .SO(butterfly_out_wires[81]) );
  HADDX1_RVT U174 ( .A0(n479), .B0(n1166), .SO(butterfly_out_wires[112]) );
  HADDX1_RVT U175 ( .A0(n895), .B0(n999), .SO(butterfly_out_wires[80]) );
  HADDX1_RVT U176 ( .A0(n481), .B0(n1158), .SO(butterfly_out_wires[111]) );
  HADDX1_RVT U177 ( .A0(n897), .B0(n991), .SO(butterfly_out_wires[79]) );
  HADDX1_RVT U178 ( .A0(n483), .B0(n1153), .SO(butterfly_out_wires[110]) );
  HADDX1_RVT U179 ( .A0(n899), .B0(n986), .SO(butterfly_out_wires[78]) );
  HADDX1_RVT U180 ( .A0(n485), .B0(n1145), .SO(butterfly_out_wires[109]) );
  HADDX1_RVT U181 ( .A0(n487), .B0(n1140), .SO(butterfly_out_wires[108]) );
  HADDX1_RVT U182 ( .A0(n889), .B0(n1017), .SO(butterfly_out_wires[83]) );
  HADDX1_RVT U183 ( .A0(n477), .B0(n1171), .SO(butterfly_out_wires[113]) );
  HADDX1_RVT U184 ( .A0(n901), .B0(n978), .SO(butterfly_out_wires[77]) );
  HADDX1_RVT U185 ( .A0(n400), .B0(n1377), .SO(butterfly_out_wires[183]) );
  HADDX1_RVT U186 ( .A0(n337), .B0(n1539), .SO(butterfly_out_wires[246]) );
  HADDX1_RVT U187 ( .A0(n402), .B0(n1372), .SO(butterfly_out_wires[182]) );
  HADDX1_RVT U188 ( .A0(n404), .B0(n1364), .SO(butterfly_out_wires[181]) );
  HADDX1_RVT U189 ( .A0(n339), .B0(n1531), .SO(butterfly_out_wires[245]) );
  HADDX1_RVT U190 ( .A0(n341), .B0(n1526), .SO(butterfly_out_wires[244]) );
  HADDX1_RVT U191 ( .A0(n408), .B0(n1351), .SO(butterfly_out_wires[179]) );
  HADDX1_RVT U192 ( .A0(n343), .B0(n1518), .SO(butterfly_out_wires[243]) );
  HADDX1_RVT U193 ( .A0(n345), .B0(n1513), .SO(butterfly_out_wires[242]) );
  HADDX1_RVT U194 ( .A0(n412), .B0(n1338), .SO(butterfly_out_wires[177]) );
  HADDX1_RVT U195 ( .A0(n349), .B0(n1500), .SO(butterfly_out_wires[240]) );
  HADDX1_RVT U196 ( .A0(n414), .B0(n1333), .SO(butterfly_out_wires[176]) );
  HADDX1_RVT U197 ( .A0(n416), .B0(n1325), .SO(butterfly_out_wires[175]) );
  HADDX1_RVT U198 ( .A0(n351), .B0(n1492), .SO(butterfly_out_wires[239]) );
  HADDX1_RVT U199 ( .A0(n353), .B0(n1487), .SO(butterfly_out_wires[238]) );
  HADDX1_RVT U200 ( .A0(n420), .B0(n1312), .SO(butterfly_out_wires[173]) );
  HADDX1_RVT U201 ( .A0(n355), .B0(n1479), .SO(butterfly_out_wires[237]) );
  HADDX1_RVT U202 ( .A0(n422), .B0(n1307), .SO(butterfly_out_wires[172]) );
  HADDX1_RVT U203 ( .A0(n357), .B0(n1474), .SO(butterfly_out_wires[236]) );
  HADDX1_RVT U204 ( .A0(n335), .B0(n1544), .SO(butterfly_out_wires[247]) );
  HADDX1_RVT U205 ( .A0(n406), .B0(n1359), .SO(butterfly_out_wires[180]) );
  HADDX1_RVT U206 ( .A0(n347), .B0(n1505), .SO(butterfly_out_wires[241]) );
  HADDX1_RVT U207 ( .A0(n418), .B0(n1320), .SO(butterfly_out_wires[174]) );
  HADDX1_RVT U208 ( .A0(n1419), .B0(n1426), .SO(n1425) );
  HADDX1_RVT U209 ( .A0(n1252), .B0(n1259), .SO(n1258) );
  HADDX1_RVT U210 ( .A0(n1085), .B0(n1092), .SO(n1091) );
  HADDX1_RVT U211 ( .A0(n1586), .B0(n1593), .SO(n1592) );
  HADDX1_RVT U212 ( .A0(n24), .B0(n1417), .SO(n1421) );
  HADDX1_RVT U213 ( .A0(n27), .B0(n1083), .SO(n1087) );
  HADDX1_RVT U214 ( .A0(n1569), .B0(n1568), .SO(n1579) );
  HADDX1_RVT U215 ( .A0(n1402), .B0(n1401), .SO(n1412) );
  HADDX1_RVT U216 ( .A0(n1068), .B0(n1067), .SO(n1078) );
  HADDX1_RVT U217 ( .A0(n1235), .B0(n1234), .SO(n1245) );
  HADDX1_RVT U218 ( .A0(n1076), .B0(n1075), .SO(n1079) );
  HADDX1_RVT U219 ( .A0(n1410), .B0(n1409), .SO(n1413) );
  HADDX1_RVT U220 ( .A0(n1243), .B0(n1242), .SO(n1246) );
  HADDX1_RVT U221 ( .A0(n1577), .B0(n1576), .SO(n1580) );
  HADDX1_RVT U222 ( .A0(n1378), .B0(n1377), .SO(n1390) );
  HADDX1_RVT U223 ( .A0(n1044), .B0(n1043), .SO(n1056) );
  HADDX1_RVT U224 ( .A0(n1385), .B0(n1383), .SO(n1391) );
  HADDX1_RVT U225 ( .A0(n1051), .B0(n1049), .SO(n1057) );
  HADDX1_RVT U226 ( .A0(n1552), .B0(n1550), .SO(n1558) );
  HADDX1_RVT U227 ( .A0(n1218), .B0(n1216), .SO(n1224) );
  HADDX1_RVT U228 ( .A0(n1556), .B0(n1555), .SO(n1570) );
  HADDX1_RVT U229 ( .A0(n1389), .B0(n1388), .SO(n1403) );
  HADDX1_RVT U230 ( .A0(n1222), .B0(n1221), .SO(n1236) );
  HADDX1_RVT U231 ( .A0(n1564), .B0(n1563), .SO(n1571) );
  HADDX1_RVT U232 ( .A0(n1230), .B0(n1229), .SO(n1237) );
  HADDX1_RVT U233 ( .A0(n1063), .B0(n1062), .SO(n1070) );
  HADDX1_RVT U234 ( .A0(n1532), .B0(n1531), .SO(n1546) );
  HADDX1_RVT U236 ( .A0(n1031), .B0(n1030), .SO(n1045) );
  HADDX1_RVT U237 ( .A0(n1198), .B0(n1197), .SO(n1212) );
  HADDX1_RVT U238 ( .A0(n1519), .B0(n1518), .SO(n1533) );
  HADDX1_RVT U239 ( .A0(n1352), .B0(n1351), .SO(n1366) );
  HADDX1_RVT U240 ( .A0(n1185), .B0(n1184), .SO(n1199) );
  HADDX1_RVT U241 ( .A0(n1206), .B0(n1205), .SO(n1213) );
  HADDX1_RVT U242 ( .A0(n1039), .B0(n1038), .SO(n1046) );
  HADDX1_RVT U243 ( .A0(n1373), .B0(n1372), .SO(n1380) );
  HADDX1_RVT U244 ( .A0(n1540), .B0(n1539), .SO(n1547) );
  HADDX1_RVT U245 ( .A0(n1527), .B0(n1526), .SO(n1534) );
  HADDX1_RVT U246 ( .A0(n1193), .B0(n1192), .SO(n1200) );
  HADDX1_RVT U247 ( .A0(n1026), .B0(n1025), .SO(n1033) );
  HADDX1_RVT U248 ( .A0(stage_regs_1__3__25_), .B0(n522), .SO(n537) );
  FADDX1_RVT U249 ( .A(n582), .B(n814), .CI(n519), .CO(n807), .S(n539) );
  HADDX1_RVT U250 ( .A0(n1005), .B0(n1004), .SO(n1019) );
  HADDX1_RVT U251 ( .A0(n1339), .B0(n1338), .SO(n1353) );
  HADDX1_RVT U252 ( .A0(n1326), .B0(n1325), .SO(n1340) );
  HADDX1_RVT U253 ( .A0(n1159), .B0(n1158), .SO(n1173) );
  HADDX1_RVT U254 ( .A0(n992), .B0(n991), .SO(n1006) );
  HADDX1_RVT U255 ( .A0(n1493), .B0(n1492), .SO(n1507) );
  HADDX1_RVT U257 ( .A0(n1167), .B0(n1166), .SO(n1174) );
  HADDX1_RVT U258 ( .A0(n1000), .B0(n999), .SO(n1007) );
  HADDX1_RVT U259 ( .A0(n1334), .B0(n1333), .SO(n1341) );
  HADDX1_RVT U260 ( .A0(n1501), .B0(n1500), .SO(n1508) );
  HADDX1_RVT U261 ( .A0(n1180), .B0(n1179), .SO(n1187) );
  HADDX1_RVT U262 ( .A0(n1514), .B0(n1513), .SO(n1521) );
  HADDX1_RVT U263 ( .A0(n1347), .B0(n1346), .SO(n1354) );
  FADDX1_RVT U264 ( .A(n595), .B(n582), .CI(n520), .CO(n538), .S(n551) );
  HADDX1_RVT U265 ( .A0(n1146), .B0(n1145), .SO(n1160) );
  HADDX1_RVT U266 ( .A0(n1313), .B0(n1312), .SO(n1327) );
  HADDX1_RVT U267 ( .A0(n1480), .B0(n1479), .SO(n1494) );
  HADDX1_RVT U268 ( .A0(n1299), .B0(n1298), .SO(n1314) );
  HADDX1_RVT U269 ( .A0(n965), .B0(n964), .SO(n980) );
  HADDX1_RVT U270 ( .A0(n1488), .B0(n1487), .SO(n1495) );
  HADDX1_RVT U271 ( .A0(n1154), .B0(n1153), .SO(n1161) );
  HADDX1_RVT U272 ( .A0(n1308), .B0(n1307), .SO(n1315) );
  HADDX1_RVT U274 ( .A0(n1475), .B0(n1474), .SO(n1482) );
  HADDX1_RVT U275 ( .A0(n1141), .B0(n1140), .SO(n1148) );
  HADDX1_RVT U276 ( .A0(n974), .B0(n973), .SO(n981) );
  HADDX1_RVT U277 ( .A0(n1114), .B0(n496), .SO(n172) );
  HADDX1_RVT U278 ( .A0(n1448), .B0(n366), .SO(n294) );
  HADDX1_RVT U279 ( .A0(n1281), .B0(n431), .SO(n111) );
  HADDX1_RVT U281 ( .A0(n949), .B0(n948), .SO(n966) );
  HADDX1_RVT U285 ( .A0(n954), .B0(n953), .SO(n968) );
  HADDX1_RVT U287 ( .A0(n1127), .B0(n1126), .SO(n1136) );
  HADDX1_RVT U288 ( .A0(n960), .B0(n959), .SO(n969) );
  HADDX1_RVT U289 ( .A0(n1294), .B0(n1293), .SO(n1303) );
  HADDX1_RVT U290 ( .A0(n1461), .B0(n1460), .SO(n1470) );
  FADDX1_RVT U291 ( .A(n660), .B(n647), .CI(n582), .CO(n600), .S(n614) );
  HADDX1_RVT U292 ( .A0(n117), .B0(n504), .SO(n1104) );
  HADDX1_RVT U293 ( .A0(n56), .B0(n439), .SO(n1271) );
  HADDX1_RVT U294 ( .A0(n178), .B0(n920), .SO(n937) );
  HADDX1_RVT U295 ( .A0(n239), .B0(n374), .SO(n1438) );
  HADDX1_RVT U296 ( .A0(n176), .B0(n918), .SO(n939) );
  HADDX1_RVT U297 ( .A0(n237), .B0(n372), .SO(n1440) );
  HADDX1_RVT U299 ( .A0(n115), .B0(n502), .SO(n1106) );
  HADDX1_RVT U300 ( .A0(n182), .B0(n916), .SO(n942) );
  FADDX1_RVT U305 ( .A(n673), .B(n660), .CI(n595), .CO(n613), .S(n627) );
  HADDX1_RVT U306 ( .A0(n926), .B0(n174), .SO(n932) );
  HADDX1_RVT U307 ( .A0(n380), .B0(n235), .SO(n1433) );
  HADDX1_RVT U308 ( .A0(n510), .B0(n113), .SO(n1099) );
  HADDX1_RVT U309 ( .A0(n249), .B0(n376), .SO(n1435) );
  HADDX1_RVT U310 ( .A0(n127), .B0(n506), .SO(n1101) );
  HADDX1_RVT U311 ( .A0(n66), .B0(n441), .SO(n1268) );
  HADDX1_RVT U312 ( .A0(stage_regs_1__3__7_), .B0(n743), .SO(n771) );
  FADDX1_RVT U313 ( .A(n798), .B(n741), .CI(n740), .CO(n760), .S(n773) );
  HADDX1_RVT U314 ( .A0(stage_regs_1__3__5_), .B0(n300), .SO(n302) );
  HADDX1_RVT U315 ( .A0(n795), .B0(n801), .SO(intadd_1_A_0_) );
  INVX1_RVT U316 ( .A(n43), .Y(n1757) );
  INVX1_RVT U317 ( .A(n1757), .Y(n6) );
  INVX1_RVT U318 ( .A(n6), .Y(n7) );
  INVX1_RVT U319 ( .A(n6), .Y(n8) );
  INVX1_RVT U320 ( .A(n6), .Y(n9) );
  XOR2X1_RVT U321 ( .A1(stage_regs_1__3__26_), .A2(n515), .Y(n808) );
  FADDX1_RVT U322 ( .A(n608), .B(n595), .CI(n533), .CO(n550), .S(n563) );
  FADDX1_RVT U323 ( .A(n647), .B(n634), .CI(n814), .CO(n587), .S(n601) );
  FADDX1_RVT U324 ( .A(n741), .B(n727), .CI(n726), .CO(n746), .S(n761) );
  XOR2X1_RVT U325 ( .A1(n713), .A2(n312), .Y(n789) );
  FADDX1_RVT U326 ( .A(n785), .B(n784), .CI(n783), .CO(n764), .S(n786) );
  XOR2X1_RVT U327 ( .A1(n60), .A2(n435), .Y(n1276) );
  FADDX1_RVT U328 ( .A(n763), .B(n766), .CI(n762), .CO(intadd_0_B_6_), .S(
        intadd_0_A_5_) );
  XOR2X1_RVT U329 ( .A1(n188), .A2(n922), .Y(n934) );
  XOR2X1_RVT U330 ( .A1(n947), .A2(n912), .Y(n233) );
  XOR2X1_RVT U331 ( .A1(n979), .A2(n978), .Y(n993) );
  XOR2X1_RVT U332 ( .A1(n1018), .A2(n1017), .Y(n1032) );
  XOR2X1_RVT U333 ( .A1(n1055), .A2(n1054), .Y(n1069) );
  XOR2X1_RVT U334 ( .A1(n121), .A2(n500), .Y(n1109) );
  XOR2X1_RVT U335 ( .A1(n1132), .A2(n1131), .Y(n1147) );
  XOR2X1_RVT U336 ( .A1(n1172), .A2(n1171), .Y(n1186) );
  XOR2X1_RVT U337 ( .A1(n1211), .A2(n1210), .Y(n1223) );
  XOR2X1_RVT U338 ( .A1(n28), .A2(n1250), .Y(n1254) );
  XOR2X1_RVT U339 ( .A1(n445), .A2(n52), .Y(n1266) );
  XOR2X1_RVT U340 ( .A1(n1283), .A2(n1282), .Y(n1300) );
  XOR2X1_RVT U341 ( .A1(n1321), .A2(n1320), .Y(n1328) );
  XOR2X1_RVT U342 ( .A1(n1360), .A2(n1359), .Y(n1367) );
  XOR2X1_RVT U343 ( .A1(n1397), .A2(n1396), .Y(n1404) );
  XOR2X1_RVT U344 ( .A1(n243), .A2(n370), .Y(n1443) );
  XOR2X1_RVT U345 ( .A1(n1466), .A2(n1465), .Y(n1481) );
  XOR2X1_RVT U346 ( .A1(n1506), .A2(n1505), .Y(n1520) );
  XOR2X1_RVT U347 ( .A1(n1545), .A2(n1544), .Y(n1557) );
  XOR2X1_RVT U348 ( .A1(n26), .A2(n1584), .Y(n1588) );
  XOR2X1_RVT U349 ( .A1(n915), .A2(n914), .Y(butterfly_out_wires[70]) );
  XOR2X1_RVT U350 ( .A1(n903), .A2(n973), .Y(butterfly_out_wires[76]) );
  XOR2X1_RVT U351 ( .A1(n499), .A2(n498), .Y(butterfly_out_wires[102]) );
  XOR2X1_RVT U352 ( .A1(n495), .A2(n1115), .Y(butterfly_out_wires[104]) );
  XOR2X1_RVT U353 ( .A1(n465), .A2(n1210), .Y(butterfly_out_wires[119]) );
  XOR2X1_RVT U354 ( .A1(n434), .A2(n433), .Y(butterfly_out_wires[166]) );
  XOR2X1_RVT U355 ( .A1(n410), .A2(n1346), .Y(butterfly_out_wires[178]) );
  XOR2X1_RVT U356 ( .A1(n361), .A2(n1460), .Y(butterfly_out_wires[234]) );
  AO222X1_RVT U357 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[30]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[30]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[30]), 
        .A4(n512), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[30]), 
        .A6(n512), .Y(n513) );
  AO222X1_RVT U358 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[30]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[30]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[30]), 
        .A4(n447), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[30]), 
        .A6(n447), .Y(n448) );
  AO222X1_RVT U359 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[30]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[30]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[30]), 
        .A4(n382), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[30]), 
        .A6(n382), .Y(n383) );
  AO222X1_RVT U360 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[30]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[30]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[30]), 
        .A4(n928), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[30]), 
        .A6(n928), .Y(n929) );
  AO222X1_RVT U361 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[29]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[29]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[29]), 
        .A4(n868), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[29]), 
        .A6(n868), .Y(n928) );
  AO222X1_RVT U362 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[29]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[29]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[29]), 
        .A4(n452), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[29]), 
        .A6(n452), .Y(n512) );
  AO222X1_RVT U363 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[29]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[29]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[29]), 
        .A4(n322), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[29]), 
        .A6(n322), .Y(n382) );
  AO222X1_RVT U364 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[29]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[29]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[29]), 
        .A4(n387), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[29]), 
        .A6(n387), .Y(n447) );
  OA21X1_RVT U365 ( .A1(n1091), .A2(n1090), .A3(n1089), .Y(n1095) );
  AO222X1_RVT U366 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[28]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28]), 
        .A4(n324), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[28]), 
        .A6(n324), .Y(n322) );
  OA21X1_RVT U367 ( .A1(n1258), .A2(n1257), .A3(n1256), .Y(n1262) );
  OA21X1_RVT U368 ( .A1(n1592), .A2(n1591), .A3(n1590), .Y(n1596) );
  AO222X1_RVT U369 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[28]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[28]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[28]), 
        .A4(n870), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[28]), 
        .A6(n870), .Y(n868) );
  AO222X1_RVT U370 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[28]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28]), 
        .A4(n454), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[28]), 
        .A6(n454), .Y(n452) );
  AO222X1_RVT U371 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[28]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28]), 
        .A4(n389), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[28]), 
        .A6(n389), .Y(n387) );
  OA21X1_RVT U372 ( .A1(n1425), .A2(n1424), .A3(n1423), .Y(n1429) );
  INVX0_RVT U373 ( .A(n1072), .Y(n1077) );
  AO222X1_RVT U374 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[27]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[27]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[27]), 
        .A4(n872), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[27]), 
        .A6(n872), .Y(n870) );
  INVX0_RVT U375 ( .A(n1239), .Y(n1244) );
  INVX0_RVT U376 ( .A(n1406), .Y(n1411) );
  INVX0_RVT U377 ( .A(n1573), .Y(n1578) );
  AO222X1_RVT U378 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[27]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27]), 
        .A4(n391), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[27]), 
        .A6(n391), .Y(n389) );
  AO222X1_RVT U379 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[27]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27]), 
        .A4(n326), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[27]), 
        .A6(n326), .Y(n324) );
  AO222X1_RVT U380 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[27]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27]), 
        .A4(n456), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[27]), 
        .A6(n456), .Y(n454) );
  AO222X1_RVT U381 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[26]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[26]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[26]), 
        .A4(n458), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[26]), 
        .A6(n458), .Y(n456) );
  AND3X1_RVT U382 ( .A1(n1080), .A2(n1079), .A3(n1078), .Y(n1088) );
  AND3X1_RVT U383 ( .A1(n1414), .A2(n1413), .A3(n1412), .Y(n1422) );
  INVX0_RVT U384 ( .A(n1560), .Y(n1565) );
  INVX0_RVT U385 ( .A(n1393), .Y(n1398) );
  AND3X1_RVT U386 ( .A1(n1247), .A2(n1246), .A3(n1245), .Y(n1255) );
  AO222X1_RVT U387 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[26]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[26]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[26]), 
        .A4(n328), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[26]), 
        .A6(n328), .Y(n326) );
  AND3X1_RVT U388 ( .A1(n1581), .A2(n1580), .A3(n1579), .Y(n1589) );
  AO222X1_RVT U389 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[26]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[26]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[26]), 
        .A4(n393), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[26]), 
        .A6(n393), .Y(n391) );
  INVX0_RVT U390 ( .A(n1059), .Y(n1064) );
  AO222X1_RVT U391 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[26]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[26]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[26]), 
        .A4(n874), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[26]), 
        .A6(n874), .Y(n872) );
  INVX0_RVT U392 ( .A(n1226), .Y(n1231) );
  AND3X1_RVT U393 ( .A1(n1405), .A2(n1404), .A3(n1403), .Y(n1414) );
  AO222X1_RVT U394 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[25]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[25]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[25]), 
        .A4(n395), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[25]), 
        .A6(n395), .Y(n393) );
  AO222X1_RVT U395 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[25]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[25]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[25]), 
        .A4(n460), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[25]), 
        .A6(n460), .Y(n458) );
  INVX0_RVT U396 ( .A(n1215), .Y(n1217) );
  AO222X1_RVT U397 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[25]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[25]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[25]), 
        .A4(n876), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[25]), 
        .A6(n876), .Y(n874) );
  AND3X1_RVT U398 ( .A1(n1238), .A2(n1237), .A3(n1236), .Y(n1247) );
  INVX0_RVT U399 ( .A(n1382), .Y(n1384) );
  AND3X1_RVT U400 ( .A1(n1071), .A2(n1070), .A3(n1069), .Y(n1080) );
  AND3X1_RVT U401 ( .A1(n1572), .A2(n1571), .A3(n1570), .Y(n1581) );
  INVX0_RVT U402 ( .A(n1549), .Y(n1551) );
  AO222X1_RVT U403 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[25]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[25]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[25]), 
        .A4(n330), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[25]), 
        .A6(n330), .Y(n328) );
  INVX0_RVT U404 ( .A(n1048), .Y(n1050) );
  AO222X1_RVT U405 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[24]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[24]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[24]), 
        .A4(n878), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[24]), 
        .A6(n878), .Y(n876) );
  AO222X1_RVT U406 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[24]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[24]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[24]), 
        .A4(n462), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[24]), 
        .A6(n462), .Y(n460) );
  AO222X1_RVT U407 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[24]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[24]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[24]), 
        .A4(n397), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[24]), 
        .A6(n397), .Y(n395) );
  AND3X1_RVT U408 ( .A1(n1058), .A2(n1057), .A3(n1056), .Y(n1071) );
  AND3X1_RVT U409 ( .A1(n1559), .A2(n1558), .A3(n1557), .Y(n1572) );
  AND3X1_RVT U410 ( .A1(n1225), .A2(n1224), .A3(n1223), .Y(n1238) );
  AND3X1_RVT U411 ( .A1(n1392), .A2(n1391), .A3(n1390), .Y(n1405) );
  AO222X1_RVT U412 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[24]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[24]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[24]), 
        .A4(n332), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[24]), 
        .A6(n332), .Y(n330) );
  AO222X1_RVT U413 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[23]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[23]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[23]), 
        .A4(n465), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[23]), 
        .A6(n465), .Y(n462) );
  AO222X1_RVT U414 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[23]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[23]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[23]), 
        .A4(n400), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[23]), 
        .A6(n400), .Y(n397) );
  AND3X1_RVT U415 ( .A1(n1381), .A2(n1380), .A3(n1379), .Y(n1392) );
  AND3X1_RVT U416 ( .A1(n1047), .A2(n1046), .A3(n1045), .Y(n1058) );
  INVX0_RVT U417 ( .A(n1536), .Y(n1541) );
  INVX0_RVT U418 ( .A(n1202), .Y(n1207) );
  INVX0_RVT U419 ( .A(n1369), .Y(n1374) );
  AND3X1_RVT U420 ( .A1(n1548), .A2(n1547), .A3(n1546), .Y(n1559) );
  AO222X1_RVT U421 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[23]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[23]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[23]), 
        .A4(n881), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[23]), 
        .A6(n881), .Y(n878) );
  AND3X1_RVT U422 ( .A1(n1214), .A2(n1213), .A3(n1212), .Y(n1225) );
  INVX0_RVT U423 ( .A(n1035), .Y(n1040) );
  AO222X1_RVT U424 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[23]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[23]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[23]), 
        .A4(n335), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[23]), 
        .A6(n335), .Y(n332) );
  AO222X1_RVT U425 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[22]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[22]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[22]), 
        .A4(n883), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[22]), 
        .A6(n883), .Y(n881) );
  NAND3X0_RVT U426 ( .A1(n1381), .A2(n1379), .A3(n1423), .Y(n1369) );
  NAND3X0_RVT U427 ( .A1(n1548), .A2(n1546), .A3(n1590), .Y(n1536) );
  AO222X1_RVT U428 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[22]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[22]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[22]), 
        .A4(n467), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[22]), 
        .A6(n467), .Y(n465) );
  NAND3X0_RVT U429 ( .A1(n1047), .A2(n1045), .A3(n1089), .Y(n1035) );
  AO222X1_RVT U430 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[22]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[22]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[22]), 
        .A4(n402), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[22]), 
        .A6(n402), .Y(n400) );
  AO222X1_RVT U431 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[22]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[22]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[22]), 
        .A4(n337), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[22]), 
        .A6(n337), .Y(n335) );
  NAND3X0_RVT U432 ( .A1(n1214), .A2(n1212), .A3(n1256), .Y(n1202) );
  INVX0_RVT U433 ( .A(n1330), .Y(n1335) );
  INVX0_RVT U434 ( .A(n1267), .Y(n1269) );
  INVX0_RVT U435 ( .A(n1434), .Y(n1436) );
  INVX0_RVT U436 ( .A(n996), .Y(n1001) );
  AO222X1_RVT U437 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[21]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[21]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[21]), 
        .A4(n404), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[21]), 
        .A6(n404), .Y(n402) );
  INVX0_RVT U438 ( .A(n1284), .Y(n1289) );
  INVX0_RVT U439 ( .A(n1523), .Y(n1528) );
  AO222X1_RVT U440 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[21]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[21]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[21]), 
        .A4(n885), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[21]), 
        .A6(n885), .Y(n883) );
  INVX0_RVT U441 ( .A(n1117), .Y(n1122) );
  INVX0_RVT U442 ( .A(n1105), .Y(n1107) );
  INVX0_RVT U443 ( .A(n956), .Y(n961) );
  AND3X1_RVT U444 ( .A1(n1535), .A2(n1534), .A3(n1533), .Y(n1548) );
  INVX0_RVT U445 ( .A(n983), .Y(n988) );
  INVX0_RVT U446 ( .A(n1189), .Y(n1194) );
  INVX0_RVT U447 ( .A(n1022), .Y(n1027) );
  AND3X1_RVT U448 ( .A1(n1201), .A2(n1200), .A3(n1199), .Y(n1214) );
  INVX0_RVT U449 ( .A(n970), .Y(n975) );
  INVX0_RVT U450 ( .A(n1041), .Y(n1039) );
  INVX0_RVT U451 ( .A(n1009), .Y(n1014) );
  AOI22X1_RVT U452 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[22]), 
        .A2(n1700), .A3(n1042), .A4(n1041), .Y(n1044) );
  INVX0_RVT U453 ( .A(n1110), .Y(n1112) );
  INVX0_RVT U454 ( .A(n1290), .Y(n1295) );
  INVX0_RVT U455 ( .A(n1444), .Y(n1446) );
  INVX0_RVT U456 ( .A(n1484), .Y(n1489) );
  INVX0_RVT U457 ( .A(n1542), .Y(n1540) );
  INVX0_RVT U458 ( .A(n1123), .Y(n1128) );
  INVX0_RVT U459 ( .A(n1277), .Y(n1279) );
  INVX0_RVT U460 ( .A(n1317), .Y(n1322) );
  INVX0_RVT U461 ( .A(n1471), .Y(n1476) );
  INVX0_RVT U462 ( .A(n933), .Y(n935) );
  INVX0_RVT U463 ( .A(n1137), .Y(n1142) );
  INVX0_RVT U464 ( .A(n1356), .Y(n1361) );
  INVX0_RVT U465 ( .A(n1272), .Y(n1274) );
  INVX0_RVT U466 ( .A(n938), .Y(n940) );
  INVX0_RVT U467 ( .A(n1375), .Y(n1373) );
  INVX0_RVT U468 ( .A(n1343), .Y(n1348) );
  INVX0_RVT U469 ( .A(n1439), .Y(n1441) );
  AO222X1_RVT U470 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[21]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[21]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[21]), 
        .A4(n469), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[21]), 
        .A6(n469), .Y(n467) );
  INVX0_RVT U471 ( .A(n1150), .Y(n1155) );
  INVX0_RVT U472 ( .A(n1497), .Y(n1502) );
  AND3X1_RVT U473 ( .A1(n1034), .A2(n1033), .A3(n1032), .Y(n1047) );
  INVX0_RVT U474 ( .A(n1457), .Y(n1462) );
  INVX0_RVT U475 ( .A(n1304), .Y(n1309) );
  AOI22X1_RVT U476 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[22]), 
        .A2(n1703), .A3(n1543), .A4(n1542), .Y(n1545) );
  INVX0_RVT U477 ( .A(n1100), .Y(n1102) );
  AOI22X1_RVT U478 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[22]), 
        .A2(n1702), .A3(n1376), .A4(n1375), .Y(n1378) );
  INVX0_RVT U479 ( .A(n943), .Y(n945) );
  AND3X1_RVT U480 ( .A1(n1368), .A2(n1367), .A3(n1366), .Y(n1381) );
  INVX0_RVT U481 ( .A(n950), .Y(n955) );
  AO222X1_RVT U482 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[21]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[21]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[21]), 
        .A4(n339), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[21]), 
        .A6(n339), .Y(n337) );
  INVX0_RVT U483 ( .A(n1208), .Y(n1206) );
  INVX0_RVT U484 ( .A(n1451), .Y(n1456) );
  AOI22X1_RVT U485 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[22]), 
        .A2(n1701), .A3(n1209), .A4(n1208), .Y(n1211) );
  INVX0_RVT U486 ( .A(n1163), .Y(n1168) );
  INVX0_RVT U487 ( .A(n1510), .Y(n1515) );
  INVX0_RVT U488 ( .A(n1176), .Y(n1181) );
  NAND3X0_RVT U489 ( .A1(n936), .A2(n937), .A3(n1089), .Y(n938) );
  AO22X1_RVT U491 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[21]), 
        .A2(n1690), .A3(n1371), .A4(n1370), .Y(n1375) );
  NAND3X0_RVT U492 ( .A1(n1270), .A2(n1271), .A3(n1423), .Y(n1272) );
  NAND3X0_RVT U493 ( .A1(n1355), .A2(n1353), .A3(n1423), .Y(n1343) );
  NAND3X0_RVT U494 ( .A1(n941), .A2(n942), .A3(n1089), .Y(n943) );
  AO222X1_RVT U495 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[20]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[20]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[20]), 
        .A4(n471), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[20]), 
        .A6(n471), .Y(n469) );
  NAND3X0_RVT U496 ( .A1(n1437), .A2(n1438), .A3(n1590), .Y(n1439) );
  NAND3X0_RVT U497 ( .A1(butterfly_out_wires[64]), .A2(n932), .A3(n1089), .Y(
        n933) );
  NAND3X0_RVT U498 ( .A1(n1275), .A2(n1276), .A3(n1423), .Y(n1277) );
  NAND3X0_RVT U499 ( .A1(n1483), .A2(n1481), .A3(n1590), .Y(n1471) );
  NAND3X0_RVT U500 ( .A1(n1368), .A2(n1366), .A3(n1423), .Y(n1356) );
  INVX0_RVT U501 ( .A(n1538), .Y(n1532) );
  NAND3X0_RVT U502 ( .A1(n1201), .A2(n1199), .A3(n1256), .Y(n1189) );
  NAND4X0_RVT U503 ( .A1(n1302), .A2(n1301), .A3(n1300), .A4(n1423), .Y(n1290)
         );
  NAND3X0_RVT U504 ( .A1(n967), .A2(n966), .A3(n1089), .Y(n950) );
  NAND3X0_RVT U505 ( .A1(n1188), .A2(n1186), .A3(n1256), .Y(n1176) );
  AO22X1_RVT U506 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[21]), 
        .A2(n1691), .A3(n1538), .A4(n1537), .Y(n1542) );
  NAND3X0_RVT U507 ( .A1(butterfly_out_wires[96]), .A2(n1099), .A3(n1256), .Y(
        n1100) );
  NAND3X0_RVT U508 ( .A1(n1149), .A2(n1147), .A3(n1256), .Y(n1137) );
  NAND4X0_RVT U509 ( .A1(n968), .A2(n967), .A3(n966), .A4(n1089), .Y(n956) );
  NAND3X0_RVT U510 ( .A1(butterfly_out_wires[160]), .A2(n1266), .A3(n1423), 
        .Y(n1267) );
  NAND3X0_RVT U511 ( .A1(n1535), .A2(n1533), .A3(n1590), .Y(n1523) );
  NAND3X0_RVT U512 ( .A1(n1342), .A2(n1340), .A3(n1423), .Y(n1330) );
  NAND3X0_RVT U513 ( .A1(n1103), .A2(n1104), .A3(n1256), .Y(n1105) );
  NAND3X0_RVT U514 ( .A1(n1442), .A2(n1443), .A3(n1590), .Y(n1444) );
  NAND3X0_RVT U515 ( .A1(n1301), .A2(n1300), .A3(n1423), .Y(n1284) );
  NAND3X0_RVT U516 ( .A1(n982), .A2(n980), .A3(n1089), .Y(n970) );
  INVX0_RVT U517 ( .A(n1037), .Y(n1031) );
  NAND3X0_RVT U518 ( .A1(n1008), .A2(n1006), .A3(n1089), .Y(n996) );
  AO22X1_RVT U519 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[21]), 
        .A2(n1688), .A3(n1037), .A4(n1036), .Y(n1041) );
  NAND4X0_RVT U520 ( .A1(n1135), .A2(n1134), .A3(n1133), .A4(n1256), .Y(n1123)
         );
  AO222X1_RVT U521 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[20]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[20]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[20]), 
        .A4(n887), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[20]), 
        .A6(n887), .Y(n885) );
  NAND3X0_RVT U522 ( .A1(n1175), .A2(n1173), .A3(n1256), .Y(n1163) );
  AO222X1_RVT U523 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[20]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[20]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[20]), 
        .A4(n406), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[20]), 
        .A6(n406), .Y(n404) );
  NAND3X0_RVT U524 ( .A1(n1468), .A2(n1467), .A3(n1590), .Y(n1451) );
  NAND3X0_RVT U525 ( .A1(n1316), .A2(n1314), .A3(n1423), .Y(n1304) );
  NAND3X0_RVT U526 ( .A1(n1108), .A2(n1109), .A3(n1256), .Y(n1110) );
  NAND3X0_RVT U527 ( .A1(n1522), .A2(n1520), .A3(n1590), .Y(n1510) );
  NAND3X0_RVT U528 ( .A1(n1034), .A2(n1032), .A3(n1089), .Y(n1022) );
  NAND3X0_RVT U529 ( .A1(n1162), .A2(n1160), .A3(n1256), .Y(n1150) );
  NAND3X0_RVT U530 ( .A1(n1021), .A2(n1019), .A3(n1089), .Y(n1009) );
  INVX0_RVT U531 ( .A(n1204), .Y(n1198) );
  NAND3X0_RVT U532 ( .A1(n1329), .A2(n1327), .A3(n1423), .Y(n1317) );
  NAND3X0_RVT U533 ( .A1(n995), .A2(n993), .A3(n1089), .Y(n983) );
  NAND3X0_RVT U534 ( .A1(butterfly_out_wires[224]), .A2(n1433), .A3(n1590), 
        .Y(n1434) );
  AO22X1_RVT U535 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[21]), 
        .A2(n1689), .A3(n1204), .A4(n1203), .Y(n1208) );
  NAND3X0_RVT U536 ( .A1(n1496), .A2(n1494), .A3(n1590), .Y(n1484) );
  NAND3X0_RVT U537 ( .A1(n1509), .A2(n1507), .A3(n1590), .Y(n1497) );
  NAND4X0_RVT U538 ( .A1(n1469), .A2(n1468), .A3(n1467), .A4(n1590), .Y(n1457)
         );
  AO222X1_RVT U539 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[20]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[20]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[20]), 
        .A4(n341), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[20]), 
        .A6(n341), .Y(n339) );
  NAND3X0_RVT U540 ( .A1(n1134), .A2(n1133), .A3(n1256), .Y(n1117) );
  INVX2_RVT U541 ( .A(n931), .Y(n1089) );
  AO222X1_RVT U542 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[19]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[19]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[19]), 
        .A4(n889), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[19]), 
        .A6(n889), .Y(n887) );
  AO222X1_RVT U543 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[19]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19]), 
        .A4(n343), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[19]), 
        .A6(n343), .Y(n341) );
  AND3X1_RVT U544 ( .A1(n1021), .A2(n1020), .A3(n1019), .Y(n1034) );
  AND3X1_RVT U545 ( .A1(n1188), .A2(n1187), .A3(n1186), .Y(n1201) );
  INVX0_RVT U546 ( .A(n1196), .Y(n1193) );
  AO22X1_RVT U547 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[20]), 
        .A2(n1693), .A3(n1196), .A4(n1195), .Y(n1204) );
  INVX2_RVT U548 ( .A(n1432), .Y(n1590) );
  AO222X1_RVT U549 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[19]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19]), 
        .A4(n473), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[19]), 
        .A6(n473), .Y(n471) );
  INVX0_RVT U550 ( .A(n1530), .Y(n1527) );
  AO22X1_RVT U551 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[20]), 
        .A2(n1695), .A3(n1530), .A4(n1529), .Y(n1538) );
  INVX0_RVT U552 ( .A(n1363), .Y(n1360) );
  INVX2_RVT U553 ( .A(n1265), .Y(n1423) );
  AO222X1_RVT U554 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[19]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19]), 
        .A4(n408), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[19]), 
        .A6(n408), .Y(n406) );
  AO22X1_RVT U555 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[20]), 
        .A2(n1692), .A3(n1029), .A4(n1028), .Y(n1037) );
  AND3X1_RVT U556 ( .A1(n1522), .A2(n1521), .A3(n1520), .Y(n1535) );
  INVX0_RVT U557 ( .A(n1029), .Y(n1026) );
  AO22X1_RVT U558 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[20]), 
        .A2(n1694), .A3(n1363), .A4(n1362), .Y(n1371) );
  AND3X1_RVT U559 ( .A1(n1355), .A2(n1354), .A3(n1353), .Y(n1368) );
  INVX2_RVT U560 ( .A(n1098), .Y(n1256) );
  AO222X1_RVT U561 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[18]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[18]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[18]), 
        .A4(n345), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[18]), 
        .A6(n345), .Y(n343) );
  INVX0_RVT U562 ( .A(n1024), .Y(n1018) );
  AOI22X1_RVT U563 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[28]), 
        .A2(n1725), .A3(n1082), .A4(n1081), .Y(n27) );
  AND2X1_RVT U564 ( .A1(n292), .A2(n291), .Y(n1432) );
  INVX0_RVT U565 ( .A(n1358), .Y(n1352) );
  AO222X1_RVT U566 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[18]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[18]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[18]), 
        .A4(n891), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[18]), 
        .A6(n891), .Y(n889) );
  INVX0_RVT U567 ( .A(n1081), .Y(n1076) );
  AND2X1_RVT U568 ( .A1(n170), .A2(n169), .Y(n1098) );
  AND2X1_RVT U569 ( .A1(n109), .A2(n108), .Y(n1265) );
  AO222X1_RVT U570 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[18]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[18]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[18]), 
        .A4(n410), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[18]), 
        .A6(n410), .Y(n408) );
  AO222X1_RVT U571 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[18]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[18]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[18]), 
        .A4(n475), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[18]), 
        .A6(n475), .Y(n473) );
  AOI22X1_RVT U572 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28]), 
        .A2(n1727), .A3(n1416), .A4(n1415), .Y(n24) );
  AO22X1_RVT U573 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19]), 
        .A2(n1675), .A3(n1525), .A4(n1524), .Y(n1530) );
  AO22X1_RVT U574 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19]), 
        .A2(n1674), .A3(n1358), .A4(n1357), .Y(n1363) );
  INVX0_RVT U575 ( .A(n1415), .Y(n1410) );
  AOI22X1_RVT U576 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28]), 
        .A2(n1728), .A3(n1583), .A4(n1582), .Y(n26) );
  INVX0_RVT U577 ( .A(n1525), .Y(n1519) );
  AND2X1_RVT U578 ( .A1(n231), .A2(n230), .Y(n931) );
  AO22X1_RVT U579 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[19]), 
        .A2(n1672), .A3(n1024), .A4(n1023), .Y(n1029) );
  INVX0_RVT U580 ( .A(n1248), .Y(n1243) );
  INVX0_RVT U581 ( .A(n1582), .Y(n1577) );
  AOI22X1_RVT U582 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28]), 
        .A2(n1726), .A3(n1249), .A4(n1248), .Y(n28) );
  INVX0_RVT U583 ( .A(n1191), .Y(n1185) );
  AO22X1_RVT U584 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19]), 
        .A2(n1673), .A3(n1191), .A4(n1190), .Y(n1196) );
  AO222X1_RVT U585 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[17]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[17]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[17]), 
        .A4(n347), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[17]), 
        .A6(n347), .Y(n345) );
  AND3X1_RVT U586 ( .A1(n1509), .A2(n1508), .A3(n1507), .Y(n1522) );
  INVX0_RVT U587 ( .A(n1407), .Y(n1402) );
  AO22X1_RVT U588 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[18]), 
        .A2(n1677), .A3(n1183), .A4(n1182), .Y(n1191) );
  INVX0_RVT U589 ( .A(n1240), .Y(n1235) );
  AO22X1_RVT U590 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27]), 
        .A2(n1718), .A3(n1408), .A4(n1407), .Y(n1415) );
  AO22X1_RVT U591 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27]), 
        .A2(n1717), .A3(n1241), .A4(n1240), .Y(n1248) );
  AO22X1_RVT U592 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27]), 
        .A2(n1719), .A3(n1575), .A4(n1574), .Y(n1582) );
  AND3X1_RVT U593 ( .A1(n1008), .A2(n1007), .A3(n1006), .Y(n1021) );
  INVX0_RVT U594 ( .A(n1517), .Y(n1514) );
  AO22X1_RVT U595 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[27]), 
        .A2(n1716), .A3(n1074), .A4(n1073), .Y(n1081) );
  INVX0_RVT U596 ( .A(n1073), .Y(n1068) );
  AO22X1_RVT U597 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[18]), 
        .A2(n1678), .A3(n1350), .A4(n1349), .Y(n1358) );
  INVX0_RVT U598 ( .A(n1350), .Y(n1347) );
  AND3X1_RVT U599 ( .A1(n1175), .A2(n1174), .A3(n1173), .Y(n1188) );
  AO222X1_RVT U600 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[17]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[17]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[17]), 
        .A4(n477), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[17]), 
        .A6(n477), .Y(n475) );
  INVX0_RVT U601 ( .A(n1574), .Y(n1569) );
  AO22X1_RVT U602 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[30]), 
        .A2(n1736), .A3(n1594), .A4(n1593), .Y(n1595) );
  AND3X1_RVT U604 ( .A1(n1342), .A2(n1341), .A3(n1340), .Y(n1355) );
  AO22X1_RVT U605 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[30]), 
        .A2(n1733), .A3(n1093), .A4(n1092), .Y(n1094) );
  AO22X1_RVT U606 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[18]), 
        .A2(n1679), .A3(n1517), .A4(n1516), .Y(n1525) );
  AO22X1_RVT U607 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[30]), 
        .A2(n1735), .A3(n1427), .A4(n1426), .Y(n1428) );
  AO222X1_RVT U608 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[17]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[17]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[17]), 
        .A4(n412), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[17]), 
        .A6(n412), .Y(n410) );
  INVX0_RVT U609 ( .A(n1183), .Y(n1180) );
  AO222X1_RVT U610 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[17]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[17]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[17]), 
        .A4(n893), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[17]), 
        .A6(n893), .Y(n891) );
  AO22X1_RVT U611 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[30]), 
        .A2(n1734), .A3(n1260), .A4(n1259), .Y(n1261) );
  AO22X1_RVT U612 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[18]), 
        .A2(n1676), .A3(n1016), .A4(n1015), .Y(n1024) );
  INVX0_RVT U613 ( .A(n1566), .Y(n1564) );
  INVX0_RVT U614 ( .A(n1065), .Y(n1063) );
  AO22X1_RVT U615 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[26]), 
        .A2(n1720), .A3(n1066), .A4(n1065), .Y(n1073) );
  OA221X1_RVT U616 ( .A1(n288), .A2(n1583), .A3(n288), .A4(n287), .A5(n321), 
        .Y(n1593) );
  AO22X1_RVT U617 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[26]), 
        .A2(n1723), .A3(n1567), .A4(n1566), .Y(n1574) );
  INVX0_RVT U618 ( .A(n1178), .Y(n1172) );
  AO22X1_RVT U619 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[17]), 
        .A2(n1681), .A3(n1178), .A4(n1177), .Y(n1183) );
  OA221X1_RVT U620 ( .A1(n227), .A2(n1082), .A3(n227), .A4(n226), .A5(n867), 
        .Y(n1092) );
  INVX0_RVT U621 ( .A(n1011), .Y(n1005) );
  AO22X1_RVT U622 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[17]), 
        .A2(n1683), .A3(n1512), .A4(n1511), .Y(n1517) );
  AO222X1_RVT U623 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[16]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16]), 
        .A4(n479), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[16]), 
        .A6(n479), .Y(n477) );
  AO22X1_RVT U624 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[17]), 
        .A2(n1680), .A3(n1011), .A4(n1010), .Y(n1016) );
  INVX0_RVT U625 ( .A(n1345), .Y(n1339) );
  INVX0_RVT U626 ( .A(n1512), .Y(n1506) );
  OA221X1_RVT U627 ( .A1(n166), .A2(n1249), .A3(n166), .A4(n165), .A5(n451), 
        .Y(n1259) );
  AO222X1_RVT U628 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[16]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[16]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[16]), 
        .A4(n895), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[16]), 
        .A6(n895), .Y(n893) );
  AO22X1_RVT U629 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[17]), 
        .A2(n1682), .A3(n1345), .A4(n1344), .Y(n1350) );
  AO22X1_RVT U630 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[26]), 
        .A2(n1721), .A3(n1233), .A4(n1232), .Y(n1240) );
  AO222X1_RVT U631 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[16]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16]), 
        .A4(n414), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[16]), 
        .A6(n414), .Y(n412) );
  AO222X1_RVT U632 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[16]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16]), 
        .A4(n349), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[16]), 
        .A6(n349), .Y(n347) );
  OA221X1_RVT U633 ( .A1(n105), .A2(n1416), .A3(n105), .A4(n104), .A5(n386), 
        .Y(n1426) );
  AO22X1_RVT U634 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[26]), 
        .A2(n1722), .A3(n1400), .A4(n1399), .Y(n1407) );
  INVX0_RVT U635 ( .A(n1232), .Y(n1230) );
  INVX0_RVT U636 ( .A(n1399), .Y(n1397) );
  INVX0_RVT U637 ( .A(n1561), .Y(n1556) );
  AO22X1_RVT U638 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16]), 
        .A2(n1686), .A3(n1337), .A4(n1336), .Y(n1345) );
  AND3X1_RVT U639 ( .A1(n995), .A2(n994), .A3(n993), .Y(n1008) );
  AND3X1_RVT U640 ( .A1(n1329), .A2(n1328), .A3(n1327), .Y(n1342) );
  INVX0_RVT U641 ( .A(n1504), .Y(n1501) );
  INVX0_RVT U642 ( .A(n1170), .Y(n1167) );
  AO222X1_RVT U643 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[15]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15]), 
        .A4(n351), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[15]), 
        .A6(n351), .Y(n349) );
  AO22X1_RVT U644 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[16]), 
        .A2(n1684), .A3(n1003), .A4(n1002), .Y(n1011) );
  AO222X1_RVT U645 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[15]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[15]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[15]), 
        .A4(n897), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[15]), 
        .A6(n897), .Y(n895) );
  AO222X1_RVT U646 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[15]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15]), 
        .A4(n416), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[15]), 
        .A6(n416), .Y(n414) );
  AO22X1_RVT U647 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[25]), 
        .A2(n1712), .A3(n1061), .A4(n1060), .Y(n1065) );
  AND3X1_RVT U648 ( .A1(n1162), .A2(n1161), .A3(n1160), .Y(n1175) );
  AO222X1_RVT U649 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[15]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15]), 
        .A4(n481), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[15]), 
        .A6(n481), .Y(n479) );
  INVX0_RVT U650 ( .A(n1060), .Y(n1055) );
  AO22X1_RVT U651 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[25]), 
        .A2(n1713), .A3(n1228), .A4(n1227), .Y(n1232) );
  INVX0_RVT U652 ( .A(n1394), .Y(n1389) );
  AO22X1_RVT U653 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16]), 
        .A2(n1685), .A3(n1170), .A4(n1169), .Y(n1178) );
  AND3X1_RVT U654 ( .A1(n1496), .A2(n1495), .A3(n1494), .Y(n1509) );
  INVX0_RVT U655 ( .A(n1227), .Y(n1222) );
  INVX0_RVT U656 ( .A(n1003), .Y(n1000) );
  AO22X1_RVT U657 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[25]), 
        .A2(n1714), .A3(n1395), .A4(n1394), .Y(n1399) );
  INVX0_RVT U658 ( .A(n1337), .Y(n1334) );
  AO22X1_RVT U659 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16]), 
        .A2(n1687), .A3(n1504), .A4(n1503), .Y(n1512) );
  AO22X1_RVT U660 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[25]), 
        .A2(n1715), .A3(n1562), .A4(n1561), .Y(n1566) );
  AO222X1_RVT U661 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[14]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[14]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[14]), 
        .A4(n418), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[14]), 
        .A6(n418), .Y(n416) );
  AO22X1_RVT U662 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[24]), 
        .A2(n1711), .A3(n1554), .A4(n1553), .Y(n1561) );
  INVX0_RVT U663 ( .A(n1499), .Y(n1493) );
  AO22X1_RVT U664 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[24]), 
        .A2(n1709), .A3(n1220), .A4(n1219), .Y(n1227) );
  AO222X1_RVT U665 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[14]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[14]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[14]), 
        .A4(n899), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[14]), 
        .A6(n899), .Y(n897) );
  INVX0_RVT U666 ( .A(n1332), .Y(n1326) );
  AO22X1_RVT U667 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[24]), 
        .A2(n1708), .A3(n1053), .A4(n1052), .Y(n1060) );
  AO22X1_RVT U668 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15]), 
        .A2(n1666), .A3(n1332), .A4(n1331), .Y(n1337) );
  AO22X1_RVT U669 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15]), 
        .A2(n1667), .A3(n1499), .A4(n1498), .Y(n1504) );
  INVX0_RVT U670 ( .A(n1165), .Y(n1159) );
  INVX0_RVT U671 ( .A(n998), .Y(n992) );
  AO22X1_RVT U672 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[24]), 
        .A2(n1710), .A3(n1387), .A4(n1386), .Y(n1394) );
  AO222X1_RVT U673 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[14]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[14]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[14]), 
        .A4(n483), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[14]), 
        .A6(n483), .Y(n481) );
  AO222X1_RVT U674 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[14]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[14]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[14]), 
        .A4(n353), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[14]), 
        .A6(n353), .Y(n351) );
  AO22X1_RVT U675 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[14]), 
        .A2(n1668), .A3(n990), .A4(n989), .Y(n998) );
  AO22X1_RVT U676 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[14]), 
        .A2(n1669), .A3(n1157), .A4(n1156), .Y(n1165) );
  AO22X1_RVT U677 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[14]), 
        .A2(n1671), .A3(n1491), .A4(n1490), .Y(n1499) );
  AND3X1_RVT U678 ( .A1(n1149), .A2(n1148), .A3(n1147), .Y(n1162) );
  INVX0_RVT U680 ( .A(n1157), .Y(n1154) );
  AO222X1_RVT U681 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[13]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[13]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[13]), 
        .A4(n485), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[13]), 
        .A6(n485), .Y(n483) );
  AND3X1_RVT U682 ( .A1(n1483), .A2(n1482), .A3(n1481), .Y(n1496) );
  INVX0_RVT U683 ( .A(n1552), .Y(n1553) );
  INVX0_RVT U684 ( .A(n1385), .Y(n1386) );
  INVX0_RVT U685 ( .A(n1218), .Y(n1219) );
  AND3X1_RVT U686 ( .A1(n982), .A2(n981), .A3(n980), .Y(n995) );
  AO222X1_RVT U687 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[13]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[13]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[13]), 
        .A4(n901), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[13]), 
        .A6(n901), .Y(n899) );
  INVX0_RVT U688 ( .A(n1491), .Y(n1488) );
  AO222X1_RVT U689 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[13]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[13]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[13]), 
        .A4(n355), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[13]), 
        .A6(n355), .Y(n353) );
  AND3X1_RVT U690 ( .A1(n1316), .A2(n1315), .A3(n1314), .Y(n1329) );
  AO22X1_RVT U691 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[14]), 
        .A2(n1670), .A3(n1324), .A4(n1323), .Y(n1332) );
  INVX0_RVT U692 ( .A(n1051), .Y(n1052) );
  INVX0_RVT U693 ( .A(n1324), .Y(n1321) );
  AO222X1_RVT U694 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[13]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[13]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[13]), 
        .A4(n420), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[13]), 
        .A6(n420), .Y(n418) );
  INVX0_RVT U695 ( .A(n985), .Y(n979) );
  AO222X1_RVT U696 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[12]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[12]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[12]), 
        .A4(n903), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[12]), 
        .A6(n903), .Y(n901) );
  AO222X1_RVT U697 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[12]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[12]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[12]), 
        .A4(n357), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[12]), 
        .A6(n357), .Y(n355) );
  NAND4X0_RVT U698 ( .A1(n99), .A2(n399), .A3(n98), .A4(n97), .Y(n1385) );
  AO22X1_RVT U699 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[13]), 
        .A2(n1661), .A3(n1152), .A4(n1151), .Y(n1157) );
  NAND4X0_RVT U700 ( .A1(n221), .A2(n880), .A3(n220), .A4(n219), .Y(n1051) );
  INVX0_RVT U701 ( .A(n1486), .Y(n1480) );
  INVX0_RVT U702 ( .A(n1152), .Y(n1146) );
  INVX0_RVT U703 ( .A(intadd_1_SUM_2_), .Y(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N12) );
  NAND4X0_RVT U704 ( .A1(n282), .A2(n334), .A3(n281), .A4(n280), .Y(n1552) );
  AO222X1_RVT U705 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[12]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[12]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[12]), 
        .A4(n487), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[12]), 
        .A6(n487), .Y(n485) );
  AO222X1_RVT U706 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[12]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[12]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[12]), 
        .A4(n422), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[12]), 
        .A6(n422), .Y(n420) );
  INVX0_RVT U707 ( .A(intadd_1_n1), .Y(intadd_0_B_2_) );
  NAND4X0_RVT U708 ( .A1(n160), .A2(n464), .A3(n159), .A4(n158), .Y(n1218) );
  INVX0_RVT U709 ( .A(n1319), .Y(n1313) );
  AO222X1_RVT U710 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[11]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11]), 
        .A4(n359), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[11]), 
        .A6(n359), .Y(n357) );
  AO22X1_RVT U711 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[12]), 
        .A2(n1656), .A3(n977), .A4(n976), .Y(n985) );
  AO22X1_RVT U712 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[12]), 
        .A2(n1658), .A3(n1311), .A4(n1310), .Y(n1319) );
  AO22X1_RVT U713 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[12]), 
        .A2(n1659), .A3(n1478), .A4(n1477), .Y(n1486) );
  INVX0_RVT U714 ( .A(n1478), .Y(n1475) );
  AO222X1_RVT U715 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[11]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[11]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[11]), 
        .A4(n905), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[11]), 
        .A6(n905), .Y(n903) );
  INVX0_RVT U716 ( .A(n977), .Y(n974) );
  INVX0_RVT U717 ( .A(intadd_1_SUM_1_), .Y(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N11) );
  INVX0_RVT U718 ( .A(n1144), .Y(n1141) );
  AO222X1_RVT U719 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[11]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11]), 
        .A4(n424), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[11]), 
        .A6(n424), .Y(n422) );
  AO222X1_RVT U720 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[11]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11]), 
        .A4(n489), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[11]), 
        .A6(n489), .Y(n487) );
  INVX0_RVT U721 ( .A(n1311), .Y(n1308) );
  INVX0_RVT U722 ( .A(n1306), .Y(n1299) );
  INVX0_RVT U723 ( .A(n972), .Y(n965) );
  AO222X1_RVT U724 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[10]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[10]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[10]), 
        .A4(n907), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[10]), 
        .A6(n907), .Y(n905) );
  OA21X1_RVT U725 ( .A1(n711), .A2(n710), .A3(n709), .Y(n722) );
  AO222X1_RVT U726 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[10]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[10]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[10]), 
        .A4(n361), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[10]), 
        .A6(n361), .Y(n359) );
  INVX0_RVT U727 ( .A(n709), .Y(n707) );
  AO222X1_RVT U728 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[10]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[10]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[10]), 
        .A4(n426), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[10]), 
        .A6(n426), .Y(n424) );
  AO22X1_RVT U729 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11]), 
        .A2(n1653), .A3(n1139), .A4(n1138), .Y(n1144) );
  INVX0_RVT U730 ( .A(n1139), .Y(n1132) );
  INVX0_RVT U731 ( .A(n1473), .Y(n1466) );
  AO222X1_RVT U732 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[10]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[10]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[10]), 
        .A4(n491), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[10]), 
        .A6(n491), .Y(n489) );
  AO222X1_RVT U733 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[9]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[9]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[9]), 
        .A4(n428), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[9]), .A6(
        n428), .Y(n426) );
  AO222X1_RVT U734 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[9]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[9]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[9]), 
        .A4(n493), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[9]), .A6(
        n493), .Y(n491) );
  INVX0_RVT U735 ( .A(n1464), .Y(n1461) );
  INVX0_RVT U736 ( .A(n303), .Y(intadd_0_A_2_) );
  AO222X1_RVT U737 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[9]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[9]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[9]), 
        .A4(n363), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[9]), .A6(
        n363), .Y(n361) );
  INVX0_RVT U738 ( .A(n318), .Y(intadd_0_B_3_) );
  AO22X1_RVT U739 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[10]), 
        .A2(n1650), .A3(n1297), .A4(n1296), .Y(n1306) );
  INVX0_RVT U740 ( .A(n963), .Y(n960) );
  AO22X1_RVT U741 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[10]), 
        .A2(n1648), .A3(n963), .A4(n962), .Y(n972) );
  AO22X1_RVT U742 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[10]), 
        .A2(n1651), .A3(n1464), .A4(n1463), .Y(n1473) );
  INVX1_RVT U743 ( .A(n696), .Y(n694) );
  OA21X1_RVT U744 ( .A1(n698), .A2(n697), .A3(n696), .Y(n708) );
  INVX0_RVT U745 ( .A(n1297), .Y(n1294) );
  NAND2X0_RVT U746 ( .A1(n710), .A2(n711), .Y(n709) );
  INVX0_RVT U747 ( .A(intadd_0_SUM_1_), .Y(intadd_1_A_2_) );
  INVX1_RVT U748 ( .A(n737), .Y(n735) );
  OA21X1_RVT U749 ( .A1(n725), .A2(n724), .A3(n723), .Y(n736) );
  AO222X1_RVT U750 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[9]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[9]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[9]), 
        .A4(n909), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[9]), .A6(
        n909), .Y(n907) );
  OA21X1_RVT U751 ( .A1(n769), .A2(n768), .A3(n767), .Y(n776) );
  INVX1_RVT U752 ( .A(n723), .Y(n721) );
  INVX0_RVT U753 ( .A(n1130), .Y(n1127) );
  OA21X1_RVT U754 ( .A1(n739), .A2(n738), .A3(n737), .Y(n750) );
  OA21X1_RVT U755 ( .A1(n594), .A2(n593), .A3(n592), .Y(n604) );
  OA21X1_RVT U756 ( .A1(n569), .A2(n568), .A3(n567), .Y(n578) );
  INVX1_RVT U757 ( .A(n592), .Y(n590) );
  INVX1_RVT U758 ( .A(n555), .Y(n553) );
  OA21X1_RVT U759 ( .A1(n581), .A2(n580), .A3(n579), .Y(n591) );
  NAND2X0_RVT U760 ( .A1(n233), .A2(n232), .Y(n967) );
  INVX0_RVT U761 ( .A(n579), .Y(n577) );
  OA21X1_RVT U762 ( .A1(n607), .A2(n606), .A3(n605), .Y(n617) );
  OA21X1_RVT U763 ( .A1(n557), .A2(n556), .A3(n555), .Y(n566) );
  INVX1_RVT U764 ( .A(n605), .Y(n603) );
  INVX0_RVT U765 ( .A(n958), .Y(n954) );
  OA21X1_RVT U766 ( .A1(n620), .A2(n619), .A3(n618), .Y(n630) );
  AO222X1_RVT U767 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[8]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[8]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[8]), 
        .A4(n495), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[8]), .A6(
        n495), .Y(n493) );
  OA21X1_RVT U768 ( .A1(n753), .A2(n752), .A3(n751), .Y(n763) );
  INVX1_RVT U769 ( .A(n567), .Y(n565) );
  INVX1_RVT U770 ( .A(n618), .Y(n616) );
  INVX1_RVT U771 ( .A(n543), .Y(n541) );
  OA21X1_RVT U772 ( .A1(n545), .A2(n544), .A3(n543), .Y(n554) );
  INVX0_RVT U773 ( .A(intadd_0_SUM_0_), .Y(n805) );
  INVX0_RVT U774 ( .A(n812), .Y(n826) );
  INVX1_RVT U775 ( .A(n631), .Y(n629) );
  INVX1_RVT U776 ( .A(n751), .Y(n749) );
  NAND2X0_RVT U778 ( .A1(n738), .A2(n739), .Y(n737) );
  NAND2X0_RVT U779 ( .A1(n294), .A2(n293), .Y(n1468) );
  OA21X1_RVT U781 ( .A1(n532), .A2(n531), .A3(n530), .Y(n542) );
  OA21X1_RVT U782 ( .A1(n633), .A2(n632), .A3(n631), .Y(n643) );
  INVX0_RVT U783 ( .A(n644), .Y(n642) );
  OA21X1_RVT U784 ( .A1(n526), .A2(n525), .A3(n812), .Y(n527) );
  AO21X1_RVT U785 ( .A1(n714), .A2(stage_regs_1__3__9_), .A3(n702), .Y(n711)
         );
  INVX0_RVT U786 ( .A(n530), .Y(n528) );
  OA21X1_RVT U787 ( .A1(n646), .A2(n645), .A3(n644), .Y(n656) );
  NAND2X0_RVT U788 ( .A1(n844), .A2(n845), .Y(intadd_1_A_1_) );
  AO222X1_RVT U789 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[8]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[8]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[8]), 
        .A4(n911), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[8]), .A6(
        n911), .Y(n909) );
  NAND2X0_RVT U790 ( .A1(n172), .A2(n171), .Y(n1134) );
  INVX1_RVT U791 ( .A(n657), .Y(n655) );
  AO222X1_RVT U792 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[8]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[8]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[8]), 
        .A4(n430), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[8]), .A6(
        n430), .Y(n428) );
  OA21X1_RVT U793 ( .A1(n685), .A2(n684), .A3(n683), .Y(n695) );
  AO22X1_RVT U794 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[9]), 
        .A2(n1640), .A3(n958), .A4(n957), .Y(n963) );
  NAND2X0_RVT U795 ( .A1(n724), .A2(n725), .Y(n723) );
  OA21X1_RVT U796 ( .A1(n659), .A2(n658), .A3(n657), .Y(n669) );
  OA21X1_RVT U797 ( .A1(n811), .A2(n810), .A3(n837), .Y(n827) );
  INVX1_RVT U798 ( .A(n670), .Y(n668) );
  AO22X1_RVT U799 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[9]), 
        .A2(n1641), .A3(n1125), .A4(n1124), .Y(n1130) );
  OA21X1_RVT U800 ( .A1(n672), .A2(n671), .A3(n670), .Y(n682) );
  AO222X1_RVT U801 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[8]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[8]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[8]), 
        .A4(n365), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[8]), .A6(
        n365), .Y(n363) );
  NAND2X0_RVT U802 ( .A1(n111), .A2(n110), .Y(n1301) );
  INVX1_RVT U803 ( .A(n683), .Y(n681) );
  INVX0_RVT U804 ( .A(n766), .Y(n767) );
  NAND2X0_RVT U805 ( .A1(n697), .A2(n698), .Y(n696) );
  AO22X1_RVT U806 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[9]), 
        .A2(n1643), .A3(n1459), .A4(n1458), .Y(n1464) );
  NAND2X0_RVT U808 ( .A1(n684), .A2(n685), .Y(n683) );
  NAND2X0_RVT U809 ( .A1(n810), .A2(n811), .Y(n837) );
  INVX0_RVT U810 ( .A(n1286), .Y(n1283) );
  NAND2X0_RVT U811 ( .A1(n671), .A2(n672), .Y(n670) );
  INVX0_RVT U812 ( .A(n297), .Y(n317) );
  NAND2X0_RVT U813 ( .A1(n658), .A2(n659), .Y(n657) );
  NAND2X0_RVT U814 ( .A1(n645), .A2(n646), .Y(n644) );
  AO222X1_RVT U815 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[7]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[7]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[7]), 
        .A4(n367), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[7]), .A6(
        n367), .Y(n365) );
  AOI21X1_RVT U816 ( .A1(n778), .A2(n777), .A3(n770), .Y(n775) );
  AO222X1_RVT U817 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[7]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[7]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[7]), 
        .A4(n497), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[7]), .A6(
        n497), .Y(n495) );
  NAND2X0_RVT U818 ( .A1(n525), .A2(n526), .Y(n812) );
  NAND2X0_RVT U819 ( .A1(n632), .A2(n633), .Y(n631) );
  INVX0_RVT U820 ( .A(intadd_1_SUM_0_), .Y(n844) );
  AO21X1_RVT U821 ( .A1(n700), .A2(stage_regs_1__3__10_), .A3(n689), .Y(n698)
         );
  INVX0_RVT U822 ( .A(n952), .Y(n949) );
  NAND2X0_RVT U823 ( .A1(n531), .A2(n532), .Y(n530) );
  NAND2X0_RVT U824 ( .A1(n556), .A2(n557), .Y(n555) );
  OA221X1_RVT U825 ( .A1(n764), .A2(n765), .A3(n764), .A4(stage_regs_1__3__5_), 
        .A5(n768), .Y(n766) );
  NAND2X0_RVT U826 ( .A1(n752), .A2(n753), .Y(n751) );
  OAI21X1_RVT U827 ( .A1(n302), .A2(n301), .A3(n777), .Y(n315) );
  NAND2X0_RVT U829 ( .A1(n619), .A2(n620), .Y(n618) );
  AO222X1_RVT U830 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[7]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[7]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[7]), 
        .A4(n432), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[7]), .A6(
        n432), .Y(n430) );
  NAND2X0_RVT U831 ( .A1(n593), .A2(n594), .Y(n592) );
  NAND2X0_RVT U832 ( .A1(n544), .A2(n545), .Y(n543) );
  OA21X1_RVT U833 ( .A1(n311), .A2(n310), .A3(n309), .Y(intadd_0_B_1_) );
  AO21X1_RVT U834 ( .A1(n742), .A2(stage_regs_1__3__7_), .A3(n730), .Y(n739)
         );
  NAND2X0_RVT U835 ( .A1(n606), .A2(n607), .Y(n605) );
  NAND2X0_RVT U836 ( .A1(n580), .A2(n581), .Y(n579) );
  AO222X1_RVT U838 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[7]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[7]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[7]), 
        .A4(n913), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[7]), .A6(
        n913), .Y(n911) );
  NAND2X0_RVT U839 ( .A1(n568), .A2(n569), .Y(n567) );
  AO21X1_RVT U840 ( .A1(n728), .A2(stage_regs_1__3__8_), .A3(n716), .Y(n725)
         );
  INVX0_RVT U841 ( .A(n782), .Y(n309) );
  AO21X1_RVT U842 ( .A1(n758), .A2(stage_regs_1__3__6_), .A3(n744), .Y(n753)
         );
  AO222X1_RVT U843 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[6]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[6]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[6]), 
        .A4(n915), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[6]), .A6(
        n915), .Y(n913) );
  AO21X1_RVT U844 ( .A1(n596), .A2(stage_regs_1__3__18_), .A3(n585), .Y(n594)
         );
  NAND3X0_RVT U845 ( .A1(n78), .A2(n77), .A3(n76), .Y(n79) );
  NAND2X0_RVT U846 ( .A1(n302), .A2(n301), .Y(n777) );
  AO21X1_RVT U847 ( .A1(n558), .A2(stage_regs_1__3__21_), .A3(n548), .Y(n557)
         );
  AO21X1_RVT U848 ( .A1(n609), .A2(stage_regs_1__3__17_), .A3(n598), .Y(n607)
         );
  AO21X1_RVT U849 ( .A1(n546), .A2(stage_regs_1__3__22_), .A3(n536), .Y(n545)
         );
  NAND3X0_RVT U850 ( .A1(n200), .A2(n199), .A3(n198), .Y(n201) );
  AO22X1_RVT U851 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[7]), 
        .A2(n1634), .A3(n1281), .A4(n1280), .Y(n1286) );
  AO21X1_RVT U852 ( .A1(n793), .A2(n789), .A3(n299), .Y(n316) );
  AO21X1_RVT U853 ( .A1(n583), .A2(stage_regs_1__3__19_), .A3(n572), .Y(n581)
         );
  AO22X1_RVT U854 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[7]), 
        .A2(n1632), .A3(n947), .A4(n946), .Y(n952) );
  AO21X1_RVT U855 ( .A1(n570), .A2(stage_regs_1__3__20_), .A3(n560), .Y(n569)
         );
  AO21X1_RVT U856 ( .A1(n622), .A2(stage_regs_1__3__16_), .A3(n611), .Y(n620)
         );
  AO221X1_RVT U857 ( .A1(n824), .A2(n823), .A3(n822), .A4(n821), .A5(n820), 
        .Y(n843) );
  AO222X1_RVT U858 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[6]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[6]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[6]), 
        .A4(n369), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[6]), .A6(
        n369), .Y(n367) );
  AO21X1_RVT U859 ( .A1(n534), .A2(stage_regs_1__3__23_), .A3(n518), .Y(n532)
         );
  AO22X1_RVT U860 ( .A1(n314), .A2(n313), .A3(n312), .A4(n727), .Y(
        intadd_0_A_0_) );
  AO22X1_RVT U861 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[7]), 
        .A2(n1635), .A3(n1448), .A4(n1447), .Y(n1453) );
  AO21X1_RVT U862 ( .A1(stage_regs_1__3__24_), .A2(n524), .A3(n523), .Y(n526)
         );
  AO21X1_RVT U863 ( .A1(n635), .A2(stage_regs_1__3__15_), .A3(n624), .Y(n633)
         );
  NAND3X0_RVT U864 ( .A1(n139), .A2(n138), .A3(n137), .Y(n140) );
  AO222X1_RVT U865 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[6]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[6]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[6]), 
        .A4(n499), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[6]), .A6(
        n499), .Y(n497) );
  AO21X1_RVT U866 ( .A1(n674), .A2(stage_regs_1__3__12_), .A3(n663), .Y(n672)
         );
  AO21X1_RVT U867 ( .A1(stage_regs_1__3__25_), .A2(n821), .A3(n809), .Y(n811)
         );
  AO222X1_RVT U868 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[6]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[6]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[6]), 
        .A4(n434), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[6]), .A6(
        n434), .Y(n432) );
  AO21X1_RVT U869 ( .A1(n661), .A2(stage_regs_1__3__13_), .A3(n650), .Y(n659)
         );
  AO22X1_RVT U870 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[7]), 
        .A2(n1633), .A3(n1114), .A4(n1113), .Y(n1119) );
  AO21X1_RVT U871 ( .A1(n687), .A2(stage_regs_1__3__11_), .A3(n676), .Y(n685)
         );
  NAND3X0_RVT U872 ( .A1(n261), .A2(n260), .A3(n259), .Y(n262) );
  AO21X1_RVT U873 ( .A1(n648), .A2(stage_regs_1__3__14_), .A3(n637), .Y(n646)
         );
  NBUFFX2_RVT U874 ( .A(n41), .Y(n18) );
  INVX0_RVT U875 ( .A(n312), .Y(n314) );
  AND3X1_RVT U876 ( .A1(n1437), .A2(n1440), .A3(n1438), .Y(n1442) );
  AO222X1_RVT U877 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[5]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[5]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[5]), 
        .A4(n371), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[5]), .A6(
        n371), .Y(n369) );
  OA21X1_RVT U879 ( .A1(n861), .A2(n801), .A3(n800), .Y(n804) );
  AND3X1_RVT U880 ( .A1(n1270), .A2(n1273), .A3(n1271), .Y(n1275) );
  OA221X1_RVT U881 ( .A1(n307), .A2(n727), .A3(n307), .A4(n308), .A5(n311), 
        .Y(n782) );
  AO222X1_RVT U882 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[5]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[5]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[5]), 
        .A4(n501), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[5]), .A6(
        n501), .Y(n499) );
  AO21X1_RVT U883 ( .A1(n713), .A2(n308), .A3(n307), .Y(n301) );
  INVX0_RVT U884 ( .A(n790), .Y(n299) );
  OR2X1_RVT U885 ( .A1(n846), .A2(n850), .Y(n799) );
  INVX0_RVT U886 ( .A(n846), .Y(n847) );
  AO21X1_RVT U888 ( .A1(n852), .A2(n851), .A3(n850), .Y(n853) );
  NAND3X0_RVT U889 ( .A1(n136), .A2(n135), .A3(n134), .Y(n137) );
  OR2X1_RVT U890 ( .A1(n700), .A2(n727), .Y(n701) );
  AND3X1_RVT U892 ( .A1(n1103), .A2(n1106), .A3(n1104), .Y(n1108) );
  AO22X1_RVT U893 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[6]), 
        .A2(n1630), .A3(n57), .A4(n80), .Y(n1281) );
  AO22X1_RVT U895 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[6]), 
        .A2(n1628), .A3(n179), .A4(n202), .Y(n947) );
  NAND3X0_RVT U896 ( .A1(n258), .A2(n257), .A3(n256), .Y(n259) );
  AO22X1_RVT U897 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[6]), 
        .A2(n1631), .A3(n240), .A4(n263), .Y(n1448) );
  AO222X1_RVT U898 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[5]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[5]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[5]), 
        .A4(n917), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[5]), .A6(
        n917), .Y(n915) );
  AO222X1_RVT U899 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[5]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[5]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[5]), 
        .A4(n436), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[5]), .A6(
        n436), .Y(n434) );
  AND3X1_RVT U900 ( .A1(n936), .A2(n939), .A3(n937), .Y(n941) );
  NAND3X0_RVT U901 ( .A1(n75), .A2(n74), .A3(n73), .Y(n76) );
  NAND3X0_RVT U902 ( .A1(n197), .A2(n196), .A3(n195), .Y(n198) );
  INVX2_RVT U903 ( .A(n44), .Y(n1742) );
  INVX2_RVT U904 ( .A(reset), .Y(n1755) );
  INVX2_RVT U905 ( .A(n48), .Y(n1749) );
  INVX2_RVT U906 ( .A(reset), .Y(n1743) );
  INVX2_RVT U907 ( .A(n44), .Y(n1746) );
  INVX2_RVT U908 ( .A(reset), .Y(n1756) );
  INVX2_RVT U909 ( .A(n46), .Y(n1752) );
  INVX2_RVT U910 ( .A(n46), .Y(n1751) );
  INVX2_RVT U911 ( .A(n48), .Y(n1754) );
  INVX2_RVT U912 ( .A(n46), .Y(n1750) );
  INVX2_RVT U913 ( .A(n48), .Y(n1753) );
  INVX2_RVT U914 ( .A(n43), .Y(n1748) );
  INVX2_RVT U915 ( .A(n43), .Y(n1747) );
  INVX2_RVT U916 ( .A(n44), .Y(n1745) );
  AO221X1_RVT U917 ( .A1(n791), .A2(n792), .A3(n791), .A4(n796), .A5(n859), 
        .Y(n790) );
  NAND2X0_RVT U918 ( .A1(n298), .A2(n308), .Y(n312) );
  INVX0_RVT U919 ( .A(n313), .Y(n727) );
  NAND2X0_RVT U920 ( .A1(n298), .A2(n791), .Y(n307) );
  AO222X1_RVT U921 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[4]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[4]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[4]), 
        .A4(n919), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[4]), .A6(
        n919), .Y(n917) );
  OAI21X1_RVT U922 ( .A1(stage_regs_1__3__2_), .A2(n794), .A3(n793), .Y(n801)
         );
  NAND3X0_RVT U923 ( .A1(n133), .A2(n132), .A3(n131), .Y(n134) );
  OA222X1_RVT U924 ( .A1(stage_regs_1__3__0_), .A2(n860), .A3(n1606), .A4(n861), .A5(n852), .A6(n797), .Y(n850) );
  INVX0_RVT U925 ( .A(n59), .Y(n60) );
  AO221X1_RVT U926 ( .A1(intadd_1_B_0_), .A2(n852), .A3(intadd_1_B_0_), .A4(
        n862), .A5(n798), .Y(n849) );
  INVX0_RVT U927 ( .A(n181), .Y(n182) );
  AO222X1_RVT U928 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[4]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[4]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[4]), 
        .A4(n503), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[4]), .A6(
        n503), .Y(n501) );
  AO222X1_RVT U929 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[4]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[4]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[4]), 
        .A4(n438), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[4]), .A6(
        n438), .Y(n436) );
  OA21X1_RVT U930 ( .A1(n797), .A2(n794), .A3(n778), .Y(n781) );
  OA21X1_RVT U931 ( .A1(stage_regs_1__3__1_), .A2(n796), .A3(n800), .Y(n846)
         );
  OR2X1_RVT U932 ( .A1(n859), .A2(n758), .Y(n756) );
  INVX0_RVT U933 ( .A(n242), .Y(n243) );
  NAND3X0_RVT U934 ( .A1(n72), .A2(n71), .A3(n70), .Y(n73) );
  AO222X1_RVT U935 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[4]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[4]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[4]), 
        .A4(n373), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[4]), .A6(
        n373), .Y(n371) );
  AO22X1_RVT U936 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[5]), 
        .A2(n1626), .A3(n59), .A4(n74), .Y(n57) );
  OR2X1_RVT U937 ( .A1(n713), .A2(n687), .Y(n688) );
  AO22X1_RVT U938 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[5]), 
        .A2(n1627), .A3(n242), .A4(n257), .Y(n240) );
  NAND3X0_RVT U939 ( .A1(n255), .A2(n254), .A3(n253), .Y(n256) );
  NAND3X0_RVT U940 ( .A1(n194), .A2(n193), .A3(n192), .Y(n195) );
  INVX0_RVT U941 ( .A(n120), .Y(n121) );
  INVX0_RVT U942 ( .A(n22), .Y(n43) );
  INVX0_RVT U943 ( .A(n22), .Y(n44) );
  NBUFFX2_RVT U944 ( .A(n22), .Y(n41) );
  INVX0_RVT U945 ( .A(n22), .Y(n46) );
  INVX0_RVT U947 ( .A(n22), .Y(n48) );
  INVX0_RVT U948 ( .A(reset), .Y(n17) );
  INVX0_RVT U949 ( .A(reset), .Y(n16) );
  OR2X1_RVT U950 ( .A1(n570), .A2(n660), .Y(n571) );
  INVX0_RVT U951 ( .A(n236), .Y(n237) );
  AO22X1_RVT U952 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[4]), 
        .A2(n1620), .A3(n175), .A4(n197), .Y(n181) );
  INVX0_RVT U953 ( .A(n848), .Y(n851) );
  AO22X1_RVT U954 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[4]), 
        .A2(n1623), .A3(n236), .A4(n258), .Y(n242) );
  OR2X1_RVT U955 ( .A1(n798), .A2(n728), .Y(n729) );
  NAND3X0_RVT U956 ( .A1(n130), .A2(n129), .A3(n128), .Y(n131) );
  AO222X1_RVT U957 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[3]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[3]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[3]), 
        .A4(n375), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[3]), .A6(
        n375), .Y(n373) );
  OR2X1_RVT U958 ( .A1(n583), .A2(n673), .Y(n584) );
  INVX0_RVT U959 ( .A(n856), .Y(n852) );
  AO221X1_RVT U960 ( .A1(stage_regs_1__3__18_), .A2(stage_regs_1__3__14_), 
        .A3(stage_regs_1__3__18_), .A4(n1741), .A5(n596), .Y(n606) );
  AND3X1_RVT U961 ( .A1(butterfly_out_wires[224]), .A2(n1435), .A3(n1433), .Y(
        n1437) );
  AO221X1_RVT U962 ( .A1(stage_regs_1__3__11_), .A2(stage_regs_1__3__7_), .A3(
        stage_regs_1__3__11_), .A4(n1741), .A5(n687), .Y(n697) );
  AO221X1_RVT U963 ( .A1(stage_regs_1__3__17_), .A2(stage_regs_1__3__13_), 
        .A3(stage_regs_1__3__17_), .A4(n1741), .A5(n609), .Y(n619) );
  AO221X1_RVT U964 ( .A1(stage_regs_1__3__7_), .A2(stage_regs_1__3__3_), .A3(
        stage_regs_1__3__7_), .A4(n1741), .A5(n742), .Y(n752) );
  AO222X1_RVT U965 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[3]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[3]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[3]), 
        .A4(n440), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[3]), .A6(
        n440), .Y(n438) );
  OR2X1_RVT U966 ( .A1(n661), .A2(n754), .Y(n662) );
  OR2X1_RVT U967 ( .A1(n596), .A2(n686), .Y(n597) );
  OR2X1_RVT U968 ( .A1(n714), .A2(n741), .Y(n715) );
  AO222X1_RVT U969 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[3]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[3]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[3]), 
        .A4(n505), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[3]), .A6(
        n505), .Y(n503) );
  NAND2X0_RVT U970 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__6_), .Y(n313) );
  AO221X1_RVT U971 ( .A1(stage_regs_1__3__16_), .A2(stage_regs_1__3__12_), 
        .A3(stage_regs_1__3__16_), .A4(n1741), .A5(n622), .Y(n632) );
  OR2X1_RVT U972 ( .A1(n674), .A2(n755), .Y(n675) );
  INVX0_RVT U973 ( .A(n861), .Y(n860) );
  INVX0_RVT U974 ( .A(n114), .Y(n115) );
  AO221X1_RVT U975 ( .A1(stage_regs_1__3__12_), .A2(stage_regs_1__3__8_), .A3(
        stage_regs_1__3__12_), .A4(n1741), .A5(n674), .Y(n684) );
  AO221X1_RVT U976 ( .A1(stage_regs_1__3__8_), .A2(stage_regs_1__3__4_), .A3(
        stage_regs_1__3__8_), .A4(n1741), .A5(n728), .Y(n738) );
  OR2X1_RVT U977 ( .A1(n609), .A2(n699), .Y(n610) );
  OR2X1_RVT U978 ( .A1(n648), .A2(n740), .Y(n649) );
  AND2X1_RVT U979 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__2_), .Y(n859) );
  AO221X1_RVT U980 ( .A1(stage_regs_1__3__15_), .A2(stage_regs_1__3__11_), 
        .A3(stage_regs_1__3__15_), .A4(n1741), .A5(n635), .Y(n645) );
  AO221X1_RVT U981 ( .A1(stage_regs_1__3__10_), .A2(stage_regs_1__3__6_), .A3(
        stage_regs_1__3__10_), .A4(n1741), .A5(n700), .Y(n710) );
  OR2X1_RVT U982 ( .A1(n622), .A2(n712), .Y(n623) );
  AO222X1_RVT U983 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[3]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[3]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[3]), 
        .A4(n921), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[3]), .A6(
        n921), .Y(n919) );
  INVX0_RVT U984 ( .A(n175), .Y(n176) );
  AO221X1_RVT U985 ( .A1(stage_regs_1__3__9_), .A2(stage_regs_1__3__5_), .A3(
        stage_regs_1__3__9_), .A4(n1741), .A5(n714), .Y(n724) );
  AO221X1_RVT U986 ( .A1(stage_regs_1__3__14_), .A2(stage_regs_1__3__10_), 
        .A3(stage_regs_1__3__14_), .A4(n1741), .A5(n648), .Y(n658) );
  AO22X1_RVT U987 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[4]), 
        .A2(n1622), .A3(n53), .A4(n75), .Y(n59) );
  AO221X1_RVT U988 ( .A1(stage_regs_1__3__13_), .A2(stage_regs_1__3__9_), .A3(
        stage_regs_1__3__13_), .A4(n1741), .A5(n661), .Y(n671) );
  OR2X1_RVT U989 ( .A1(n635), .A2(n726), .Y(n636) );
  AND3X1_RVT U990 ( .A1(butterfly_out_wires[96]), .A2(n1101), .A3(n1099), .Y(
        n1103) );
  OA221X1_RVT U991 ( .A1(intadd_0_B_0_), .A2(n306), .A3(intadd_0_B_0_), .A4(
        n305), .A5(n304), .Y(intadd_1_CI) );
  NAND3X0_RVT U992 ( .A1(n191), .A2(n190), .A3(n189), .Y(n192) );
  AND3X1_RVT U993 ( .A1(butterfly_out_wires[160]), .A2(n1268), .A3(n1266), .Y(
        n1270) );
  INVX0_RVT U994 ( .A(n802), .Y(n794) );
  OA21X1_RVT U995 ( .A1(stage_regs_1__3__4_), .A2(n295), .A3(n778), .Y(n311)
         );
  AND2X1_RVT U997 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__27_), .Y(n520) );
  OR2X1_RVT U998 ( .A1(n524), .A2(n608), .Y(n517) );
  AO22X1_RVT U999 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[4]), 
        .A2(n1621), .A3(n114), .A4(n136), .Y(n120) );
  AND2X1_RVT U1000 ( .A1(n856), .A2(n802), .Y(n803) );
  AND2X1_RVT U1001 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__26_), .Y(n533) );
  INVX0_RVT U1002 ( .A(n304), .Y(n796) );
  AND2X1_RVT U1003 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__28_), .Y(n519) );
  AO221X1_RVT U1004 ( .A1(stage_regs_1__3__20_), .A2(stage_regs_1__3__16_), 
        .A3(stage_regs_1__3__20_), .A4(n1741), .A5(n570), .Y(n580) );
  OR2X1_RVT U1005 ( .A1(n534), .A2(n621), .Y(n535) );
  AND2X1_RVT U1006 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__29_), .Y(n813) );
  NAND3X0_RVT U1007 ( .A1(n252), .A2(n251), .A3(n250), .Y(n253) );
  AND2X1_RVT U1008 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__7_), .Y(n713) );
  NAND3X0_RVT U1009 ( .A1(stage_regs_1__3__0_), .A2(mode_pipe[1]), .A3(
        stage_regs_1__3__1_), .Y(n298) );
  NAND3X0_RVT U1010 ( .A1(n69), .A2(n68), .A3(n67), .Y(n70) );
  OR2X1_RVT U1011 ( .A1(n558), .A2(n647), .Y(n559) );
  OR2X1_RVT U1013 ( .A1(n546), .A2(n634), .Y(n547) );
  OR2X1_RVT U1014 ( .A1(n797), .A2(n742), .Y(n743) );
  AO221X1_RVT U1015 ( .A1(stage_regs_1__3__19_), .A2(stage_regs_1__3__15_), 
        .A3(stage_regs_1__3__19_), .A4(n1741), .A5(n583), .Y(n593) );
  AND3X1_RVT U1016 ( .A1(butterfly_out_wires[64]), .A2(n934), .A3(n932), .Y(
        n936) );
  AND2X1_RVT U1017 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__30_), .Y(n830) );
  NAND3X0_RVT U1018 ( .A1(stage_regs_1__3__1_), .A2(stage_regs_1__3__3_), .A3(
        n19), .Y(n800) );
  AO22X1_RVT U1019 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[3]), 
        .A2(n1616), .A3(n177), .A4(n191), .Y(n175) );
  AO222X1_RVT U1020 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[2]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[2]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[2]), 
        .A4(n442), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[2]), .A6(
        n442), .Y(n440) );
  NAND3X0_RVT U1021 ( .A1(stage_regs_1__3__0_), .A2(stage_regs_1__3__2_), .A3(
        n19), .Y(intadd_1_B_0_) );
  NAND3X0_RVT U1022 ( .A1(stage_regs_1__3__2_), .A2(stage_regs_1__3__4_), .A3(
        n21), .Y(n793) );
  AO22X1_RVT U1024 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[3]), 
        .A2(n1617), .A3(n116), .A4(n130), .Y(n114) );
  AO21X1_RVT U1025 ( .A1(stage_regs_1__3__30_), .A2(n21), .A3(n834), .Y(n836)
         );
  OA21X1_RVT U1027 ( .A1(stage_regs_1__3__27_), .A2(n816), .A3(n839), .Y(n817)
         );
  AO22X1_RVT U1028 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[3]), 
        .A2(n1618), .A3(n55), .A4(n69), .Y(n53) );
  NAND2X0_RVT U1029 ( .A1(stage_regs_1__3__1_), .A2(n19), .Y(n861) );
  AO222X1_RVT U1030 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[2]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[2]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[2]), 
        .A4(n923), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[2]), .A6(
        n923), .Y(n921) );
  AO222X1_RVT U1031 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[2]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[2]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[2]), 
        .A4(n377), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[2]), .A6(
        n377), .Y(n375) );
  INVX0_RVT U1032 ( .A(n116), .Y(n117) );
  AO22X1_RVT U1033 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[3]), 
        .A2(n1619), .A3(n238), .A4(n252), .Y(n236) );
  INVX0_RVT U1034 ( .A(n238), .Y(n239) );
  INVX0_RVT U1035 ( .A(n55), .Y(n56) );
  NAND3X0_RVT U1036 ( .A1(stage_regs_1__3__0_), .A2(stage_regs_1__3__1_), .A3(
        n20), .Y(n848) );
  INVX0_RVT U1037 ( .A(n177), .Y(n178) );
  AO222X1_RVT U1038 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[2]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[2]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[2]), 
        .A4(n507), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[2]), .A6(
        n507), .Y(n505) );
  NBUFFX8_RVT U1039 ( .A(n11), .Y(n22) );
  INVX0_RVT U1041 ( .A(n210), .Y(n184) );
  INVX0_RVT U1042 ( .A(n173), .Y(n188) );
  INVX0_RVT U1043 ( .A(n186), .Y(n205) );
  NAND2X0_RVT U1044 ( .A1(n37), .A2(n38), .Y(n832) );
  OR2X1_RVT U1045 ( .A1(n290), .A2(n289), .Y(n30) );
  AO222X1_RVT U1046 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[1]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[1]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[1]), 
        .A4(n927), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[1]), .A6(
        n927), .Y(n923) );
  INVX0_RVT U1047 ( .A(n271), .Y(n245) );
  AO22X1_RVT U1048 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[2]), 
        .A2(n1612), .A3(n173), .A4(n189), .Y(n177) );
  INVX0_RVT U1049 ( .A(n234), .Y(n249) );
  INVX0_RVT U1050 ( .A(butterfly_out_wires[224]), .Y(n1431) );
  AO22X1_RVT U1051 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[2]), 
        .A2(n1615), .A3(n234), .A4(n250), .Y(n238) );
  AO222X1_RVT U1052 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[1]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[1]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[1]), 
        .A4(n446), .A5(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[1]), .A6(
        n446), .Y(n442) );
  INVX0_RVT U1053 ( .A(n247), .Y(n266) );
  OR2X1_RVT U1054 ( .A1(n229), .A2(n228), .Y(n32) );
  AO22X1_RVT U1055 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[2]), 
        .A2(n1613), .A3(n112), .A4(n128), .Y(n116) );
  NAND2X0_RVT U1056 ( .A1(stage_regs_1__3__27_), .A2(n816), .Y(n839) );
  OR2X1_RVT U1057 ( .A1(n168), .A2(n167), .Y(n34) );
  INVX0_RVT U1058 ( .A(butterfly_out_wires[64]), .Y(n930) );
  AND2X1_RVT U1059 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N5), .A2(n741), 
        .Y(intadd_0_B_0_) );
  INVX0_RVT U1060 ( .A(n125), .Y(n144) );
  INVX0_RVT U1061 ( .A(butterfly_out_wires[160]), .Y(n1264) );
  OR2X1_RVT U1062 ( .A1(n218), .A2(n217), .Y(n31) );
  OR2X1_RVT U1063 ( .A1(n279), .A2(n278), .Y(n29) );
  INVX0_RVT U1064 ( .A(n149), .Y(n123) );
  AO22X1_RVT U1065 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[2]), 
        .A2(n1614), .A3(n51), .A4(n67), .Y(n55) );
  INVX0_RVT U1066 ( .A(mode_pipe[1]), .Y(n20) );
  INVX0_RVT U1067 ( .A(butterfly_out_wires[96]), .Y(n1097) );
  INVX0_RVT U1068 ( .A(n112), .Y(n127) );
  INVX0_RVT U1069 ( .A(n51), .Y(n66) );
  OR2X1_RVT U1070 ( .A1(n107), .A2(n106), .Y(n36) );
  OR2X1_RVT U1071 ( .A1(n96), .A2(n95), .Y(n35) );
  INVX0_RVT U1072 ( .A(n64), .Y(n83) );
  INVX0_RVT U1073 ( .A(mode_pipe[1]), .Y(n19) );
  OR2X1_RVT U1074 ( .A1(n157), .A2(n156), .Y(n33) );
  AO222X1_RVT U1075 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[1]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[1]), 
        .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[1]), 
        .A4(n511), .A5(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[1]), .A6(
        n511), .Y(n507) );
  INVX0_RVT U1077 ( .A(n88), .Y(n62) );
  AO222X1_RVT U1078 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[1]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[1]), 
        .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[1]), 
        .A4(n381), .A5(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[1]), .A6(
        n381), .Y(n377) );
  NAND2X0_RVT U1079 ( .A1(n1220), .A2(n461), .Y(n1216) );
  OA21X1_RVT U1080 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[0]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[0]), 
        .A3(n925), .Y(butterfly_out_wires[64]) );
  INVX0_RVT U1081 ( .A(n444), .Y(n446) );
  NAND2X0_RVT U1082 ( .A1(n189), .A2(n187), .Y(n922) );
  INVX0_RVT U1083 ( .A(n468), .Y(n157) );
  NAND2X0_RVT U1084 ( .A1(n1447), .A2(n265), .Y(n366) );
  NAND2X0_RVT U1085 ( .A1(n1370), .A2(n403), .Y(n1364) );
  NAND2X0_RVT U1086 ( .A1(n1209), .A2(n466), .Y(n1205) );
  INVX0_RVT U1087 ( .A(n865), .Y(n229) );
  NAND2X0_RVT U1088 ( .A1(n880), .A2(n879), .Y(n1043) );
  NAND2X0_RVT U1089 ( .A1(n1228), .A2(n459), .Y(n1221) );
  NAND2X0_RVT U1090 ( .A1(n1567), .A2(n327), .Y(n1563) );
  NAND2X0_RVT U1091 ( .A1(n263), .A2(n260), .Y(n368) );
  NAND2X0_RVT U1092 ( .A1(n191), .A2(n194), .Y(n920) );
  INVX0_RVT U1093 ( .A(n757), .Y(n765) );
  NAND2X0_RVT U1094 ( .A1(n1028), .A2(n886), .Y(n1025) );
  NAND2X0_RVT U1095 ( .A1(n464), .A2(n463), .Y(n1210) );
  NAND2X0_RVT U1096 ( .A1(n1543), .A2(n336), .Y(n1539) );
  INVX0_RVT U1097 ( .A(n924), .Y(n926) );
  NAND2X0_RVT U1098 ( .A1(n1503), .A2(n348), .Y(n1500) );
  INVX0_RVT U1099 ( .A(n779), .Y(n770) );
  INVX0_RVT U1100 ( .A(n866), .Y(n227) );
  NAND2X0_RVT U1101 ( .A1(n1233), .A2(n457), .Y(n1229) );
  NAND2X0_RVT U1102 ( .A1(n1042), .A2(n882), .Y(n1038) );
  NAND2X0_RVT U1103 ( .A1(n1537), .A2(n338), .Y(n1531) );
  NAND2X0_RVT U1104 ( .A1(n197), .A2(n193), .Y(n918) );
  NAND2X0_RVT U1105 ( .A1(n1023), .A2(n888), .Y(n1017) );
  INVX0_RVT U1106 ( .A(n509), .Y(n511) );
  NAND2X0_RVT U1107 ( .A1(n1490), .A2(n352), .Y(n1487) );
  NAND2X0_RVT U1108 ( .A1(n334), .A2(n333), .Y(n1544) );
  NAND2X0_RVT U1109 ( .A1(n1524), .A2(n342), .Y(n1518) );
  NAND2X0_RVT U1110 ( .A1(n1036), .A2(n884), .Y(n1030) );
  NAND2X0_RVT U1111 ( .A1(n1452), .A2(n364), .Y(n1449) );
  NAND2X0_RVT U1112 ( .A1(n1529), .A2(n340), .Y(n1526) );
  NAND3X0_RVT U1113 ( .A1(n871), .A2(n873), .A3(n875), .Y(n223) );
  NAND2X0_RVT U1114 ( .A1(n1241), .A2(n455), .Y(n1234) );
  NAND2X0_RVT U1115 ( .A1(n196), .A2(n200), .Y(n916) );
  NAND2X0_RVT U1116 ( .A1(n1015), .A2(n890), .Y(n1012) );
  NAND3X0_RVT U1117 ( .A1(n484), .A2(n482), .A3(n480), .Y(n149) );
  INVX0_RVT U1118 ( .A(n296), .Y(n755) );
  NAND2X0_RVT U1119 ( .A1(n1249), .A2(n453), .Y(n1242) );
  NAND2X0_RVT U1120 ( .A1(n1554), .A2(n331), .Y(n1550) );
  NAND2X0_RVT U1121 ( .A1(n202), .A2(n199), .Y(n914) );
  NAND2X0_RVT U1122 ( .A1(n1010), .A2(n892), .Y(n1004) );
  NAND2X0_RVT U1123 ( .A1(n863), .A2(n306), .Y(n308) );
  NAND2X0_RVT U1124 ( .A1(n1575), .A2(n325), .Y(n1568) );
  NAND2X0_RVT U1125 ( .A1(n1002), .A2(n894), .Y(n999) );
  NAND2X0_RVT U1126 ( .A1(n451), .A2(n450), .Y(n1250) );
  INVX0_RVT U1127 ( .A(n305), .Y(n741) );
  NAND2X0_RVT U1128 ( .A1(n1583), .A2(n323), .Y(n1576) );
  NAND2X0_RVT U1129 ( .A1(n1458), .A2(n362), .Y(n1454) );
  NAND2X0_RVT U1130 ( .A1(n1485), .A2(n354), .Y(n1479) );
  INVX0_RVT U1131 ( .A(n855), .Y(n797) );
  NAND2X0_RVT U1132 ( .A1(n946), .A2(n204), .Y(n912) );
  INVX0_RVT U1133 ( .A(n864), .Y(n862) );
  NAND2X0_RVT U1134 ( .A1(n997), .A2(n896), .Y(n991) );
  NAND2X0_RVT U1135 ( .A1(n1260), .A2(n449), .Y(n1252) );
  INVX0_RVT U1136 ( .A(n884), .Y(n218) );
  INVX0_RVT U1137 ( .A(n306), .Y(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N5) );
  NAND2X0_RVT U1138 ( .A1(n321), .A2(n320), .Y(n1584) );
  NAND3X0_RVT U1139 ( .A1(n892), .A2(n890), .A3(n888), .Y(n215) );
  NAND2X0_RVT U1140 ( .A1(n989), .A2(n898), .Y(n986) );
  NAND2X0_RVT U1141 ( .A1(n1516), .A2(n344), .Y(n1513) );
  NAND2X0_RVT U1142 ( .A1(n1463), .A2(n360), .Y(n1460) );
  INVX0_RVT U1143 ( .A(n379), .Y(n381) );
  INVX0_RVT U1144 ( .A(n449), .Y(n168) );
  NAND3X0_RVT U1145 ( .A1(n900), .A2(n898), .A3(n896), .Y(n210) );
  NAND2X0_RVT U1146 ( .A1(n984), .A2(n900), .Y(n978) );
  AO222X1_RVT U1147 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[1]), 
        .A2(n1598), .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[1]), 
        .A4(n113), .A5(n1598), .A6(n113), .Y(n112) );
  NAND2X0_RVT U1148 ( .A1(n951), .A2(n910), .Y(n948) );
  NAND2X0_RVT U1149 ( .A1(n1562), .A2(n329), .Y(n1555) );
  INVX0_RVT U1150 ( .A(n450), .Y(n166) );
  NAND2X0_RVT U1151 ( .A1(n976), .A2(n902), .Y(n973) );
  NAND2X0_RVT U1152 ( .A1(n1472), .A2(n358), .Y(n1465) );
  NAND2X0_RVT U1153 ( .A1(n1594), .A2(n319), .Y(n1586) );
  NAND2X0_RVT U1154 ( .A1(n971), .A2(n904), .Y(n964) );
  AO222X1_RVT U1155 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[1]), 
        .A2(n1601), .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[1]), 
        .A4(n174), .A5(n1601), .A6(n174), .Y(n173) );
  NAND3X0_RVT U1156 ( .A1(n455), .A2(n457), .A3(n459), .Y(n162) );
  NAND3X0_RVT U1157 ( .A1(n492), .A2(n490), .A3(n488), .Y(n125) );
  NAND3X0_RVT U1158 ( .A1(n476), .A2(n474), .A3(n472), .Y(n154) );
  NAND2X0_RVT U1159 ( .A1(n1477), .A2(n356), .Y(n1474) );
  NAND2X0_RVT U1160 ( .A1(n1511), .A2(n346), .Y(n1505) );
  NAND2X0_RVT U1161 ( .A1(n962), .A2(n906), .Y(n959) );
  NAND2X0_RVT U1162 ( .A1(n957), .A2(n908), .Y(n953) );
  NAND3X0_RVT U1163 ( .A1(n908), .A2(n906), .A3(n904), .Y(n186) );
  AO222X1_RVT U1164 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[1]), 
        .A2(n1603), .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[1]), 
        .A4(n235), .A5(n1603), .A6(n235), .Y(n234) );
  INVX0_RVT U1165 ( .A(n823), .Y(n821) );
  NAND2X0_RVT U1166 ( .A1(n67), .A2(n65), .Y(n441) );
  NAND2X0_RVT U1167 ( .A1(n69), .A2(n72), .Y(n439) );
  NAND2X0_RVT U1168 ( .A1(n1113), .A2(n143), .Y(n496) );
  INVX0_RVT U1169 ( .A(n443), .Y(n445) );
  NAND2X0_RVT U1170 ( .A1(n141), .A2(n138), .Y(n498) );
  OA21X1_RVT U1171 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[0]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[0]), 
        .A3(n444), .Y(butterfly_out_wires[160]) );
  NAND2X0_RVT U1172 ( .A1(n75), .A2(n71), .Y(n437) );
  NAND2X0_RVT U1173 ( .A1(n74), .A2(n78), .Y(n435) );
  NAND2X0_RVT U1174 ( .A1(n1118), .A2(n494), .Y(n1115) );
  NAND2X0_RVT U1175 ( .A1(n135), .A2(n139), .Y(n500) );
  NAND2X0_RVT U1176 ( .A1(n1427), .A2(n384), .Y(n1419) );
  NAND3X0_RVT U1177 ( .A1(n362), .A2(n360), .A3(n358), .Y(n247) );
  NAND2X0_RVT U1178 ( .A1(n80), .A2(n77), .Y(n433) );
  INVX0_RVT U1179 ( .A(n403), .Y(n96) );
  NAND2X0_RVT U1180 ( .A1(n1124), .A2(n492), .Y(n1120) );
  NAND2X0_RVT U1181 ( .A1(n136), .A2(n132), .Y(n502) );
  NAND3X0_RVT U1182 ( .A1(n354), .A2(n352), .A3(n350), .Y(n271) );
  NAND2X0_RVT U1183 ( .A1(n1129), .A2(n490), .Y(n1126) );
  NAND3X0_RVT U1184 ( .A1(n419), .A2(n417), .A3(n415), .Y(n88) );
  NAND2X0_RVT U1185 ( .A1(n1280), .A2(n82), .Y(n431) );
  NAND2X0_RVT U1186 ( .A1(n386), .A2(n385), .Y(n1417) );
  INVX0_RVT U1187 ( .A(n338), .Y(n279) );
  NAND2X0_RVT U1188 ( .A1(n1138), .A2(n488), .Y(n1131) );
  AO222X1_RVT U1189 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[1]), 
        .A2(n1602), .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[1]), 
        .A4(n52), .A5(n1602), .A6(n52), .Y(n51) );
  NAND2X0_RVT U1190 ( .A1(n130), .A2(n133), .Y(n504) );
  NAND2X0_RVT U1191 ( .A1(n1285), .A2(n429), .Y(n1282) );
  NAND2X0_RVT U1192 ( .A1(n1143), .A2(n486), .Y(n1140) );
  NAND2X0_RVT U1193 ( .A1(n1416), .A2(n388), .Y(n1409) );
  NAND2X0_RVT U1194 ( .A1(n1291), .A2(n427), .Y(n1287) );
  NAND3X0_RVT U1195 ( .A1(n427), .A2(n425), .A3(n423), .Y(n64) );
  NAND2X0_RVT U1196 ( .A1(n1151), .A2(n484), .Y(n1145) );
  OA21X1_RVT U1197 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[0]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[0]), 
        .A3(n379), .Y(butterfly_out_wires[224]) );
  INVX0_RVT U1198 ( .A(n378), .Y(n380) );
  NAND2X0_RVT U1199 ( .A1(n128), .A2(n126), .Y(n506) );
  NAND2X0_RVT U1200 ( .A1(n1156), .A2(n482), .Y(n1153) );
  NAND3X0_RVT U1201 ( .A1(n346), .A2(n344), .A3(n342), .Y(n276) );
  NAND2X0_RVT U1202 ( .A1(n1296), .A2(n425), .Y(n1293) );
  NAND2X0_RVT U1203 ( .A1(n250), .A2(n248), .Y(n376) );
  NAND3X0_RVT U1204 ( .A1(n411), .A2(n409), .A3(n407), .Y(n93) );
  NAND2X0_RVT U1205 ( .A1(n1408), .A2(n390), .Y(n1401) );
  NAND2X0_RVT U1206 ( .A1(n1164), .A2(n480), .Y(n1158) );
  INVX0_RVT U1207 ( .A(n815), .Y(n814) );
  INVX0_RVT U1208 ( .A(n508), .Y(n510) );
  NAND2X0_RVT U1209 ( .A1(n252), .A2(n255), .Y(n374) );
  NAND3X0_RVT U1210 ( .A1(n390), .A2(n392), .A3(n394), .Y(n101) );
  NAND2X0_RVT U1211 ( .A1(n1305), .A2(n423), .Y(n1298) );
  NAND2X0_RVT U1212 ( .A1(n1169), .A2(n478), .Y(n1166) );
  NAND3X0_RVT U1213 ( .A1(n325), .A2(n327), .A3(n329), .Y(n284) );
  INVX0_RVT U1214 ( .A(n385), .Y(n105) );
  NAND2X0_RVT U1215 ( .A1(n1093), .A2(n865), .Y(n1085) );
  OA21X1_RVT U1216 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[0]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[0]), 
        .A3(n509), .Y(butterfly_out_wires[96]) );
  INVX0_RVT U1217 ( .A(n516), .Y(n582) );
  INVX0_RVT U1218 ( .A(n384), .Y(n107) );
  NAND2X0_RVT U1219 ( .A1(n1400), .A2(n392), .Y(n1396) );
  NAND2X0_RVT U1220 ( .A1(n1066), .A2(n873), .Y(n1062) );
  NAND2X0_RVT U1221 ( .A1(n1387), .A2(n396), .Y(n1383) );
  NAND2X0_RVT U1222 ( .A1(n1195), .A2(n470), .Y(n1192) );
  NAND2X0_RVT U1223 ( .A1(n1331), .A2(n415), .Y(n1325) );
  NAND2X0_RVT U1224 ( .A1(n257), .A2(n261), .Y(n370) );
  NAND2X0_RVT U1225 ( .A1(n1323), .A2(n417), .Y(n1320) );
  NAND2X0_RVT U1226 ( .A1(n1190), .A2(n472), .Y(n1184) );
  NAND2X0_RVT U1227 ( .A1(n1336), .A2(n413), .Y(n1333) );
  NAND2X0_RVT U1228 ( .A1(n1074), .A2(n871), .Y(n1067) );
  NAND2X0_RVT U1229 ( .A1(n1395), .A2(n394), .Y(n1388) );
  NAND2X0_RVT U1230 ( .A1(n399), .A2(n398), .Y(n1377) );
  NAND2X0_RVT U1231 ( .A1(n1061), .A2(n875), .Y(n1054) );
  NAND2X0_RVT U1232 ( .A1(n1344), .A2(n411), .Y(n1338) );
  NAND2X0_RVT U1233 ( .A1(n1318), .A2(n419), .Y(n1312) );
  INVX0_RVT U1234 ( .A(n319), .Y(n290) );
  NAND2X0_RVT U1235 ( .A1(n1349), .A2(n409), .Y(n1346) );
  NAND2X0_RVT U1236 ( .A1(n1182), .A2(n474), .Y(n1179) );
  NAND2X0_RVT U1237 ( .A1(n1082), .A2(n869), .Y(n1075) );
  NAND2X0_RVT U1238 ( .A1(n1376), .A2(n401), .Y(n1372) );
  NAND2X0_RVT U1239 ( .A1(n258), .A2(n254), .Y(n372) );
  NAND2X0_RVT U1240 ( .A1(n1177), .A2(n476), .Y(n1171) );
  INVX0_RVT U1241 ( .A(n822), .Y(n824) );
  NAND2X0_RVT U1242 ( .A1(n1498), .A2(n350), .Y(n1492) );
  NAND2X0_RVT U1243 ( .A1(n1203), .A2(n468), .Y(n1197) );
  INVX0_RVT U1244 ( .A(n320), .Y(n288) );
  NAND2X0_RVT U1245 ( .A1(n1357), .A2(n407), .Y(n1351) );
  NAND2X0_RVT U1246 ( .A1(n1362), .A2(n405), .Y(n1359) );
  INVX1_RVT U1247 ( .A(n521), .Y(n595) );
  NAND2X0_RVT U1248 ( .A1(n1310), .A2(n421), .Y(n1307) );
  NAND2X0_RVT U1249 ( .A1(n1053), .A2(n877), .Y(n1049) );
  INVX0_RVT U1250 ( .A(n925), .Y(n927) );
  NAND2X0_RVT U1251 ( .A1(n867), .A2(n866), .Y(n1083) );
  AND2X1_RVT U1253 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[31]), 
        .A2(n1600), .Y(n106) );
  OR2X1_RVT U1254 ( .A1(n1681), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[17]), 
        .Y(n1177) );
  AND2X1_RVT U1255 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__14_), .Y(n686) );
  OR2X1_RVT U1256 ( .A1(n1677), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[18]), 
        .Y(n1182) );
  OR2X1_RVT U1257 ( .A1(n1729), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[29]), 
        .Y(n867) );
  OR2X1_RVT U1258 ( .A1(n1709), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[24]), 
        .Y(n1220) );
  AND2X1_RVT U1259 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__20_), .Y(n608) );
  NAND2X0_RVT U1260 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[27]), 
        .A2(n1716), .Y(n871) );
  OR2X1_RVT U1261 ( .A1(n1722), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[26]), 
        .Y(n1400) );
  OR2X1_RVT U1262 ( .A1(n1725), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[28]), 
        .Y(n1082) );
  AND2X1_RVT U1263 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__15_), .Y(n673) );
  OR2X1_RVT U1264 ( .A1(n1716), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[27]), 
        .Y(n1074) );
  NAND2X0_RVT U1265 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[21]), 
        .A2(n1688), .Y(n884) );
  OR2X1_RVT U1266 ( .A1(n1623), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[4]), 
        .Y(n258) );
  OR2X1_RVT U1267 ( .A1(n1688), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[21]), 
        .Y(n1036) );
  OR2X1_RVT U1268 ( .A1(n1690), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[21]), 
        .Y(n1370) );
  NAND2X0_RVT U1269 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[23]), 
        .A2(n1698), .Y(n463) );
  OR2X1_RVT U1270 ( .A1(n1682), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[17]), 
        .Y(n1344) );
  OR2X1_RVT U1271 ( .A1(n1694), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[20]), 
        .Y(n1362) );
  OR2X1_RVT U1272 ( .A1(n1673), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19]), 
        .Y(n1190) );
  AND2X1_RVT U1273 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__19_), .Y(n621) );
  OR2X1_RVT U1274 ( .A1(n1698), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[23]), 
        .Y(n464) );
  NAND2X0_RVT U1275 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[26]), 
        .A2(n1720), .Y(n873) );
  AND2X1_RVT U1276 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__16_), .Y(n660) );
  NAND2X0_RVT U1277 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[21]), 
        .A2(n1690), .Y(n403) );
  NAND2X0_RVT U1278 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[22]), 
        .A2(n1700), .Y(n882) );
  OR2X1_RVT U1279 ( .A1(n1631), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[6]), 
        .Y(n263) );
  OR2X1_RVT U1280 ( .A1(n1720), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[26]), 
        .Y(n1066) );
  NAND2X0_RVT U1281 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[22]), 
        .A2(n1701), .Y(n466) );
  AND2X1_RVT U1282 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__17_), .Y(n647) );
  OR2X1_RVT U1283 ( .A1(n1674), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19]), 
        .Y(n1357) );
  OR2X1_RVT U1284 ( .A1(n1699), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[23]), 
        .Y(n880) );
  OR2X1_RVT U1285 ( .A1(n1693), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[20]), 
        .Y(n1195) );
  OR2X1_RVT U1286 ( .A1(n1712), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[25]), 
        .Y(n1061) );
  OR2X1_RVT U1287 ( .A1(n1627), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[5]), 
        .Y(n257) );
  AND2X1_RVT U1288 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[31]), 
        .A2(n1605), .Y(n289) );
  NAND2X0_RVT U1289 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[22]), 
        .A2(n1702), .Y(n401) );
  OR2X1_RVT U1290 ( .A1(n1689), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[21]), 
        .Y(n1203) );
  OR2X1_RVT U1291 ( .A1(n1678), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[18]), 
        .Y(n1349) );
  NAND2X0_RVT U1292 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[23]), 
        .A2(n1699), .Y(n879) );
  NAND2X0_RVT U1293 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[21]), 
        .A2(n1689), .Y(n468) );
  OR2X1_RVT U1294 ( .A1(n1708), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[24]), 
        .Y(n1053) );
  AND2X1_RVT U1295 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__18_), .Y(n634) );
  NAND2X0_RVT U1296 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[0]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[0]), 
        .Y(n925) );
  NAND2X0_RVT U1297 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[26]), 
        .A2(n1722), .Y(n392) );
  OR2X1_RVT U1298 ( .A1(n1654), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11]), 
        .Y(n1305) );
  OA22X1_RVT U1299 ( .A1(n1646), .A2(n1598), .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[1]), 
        .A4(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[1]), 
        .Y(n508) );
  OR2X1_RVT U1300 ( .A1(stage_regs_1__3__26_), .A2(n1741), .Y(n39) );
  OR2X1_RVT U1301 ( .A1(n1662), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[13]), 
        .Y(n1318) );
  OR2X1_RVT U1302 ( .A1(n1714), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[25]), 
        .Y(n1395) );
  OR2X1_RVT U1303 ( .A1(n1718), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27]), 
        .Y(n1408) );
  OR2X1_RVT U1304 ( .A1(n1650), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[10]), 
        .Y(n1296) );
  OR2X1_RVT U1305 ( .A1(n1741), .A2(n25), .Y(n40) );
  NAND2X0_RVT U1306 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27]), 
        .A2(n1718), .Y(n390) );
  OR2X1_RVT U1307 ( .A1(n1613), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[2]), 
        .Y(n128) );
  NAND3X0_RVT U1308 ( .A1(stage_regs_1__3__28_), .A2(n1741), .A3(
        stage_regs_1__3__26_), .Y(n38) );
  OR2X1_RVT U1309 ( .A1(n1642), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[9]), 
        .Y(n1291) );
  OR2X1_RVT U1310 ( .A1(n1727), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28]), 
        .Y(n1416) );
  OR2X1_RVT U1311 ( .A1(n1638), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[8]), 
        .Y(n1285) );
  OR2X1_RVT U1312 ( .A1(n1617), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[3]), 
        .Y(n130) );
  NAND2X0_RVT U1313 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[3]), 
        .A2(n1617), .Y(n133) );
  OR2X1_RVT U1314 ( .A1(n1634), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[7]), 
        .Y(n1280) );
  OR2X1_RVT U1315 ( .A1(n1731), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[29]), 
        .Y(n386) );
  OR2X1_RVT U1316 ( .A1(n1670), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[14]), 
        .Y(n1323) );
  OR2X1_RVT U1317 ( .A1(n1621), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[4]), 
        .Y(n136) );
  NAND2X0_RVT U1318 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[29]), 
        .A2(n1731), .Y(n385) );
  OR2X1_RVT U1319 ( .A1(n1630), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[6]), 
        .Y(n80) );
  NAND2X0_RVT U1320 ( .A1(stage_regs_1__3__29_), .A2(n1741), .Y(n822) );
  OR2X1_RVT U1321 ( .A1(n1710), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[24]), 
        .Y(n1387) );
  OR2X1_RVT U1322 ( .A1(n1735), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[30]), 
        .Y(n1427) );
  OR2X1_RVT U1323 ( .A1(n1625), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[5]), 
        .Y(n135) );
  OR2X1_RVT U1324 ( .A1(n1626), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[5]), 
        .Y(n74) );
  NAND2X0_RVT U1325 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[30]), 
        .A2(n1735), .Y(n384) );
  OR2X1_RVT U1326 ( .A1(n1622), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[4]), 
        .Y(n75) );
  OR2X1_RVT U1327 ( .A1(n1629), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[6]), 
        .Y(n141) );
  NAND2X0_RVT U1328 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[3]), 
        .A2(n1618), .Y(n72) );
  OR2X1_RVT U1329 ( .A1(n1618), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[3]), 
        .Y(n69) );
  OR2X1_RVT U1330 ( .A1(n1658), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[12]), 
        .Y(n1310) );
  OR2X1_RVT U1331 ( .A1(n1614), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[2]), 
        .Y(n67) );
  OR2X1_RVT U1332 ( .A1(n1633), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[7]), 
        .Y(n1113) );
  OA22X1_RVT U1333 ( .A1(n1645), .A2(n1602), .A3(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[1]), 
        .A4(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[1]), 
        .Y(n443) );
  OR2X1_RVT U1334 ( .A1(n1666), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15]), 
        .Y(n1331) );
  NAND2X0_RVT U1335 ( .A1(stage_regs_1__3__27_), .A2(n1741), .Y(n823) );
  NAND2X0_RVT U1336 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[0]), .A2(
        n1611), .Y(n235) );
  OR2X1_RVT U1337 ( .A1(n1637), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[8]), 
        .Y(n1118) );
  OR2X1_RVT U1338 ( .A1(n1641), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[9]), 
        .Y(n1124) );
  OR2X1_RVT U1339 ( .A1(n1649), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[10]), 
        .Y(n1129) );
  NAND2X0_RVT U1340 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[0]), .A2(
        n1610), .Y(n52) );
  OR2X1_RVT U1341 ( .A1(n1653), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11]), 
        .Y(n1138) );
  OR2X1_RVT U1342 ( .A1(n1657), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[12]), 
        .Y(n1143) );
  AND2X1_RVT U1343 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__25_), .Y(n834) );
  OR2X1_RVT U1344 ( .A1(n1661), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[13]), 
        .Y(n1151) );
  NAND2X0_RVT U1345 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[23]), 
        .A2(n1697), .Y(n398) );
  OR2X1_RVT U1346 ( .A1(n1669), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[14]), 
        .Y(n1156) );
  OA22X1_RVT U1347 ( .A1(n1644), .A2(n1603), .A3(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[1]), 
        .A4(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[1]), 
        .Y(n378) );
  AND2X1_RVT U1348 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__24_), .Y(n831) );
  OR2X1_RVT U1349 ( .A1(n1615), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[2]), 
        .Y(n250) );
  OR2X1_RVT U1350 ( .A1(n1665), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15]), 
        .Y(n1164) );
  OR2X1_RVT U1351 ( .A1(n1686), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16]), 
        .Y(n1336) );
  NAND2X0_RVT U1352 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[30]), 
        .A2(n1733), .Y(n865) );
  OR2X1_RVT U1353 ( .A1(n1697), .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[23]), 
        .Y(n399) );
  OR2X1_RVT U1354 ( .A1(n1619), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[3]), 
        .Y(n252) );
  OR2X1_RVT U1355 ( .A1(n1733), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[30]), 
        .Y(n1093) );
  OR2X1_RVT U1356 ( .A1(n1685), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16]), 
        .Y(n1169) );
  NAND2X0_RVT U1357 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[3]), 
        .A2(n1619), .Y(n255) );
  NAND2X0_RVT U1358 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[29]), 
        .A2(n1729), .Y(n866) );
  OR2X1_RVT U1359 ( .A1(n1636), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[8]), 
        .Y(n951) );
  NAND2X0_RVT U1360 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[0]), .A2(
        n1608), .Y(n174) );
  OR2X1_RVT U1361 ( .A1(n1648), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[10]), 
        .Y(n962) );
  NAND2X0_RVT U1362 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[30]), 
        .A2(n1734), .Y(n449) );
  NAND2X0_RVT U1363 ( .A1(stage_regs_1__3__0_), .A2(n1741), .Y(n864) );
  OR2X1_RVT U1364 ( .A1(n1734), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[30]), 
        .Y(n1260) );
  OR2X1_RVT U1365 ( .A1(n1664), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[15]), 
        .Y(n997) );
  OR2X1_RVT U1366 ( .A1(n1667), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15]), 
        .Y(n1498) );
  NAND2X0_RVT U1367 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[26]), 
        .A2(n1723), .Y(n327) );
  AND2X1_RVT U1368 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__4_), .Y(n798) );
  OR2X1_RVT U1369 ( .A1(n1643), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[9]), 
        .Y(n1458) );
  OR2X1_RVT U1370 ( .A1(n1668), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[14]), 
        .Y(n989) );
  NAND2X0_RVT U1371 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[29]), 
        .A2(n1730), .Y(n450) );
  NAND2X0_RVT U1372 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__5_), .Y(n305) );
  NAND2X0_RVT U1373 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[29]), 
        .A2(n1732), .Y(n320) );
  AO22X1_RVT U1374 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[31]), 
        .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[31]), 
        .A3(n1604), .A4(n1737), .Y(n1096) );
  OR2X1_RVT U1375 ( .A1(n1723), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[26]), 
        .Y(n1567) );
  OR2X1_RVT U1376 ( .A1(n1684), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[16]), 
        .Y(n1002) );
  OR2X1_RVT U1377 ( .A1(n1680), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[17]), 
        .Y(n1010) );
  NAND2X0_RVT U1378 ( .A1(stage_regs_1__3__7_), .A2(n1741), .Y(n757) );
  OR2X1_RVT U1379 ( .A1(n1726), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28]), 
        .Y(n1249) );
  NAND2X0_RVT U1380 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__8_), .Y(n296) );
  AND2X1_RVT U1381 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[31]), 
        .A2(n1599), .Y(n167) );
  OR2X1_RVT U1382 ( .A1(n1679), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[18]), 
        .Y(n1516) );
  OR2X1_RVT U1383 ( .A1(n1683), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[17]), 
        .Y(n1511) );
  OR2X1_RVT U1384 ( .A1(n1639), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[8]), 
        .Y(n1452) );
  NAND2X0_RVT U1385 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27]), 
        .A2(n1717), .Y(n455) );
  OR2X1_RVT U1386 ( .A1(n1676), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[18]), 
        .Y(n1015) );
  AND2X1_RVT U1387 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__9_), .Y(n754) );
  OR2X1_RVT U1388 ( .A1(n1717), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27]), 
        .Y(n1241) );
  OR2X1_RVT U1389 ( .A1(n1732), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[29]), 
        .Y(n321) );
  AO22X1_RVT U1390 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[31]), 
        .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[31]), 
        .A3(n1605), .A4(n1740), .Y(n1597) );
  OR2X1_RVT U1391 ( .A1(n1672), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[19]), 
        .Y(n1023) );
  OR2X1_RVT U1392 ( .A1(n1715), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[25]), 
        .Y(n1562) );
  NAND2X0_RVT U1393 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[26]), 
        .A2(n1721), .Y(n457) );
  NAND2X0_RVT U1394 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[0]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[0]), 
        .Y(n379) );
  OR2X1_RVT U1395 ( .A1(n1711), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[24]), 
        .Y(n1554) );
  OR2X1_RVT U1396 ( .A1(n1655), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11]), 
        .Y(n1472) );
  OR2X1_RVT U1397 ( .A1(n1736), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[30]), 
        .Y(n1594) );
  OR2X1_RVT U1398 ( .A1(n1632), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[7]), 
        .Y(n946) );
  OR2X1_RVT U1399 ( .A1(n1612), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[2]), 
        .Y(n189) );
  OA22X1_RVT U1400 ( .A1(n1647), .A2(n1601), .A3(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[1]), 
        .A4(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[1]), 
        .Y(n924) );
  AND2X1_RVT U1401 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__10_), .Y(n740) );
  OR2X1_RVT U1402 ( .A1(n1616), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[3]), 
        .Y(n191) );
  NAND2X0_RVT U1403 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[23]), 
        .A2(n1696), .Y(n333) );
  OR2X1_RVT U1404 ( .A1(n1721), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[26]), 
        .Y(n1233) );
  OR2X1_RVT U1405 ( .A1(n1651), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[10]), 
        .Y(n1463) );
  OR2X1_RVT U1406 ( .A1(n1696), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[23]), 
        .Y(n334) );
  NAND2X0_RVT U1407 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[0]), .A2(
        n1609), .Y(n113) );
  OR2X1_RVT U1408 ( .A1(n1675), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19]), 
        .Y(n1524) );
  OR2X1_RVT U1409 ( .A1(n1652), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[11]), 
        .Y(n971) );
  NAND2X0_RVT U1410 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[30]), 
        .A2(n1736), .Y(n319) );
  OR2X1_RVT U1411 ( .A1(n1640), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[9]), 
        .Y(n957) );
  NAND2X0_RVT U1412 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[0]), 
        .A2(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[0]), 
        .Y(n509) );
  OR2X1_RVT U1413 ( .A1(n1659), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[12]), 
        .Y(n1477) );
  OR2X1_RVT U1414 ( .A1(n1692), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[20]), 
        .Y(n1028) );
  OR2X1_RVT U1415 ( .A1(n1687), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16]), 
        .Y(n1503) );
  NAND2X0_RVT U1416 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[3]), 
        .A2(n1616), .Y(n194) );
  OR2X1_RVT U1417 ( .A1(n1695), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[20]), 
        .Y(n1529) );
  OR2X1_RVT U1418 ( .A1(n1728), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28]), 
        .Y(n1583) );
  NAND2X0_RVT U1419 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[0]), 
        .A2(STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[0]), 
        .Y(n444) );
  NAND2X0_RVT U1420 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[22]), 
        .A2(n1703), .Y(n336) );
  OR2X1_RVT U1421 ( .A1(n1671), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[14]), 
        .Y(n1490) );
  OR2X1_RVT U1422 ( .A1(n1691), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[21]), 
        .Y(n1537) );
  AND2X1_RVT U1423 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__11_), .Y(n726) );
  OR2X1_RVT U1424 ( .A1(n1713), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[25]), 
        .Y(n1228) );
  OR2X1_RVT U1425 ( .A1(n1620), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[4]), 
        .Y(n197) );
  OR2X1_RVT U1426 ( .A1(n1635), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[7]), 
        .Y(n1447) );
  NAND2X0_RVT U1427 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[21]), 
        .A2(n1691), .Y(n338) );
  AO22X1_RVT U1428 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[31]), 
        .A2(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[31]), 
        .A3(n1600), .A4(n1739), .Y(n1430) );
  OR2X1_RVT U1429 ( .A1(n1660), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[13]), 
        .Y(n984) );
  OR2X1_RVT U1430 ( .A1(n1624), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[5]), 
        .Y(n196) );
  NAND2X0_RVT U1431 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27]), 
        .A2(n1719), .Y(n325) );
  OR2X1_RVT U1432 ( .A1(n1663), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[13]), 
        .Y(n1485) );
  AND2X1_RVT U1433 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[31]), 
        .A2(n1604), .Y(n228) );
  AO22X1_RVT U1434 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[31]), 
        .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[31]), 
        .A3(n1599), .A4(n1738), .Y(n1263) );
  AND2X1_RVT U1435 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__12_), .Y(n712) );
  OR2X1_RVT U1436 ( .A1(n1628), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[6]), 
        .Y(n202) );
  OR2X1_RVT U1437 ( .A1(n1656), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[12]), 
        .Y(n976) );
  AND2X1_RVT U1439 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__13_), .Y(n699) );
  OR2X1_RVT U1440 ( .A1(n1730), .A2(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[29]), 
        .Y(n451) );
  OR2X1_RVT U1441 ( .A1(n1719), .A2(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27]), 
        .Y(n1575) );
  NBUFFX2_RVT U1442 ( .A(reset), .Y(n5) );
  MUX21X1_RVT U1443 ( .A1(n39), .A2(n40), .S0(n1724), .Y(n37) );
  AO21X1_RVT U1444 ( .A1(n1537), .A2(n1529), .A3(n29), .Y(n281) );
  AO21X1_RVT U1445 ( .A1(n1594), .A2(n1593), .A3(n30), .Y(n292) );
  AO21X1_RVT U1446 ( .A1(n1036), .A2(n1028), .A3(n31), .Y(n220) );
  AO21X1_RVT U1447 ( .A1(n1093), .A2(n1092), .A3(n32), .Y(n231) );
  AO21X1_RVT U1448 ( .A1(n1203), .A2(n1195), .A3(n33), .Y(n159) );
  AO21X1_RVT U1449 ( .A1(n1260), .A2(n1259), .A3(n34), .Y(n170) );
  AO21X1_RVT U1450 ( .A1(n1370), .A2(n1362), .A3(n35), .Y(n98) );
  AO21X1_RVT U1451 ( .A1(n1427), .A2(n1426), .A3(n36), .Y(n109) );
  NAND2X0_RVT U1452 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[7]), 
        .A2(n1634), .Y(n82) );
  NAND2X0_RVT U1453 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[2]), 
        .A2(n1614), .Y(n65) );
  NAND2X0_RVT U1454 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[4]), 
        .A2(n1622), .Y(n71) );
  NAND2X0_RVT U1455 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[6]), 
        .A2(n1630), .Y(n77) );
  NAND2X0_RVT U1456 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[5]), 
        .A2(n1626), .Y(n78) );
  NAND3X0_RVT U1457 ( .A1(n1275), .A2(n1278), .A3(n1276), .Y(n110) );
  NAND2X0_RVT U1458 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[25]), 
        .A2(n1714), .Y(n394) );
  NAND2X0_RVT U1459 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[24]), 
        .A2(n1710), .Y(n396) );
  NAND2X0_RVT U1460 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[17]), 
        .A2(n1682), .Y(n411) );
  NAND2X0_RVT U1461 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[18]), 
        .A2(n1678), .Y(n409) );
  NAND2X0_RVT U1462 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19]), 
        .A2(n1674), .Y(n407) );
  AO22X1_RVT U1463 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19]), 
        .A2(n1674), .A3(n1349), .A4(n1357), .Y(n61) );
  OA221X1_RVT U1464 ( .A1(n93), .A2(n1336), .A3(n93), .A4(n1344), .A5(n61), 
        .Y(n94) );
  NAND2X0_RVT U1465 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[13]), 
        .A2(n1662), .Y(n419) );
  NAND2X0_RVT U1466 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[14]), 
        .A2(n1670), .Y(n417) );
  NAND2X0_RVT U1467 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15]), 
        .A2(n1666), .Y(n415) );
  NAND2X0_RVT U1468 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[12]), 
        .A2(n1658), .Y(n421) );
  NAND2X0_RVT U1469 ( .A1(n62), .A2(n421), .Y(n87) );
  NAND2X0_RVT U1470 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[9]), 
        .A2(n1642), .Y(n427) );
  NAND2X0_RVT U1471 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[10]), 
        .A2(n1650), .Y(n425) );
  NAND2X0_RVT U1472 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11]), 
        .A2(n1654), .Y(n423) );
  AO22X1_RVT U1473 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11]), 
        .A2(n1654), .A3(n1296), .A4(n1305), .Y(n63) );
  OA221X1_RVT U1474 ( .A1(n64), .A2(n1285), .A3(n64), .A4(n1291), .A5(n63), 
        .Y(n86) );
  NAND2X0_RVT U1475 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[8]), 
        .A2(n1638), .Y(n429) );
  NAND2X0_RVT U1476 ( .A1(n66), .A2(n65), .Y(n68) );
  NAND3X0_RVT U1477 ( .A1(n80), .A2(n1280), .A3(n79), .Y(n81) );
  NAND4X0_RVT U1478 ( .A1(n83), .A2(n82), .A3(n429), .A4(n81), .Y(n85) );
  AO22X1_RVT U1479 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15]), 
        .A2(n1666), .A3(n1323), .A4(n1331), .Y(n84) );
  OA221X1_RVT U1480 ( .A1(n87), .A2(n86), .A3(n87), .A4(n85), .A5(n84), .Y(n90) );
  AO21X1_RVT U1481 ( .A1(n1310), .A2(n1318), .A3(n88), .Y(n89) );
  AO22X1_RVT U1482 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16]), 
        .A2(n1686), .A3(n90), .A4(n89), .Y(n92) );
  NAND2X0_RVT U1483 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[20]), 
        .A2(n1694), .Y(n405) );
  NAND4X0_RVT U1484 ( .A1(n398), .A2(n401), .A3(n405), .A4(n403), .Y(n91) );
  AO221X1_RVT U1485 ( .A1(n94), .A2(n93), .A3(n94), .A4(n92), .A5(n91), .Y(n99) );
  NAND2X0_RVT U1486 ( .A1(n398), .A2(n401), .Y(n95) );
  NAND3X0_RVT U1487 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[22]), 
        .A2(n1706), .A3(n398), .Y(n97) );
  NAND2X0_RVT U1488 ( .A1(n396), .A2(n1385), .Y(n100) );
  OA222X1_RVT U1489 ( .A1(n101), .A2(n1395), .A3(n101), .A4(n1387), .A5(n101), 
        .A6(n100), .Y(n103) );
  AO22X1_RVT U1490 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27]), 
        .A2(n1718), .A3(n1408), .A4(n1400), .Y(n102) );
  AO22X1_RVT U1491 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28]), 
        .A2(n1727), .A3(n103), .A4(n102), .Y(n104) );
  NAND2X0_RVT U1492 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[31]), 
        .A2(n1739), .Y(n108) );
  OAI222X1_RVT U1493 ( .A1(n111), .A2(n110), .A3(n111), .A4(n1423), .A5(n1265), 
        .A6(n1301), .Y(butterfly_out_wires[135]) );
  AO22X1_RVT U1494 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[5]), 
        .A2(n1625), .A3(n120), .A4(n135), .Y(n118) );
  AO22X1_RVT U1495 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[6]), 
        .A2(n1629), .A3(n118), .A4(n141), .Y(n1114) );
  NAND2X0_RVT U1496 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[7]), 
        .A2(n1633), .Y(n143) );
  NAND2X0_RVT U1497 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[2]), 
        .A2(n1613), .Y(n126) );
  NAND2X0_RVT U1498 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[4]), 
        .A2(n1621), .Y(n132) );
  NAND2X0_RVT U1499 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[6]), 
        .A2(n1629), .Y(n138) );
  NAND2X0_RVT U1500 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[5]), 
        .A2(n1625), .Y(n139) );
  NAND3X0_RVT U1501 ( .A1(n1108), .A2(n1111), .A3(n1109), .Y(n171) );
  NAND2X0_RVT U1502 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[25]), 
        .A2(n1713), .Y(n459) );
  NAND2X0_RVT U1503 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[24]), 
        .A2(n1709), .Y(n461) );
  NAND2X0_RVT U1504 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[17]), 
        .A2(n1681), .Y(n476) );
  NAND2X0_RVT U1505 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[18]), 
        .A2(n1677), .Y(n474) );
  NAND2X0_RVT U1506 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19]), 
        .A2(n1673), .Y(n472) );
  AO22X1_RVT U1507 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19]), 
        .A2(n1673), .A3(n1182), .A4(n1190), .Y(n122) );
  OA221X1_RVT U1508 ( .A1(n154), .A2(n1169), .A3(n154), .A4(n1177), .A5(n122), 
        .Y(n155) );
  NAND2X0_RVT U1509 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[13]), 
        .A2(n1661), .Y(n484) );
  NAND2X0_RVT U1510 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[14]), 
        .A2(n1669), .Y(n482) );
  NAND2X0_RVT U1511 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15]), 
        .A2(n1665), .Y(n480) );
  NAND2X0_RVT U1512 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[12]), 
        .A2(n1657), .Y(n486) );
  NAND2X0_RVT U1513 ( .A1(n123), .A2(n486), .Y(n148) );
  NAND2X0_RVT U1514 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[9]), 
        .A2(n1641), .Y(n492) );
  NAND2X0_RVT U1515 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[10]), 
        .A2(n1649), .Y(n490) );
  NAND2X0_RVT U1516 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11]), 
        .A2(n1653), .Y(n488) );
  AO22X1_RVT U1517 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11]), 
        .A2(n1653), .A3(n1129), .A4(n1138), .Y(n124) );
  OA221X1_RVT U1518 ( .A1(n125), .A2(n1118), .A3(n125), .A4(n1124), .A5(n124), 
        .Y(n147) );
  NAND2X0_RVT U1519 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[8]), 
        .A2(n1637), .Y(n494) );
  NAND2X0_RVT U1520 ( .A1(n127), .A2(n126), .Y(n129) );
  NAND3X0_RVT U1521 ( .A1(n141), .A2(n1113), .A3(n140), .Y(n142) );
  NAND4X0_RVT U1522 ( .A1(n144), .A2(n143), .A3(n494), .A4(n142), .Y(n146) );
  AO22X1_RVT U1523 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15]), 
        .A2(n1665), .A3(n1156), .A4(n1164), .Y(n145) );
  OA221X1_RVT U1524 ( .A1(n148), .A2(n147), .A3(n148), .A4(n146), .A5(n145), 
        .Y(n151) );
  AO21X1_RVT U1525 ( .A1(n1143), .A2(n1151), .A3(n149), .Y(n150) );
  AO22X1_RVT U1526 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16]), 
        .A2(n1685), .A3(n151), .A4(n150), .Y(n153) );
  NAND2X0_RVT U1527 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[20]), 
        .A2(n1693), .Y(n470) );
  NAND4X0_RVT U1528 ( .A1(n463), .A2(n466), .A3(n470), .A4(n468), .Y(n152) );
  AO221X1_RVT U1529 ( .A1(n155), .A2(n154), .A3(n155), .A4(n153), .A5(n152), 
        .Y(n160) );
  NAND2X0_RVT U1530 ( .A1(n463), .A2(n466), .Y(n156) );
  NAND3X0_RVT U1531 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[22]), 
        .A2(n1705), .A3(n463), .Y(n158) );
  NAND2X0_RVT U1532 ( .A1(n461), .A2(n1218), .Y(n161) );
  OA222X1_RVT U1533 ( .A1(n162), .A2(n1228), .A3(n162), .A4(n1220), .A5(n162), 
        .A6(n161), .Y(n164) );
  AO22X1_RVT U1534 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27]), 
        .A2(n1717), .A3(n1241), .A4(n1233), .Y(n163) );
  AO22X1_RVT U1535 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28]), 
        .A2(n1726), .A3(n164), .A4(n163), .Y(n165) );
  NAND2X0_RVT U1536 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[31]), 
        .A2(n1738), .Y(n169) );
  OAI222X1_RVT U1537 ( .A1(n172), .A2(n171), .A3(n172), .A4(n1256), .A5(n1098), 
        .A6(n1134), .Y(butterfly_out_wires[39]) );
  AO22X1_RVT U1538 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[5]), 
        .A2(n1624), .A3(n181), .A4(n196), .Y(n179) );
  NAND2X0_RVT U1539 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[7]), 
        .A2(n1632), .Y(n204) );
  NAND2X0_RVT U1540 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[2]), 
        .A2(n1612), .Y(n187) );
  NAND2X0_RVT U1541 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[4]), 
        .A2(n1620), .Y(n193) );
  NAND2X0_RVT U1542 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[6]), 
        .A2(n1628), .Y(n199) );
  NAND2X0_RVT U1543 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[5]), 
        .A2(n1624), .Y(n200) );
  NAND3X0_RVT U1544 ( .A1(n941), .A2(n944), .A3(n942), .Y(n232) );
  NAND2X0_RVT U1545 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[25]), 
        .A2(n1712), .Y(n875) );
  NAND2X0_RVT U1546 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[24]), 
        .A2(n1708), .Y(n877) );
  NAND2X0_RVT U1547 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[17]), 
        .A2(n1680), .Y(n892) );
  NAND2X0_RVT U1548 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[18]), 
        .A2(n1676), .Y(n890) );
  NAND2X0_RVT U1549 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[19]), 
        .A2(n1672), .Y(n888) );
  AO22X1_RVT U1550 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[19]), 
        .A2(n1672), .A3(n1015), .A4(n1023), .Y(n183) );
  OA221X1_RVT U1551 ( .A1(n215), .A2(n1002), .A3(n215), .A4(n1010), .A5(n183), 
        .Y(n216) );
  NAND2X0_RVT U1552 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[13]), 
        .A2(n1660), .Y(n900) );
  NAND2X0_RVT U1553 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[14]), 
        .A2(n1668), .Y(n898) );
  NAND2X0_RVT U1554 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[15]), 
        .A2(n1664), .Y(n896) );
  NAND2X0_RVT U1555 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[12]), 
        .A2(n1656), .Y(n902) );
  NAND2X0_RVT U1556 ( .A1(n184), .A2(n902), .Y(n209) );
  NAND2X0_RVT U1557 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[9]), 
        .A2(n1640), .Y(n908) );
  NAND2X0_RVT U1558 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[10]), 
        .A2(n1648), .Y(n906) );
  NAND2X0_RVT U1559 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[11]), 
        .A2(n1652), .Y(n904) );
  AO22X1_RVT U1560 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[11]), 
        .A2(n1652), .A3(n962), .A4(n971), .Y(n185) );
  OA221X1_RVT U1561 ( .A1(n186), .A2(n951), .A3(n186), .A4(n957), .A5(n185), 
        .Y(n208) );
  NAND2X0_RVT U1562 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[8]), 
        .A2(n1636), .Y(n910) );
  NAND2X0_RVT U1563 ( .A1(n188), .A2(n187), .Y(n190) );
  NAND3X0_RVT U1564 ( .A1(n202), .A2(n946), .A3(n201), .Y(n203) );
  NAND4X0_RVT U1565 ( .A1(n205), .A2(n204), .A3(n910), .A4(n203), .Y(n207) );
  AO22X1_RVT U1566 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[15]), 
        .A2(n1664), .A3(n989), .A4(n997), .Y(n206) );
  OA221X1_RVT U1567 ( .A1(n209), .A2(n208), .A3(n209), .A4(n207), .A5(n206), 
        .Y(n212) );
  AO21X1_RVT U1568 ( .A1(n976), .A2(n984), .A3(n210), .Y(n211) );
  AO22X1_RVT U1569 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[16]), 
        .A2(n1684), .A3(n212), .A4(n211), .Y(n214) );
  NAND2X0_RVT U1570 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[20]), 
        .A2(n1692), .Y(n886) );
  NAND4X0_RVT U1571 ( .A1(n879), .A2(n882), .A3(n886), .A4(n884), .Y(n213) );
  AO221X1_RVT U1572 ( .A1(n216), .A2(n215), .A3(n216), .A4(n214), .A5(n213), 
        .Y(n221) );
  NAND2X0_RVT U1573 ( .A1(n879), .A2(n882), .Y(n217) );
  NAND3X0_RVT U1574 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[22]), 
        .A2(n1704), .A3(n879), .Y(n219) );
  NAND2X0_RVT U1575 ( .A1(n877), .A2(n1051), .Y(n222) );
  OA222X1_RVT U1576 ( .A1(n223), .A2(n1061), .A3(n223), .A4(n1053), .A5(n223), 
        .A6(n222), .Y(n225) );
  AO22X1_RVT U1577 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[27]), 
        .A2(n1716), .A3(n1074), .A4(n1066), .Y(n224) );
  AO22X1_RVT U1578 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[28]), 
        .A2(n1725), .A3(n225), .A4(n224), .Y(n226) );
  NAND2X0_RVT U1579 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[31]), 
        .A2(n1737), .Y(n230) );
  OAI222X1_RVT U1580 ( .A1(n233), .A2(n232), .A3(n233), .A4(n1089), .A5(n931), 
        .A6(n967), .Y(butterfly_out_wires[7]) );
  NAND2X0_RVT U1581 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[7]), 
        .A2(n1635), .Y(n265) );
  NAND2X0_RVT U1582 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[2]), 
        .A2(n1615), .Y(n248) );
  NAND2X0_RVT U1583 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[4]), 
        .A2(n1623), .Y(n254) );
  NAND2X0_RVT U1584 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[6]), 
        .A2(n1631), .Y(n260) );
  NAND2X0_RVT U1585 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[5]), 
        .A2(n1627), .Y(n261) );
  NAND3X0_RVT U1586 ( .A1(n1442), .A2(n1445), .A3(n1443), .Y(n293) );
  NAND2X0_RVT U1587 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[25]), 
        .A2(n1715), .Y(n329) );
  NAND2X0_RVT U1588 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[24]), 
        .A2(n1711), .Y(n331) );
  NAND2X0_RVT U1589 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[17]), 
        .A2(n1683), .Y(n346) );
  NAND2X0_RVT U1590 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[18]), 
        .A2(n1679), .Y(n344) );
  NAND2X0_RVT U1591 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19]), 
        .A2(n1675), .Y(n342) );
  AO22X1_RVT U1592 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[19]), 
        .A2(n1675), .A3(n1516), .A4(n1524), .Y(n244) );
  OA221X1_RVT U1593 ( .A1(n276), .A2(n1503), .A3(n276), .A4(n1511), .A5(n244), 
        .Y(n277) );
  NAND2X0_RVT U1594 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[13]), 
        .A2(n1663), .Y(n354) );
  NAND2X0_RVT U1595 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[14]), 
        .A2(n1671), .Y(n352) );
  NAND2X0_RVT U1596 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15]), 
        .A2(n1667), .Y(n350) );
  NAND2X0_RVT U1597 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[12]), 
        .A2(n1659), .Y(n356) );
  NAND2X0_RVT U1598 ( .A1(n245), .A2(n356), .Y(n270) );
  NAND2X0_RVT U1599 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[9]), 
        .A2(n1643), .Y(n362) );
  NAND2X0_RVT U1600 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[10]), 
        .A2(n1651), .Y(n360) );
  NAND2X0_RVT U1601 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11]), 
        .A2(n1655), .Y(n358) );
  AO22X1_RVT U1602 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11]), 
        .A2(n1655), .A3(n1463), .A4(n1472), .Y(n246) );
  OA221X1_RVT U1603 ( .A1(n247), .A2(n1452), .A3(n247), .A4(n1458), .A5(n246), 
        .Y(n269) );
  NAND2X0_RVT U1604 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[8]), 
        .A2(n1639), .Y(n364) );
  NAND2X0_RVT U1605 ( .A1(n249), .A2(n248), .Y(n251) );
  NAND3X0_RVT U1606 ( .A1(n263), .A2(n1447), .A3(n262), .Y(n264) );
  NAND4X0_RVT U1607 ( .A1(n266), .A2(n265), .A3(n364), .A4(n264), .Y(n268) );
  AO22X1_RVT U1608 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15]), 
        .A2(n1667), .A3(n1490), .A4(n1498), .Y(n267) );
  OA221X1_RVT U1609 ( .A1(n270), .A2(n269), .A3(n270), .A4(n268), .A5(n267), 
        .Y(n273) );
  AO21X1_RVT U1610 ( .A1(n1477), .A2(n1485), .A3(n271), .Y(n272) );
  AO22X1_RVT U1611 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16]), 
        .A2(n1687), .A3(n273), .A4(n272), .Y(n275) );
  NAND2X0_RVT U1612 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[20]), 
        .A2(n1695), .Y(n340) );
  NAND4X0_RVT U1613 ( .A1(n333), .A2(n336), .A3(n340), .A4(n338), .Y(n274) );
  AO221X1_RVT U1614 ( .A1(n277), .A2(n276), .A3(n277), .A4(n275), .A5(n274), 
        .Y(n282) );
  NAND2X0_RVT U1615 ( .A1(n333), .A2(n336), .Y(n278) );
  NAND3X0_RVT U1616 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[22]), 
        .A2(n1707), .A3(n333), .Y(n280) );
  NAND2X0_RVT U1617 ( .A1(n331), .A2(n1552), .Y(n283) );
  OA222X1_RVT U1618 ( .A1(n284), .A2(n1562), .A3(n284), .A4(n1554), .A5(n284), 
        .A6(n283), .Y(n286) );
  AO22X1_RVT U1619 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[27]), 
        .A2(n1719), .A3(n1575), .A4(n1567), .Y(n285) );
  AO22X1_RVT U1620 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28]), 
        .A2(n1728), .A3(n286), .A4(n285), .Y(n287) );
  NAND2X0_RVT U1621 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[31]), 
        .A2(n1740), .Y(n291) );
  OAI222X1_RVT U1622 ( .A1(n294), .A2(n293), .A3(n294), .A4(n1590), .A5(n1432), 
        .A6(n1468), .Y(butterfly_out_wires[199]) );
  NAND2X0_RVT U1623 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__1_), .Y(n863) );
  NAND2X0_RVT U1624 ( .A1(stage_regs_1__3__0_), .A2(mode_pipe[1]), .Y(n306) );
  AND2X1_RVT U1625 ( .A1(stage_regs_1__3__6_), .A2(n1741), .Y(n295) );
  NAND2X0_RVT U1626 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__3_), .Y(n855) );
  NAND2X0_RVT U1627 ( .A1(stage_regs_1__3__4_), .A2(n20), .Y(n802) );
  AO222X1_RVT U1628 ( .A1(n296), .A2(n295), .A3(n296), .A4(n859), .A5(n755), 
        .A6(n1607), .Y(n780) );
  NAND2X0_RVT U1630 ( .A1(stage_regs_1__3__3_), .A2(n19), .Y(n304) );
  NAND2X0_RVT U1631 ( .A1(n757), .A2(n863), .Y(n300) );
  AO21X1_RVT U1632 ( .A1(n727), .A2(n308), .A3(n307), .Y(n310) );
  FADDX1_RVT U1633 ( .A(n317), .B(n316), .CI(n315), .CO(n318), .S(n303) );
  HADDX1_RVT U1634 ( .A0(n382), .B0(n1586), .SO(butterfly_out_wires[254]) );
  HADDX1_RVT U1635 ( .A0(n322), .B0(n1584), .SO(butterfly_out_wires[253]) );
  NAND2X0_RVT U1636 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28]), 
        .A2(n1728), .Y(n323) );
  HADDX1_RVT U1637 ( .A0(n324), .B0(n1576), .SO(butterfly_out_wires[252]) );
  HADDX1_RVT U1638 ( .A0(n326), .B0(n1568), .SO(butterfly_out_wires[251]) );
  HADDX1_RVT U1639 ( .A0(n328), .B0(n1563), .SO(butterfly_out_wires[250]) );
  HADDX1_RVT U1640 ( .A0(n330), .B0(n1555), .SO(butterfly_out_wires[249]) );
  HADDX1_RVT U1641 ( .A0(n332), .B0(n1550), .SO(butterfly_out_wires[248]) );
  NAND2X0_RVT U1642 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[22]), 
        .A2(n1707), .Y(n1543) );
  NAND2X0_RVT U1643 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16]), 
        .A2(n1687), .Y(n348) );
  HADDX1_RVT U1644 ( .A0(n371), .B0(n370), .SO(butterfly_out_wires[229]) );
  HADDX1_RVT U1645 ( .A0(n373), .B0(n372), .SO(butterfly_out_wires[228]) );
  HADDX1_RVT U1646 ( .A0(n375), .B0(n374), .SO(butterfly_out_wires[227]) );
  HADDX1_RVT U1647 ( .A0(n377), .B0(n376), .SO(butterfly_out_wires[226]) );
  AO22X1_RVT U1648 ( .A1(n381), .A2(n380), .A3(n379), .A4(n378), .Y(
        butterfly_out_wires[225]) );
  FADDX1_RVT U1649 ( .A(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[31]), .B(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[31]), 
        .CI(n383), .S(butterfly_out_wires[255]) );
  HADDX1_RVT U1650 ( .A0(n447), .B0(n1419), .SO(butterfly_out_wires[190]) );
  HADDX1_RVT U1651 ( .A0(n387), .B0(n1417), .SO(butterfly_out_wires[189]) );
  NAND2X0_RVT U1652 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28]), 
        .A2(n1727), .Y(n388) );
  HADDX1_RVT U1653 ( .A0(n389), .B0(n1409), .SO(butterfly_out_wires[188]) );
  HADDX1_RVT U1654 ( .A0(n391), .B0(n1401), .SO(butterfly_out_wires[187]) );
  HADDX1_RVT U1655 ( .A0(n393), .B0(n1396), .SO(butterfly_out_wires[186]) );
  HADDX1_RVT U1656 ( .A0(n395), .B0(n1388), .SO(butterfly_out_wires[185]) );
  HADDX1_RVT U1657 ( .A0(n397), .B0(n1383), .SO(butterfly_out_wires[184]) );
  NAND2X0_RVT U1658 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[22]), 
        .A2(n1706), .Y(n1376) );
  NAND2X0_RVT U1659 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16]), 
        .A2(n1686), .Y(n413) );
  HADDX1_RVT U1660 ( .A0(n436), .B0(n435), .SO(butterfly_out_wires[165]) );
  HADDX1_RVT U1661 ( .A0(n438), .B0(n437), .SO(butterfly_out_wires[164]) );
  HADDX1_RVT U1662 ( .A0(n440), .B0(n439), .SO(butterfly_out_wires[163]) );
  HADDX1_RVT U1663 ( .A0(n442), .B0(n441), .SO(butterfly_out_wires[162]) );
  AO22X1_RVT U1664 ( .A1(n446), .A2(n445), .A3(n444), .A4(n443), .Y(
        butterfly_out_wires[161]) );
  FADDX1_RVT U1665 ( .A(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_P_mod[31]), .B(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[31]), 
        .CI(n448), .S(butterfly_out_wires[191]) );
  HADDX1_RVT U1666 ( .A0(n512), .B0(n1252), .SO(butterfly_out_wires[126]) );
  HADDX1_RVT U1667 ( .A0(n452), .B0(n1250), .SO(butterfly_out_wires[125]) );
  NAND2X0_RVT U1668 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[28]), 
        .A2(n1726), .Y(n453) );
  HADDX1_RVT U1669 ( .A0(n454), .B0(n1242), .SO(butterfly_out_wires[124]) );
  HADDX1_RVT U1670 ( .A0(n456), .B0(n1234), .SO(butterfly_out_wires[123]) );
  HADDX1_RVT U1671 ( .A0(n458), .B0(n1229), .SO(butterfly_out_wires[122]) );
  HADDX1_RVT U1672 ( .A0(n460), .B0(n1221), .SO(butterfly_out_wires[121]) );
  HADDX1_RVT U1673 ( .A0(n462), .B0(n1216), .SO(butterfly_out_wires[120]) );
  NAND2X0_RVT U1674 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[22]), 
        .A2(n1705), .Y(n1209) );
  NAND2X0_RVT U1675 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[16]), 
        .A2(n1685), .Y(n478) );
  HADDX1_RVT U1676 ( .A0(n501), .B0(n500), .SO(butterfly_out_wires[101]) );
  HADDX1_RVT U1677 ( .A0(n503), .B0(n502), .SO(butterfly_out_wires[100]) );
  HADDX1_RVT U1678 ( .A0(n505), .B0(n504), .SO(butterfly_out_wires[99]) );
  HADDX1_RVT U1679 ( .A0(n507), .B0(n506), .SO(butterfly_out_wires[98]) );
  AO22X1_RVT U1680 ( .A1(n511), .A2(n510), .A3(n509), .A4(n508), .Y(
        butterfly_out_wires[97]) );
  FADDX1_RVT U1681 ( .A(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_P_mod[31]), .B(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[31]), 
        .CI(n513), .S(butterfly_out_wires[127]) );
  NAND2X0_RVT U1682 ( .A1(stage_regs_1__3__28_), .A2(n1741), .Y(n514) );
  NAND2X0_RVT U1683 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__22_), .Y(n516)
         );
  NAND2X0_RVT U1684 ( .A1(n514), .A2(n516), .Y(n515) );
  NAND2X0_RVT U1685 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__23_), .Y(n815)
         );
  AND2X1_RVT U1686 ( .A1(stage_regs_1__3__26_), .A2(n20), .Y(n524) );
  AO221X1_RVT U1687 ( .A1(stage_regs_1__3__24_), .A2(stage_regs_1__3__20_), 
        .A3(stage_regs_1__3__24_), .A4(n1741), .A5(n524), .Y(n531) );
  AND2X1_RVT U1688 ( .A1(stage_regs_1__3__25_), .A2(n19), .Y(n534) );
  NAND2X0_RVT U1689 ( .A1(mode_pipe[1]), .A2(stage_regs_1__3__21_), .Y(n521)
         );
  HADDX1_RVT U1690 ( .A0(stage_regs_1__3__24_), .B0(n517), .SO(n549) );
  NAND2X0_RVT U1691 ( .A1(n823), .A2(n521), .Y(n522) );
  AO221X1_RVT U1692 ( .A1(stage_regs_1__3__25_), .A2(stage_regs_1__3__21_), 
        .A3(stage_regs_1__3__25_), .A4(n1741), .A5(n821), .Y(n525) );
  FADDX1_RVT U1693 ( .A(n529), .B(n528), .CI(n527), .CO(intadd_0_B_24_), .S(
        intadd_0_A_23_) );
  AO221X1_RVT U1694 ( .A1(stage_regs_1__3__23_), .A2(stage_regs_1__3__19_), 
        .A3(stage_regs_1__3__23_), .A4(n1741), .A5(n534), .Y(n544) );
  AND2X1_RVT U1695 ( .A1(stage_regs_1__3__24_), .A2(n21), .Y(n546) );
  HADDX1_RVT U1696 ( .A0(stage_regs_1__3__23_), .B0(n535), .SO(n561) );
  FADDX1_RVT U1697 ( .A(n539), .B(n538), .CI(n537), .CO(n523), .S(n540) );
  FADDX1_RVT U1698 ( .A(n542), .B(n541), .CI(n540), .CO(intadd_0_B_23_), .S(
        intadd_0_A_22_) );
  AO221X1_RVT U1699 ( .A1(stage_regs_1__3__22_), .A2(stage_regs_1__3__18_), 
        .A3(stage_regs_1__3__22_), .A4(n1741), .A5(n546), .Y(n556) );
  AND2X1_RVT U1700 ( .A1(stage_regs_1__3__23_), .A2(n20), .Y(n558) );
  FADDX1_RVT U1701 ( .A(n621), .B(n608), .CI(n834), .CO(n562), .S(n575) );
  HADDX1_RVT U1702 ( .A0(stage_regs_1__3__22_), .B0(n547), .SO(n573) );
  FADDX1_RVT U1703 ( .A(n551), .B(n550), .CI(n549), .CO(n518), .S(n552) );
  FADDX1_RVT U1704 ( .A(n554), .B(n553), .CI(n552), .CO(intadd_0_B_22_), .S(
        intadd_0_A_21_) );
  AO221X1_RVT U1705 ( .A1(stage_regs_1__3__21_), .A2(stage_regs_1__3__17_), 
        .A3(stage_regs_1__3__21_), .A4(n1741), .A5(n558), .Y(n568) );
  AND2X1_RVT U1706 ( .A1(stage_regs_1__3__22_), .A2(n19), .Y(n570) );
  FADDX1_RVT U1707 ( .A(n634), .B(n621), .CI(n831), .CO(n574), .S(n588) );
  HADDX1_RVT U1708 ( .A0(stage_regs_1__3__21_), .B0(n559), .SO(n586) );
  FADDX1_RVT U1709 ( .A(n563), .B(n562), .CI(n561), .CO(n536), .S(n564) );
  FADDX1_RVT U1710 ( .A(n566), .B(n565), .CI(n564), .CO(intadd_0_B_21_), .S(
        intadd_0_A_20_) );
  AND2X1_RVT U1711 ( .A1(stage_regs_1__3__21_), .A2(n21), .Y(n583) );
  HADDX1_RVT U1712 ( .A0(stage_regs_1__3__20_), .B0(n571), .SO(n599) );
  FADDX1_RVT U1713 ( .A(n575), .B(n574), .CI(n573), .CO(n548), .S(n576) );
  FADDX1_RVT U1714 ( .A(n578), .B(n577), .CI(n576), .CO(intadd_0_B_20_), .S(
        intadd_0_A_19_) );
  AND2X1_RVT U1715 ( .A1(stage_regs_1__3__20_), .A2(n20), .Y(n596) );
  HADDX1_RVT U1716 ( .A0(stage_regs_1__3__19_), .B0(n584), .SO(n612) );
  FADDX1_RVT U1717 ( .A(n588), .B(n587), .CI(n586), .CO(n560), .S(n589) );
  FADDX1_RVT U1718 ( .A(n591), .B(n590), .CI(n589), .CO(intadd_0_B_19_), .S(
        intadd_0_A_18_) );
  AND2X1_RVT U1719 ( .A1(stage_regs_1__3__19_), .A2(n19), .Y(n609) );
  HADDX1_RVT U1720 ( .A0(stage_regs_1__3__18_), .B0(n597), .SO(n625) );
  FADDX1_RVT U1721 ( .A(n601), .B(n600), .CI(n599), .CO(n572), .S(n602) );
  FADDX1_RVT U1722 ( .A(n604), .B(n603), .CI(n602), .CO(intadd_0_B_18_), .S(
        intadd_0_A_17_) );
  AND2X1_RVT U1723 ( .A1(stage_regs_1__3__18_), .A2(n21), .Y(n622) );
  FADDX1_RVT U1724 ( .A(n686), .B(n673), .CI(n608), .CO(n626), .S(n640) );
  HADDX1_RVT U1725 ( .A0(stage_regs_1__3__17_), .B0(n610), .SO(n638) );
  FADDX1_RVT U1726 ( .A(n614), .B(n613), .CI(n612), .CO(n585), .S(n615) );
  FADDX1_RVT U1727 ( .A(n617), .B(n616), .CI(n615), .CO(intadd_0_B_17_), .S(
        intadd_0_A_16_) );
  AND2X1_RVT U1728 ( .A1(stage_regs_1__3__17_), .A2(n20), .Y(n635) );
  FADDX1_RVT U1729 ( .A(n699), .B(n686), .CI(n621), .CO(n639), .S(n653) );
  HADDX1_RVT U1730 ( .A0(stage_regs_1__3__16_), .B0(n623), .SO(n651) );
  FADDX1_RVT U1731 ( .A(n627), .B(n626), .CI(n625), .CO(n598), .S(n628) );
  FADDX1_RVT U1732 ( .A(n630), .B(n629), .CI(n628), .CO(intadd_0_B_16_), .S(
        intadd_0_A_15_) );
  AND2X1_RVT U1733 ( .A1(stage_regs_1__3__16_), .A2(n19), .Y(n648) );
  FADDX1_RVT U1734 ( .A(n712), .B(n699), .CI(n634), .CO(n652), .S(n666) );
  HADDX1_RVT U1735 ( .A0(stage_regs_1__3__15_), .B0(n636), .SO(n664) );
  FADDX1_RVT U1736 ( .A(n640), .B(n639), .CI(n638), .CO(n611), .S(n641) );
  FADDX1_RVT U1737 ( .A(n643), .B(n642), .CI(n641), .CO(intadd_0_B_15_), .S(
        intadd_0_A_14_) );
  AND2X1_RVT U1738 ( .A1(stage_regs_1__3__15_), .A2(n21), .Y(n661) );
  FADDX1_RVT U1739 ( .A(n726), .B(n712), .CI(n647), .CO(n665), .S(n679) );
  HADDX1_RVT U1740 ( .A0(stage_regs_1__3__14_), .B0(n649), .SO(n677) );
  FADDX1_RVT U1741 ( .A(n653), .B(n652), .CI(n651), .CO(n624), .S(n654) );
  FADDX1_RVT U1742 ( .A(n656), .B(n655), .CI(n654), .CO(intadd_0_B_14_), .S(
        intadd_0_A_13_) );
  AND2X1_RVT U1743 ( .A1(stage_regs_1__3__14_), .A2(n20), .Y(n674) );
  FADDX1_RVT U1744 ( .A(n740), .B(n726), .CI(n660), .CO(n678), .S(n692) );
  HADDX1_RVT U1745 ( .A0(stage_regs_1__3__13_), .B0(n662), .SO(n690) );
  FADDX1_RVT U1746 ( .A(n666), .B(n665), .CI(n664), .CO(n637), .S(n667) );
  FADDX1_RVT U1747 ( .A(n669), .B(n668), .CI(n667), .CO(intadd_0_B_13_), .S(
        intadd_0_A_12_) );
  AND2X1_RVT U1748 ( .A1(stage_regs_1__3__13_), .A2(n19), .Y(n687) );
  FADDX1_RVT U1749 ( .A(n754), .B(n740), .CI(n673), .CO(n691), .S(n705) );
  HADDX1_RVT U1750 ( .A0(stage_regs_1__3__12_), .B0(n675), .SO(n703) );
  FADDX1_RVT U1751 ( .A(n679), .B(n678), .CI(n677), .CO(n650), .S(n680) );
  FADDX1_RVT U1752 ( .A(n682), .B(n681), .CI(n680), .CO(intadd_0_B_12_), .S(
        intadd_0_A_11_) );
  AND2X1_RVT U1753 ( .A1(stage_regs_1__3__12_), .A2(n21), .Y(n700) );
  FADDX1_RVT U1754 ( .A(n755), .B(n754), .CI(n686), .CO(n704), .S(n719) );
  HADDX1_RVT U1755 ( .A0(stage_regs_1__3__11_), .B0(n688), .SO(n717) );
  FADDX1_RVT U1756 ( .A(n692), .B(n691), .CI(n690), .CO(n663), .S(n693) );
  FADDX1_RVT U1757 ( .A(n695), .B(n694), .CI(n693), .CO(intadd_0_B_11_), .S(
        intadd_0_A_10_) );
  AND2X1_RVT U1758 ( .A1(stage_regs_1__3__11_), .A2(n20), .Y(n714) );
  FADDX1_RVT U1759 ( .A(n713), .B(n755), .CI(n699), .CO(n718), .S(n733) );
  HADDX1_RVT U1760 ( .A0(stage_regs_1__3__10_), .B0(n701), .SO(n731) );
  FADDX1_RVT U1761 ( .A(n705), .B(n704), .CI(n703), .CO(n676), .S(n706) );
  FADDX1_RVT U1762 ( .A(n708), .B(n707), .CI(n706), .CO(intadd_0_B_10_), .S(
        intadd_0_A_9_) );
  AND2X1_RVT U1763 ( .A1(stage_regs_1__3__10_), .A2(n19), .Y(n728) );
  FADDX1_RVT U1764 ( .A(n727), .B(n713), .CI(n712), .CO(n732), .S(n747) );
  HADDX1_RVT U1765 ( .A0(stage_regs_1__3__9_), .B0(n715), .SO(n745) );
  FADDX1_RVT U1766 ( .A(n719), .B(n718), .CI(n717), .CO(n689), .S(n720) );
  FADDX1_RVT U1767 ( .A(n722), .B(n721), .CI(n720), .CO(intadd_0_B_9_), .S(
        intadd_0_A_8_) );
  AND2X1_RVT U1768 ( .A1(stage_regs_1__3__9_), .A2(n21), .Y(n742) );
  HADDX1_RVT U1769 ( .A0(stage_regs_1__3__8_), .B0(n729), .SO(n759) );
  FADDX1_RVT U1770 ( .A(n733), .B(n732), .CI(n731), .CO(n702), .S(n734) );
  FADDX1_RVT U1771 ( .A(n736), .B(n735), .CI(n734), .CO(intadd_0_B_8_), .S(
        intadd_0_A_7_) );
  AND2X1_RVT U1772 ( .A1(stage_regs_1__3__8_), .A2(n1741), .Y(n758) );
  FADDX1_RVT U1773 ( .A(n747), .B(n746), .CI(n745), .CO(n716), .S(n748) );
  FADDX1_RVT U1774 ( .A(n750), .B(n749), .CI(n748), .CO(intadd_0_B_7_), .S(
        intadd_0_A_6_) );
  FADDX1_RVT U1775 ( .A(n797), .B(n798), .CI(n754), .CO(n772), .S(n785) );
  AND2X1_RVT U1776 ( .A1(stage_regs_1__3__2_), .A2(n755), .Y(n784) );
  HADDX1_RVT U1777 ( .A0(stage_regs_1__3__6_), .B0(n756), .SO(n783) );
  AO221X1_RVT U1778 ( .A1(stage_regs_1__3__6_), .A2(stage_regs_1__3__2_), .A3(
        stage_regs_1__3__6_), .A4(n1741), .A5(n758), .Y(n768) );
  FADDX1_RVT U1779 ( .A(n761), .B(n760), .CI(n759), .CO(n730), .S(n762) );
  AO21X1_RVT U1780 ( .A1(n765), .A2(stage_regs_1__3__5_), .A3(n764), .Y(n769)
         );
  AO222X1_RVT U1781 ( .A1(stage_regs_1__3__5_), .A2(n1741), .A3(
        stage_regs_1__3__5_), .A4(stage_regs_1__3__1_), .A5(n1741), .A6(
        stage_regs_1__3__7_), .Y(n779) );
  FADDX1_RVT U1782 ( .A(n773), .B(n772), .CI(n771), .CO(n744), .S(n774) );
  FADDX1_RVT U1783 ( .A(n776), .B(n775), .CI(n774), .CO(intadd_0_B_5_), .S(
        intadd_0_A_4_) );
  FADDX1_RVT U1784 ( .A(n779), .B(n778), .CI(n777), .S(n788) );
  FADDX1_RVT U1785 ( .A(n782), .B(n781), .CI(n780), .CO(n787), .S(n297) );
  FADDX1_RVT U1786 ( .A(n788), .B(n787), .CI(n786), .CO(intadd_0_B_4_), .S(
        intadd_0_A_3_) );
  FADDX1_RVT U1787 ( .A(n790), .B(n793), .CI(n789), .S(intadd_0_A_1_) );
  AND2X1_RVT U1788 ( .A1(n800), .A2(n860), .Y(n795) );
  NAND2X0_RVT U1789 ( .A1(stage_regs_1__3__2_), .A2(n21), .Y(n856) );
  AO221X1_RVT U1790 ( .A1(n799), .A2(n849), .A3(n850), .A4(n846), .A5(n851), 
        .Y(n845) );
  FADDX1_RVT U1791 ( .A(n805), .B(n804), .CI(n803), .CO(intadd_1_B_2_), .S(
        intadd_1_B_1_) );
  FADDX1_RVT U1792 ( .A(n808), .B(n807), .CI(n806), .CO(n809), .S(n529) );
  AO222X1_RVT U1793 ( .A1(stage_regs_1__3__26_), .A2(n1741), .A3(
        stage_regs_1__3__26_), .A4(stage_regs_1__3__22_), .A5(n1741), .A6(
        stage_regs_1__3__28_), .Y(n810) );
  FADDX1_RVT U1794 ( .A(n814), .B(n831), .CI(n813), .CO(n818), .S(n806) );
  NAND2X0_RVT U1795 ( .A1(n822), .A2(n815), .Y(n816) );
  FADDX1_RVT U1796 ( .A(n819), .B(n818), .CI(n817), .CO(n820), .S(n825) );
  FADDX1_RVT U1797 ( .A(n827), .B(n826), .CI(n825), .CO(n828), .S(
        intadd_0_A_24_) );
  FADDX1_RVT U1800 ( .A(n831), .B(n834), .CI(n830), .CO(n833), .S(n819) );
  FADDX1_RVT U1801 ( .A(stage_regs_1__3__28_), .B(n833), .CI(n832), .S(n838)
         );
  FADDX1_RVT U1802 ( .A(n838), .B(n837), .CI(n836), .S(n840) );
  FADDX1_RVT U1803 ( .A(n841), .B(n840), .CI(n839), .S(n842) );
  HADDX1_RVT U1804 ( .A0(n843), .B0(n842), .SO(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N36) );
  OA21X1_RVT U1805 ( .A1(n845), .A2(n844), .A3(intadd_1_A_1_), .Y(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N10) );
  FADDX1_RVT U1806 ( .A(n849), .B(n848), .CI(n847), .S(n854) );
  HADDX1_RVT U1807 ( .A0(n854), .B0(n853), .SO(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N9) );
  NAND2X0_RVT U1808 ( .A1(n856), .A2(n855), .Y(n858) );
  NAND2X0_RVT U1809 ( .A1(n1606), .A2(n861), .Y(n857) );
  HADDX1_RVT U1810 ( .A0(n858), .B0(n857), .SO(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N8) );
  AO221X1_RVT U1811 ( .A1(n862), .A2(n861), .A3(n864), .A4(n860), .A5(n859), 
        .Y(STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N7) );
  NAND2X0_RVT U1812 ( .A1(n864), .A2(n863), .Y(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N6) );
  HADDX1_RVT U1813 ( .A0(n928), .B0(n1085), .SO(butterfly_out_wires[94]) );
  HADDX1_RVT U1814 ( .A0(n868), .B0(n1083), .SO(butterfly_out_wires[93]) );
  NAND2X0_RVT U1815 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[28]), 
        .A2(n1725), .Y(n869) );
  HADDX1_RVT U1816 ( .A0(n870), .B0(n1075), .SO(butterfly_out_wires[92]) );
  HADDX1_RVT U1817 ( .A0(n872), .B0(n1067), .SO(butterfly_out_wires[91]) );
  HADDX1_RVT U1818 ( .A0(n874), .B0(n1062), .SO(butterfly_out_wires[90]) );
  HADDX1_RVT U1819 ( .A0(n876), .B0(n1054), .SO(butterfly_out_wires[89]) );
  HADDX1_RVT U1820 ( .A0(n878), .B0(n1049), .SO(butterfly_out_wires[88]) );
  NAND2X0_RVT U1821 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[22]), 
        .A2(n1704), .Y(n1042) );
  NAND2X0_RVT U1822 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[16]), 
        .A2(n1684), .Y(n894) );
  HADDX1_RVT U1823 ( .A0(n917), .B0(n916), .SO(butterfly_out_wires[69]) );
  HADDX1_RVT U1824 ( .A0(n919), .B0(n918), .SO(butterfly_out_wires[68]) );
  HADDX1_RVT U1825 ( .A0(n921), .B0(n920), .SO(butterfly_out_wires[67]) );
  HADDX1_RVT U1826 ( .A0(n923), .B0(n922), .SO(butterfly_out_wires[66]) );
  AO22X1_RVT U1827 ( .A1(n927), .A2(n926), .A3(n925), .A4(n924), .Y(
        butterfly_out_wires[65]) );
  FADDX1_RVT U1828 ( .A(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_P_mod[31]), .B(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[31]), 
        .CI(n929), .S(butterfly_out_wires[95]) );
  AO22X1_RVT U1829 ( .A1(butterfly_out_wires[64]), .A2(n931), .A3(n930), .A4(
        n1089), .Y(butterfly_out_wires[0]) );
  OA221X1_RVT U1830 ( .A1(n932), .A2(butterfly_out_wires[64]), .A3(n932), .A4(
        n1089), .A5(n933), .Y(butterfly_out_wires[1]) );
  HADDX1_RVT U1831 ( .A0(n935), .B0(n934), .SO(butterfly_out_wires[2]) );
  OA221X1_RVT U1832 ( .A1(n937), .A2(n936), .A3(n937), .A4(n1089), .A5(n938), 
        .Y(butterfly_out_wires[3]) );
  HADDX1_RVT U1833 ( .A0(n940), .B0(n939), .SO(butterfly_out_wires[4]) );
  OA221X1_RVT U1834 ( .A1(n942), .A2(n941), .A3(n942), .A4(n1089), .A5(n943), 
        .Y(butterfly_out_wires[5]) );
  HADDX1_RVT U1835 ( .A0(n945), .B0(n944), .SO(butterfly_out_wires[6]) );
  OA221X1_RVT U1836 ( .A1(n966), .A2(n967), .A3(n966), .A4(n1089), .A5(n950), 
        .Y(butterfly_out_wires[8]) );
  AO22X1_RVT U1837 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[8]), 
        .A2(n1636), .A3(n952), .A4(n951), .Y(n958) );
  OA21X1_RVT U1838 ( .A1(n955), .A2(n968), .A3(n956), .Y(
        butterfly_out_wires[9]) );
  HADDX1_RVT U1839 ( .A0(n961), .B0(n969), .SO(butterfly_out_wires[10]) );
  AND4X1_RVT U1840 ( .A1(n969), .A2(n968), .A3(n967), .A4(n966), .Y(n982) );
  OA221X1_RVT U1841 ( .A1(n980), .A2(n982), .A3(n980), .A4(n1089), .A5(n970), 
        .Y(butterfly_out_wires[11]) );
  AO22X1_RVT U1842 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[11]), 
        .A2(n1652), .A3(n972), .A4(n971), .Y(n977) );
  HADDX1_RVT U1843 ( .A0(n975), .B0(n981), .SO(butterfly_out_wires[12]) );
  OA221X1_RVT U1844 ( .A1(n993), .A2(n995), .A3(n993), .A4(n1089), .A5(n983), 
        .Y(butterfly_out_wires[13]) );
  AO22X1_RVT U1845 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[13]), 
        .A2(n1660), .A3(n985), .A4(n984), .Y(n990) );
  HADDX1_RVT U1846 ( .A0(n988), .B0(n994), .SO(butterfly_out_wires[14]) );
  OA221X1_RVT U1847 ( .A1(n1006), .A2(n1008), .A3(n1006), .A4(n1089), .A5(n996), .Y(butterfly_out_wires[15]) );
  AO22X1_RVT U1848 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_pipe_A_reg[15]), 
        .A2(n1664), .A3(n998), .A4(n997), .Y(n1003) );
  HADDX1_RVT U1849 ( .A0(n1001), .B0(n1007), .SO(butterfly_out_wires[16]) );
  OA221X1_RVT U1850 ( .A1(n1019), .A2(n1021), .A3(n1019), .A4(n1089), .A5(
        n1009), .Y(butterfly_out_wires[17]) );
  HADDX1_RVT U1851 ( .A0(n1014), .B0(n1020), .SO(butterfly_out_wires[18]) );
  OA221X1_RVT U1852 ( .A1(n1032), .A2(n1034), .A3(n1032), .A4(n1089), .A5(
        n1022), .Y(butterfly_out_wires[19]) );
  HADDX1_RVT U1853 ( .A0(n1027), .B0(n1033), .SO(butterfly_out_wires[20]) );
  OA221X1_RVT U1854 ( .A1(n1045), .A2(n1047), .A3(n1045), .A4(n1089), .A5(
        n1035), .Y(butterfly_out_wires[21]) );
  HADDX1_RVT U1855 ( .A0(n1040), .B0(n1046), .SO(butterfly_out_wires[22]) );
  NAND3X0_RVT U1856 ( .A1(n1058), .A2(n1056), .A3(n1089), .Y(n1048) );
  OA221X1_RVT U1857 ( .A1(n1056), .A2(n1058), .A3(n1056), .A4(n1089), .A5(
        n1048), .Y(butterfly_out_wires[23]) );
  HADDX1_RVT U1858 ( .A0(n1050), .B0(n1057), .SO(butterfly_out_wires[24]) );
  NAND3X0_RVT U1859 ( .A1(n1071), .A2(n1069), .A3(n1089), .Y(n1059) );
  OA221X1_RVT U1860 ( .A1(n1069), .A2(n1071), .A3(n1069), .A4(n1089), .A5(
        n1059), .Y(butterfly_out_wires[25]) );
  HADDX1_RVT U1861 ( .A0(n1064), .B0(n1070), .SO(butterfly_out_wires[26]) );
  NAND3X0_RVT U1862 ( .A1(n1080), .A2(n1078), .A3(n1089), .Y(n1072) );
  OA221X1_RVT U1863 ( .A1(n1078), .A2(n1080), .A3(n1078), .A4(n1089), .A5(
        n1072), .Y(butterfly_out_wires[27]) );
  HADDX1_RVT U1864 ( .A0(n1077), .B0(n1079), .SO(butterfly_out_wires[28]) );
  AND2X1_RVT U1865 ( .A1(n1089), .A2(n1088), .Y(n1084) );
  HADDX1_RVT U1866 ( .A0(n1084), .B0(n1087), .SO(butterfly_out_wires[29]) );
  NAND3X0_RVT U1867 ( .A1(n1088), .A2(n1087), .A3(n1089), .Y(n1086) );
  HADDX1_RVT U1868 ( .A0(n1091), .B0(n1086), .SO(butterfly_out_wires[30]) );
  NAND2X0_RVT U1869 ( .A1(n1088), .A2(n1087), .Y(n1090) );
  FADDX1_RVT U1870 ( .A(n1096), .B(n1095), .CI(n1094), .S(
        butterfly_out_wires[31]) );
  AO22X1_RVT U1871 ( .A1(butterfly_out_wires[96]), .A2(n1098), .A3(n1097), 
        .A4(n1256), .Y(butterfly_out_wires[32]) );
  OA221X1_RVT U1872 ( .A1(n1099), .A2(butterfly_out_wires[96]), .A3(n1099), 
        .A4(n1256), .A5(n1100), .Y(butterfly_out_wires[33]) );
  HADDX1_RVT U1873 ( .A0(n1102), .B0(n1101), .SO(butterfly_out_wires[34]) );
  OA221X1_RVT U1874 ( .A1(n1104), .A2(n1103), .A3(n1104), .A4(n1256), .A5(
        n1105), .Y(butterfly_out_wires[35]) );
  HADDX1_RVT U1875 ( .A0(n1107), .B0(n1106), .SO(butterfly_out_wires[36]) );
  OA221X1_RVT U1876 ( .A1(n1109), .A2(n1108), .A3(n1109), .A4(n1256), .A5(
        n1110), .Y(butterfly_out_wires[37]) );
  HADDX1_RVT U1877 ( .A0(n1112), .B0(n1111), .SO(butterfly_out_wires[38]) );
  OA221X1_RVT U1878 ( .A1(n1133), .A2(n1134), .A3(n1133), .A4(n1256), .A5(
        n1117), .Y(butterfly_out_wires[40]) );
  AO22X1_RVT U1879 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[8]), 
        .A2(n1637), .A3(n1119), .A4(n1118), .Y(n1125) );
  OA21X1_RVT U1880 ( .A1(n1122), .A2(n1135), .A3(n1123), .Y(
        butterfly_out_wires[41]) );
  HADDX1_RVT U1881 ( .A0(n1128), .B0(n1136), .SO(butterfly_out_wires[42]) );
  AO22X1_RVT U1882 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[10]), 
        .A2(n1649), .A3(n1130), .A4(n1129), .Y(n1139) );
  AND4X1_RVT U1883 ( .A1(n1136), .A2(n1135), .A3(n1134), .A4(n1133), .Y(n1149)
         );
  OA221X1_RVT U1884 ( .A1(n1147), .A2(n1149), .A3(n1147), .A4(n1256), .A5(
        n1137), .Y(butterfly_out_wires[43]) );
  HADDX1_RVT U1885 ( .A0(n1142), .B0(n1148), .SO(butterfly_out_wires[44]) );
  AO22X1_RVT U1886 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[12]), 
        .A2(n1657), .A3(n1144), .A4(n1143), .Y(n1152) );
  OA221X1_RVT U1887 ( .A1(n1160), .A2(n1162), .A3(n1160), .A4(n1256), .A5(
        n1150), .Y(butterfly_out_wires[45]) );
  HADDX1_RVT U1888 ( .A0(n1155), .B0(n1161), .SO(butterfly_out_wires[46]) );
  OA221X1_RVT U1889 ( .A1(n1173), .A2(n1175), .A3(n1173), .A4(n1256), .A5(
        n1163), .Y(butterfly_out_wires[47]) );
  AO22X1_RVT U1890 ( .A1(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[15]), 
        .A2(n1665), .A3(n1165), .A4(n1164), .Y(n1170) );
  HADDX1_RVT U1891 ( .A0(n1168), .B0(n1174), .SO(butterfly_out_wires[48]) );
  OA221X1_RVT U1892 ( .A1(n1186), .A2(n1188), .A3(n1186), .A4(n1256), .A5(
        n1176), .Y(butterfly_out_wires[49]) );
  HADDX1_RVT U1893 ( .A0(n1181), .B0(n1187), .SO(butterfly_out_wires[50]) );
  OA221X1_RVT U1894 ( .A1(n1199), .A2(n1201), .A3(n1199), .A4(n1256), .A5(
        n1189), .Y(butterfly_out_wires[51]) );
  HADDX1_RVT U1895 ( .A0(n1194), .B0(n1200), .SO(butterfly_out_wires[52]) );
  OA221X1_RVT U1896 ( .A1(n1212), .A2(n1214), .A3(n1212), .A4(n1256), .A5(
        n1202), .Y(butterfly_out_wires[53]) );
  HADDX1_RVT U1897 ( .A0(n1207), .B0(n1213), .SO(butterfly_out_wires[54]) );
  NAND3X0_RVT U1898 ( .A1(n1225), .A2(n1223), .A3(n1256), .Y(n1215) );
  OA221X1_RVT U1899 ( .A1(n1223), .A2(n1225), .A3(n1223), .A4(n1256), .A5(
        n1215), .Y(butterfly_out_wires[55]) );
  HADDX1_RVT U1900 ( .A0(n1217), .B0(n1224), .SO(butterfly_out_wires[56]) );
  NAND3X0_RVT U1901 ( .A1(n1238), .A2(n1236), .A3(n1256), .Y(n1226) );
  OA221X1_RVT U1902 ( .A1(n1236), .A2(n1238), .A3(n1236), .A4(n1256), .A5(
        n1226), .Y(butterfly_out_wires[57]) );
  HADDX1_RVT U1903 ( .A0(n1231), .B0(n1237), .SO(butterfly_out_wires[58]) );
  NAND3X0_RVT U1904 ( .A1(n1247), .A2(n1245), .A3(n1256), .Y(n1239) );
  OA221X1_RVT U1905 ( .A1(n1245), .A2(n1247), .A3(n1245), .A4(n1256), .A5(
        n1239), .Y(butterfly_out_wires[59]) );
  HADDX1_RVT U1906 ( .A0(n1244), .B0(n1246), .SO(butterfly_out_wires[60]) );
  AND2X1_RVT U1907 ( .A1(n1256), .A2(n1255), .Y(n1251) );
  HADDX1_RVT U1908 ( .A0(n1251), .B0(n1254), .SO(butterfly_out_wires[61]) );
  NAND3X0_RVT U1909 ( .A1(n1255), .A2(n1254), .A3(n1256), .Y(n1253) );
  HADDX1_RVT U1910 ( .A0(n1258), .B0(n1253), .SO(butterfly_out_wires[62]) );
  NAND2X0_RVT U1911 ( .A1(n1255), .A2(n1254), .Y(n1257) );
  FADDX1_RVT U1912 ( .A(n1263), .B(n1262), .CI(n1261), .S(
        butterfly_out_wires[63]) );
  AO22X1_RVT U1913 ( .A1(butterfly_out_wires[160]), .A2(n1265), .A3(n1264), 
        .A4(n1423), .Y(butterfly_out_wires[128]) );
  OA221X1_RVT U1914 ( .A1(n1266), .A2(butterfly_out_wires[160]), .A3(n1266), 
        .A4(n1423), .A5(n1267), .Y(butterfly_out_wires[129]) );
  HADDX1_RVT U1915 ( .A0(n1269), .B0(n1268), .SO(butterfly_out_wires[130]) );
  OA221X1_RVT U1916 ( .A1(n1271), .A2(n1270), .A3(n1271), .A4(n1423), .A5(
        n1272), .Y(butterfly_out_wires[131]) );
  HADDX1_RVT U1917 ( .A0(n1274), .B0(n1273), .SO(butterfly_out_wires[132]) );
  OA221X1_RVT U1918 ( .A1(n1276), .A2(n1275), .A3(n1276), .A4(n1423), .A5(
        n1277), .Y(butterfly_out_wires[133]) );
  HADDX1_RVT U1919 ( .A0(n1279), .B0(n1278), .SO(butterfly_out_wires[134]) );
  OA221X1_RVT U1920 ( .A1(n1300), .A2(n1301), .A3(n1300), .A4(n1423), .A5(
        n1284), .Y(butterfly_out_wires[136]) );
  AO22X1_RVT U1921 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[8]), 
        .A2(n1638), .A3(n1286), .A4(n1285), .Y(n1292) );
  OA21X1_RVT U1922 ( .A1(n1289), .A2(n1302), .A3(n1290), .Y(
        butterfly_out_wires[137]) );
  AO22X1_RVT U1923 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[9]), 
        .A2(n1642), .A3(n1292), .A4(n1291), .Y(n1297) );
  HADDX1_RVT U1924 ( .A0(n1295), .B0(n1303), .SO(butterfly_out_wires[138]) );
  AND4X1_RVT U1925 ( .A1(n1303), .A2(n1302), .A3(n1301), .A4(n1300), .Y(n1316)
         );
  OA221X1_RVT U1926 ( .A1(n1314), .A2(n1316), .A3(n1314), .A4(n1423), .A5(
        n1304), .Y(butterfly_out_wires[139]) );
  AO22X1_RVT U1927 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11]), 
        .A2(n1654), .A3(n1306), .A4(n1305), .Y(n1311) );
  HADDX1_RVT U1928 ( .A0(n1309), .B0(n1315), .SO(butterfly_out_wires[140]) );
  OA221X1_RVT U1929 ( .A1(n1327), .A2(n1329), .A3(n1327), .A4(n1423), .A5(
        n1317), .Y(butterfly_out_wires[141]) );
  AO22X1_RVT U1930 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_1__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[13]), 
        .A2(n1662), .A3(n1319), .A4(n1318), .Y(n1324) );
  HADDX1_RVT U1931 ( .A0(n1322), .B0(n1328), .SO(butterfly_out_wires[142]) );
  OA221X1_RVT U1932 ( .A1(n1340), .A2(n1342), .A3(n1340), .A4(n1423), .A5(
        n1330), .Y(butterfly_out_wires[143]) );
  HADDX1_RVT U1933 ( .A0(n1335), .B0(n1341), .SO(butterfly_out_wires[144]) );
  OA221X1_RVT U1934 ( .A1(n1353), .A2(n1355), .A3(n1353), .A4(n1423), .A5(
        n1343), .Y(butterfly_out_wires[145]) );
  HADDX1_RVT U1935 ( .A0(n1348), .B0(n1354), .SO(butterfly_out_wires[146]) );
  OA221X1_RVT U1936 ( .A1(n1366), .A2(n1368), .A3(n1366), .A4(n1423), .A5(
        n1356), .Y(butterfly_out_wires[147]) );
  HADDX1_RVT U1937 ( .A0(n1361), .B0(n1367), .SO(butterfly_out_wires[148]) );
  OA221X1_RVT U1938 ( .A1(n1379), .A2(n1381), .A3(n1379), .A4(n1423), .A5(
        n1369), .Y(butterfly_out_wires[149]) );
  HADDX1_RVT U1939 ( .A0(n1374), .B0(n1380), .SO(butterfly_out_wires[150]) );
  NAND3X0_RVT U1940 ( .A1(n1392), .A2(n1390), .A3(n1423), .Y(n1382) );
  OA221X1_RVT U1941 ( .A1(n1390), .A2(n1392), .A3(n1390), .A4(n1423), .A5(
        n1382), .Y(butterfly_out_wires[151]) );
  HADDX1_RVT U1942 ( .A0(n1384), .B0(n1391), .SO(butterfly_out_wires[152]) );
  NAND3X0_RVT U1943 ( .A1(n1405), .A2(n1403), .A3(n1423), .Y(n1393) );
  OA221X1_RVT U1944 ( .A1(n1403), .A2(n1405), .A3(n1403), .A4(n1423), .A5(
        n1393), .Y(butterfly_out_wires[153]) );
  HADDX1_RVT U1945 ( .A0(n1398), .B0(n1404), .SO(butterfly_out_wires[154]) );
  NAND3X0_RVT U1946 ( .A1(n1414), .A2(n1412), .A3(n1423), .Y(n1406) );
  OA221X1_RVT U1947 ( .A1(n1412), .A2(n1414), .A3(n1412), .A4(n1423), .A5(
        n1406), .Y(butterfly_out_wires[155]) );
  HADDX1_RVT U1948 ( .A0(n1411), .B0(n1413), .SO(butterfly_out_wires[156]) );
  AND2X1_RVT U1949 ( .A1(n1423), .A2(n1422), .Y(n1418) );
  HADDX1_RVT U1950 ( .A0(n1418), .B0(n1421), .SO(butterfly_out_wires[157]) );
  NAND3X0_RVT U1951 ( .A1(n1422), .A2(n1421), .A3(n1423), .Y(n1420) );
  HADDX1_RVT U1952 ( .A0(n1425), .B0(n1420), .SO(butterfly_out_wires[158]) );
  NAND2X0_RVT U1953 ( .A1(n1422), .A2(n1421), .Y(n1424) );
  FADDX1_RVT U1954 ( .A(n1430), .B(n1429), .CI(n1428), .S(
        butterfly_out_wires[159]) );
  AO22X1_RVT U1955 ( .A1(butterfly_out_wires[224]), .A2(n1432), .A3(n1431), 
        .A4(n1590), .Y(butterfly_out_wires[192]) );
  OA221X1_RVT U1956 ( .A1(n1433), .A2(butterfly_out_wires[224]), .A3(n1433), 
        .A4(n1590), .A5(n1434), .Y(butterfly_out_wires[193]) );
  HADDX1_RVT U1957 ( .A0(n1436), .B0(n1435), .SO(butterfly_out_wires[194]) );
  OA221X1_RVT U1958 ( .A1(n1438), .A2(n1437), .A3(n1438), .A4(n1590), .A5(
        n1439), .Y(butterfly_out_wires[195]) );
  HADDX1_RVT U1959 ( .A0(n1441), .B0(n1440), .SO(butterfly_out_wires[196]) );
  OA221X1_RVT U1960 ( .A1(n1443), .A2(n1442), .A3(n1443), .A4(n1590), .A5(
        n1444), .Y(butterfly_out_wires[197]) );
  HADDX1_RVT U1961 ( .A0(n1446), .B0(n1445), .SO(butterfly_out_wires[198]) );
  OA221X1_RVT U1962 ( .A1(n1467), .A2(n1468), .A3(n1467), .A4(n1590), .A5(
        n1451), .Y(butterfly_out_wires[200]) );
  AO22X1_RVT U1963 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[8]), 
        .A2(n1639), .A3(n1453), .A4(n1452), .Y(n1459) );
  OA21X1_RVT U1964 ( .A1(n1456), .A2(n1469), .A3(n1457), .Y(
        butterfly_out_wires[201]) );
  HADDX1_RVT U1965 ( .A0(n1462), .B0(n1470), .SO(butterfly_out_wires[202]) );
  AND4X1_RVT U1966 ( .A1(n1470), .A2(n1469), .A3(n1468), .A4(n1467), .Y(n1483)
         );
  OA221X1_RVT U1967 ( .A1(n1481), .A2(n1483), .A3(n1481), .A4(n1590), .A5(
        n1471), .Y(butterfly_out_wires[203]) );
  AO22X1_RVT U1968 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[11]), 
        .A2(n1655), .A3(n1473), .A4(n1472), .Y(n1478) );
  HADDX1_RVT U1969 ( .A0(n1476), .B0(n1482), .SO(butterfly_out_wires[204]) );
  OA221X1_RVT U1970 ( .A1(n1494), .A2(n1496), .A3(n1494), .A4(n1590), .A5(
        n1484), .Y(butterfly_out_wires[205]) );
  AO22X1_RVT U1971 ( .A1(
        STAGE_LOOP_0__GROUP_LOOP_0__BFLY_LOOP_0__ntt_bfly_inst_pipe_A_reg[13]), 
        .A2(n1663), .A3(n1486), .A4(n1485), .Y(n1491) );
  HADDX1_RVT U1972 ( .A0(n1489), .B0(n1495), .SO(butterfly_out_wires[206]) );
  OA221X1_RVT U1973 ( .A1(n1507), .A2(n1509), .A3(n1507), .A4(n1590), .A5(
        n1497), .Y(butterfly_out_wires[207]) );
  HADDX1_RVT U1974 ( .A0(n1502), .B0(n1508), .SO(butterfly_out_wires[208]) );
  OA221X1_RVT U1975 ( .A1(n1520), .A2(n1522), .A3(n1520), .A4(n1590), .A5(
        n1510), .Y(butterfly_out_wires[209]) );
  HADDX1_RVT U1976 ( .A0(n1515), .B0(n1521), .SO(butterfly_out_wires[210]) );
  OA221X1_RVT U1977 ( .A1(n1533), .A2(n1535), .A3(n1533), .A4(n1590), .A5(
        n1523), .Y(butterfly_out_wires[211]) );
  HADDX1_RVT U1978 ( .A0(n1528), .B0(n1534), .SO(butterfly_out_wires[212]) );
  OA221X1_RVT U1979 ( .A1(n1546), .A2(n1548), .A3(n1546), .A4(n1590), .A5(
        n1536), .Y(butterfly_out_wires[213]) );
  HADDX1_RVT U1980 ( .A0(n1541), .B0(n1547), .SO(butterfly_out_wires[214]) );
  NAND3X0_RVT U1981 ( .A1(n1559), .A2(n1557), .A3(n1590), .Y(n1549) );
  OA221X1_RVT U1982 ( .A1(n1557), .A2(n1559), .A3(n1557), .A4(n1590), .A5(
        n1549), .Y(butterfly_out_wires[215]) );
  HADDX1_RVT U1983 ( .A0(n1551), .B0(n1558), .SO(butterfly_out_wires[216]) );
  NAND3X0_RVT U1984 ( .A1(n1572), .A2(n1570), .A3(n1590), .Y(n1560) );
  OA221X1_RVT U1985 ( .A1(n1570), .A2(n1572), .A3(n1570), .A4(n1590), .A5(
        n1560), .Y(butterfly_out_wires[217]) );
  HADDX1_RVT U1986 ( .A0(n1565), .B0(n1571), .SO(butterfly_out_wires[218]) );
  NAND3X0_RVT U1987 ( .A1(n1581), .A2(n1579), .A3(n1590), .Y(n1573) );
  OA221X1_RVT U1988 ( .A1(n1579), .A2(n1581), .A3(n1579), .A4(n1590), .A5(
        n1573), .Y(butterfly_out_wires[219]) );
  HADDX1_RVT U1989 ( .A0(n1578), .B0(n1580), .SO(butterfly_out_wires[220]) );
  AND2X1_RVT U1990 ( .A1(n1590), .A2(n1589), .Y(n1585) );
  HADDX1_RVT U1991 ( .A0(n1585), .B0(n1588), .SO(butterfly_out_wires[221]) );
  NAND3X0_RVT U1992 ( .A1(n1589), .A2(n1588), .A3(n1590), .Y(n1587) );
  HADDX1_RVT U1993 ( .A0(n1592), .B0(n1587), .SO(butterfly_out_wires[222]) );
  NAND2X0_RVT U1994 ( .A1(n1589), .A2(n1588), .Y(n1591) );
  FADDX1_RVT U1995 ( .A(n1597), .B(n1596), .CI(n1595), .S(
        butterfly_out_wires[223]) );
  FADDX1_RVT intadd_0_U23 ( .A(intadd_0_B_4_), .B(intadd_0_A_4_), .CI(
        intadd_0_n23), .CO(intadd_0_n22), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N15) );
  FADDX1_RVT intadd_0_U21 ( .A(intadd_0_B_6_), .B(intadd_0_A_6_), .CI(
        intadd_0_n21), .CO(intadd_0_n20), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N17) );
  FADDX1_RVT intadd_0_U20 ( .A(intadd_0_B_7_), .B(intadd_0_A_7_), .CI(
        intadd_0_n20), .CO(intadd_0_n19), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N18) );
  FADDX1_RVT intadd_0_U15 ( .A(intadd_0_B_12_), .B(intadd_0_A_12_), .CI(
        intadd_0_n15), .CO(intadd_0_n14), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N23) );
  FADDX1_RVT intadd_0_U13 ( .A(intadd_0_B_14_), .B(intadd_0_A_14_), .CI(
        intadd_0_n13), .CO(intadd_0_n12), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N25) );
  FADDX1_RVT intadd_0_U11 ( .A(intadd_0_B_16_), .B(intadd_0_A_16_), .CI(
        intadd_0_n11), .CO(intadd_0_n10), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N27) );
  FADDX1_RVT intadd_0_U9 ( .A(intadd_0_B_18_), .B(intadd_0_A_18_), .CI(
        intadd_0_n9), .CO(intadd_0_n8), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N29) );
  FADDX1_RVT intadd_0_U7 ( .A(intadd_0_B_20_), .B(intadd_0_A_20_), .CI(
        intadd_0_n7), .CO(intadd_0_n6), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N31) );
  FADDX1_RVT intadd_0_U6 ( .A(intadd_0_B_21_), .B(intadd_0_A_21_), .CI(
        intadd_0_n6), .CO(intadd_0_n5), .S(
        STAGE_LOOP_1__GROUP_LOOP_0__BFLY_LOOP_1__ntt_bfly_inst_N32) );
  INVX8_RVT U1252 ( .A(n5), .Y(n10) );
  INVX1_RVT U140 ( .A(reset), .Y(n15) );
  FADDX1_RVT U235 ( .A(intadd_0_n2), .B(n831), .CI(n828), .S(n841) );
  XNOR2X1_RVT U256 ( .A1(n1364), .A2(n1371), .Y(n1379) );
  XNOR2X1_RVT U273 ( .A1(n1012), .A2(n1016), .Y(n1020) );
  XNOR2X1_RVT U280 ( .A1(n986), .A2(n990), .Y(n994) );
  XNOR2X1_RVT U282 ( .A1(n1449), .A2(n1453), .Y(n1467) );
  XNOR2X1_RVT U283 ( .A1(n1115), .A2(n1119), .Y(n1133) );
  XNOR2X1_RVT U284 ( .A1(n1120), .A2(n1125), .Y(n1135) );
  XNOR2X1_RVT U286 ( .A1(n1287), .A2(n1292), .Y(n1302) );
  XNOR2X1_RVT U298 ( .A1(n1454), .A2(n1459), .Y(n1469) );
  XNOR2X1_RVT U301 ( .A1(n437), .A2(n53), .Y(n1273) );
  XNOR2X1_RVT U302 ( .A1(n368), .A2(n240), .Y(n1445) );
  XNOR2X1_RVT U303 ( .A1(n433), .A2(n57), .Y(n1278) );
  XNOR2X1_RVT U304 ( .A1(n914), .A2(n179), .Y(n944) );
  XNOR2X1_RVT U490 ( .A1(n498), .A2(n118), .Y(n1111) );
  OA21X1_RVT U603 ( .A1(stage_regs_1__3__3_), .A2(n792), .A3(n791), .Y(
        intadd_0_CI) );
  NAND2X0_RVT U679 ( .A1(stage_regs_1__3__3_), .A2(n792), .Y(n791) );
  AND2X1_RVT U777 ( .A1(n20), .A2(stage_regs_1__3__5_), .Y(n792) );
  NAND3X1_RVT U780 ( .A1(stage_regs_1__3__6_), .A2(stage_regs_1__3__4_), .A3(
        n21), .Y(n778) );
  INVX0_RVT U807 ( .A(mode_pipe[1]), .Y(n21) );
endmodule

