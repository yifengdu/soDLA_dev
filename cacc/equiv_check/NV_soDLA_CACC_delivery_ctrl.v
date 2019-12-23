module NV_soDLA_CACC_calculator_oc_gate( // @[:@3.2]
  input         nvdla_core_clk, // @[:@6.4]
  input         nvdla_core_rstn, // @[:@6.4]
  input  [31:0] calc_fout_sat, // @[:@6.4]
  input         calc_layer_end_out, // @[:@6.4]
  input         calc_stripe_end_out, // @[:@6.4]
  input         calc_dlv_valid_out, // @[:@6.4]
  output [31:0] dp2reg_sat_count // @[:@6.4]
);
  wire  _T_20; // @[NV_soDLA_CACC_calculator_oc_gate.scala 24:38:@8.4]
  reg  dlv_sat_vld_d1; // @[NV_soDLA_CACC_calculator_oc_gate.scala 26:33:@9.4]
  reg [31:0] _RAND_0;
  reg  dlv_sat_end_d1; // @[NV_soDLA_CACC_calculator_oc_gate.scala 27:33:@10.4]
  reg [31:0] _RAND_1;
  reg [31:0] dlv_sat_bit_d1; // @[NV_soDLA_CACC_calculator_oc_gate.scala 28:33:@11.4]
  reg [31:0] _RAND_2;
  reg  dlv_sat_clr_d1; // @[NV_soDLA_CACC_calculator_oc_gate.scala 29:33:@12.4]
  reg [31:0] _RAND_3;
  wire  dlv_sat_end; // @[NV_soDLA_CACC_calculator_oc_gate.scala 32:45:@13.4]
  wire  _T_29; // @[NV_soDLA_CACC_calculator_oc_gate.scala 33:47:@14.4]
  wire  _T_30; // @[NV_soDLA_CACC_calculator_oc_gate.scala 33:45:@15.4]
  wire  dlv_sat_clr; // @[NV_soDLA_CACC_calculator_oc_gate.scala 33:60:@16.4]
  wire  _GEN_0; // @[NV_soDLA_CACC_calculator_oc_gate.scala 36:32:@18.4]
  wire [31:0] _GEN_1; // @[NV_soDLA_CACC_calculator_oc_gate.scala 36:32:@18.4]
  wire  _T_31; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@23.4]
  wire  _T_32; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@24.4]
  wire  _T_33; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@25.4]
  wire  _T_34; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@26.4]
  wire  _T_35; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@27.4]
  wire  _T_36; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@28.4]
  wire  _T_37; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@29.4]
  wire  _T_38; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@30.4]
  wire  _T_39; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@31.4]
  wire  _T_40; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@32.4]
  wire  _T_41; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@33.4]
  wire  _T_42; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@34.4]
  wire  _T_43; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@35.4]
  wire  _T_44; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@36.4]
  wire  _T_45; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@37.4]
  wire  _T_46; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@38.4]
  wire  _T_47; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@39.4]
  wire  _T_48; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@40.4]
  wire  _T_49; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@41.4]
  wire  _T_50; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@42.4]
  wire  _T_51; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@43.4]
  wire  _T_52; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@44.4]
  wire  _T_53; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@45.4]
  wire  _T_54; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@46.4]
  wire  _T_55; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@47.4]
  wire  _T_56; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@48.4]
  wire  _T_57; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@49.4]
  wire  _T_58; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@50.4]
  wire  _T_59; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@51.4]
  wire  _T_60; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@52.4]
  wire  _T_61; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@53.4]
  wire  _T_62; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@54.4]
  wire [1:0] _T_101; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@88.4]
  wire [1:0] _GEN_3; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@89.4]
  wire [2:0] _T_102; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@89.4]
  wire [2:0] _GEN_4; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@90.4]
  wire [3:0] _T_103; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@90.4]
  wire [3:0] _GEN_5; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@91.4]
  wire [4:0] _T_104; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@91.4]
  wire [4:0] _GEN_6; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@92.4]
  wire [5:0] _T_105; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@92.4]
  wire [5:0] _GEN_7; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@93.4]
  wire [6:0] _T_106; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@93.4]
  wire [6:0] _GEN_8; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@94.4]
  wire [7:0] _T_107; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@94.4]
  wire [7:0] _GEN_9; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@95.4]
  wire [8:0] _T_108; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@95.4]
  wire [8:0] _GEN_10; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@96.4]
  wire [9:0] _T_109; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@96.4]
  wire [9:0] _GEN_11; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@97.4]
  wire [10:0] _T_110; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@97.4]
  wire [10:0] _GEN_12; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@98.4]
  wire [11:0] _T_111; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@98.4]
  wire [11:0] _GEN_13; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@99.4]
  wire [12:0] _T_112; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@99.4]
  wire [12:0] _GEN_14; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@100.4]
  wire [13:0] _T_113; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@100.4]
  wire [13:0] _GEN_15; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@101.4]
  wire [14:0] _T_114; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@101.4]
  wire [14:0] _GEN_16; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@102.4]
  wire [15:0] _T_115; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@102.4]
  wire [15:0] _GEN_17; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@103.4]
  wire [16:0] _T_116; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@103.4]
  wire [16:0] _GEN_18; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@104.4]
  wire [17:0] _T_117; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@104.4]
  wire [17:0] _GEN_19; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@105.4]
  wire [18:0] _T_118; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@105.4]
  wire [18:0] _GEN_20; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@106.4]
  wire [19:0] _T_119; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@106.4]
  wire [19:0] _GEN_21; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@107.4]
  wire [20:0] _T_120; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@107.4]
  wire [20:0] _GEN_22; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@108.4]
  wire [21:0] _T_121; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@108.4]
  wire [21:0] _GEN_23; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@109.4]
  wire [22:0] _T_122; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@109.4]
  wire [22:0] _GEN_24; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@110.4]
  wire [23:0] _T_123; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@110.4]
  wire [23:0] _GEN_25; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@111.4]
  wire [24:0] _T_124; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@111.4]
  wire [24:0] _GEN_26; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@112.4]
  wire [25:0] _T_125; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@112.4]
  wire [25:0] _GEN_27; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@113.4]
  wire [26:0] _T_126; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@113.4]
  wire [26:0] _GEN_28; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@114.4]
  wire [27:0] _T_127; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@114.4]
  wire [27:0] _GEN_29; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@115.4]
  wire [28:0] _T_128; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@115.4]
  wire [28:0] _GEN_30; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@116.4]
  wire [29:0] _T_129; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@116.4]
  wire [29:0] _GEN_31; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@117.4]
  wire [30:0] _T_130; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@117.4]
  wire [30:0] _GEN_32; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@118.4]
  wire [31:0] sat_sum; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@118.4]
  reg [31:0] sat_count; // @[NV_soDLA_CACC_calculator_oc_gate.scala 43:28:@119.4]
  reg [31:0] _RAND_4;
  wire [32:0] _T_133; // @[NV_soDLA_CACC_calculator_oc_gate.scala 44:36:@120.4]
  wire [31:0] sat_count_inc; // @[NV_soDLA_CACC_calculator_oc_gate.scala 44:47:@121.4]
  wire  sat_carry; // @[NV_soDLA_CACC_calculator_oc_gate.scala 45:43:@123.4]
  wire [31:0] _T_140; // @[NV_soDLA_CACC_calculator_oc_gate.scala 47:26:@125.4]
  wire [31:0] sat_count_w; // @[NV_soDLA_CACC_calculator_oc_gate.scala 46:26:@126.4]
  wire  _T_142; // @[NV_soDLA_CACC_calculator_oc_gate.scala 48:49:@127.4]
  wire  _T_143; // @[NV_soDLA_CACC_calculator_oc_gate.scala 48:54:@128.4]
  wire  sat_reg_en; // @[NV_soDLA_CACC_calculator_oc_gate.scala 48:37:@129.4]
  wire [31:0] _GEN_2; // @[NV_soDLA_CACC_calculator_oc_gate.scala 49:21:@130.4]
  assign _T_20 = nvdla_core_rstn == 1'h0; // @[NV_soDLA_CACC_calculator_oc_gate.scala 24:38:@8.4]
  assign dlv_sat_end = calc_layer_end_out & calc_stripe_end_out; // @[NV_soDLA_CACC_calculator_oc_gate.scala 32:45:@13.4]
  assign _T_29 = ~ dlv_sat_end; // @[NV_soDLA_CACC_calculator_oc_gate.scala 33:47:@14.4]
  assign _T_30 = calc_dlv_valid_out & _T_29; // @[NV_soDLA_CACC_calculator_oc_gate.scala 33:45:@15.4]
  assign dlv_sat_clr = _T_30 & dlv_sat_end_d1; // @[NV_soDLA_CACC_calculator_oc_gate.scala 33:60:@16.4]
  assign _GEN_0 = calc_dlv_valid_out ? dlv_sat_end : dlv_sat_end_d1; // @[NV_soDLA_CACC_calculator_oc_gate.scala 36:32:@18.4]
  assign _GEN_1 = calc_dlv_valid_out ? calc_fout_sat : dlv_sat_bit_d1; // @[NV_soDLA_CACC_calculator_oc_gate.scala 36:32:@18.4]
  assign _T_31 = dlv_sat_bit_d1[0]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@23.4]
  assign _T_32 = dlv_sat_bit_d1[1]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@24.4]
  assign _T_33 = dlv_sat_bit_d1[2]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@25.4]
  assign _T_34 = dlv_sat_bit_d1[3]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@26.4]
  assign _T_35 = dlv_sat_bit_d1[4]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@27.4]
  assign _T_36 = dlv_sat_bit_d1[5]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@28.4]
  assign _T_37 = dlv_sat_bit_d1[6]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@29.4]
  assign _T_38 = dlv_sat_bit_d1[7]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@30.4]
  assign _T_39 = dlv_sat_bit_d1[8]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@31.4]
  assign _T_40 = dlv_sat_bit_d1[9]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@32.4]
  assign _T_41 = dlv_sat_bit_d1[10]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@33.4]
  assign _T_42 = dlv_sat_bit_d1[11]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@34.4]
  assign _T_43 = dlv_sat_bit_d1[12]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@35.4]
  assign _T_44 = dlv_sat_bit_d1[13]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@36.4]
  assign _T_45 = dlv_sat_bit_d1[14]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@37.4]
  assign _T_46 = dlv_sat_bit_d1[15]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@38.4]
  assign _T_47 = dlv_sat_bit_d1[16]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@39.4]
  assign _T_48 = dlv_sat_bit_d1[17]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@40.4]
  assign _T_49 = dlv_sat_bit_d1[18]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@41.4]
  assign _T_50 = dlv_sat_bit_d1[19]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@42.4]
  assign _T_51 = dlv_sat_bit_d1[20]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@43.4]
  assign _T_52 = dlv_sat_bit_d1[21]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@44.4]
  assign _T_53 = dlv_sat_bit_d1[22]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@45.4]
  assign _T_54 = dlv_sat_bit_d1[23]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@46.4]
  assign _T_55 = dlv_sat_bit_d1[24]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@47.4]
  assign _T_56 = dlv_sat_bit_d1[25]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@48.4]
  assign _T_57 = dlv_sat_bit_d1[26]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@49.4]
  assign _T_58 = dlv_sat_bit_d1[27]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@50.4]
  assign _T_59 = dlv_sat_bit_d1[28]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@51.4]
  assign _T_60 = dlv_sat_bit_d1[29]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@52.4]
  assign _T_61 = dlv_sat_bit_d1[30]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@53.4]
  assign _T_62 = dlv_sat_bit_d1[31]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:77:@54.4]
  assign _T_101 = _T_31 + _T_32; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@88.4]
  assign _GEN_3 = {{1'd0}, _T_33}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@89.4]
  assign _T_102 = _T_101 + _GEN_3; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@89.4]
  assign _GEN_4 = {{2'd0}, _T_34}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@90.4]
  assign _T_103 = _T_102 + _GEN_4; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@90.4]
  assign _GEN_5 = {{3'd0}, _T_35}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@91.4]
  assign _T_104 = _T_103 + _GEN_5; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@91.4]
  assign _GEN_6 = {{4'd0}, _T_36}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@92.4]
  assign _T_105 = _T_104 + _GEN_6; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@92.4]
  assign _GEN_7 = {{5'd0}, _T_37}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@93.4]
  assign _T_106 = _T_105 + _GEN_7; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@93.4]
  assign _GEN_8 = {{6'd0}, _T_38}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@94.4]
  assign _T_107 = _T_106 + _GEN_8; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@94.4]
  assign _GEN_9 = {{7'd0}, _T_39}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@95.4]
  assign _T_108 = _T_107 + _GEN_9; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@95.4]
  assign _GEN_10 = {{8'd0}, _T_40}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@96.4]
  assign _T_109 = _T_108 + _GEN_10; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@96.4]
  assign _GEN_11 = {{9'd0}, _T_41}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@97.4]
  assign _T_110 = _T_109 + _GEN_11; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@97.4]
  assign _GEN_12 = {{10'd0}, _T_42}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@98.4]
  assign _T_111 = _T_110 + _GEN_12; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@98.4]
  assign _GEN_13 = {{11'd0}, _T_43}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@99.4]
  assign _T_112 = _T_111 + _GEN_13; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@99.4]
  assign _GEN_14 = {{12'd0}, _T_44}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@100.4]
  assign _T_113 = _T_112 + _GEN_14; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@100.4]
  assign _GEN_15 = {{13'd0}, _T_45}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@101.4]
  assign _T_114 = _T_113 + _GEN_15; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@101.4]
  assign _GEN_16 = {{14'd0}, _T_46}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@102.4]
  assign _T_115 = _T_114 + _GEN_16; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@102.4]
  assign _GEN_17 = {{15'd0}, _T_47}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@103.4]
  assign _T_116 = _T_115 + _GEN_17; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@103.4]
  assign _GEN_18 = {{16'd0}, _T_48}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@104.4]
  assign _T_117 = _T_116 + _GEN_18; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@104.4]
  assign _GEN_19 = {{17'd0}, _T_49}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@105.4]
  assign _T_118 = _T_117 + _GEN_19; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@105.4]
  assign _GEN_20 = {{18'd0}, _T_50}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@106.4]
  assign _T_119 = _T_118 + _GEN_20; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@106.4]
  assign _GEN_21 = {{19'd0}, _T_51}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@107.4]
  assign _T_120 = _T_119 + _GEN_21; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@107.4]
  assign _GEN_22 = {{20'd0}, _T_52}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@108.4]
  assign _T_121 = _T_120 + _GEN_22; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@108.4]
  assign _GEN_23 = {{21'd0}, _T_53}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@109.4]
  assign _T_122 = _T_121 + _GEN_23; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@109.4]
  assign _GEN_24 = {{22'd0}, _T_54}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@110.4]
  assign _T_123 = _T_122 + _GEN_24; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@110.4]
  assign _GEN_25 = {{23'd0}, _T_55}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@111.4]
  assign _T_124 = _T_123 + _GEN_25; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@111.4]
  assign _GEN_26 = {{24'd0}, _T_56}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@112.4]
  assign _T_125 = _T_124 + _GEN_26; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@112.4]
  assign _GEN_27 = {{25'd0}, _T_57}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@113.4]
  assign _T_126 = _T_125 + _GEN_27; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@113.4]
  assign _GEN_28 = {{26'd0}, _T_58}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@114.4]
  assign _T_127 = _T_126 + _GEN_28; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@114.4]
  assign _GEN_29 = {{27'd0}, _T_59}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@115.4]
  assign _T_128 = _T_127 + _GEN_29; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@115.4]
  assign _GEN_30 = {{28'd0}, _T_60}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@116.4]
  assign _T_129 = _T_128 + _GEN_30; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@116.4]
  assign _GEN_31 = {{29'd0}, _T_61}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@117.4]
  assign _T_130 = _T_129 + _GEN_31; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@117.4]
  assign _GEN_32 = {{30'd0}, _T_62}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@118.4]
  assign sat_sum = _T_130 + _GEN_32; // @[NV_soDLA_CACC_calculator_oc_gate.scala 41:98:@118.4]
  assign _T_133 = sat_count + sat_sum; // @[NV_soDLA_CACC_calculator_oc_gate.scala 44:36:@120.4]
  assign sat_count_inc = _T_133[31:0]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 44:47:@121.4]
  assign sat_carry = _T_133[32]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 45:43:@123.4]
  assign _T_140 = sat_carry ? 32'hffffffff : sat_count_inc; // @[NV_soDLA_CACC_calculator_oc_gate.scala 47:26:@125.4]
  assign sat_count_w = dlv_sat_clr_d1 ? sat_sum : _T_140; // @[NV_soDLA_CACC_calculator_oc_gate.scala 46:26:@126.4]
  assign _T_142 = sat_sum != 32'h0; // @[NV_soDLA_CACC_calculator_oc_gate.scala 48:49:@127.4]
  assign _T_143 = _T_142 | dlv_sat_clr_d1; // @[NV_soDLA_CACC_calculator_oc_gate.scala 48:54:@128.4]
  assign sat_reg_en = dlv_sat_vld_d1 & _T_143; // @[NV_soDLA_CACC_calculator_oc_gate.scala 48:37:@129.4]
  assign _GEN_2 = sat_reg_en ? sat_count_w : sat_count; // @[NV_soDLA_CACC_calculator_oc_gate.scala 49:21:@130.4]
  assign dp2reg_sat_count = sat_count; // @[NV_soDLA_CACC_calculator_oc_gate.scala 53:25:@133.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  dlv_sat_vld_d1 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  dlv_sat_end_d1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  dlv_sat_bit_d1 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  dlv_sat_clr_d1 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  sat_count = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge nvdla_core_clk) begin
    if (_T_20) begin
      dlv_sat_vld_d1 <= 1'h0;
    end else begin
      dlv_sat_vld_d1 <= calc_dlv_valid_out;
    end
    if (_T_20) begin
      dlv_sat_end_d1 <= 1'h1;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_end_d1 <= dlv_sat_end;
      end
    end
    if (_T_20) begin
      dlv_sat_bit_d1 <= 32'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1 <= calc_fout_sat;
      end
    end
    if (_T_20) begin
      dlv_sat_clr_d1 <= 1'h0;
    end else begin
      dlv_sat_clr_d1 <= dlv_sat_clr;
    end
    if (_T_20) begin
      sat_count <= 32'h0;
    end else begin
      if (sat_reg_en) begin
        if (dlv_sat_clr_d1) begin
          sat_count <= sat_sum;
        end else begin
          if (sat_carry) begin
            sat_count <= 32'hffffffff;
          end else begin
            sat_count <= sat_count_inc;
          end
        end
      end
    end
  end
endmodule


// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CACC_delivery_ctrl.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CACC.h
module NV_NVDLA_CACC_delivery_ctrl (
   nvdla_core_clk
  ,nvdla_core_rstn
  ,cacc2sdp_ready
  ,cacc2sdp_valid
  ,dbuf_rd_ready
  ,dlv_data
  ,dlv_mask
  ,dlv_pd
  ,dlv_valid
  ,reg2dp_batches
  ,reg2dp_conv_mode
  ,reg2dp_dataout_addr
  ,reg2dp_dataout_channel
  ,reg2dp_dataout_height
  ,reg2dp_dataout_width
  ,reg2dp_line_packed
  ,reg2dp_line_stride
  ,reg2dp_op_en
  ,reg2dp_proc_precision
  ,reg2dp_surf_packed
  ,reg2dp_surf_stride
  ,wait_for_op_en
  ,dbuf_rd_addr
  ,dbuf_rd_en
  ,dbuf_rd_layer_end
  ,dbuf_wr_addr
  ,dbuf_wr_data
  ,dbuf_wr_en
  ,dp2reg_done
  );
input [0:0] reg2dp_op_en;
input [0:0] reg2dp_conv_mode;
input [1:0] reg2dp_proc_precision;
input [12:0] reg2dp_dataout_width;
input [12:0] reg2dp_dataout_height;
input [12:0] reg2dp_dataout_channel;
input [31-5:0] reg2dp_dataout_addr;
input [0:0] reg2dp_line_packed;
input [0:0] reg2dp_surf_packed;
input [4:0] reg2dp_batches;
input [23:0] reg2dp_line_stride;
input [23:0] reg2dp_surf_stride;
input nvdla_core_clk;
input nvdla_core_rstn;
input cacc2sdp_ready;
input cacc2sdp_valid;
input dbuf_rd_ready;
input[32*32 -1:0] dlv_data;
input dlv_mask;
input [1:0] dlv_pd;
input dlv_valid;
input wait_for_op_en;
output [5 +1 -1:0] dbuf_rd_addr;
output dbuf_rd_en;
output dbuf_rd_layer_end;
output [5 +1 -1:0] dbuf_wr_addr;
output [32*32 -1:0] dbuf_wr_data;
output dbuf_wr_en;
output dp2reg_done;
// spyglass disable_block NoWidthInBasedNum-ML
// spyglass disable_block STARC-2.10.1.6
//////////////////////////////////////////////////////////////
///// parse input status signal                          /////
//////////////////////////////////////////////////////////////
wire dlv_stripe_end = dlv_pd[0];
wire dlv_layer_end = dlv_pd[1];
//////////////////////////////////////////////////////////////
///// register input signal from regfile                 /////
//////////////////////////////////////////////////////////////
wire [12 -6:0] cur_channel_w = {reg2dp_dataout_channel[12 -1:5]} ;
//: my $kk = 12 -5;
//: my $aw = 32-5;
//: &eperl::flop(" -q  cur_op_en  -en wait_for_op_en & \"reg2dp_op_en\" -d  \"reg2dp_op_en\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  cur_conv_mode  -en \"wait_for_op_en & reg2dp_op_en\" -d  \"reg2dp_conv_mode\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-wid 2 -q  cur_proc_precision  -en \"wait_for_op_en & reg2dp_op_en\" -d  \"reg2dp_proc_precision\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-wid 13 -q  cur_width  -en \"wait_for_op_en & reg2dp_op_en\" -d  \"reg2dp_dataout_width\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-wid 13 -q  cur_height  -en \"wait_for_op_en & reg2dp_op_en\" -d  \"reg2dp_dataout_height\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-wid ${kk} -q  cur_channel  -en \"wait_for_op_en & reg2dp_op_en\" -d  \"cur_channel_w\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-wid $aw -q  cur_dataout_addr  -en \"wait_for_op_en & reg2dp_op_en\" -d  \"reg2dp_dataout_addr\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-wid 5 -q  cur_batches  -en \"wait_for_op_en & reg2dp_op_en\" -d  \"reg2dp_batches\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-wid 24 -q  cur_line_stride  -en \"wait_for_op_en & reg2dp_op_en\" -d  \"reg2dp_line_stride\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-wid 24 -q  cur_surf_stride  -en \"wait_for_op_en & reg2dp_op_en\" -d  \"reg2dp_surf_stride\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  cur_line_packed  -en \"wait_for_op_en & reg2dp_op_en\" -d  \"reg2dp_line_packed\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  cur_surf_packed  -en \"wait_for_op_en & reg2dp_op_en\" -d  \"reg2dp_surf_packed\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg  cur_op_en;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       cur_op_en <= 'b0;
   end else begin
       if ((wait_for_op_en) == 1'b1) begin
           cur_op_en <= reg2dp_op_en;
       // VCS coverage off
       end else if ((wait_for_op_en) == 1'b0) begin
       end else begin
           cur_op_en <= 'bx;
       // VCS coverage on
       end
   end
end
reg  cur_conv_mode;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       cur_conv_mode <= 'b0;
   end else begin
       if ((wait_for_op_en & reg2dp_op_en) == 1'b1) begin
           cur_conv_mode <= reg2dp_conv_mode;
       // VCS coverage off
       end else if ((wait_for_op_en & reg2dp_op_en) == 1'b0) begin
       end else begin
           cur_conv_mode <= 'bx;
       // VCS coverage on
       end
   end
end
reg [1:0] cur_proc_precision;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       cur_proc_precision <= 'b0;
   end else begin
       if ((wait_for_op_en & reg2dp_op_en) == 1'b1) begin
           cur_proc_precision <= reg2dp_proc_precision;
       // VCS coverage off
       end else if ((wait_for_op_en & reg2dp_op_en) == 1'b0) begin
       end else begin
           cur_proc_precision <= 'bx;
       // VCS coverage on
       end
   end
end
reg [12:0] cur_width;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       cur_width <= 'b0;
   end else begin
       if ((wait_for_op_en & reg2dp_op_en) == 1'b1) begin
           cur_width <= reg2dp_dataout_width;
       // VCS coverage off
       end else if ((wait_for_op_en & reg2dp_op_en) == 1'b0) begin
       end else begin
           cur_width <= 'bx;
       // VCS coverage on
       end
   end
end
reg [12:0] cur_height;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       cur_height <= 'b0;
   end else begin
       if ((wait_for_op_en & reg2dp_op_en) == 1'b1) begin
           cur_height <= reg2dp_dataout_height;
       // VCS coverage off
       end else if ((wait_for_op_en & reg2dp_op_en) == 1'b0) begin
       end else begin
           cur_height <= 'bx;
       // VCS coverage on
       end
   end
end
reg [6:0] cur_channel;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       cur_channel <= 'b0;
   end else begin
       if ((wait_for_op_en & reg2dp_op_en) == 1'b1) begin
           cur_channel <= cur_channel_w;
       // VCS coverage off
       end else if ((wait_for_op_en & reg2dp_op_en) == 1'b0) begin
       end else begin
           cur_channel <= 'bx;
       // VCS coverage on
       end
   end
end
reg [26:0] cur_dataout_addr;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       cur_dataout_addr <= 'b0;
   end else begin
       if ((wait_for_op_en & reg2dp_op_en) == 1'b1) begin
           cur_dataout_addr <= reg2dp_dataout_addr;
       // VCS coverage off
       end else if ((wait_for_op_en & reg2dp_op_en) == 1'b0) begin
       end else begin
           cur_dataout_addr <= 'bx;
       // VCS coverage on
       end
   end
end
reg [4:0] cur_batches;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       cur_batches <= 'b0;
   end else begin
       if ((wait_for_op_en & reg2dp_op_en) == 1'b1) begin
           cur_batches <= reg2dp_batches;
       // VCS coverage off
       end else if ((wait_for_op_en & reg2dp_op_en) == 1'b0) begin
       end else begin
           cur_batches <= 'bx;
       // VCS coverage on
       end
   end
end
reg [23:0] cur_line_stride;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       cur_line_stride <= 'b0;
   end else begin
       if ((wait_for_op_en & reg2dp_op_en) == 1'b1) begin
           cur_line_stride <= reg2dp_line_stride;
       // VCS coverage off
       end else if ((wait_for_op_en & reg2dp_op_en) == 1'b0) begin
       end else begin
           cur_line_stride <= 'bx;
       // VCS coverage on
       end
   end
end
reg [23:0] cur_surf_stride;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       cur_surf_stride <= 'b0;
   end else begin
       if ((wait_for_op_en & reg2dp_op_en) == 1'b1) begin
           cur_surf_stride <= reg2dp_surf_stride;
       // VCS coverage off
       end else if ((wait_for_op_en & reg2dp_op_en) == 1'b0) begin
       end else begin
           cur_surf_stride <= 'bx;
       // VCS coverage on
       end
   end
end
reg  cur_line_packed;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       cur_line_packed <= 'b0;
   end else begin
       if ((wait_for_op_en & reg2dp_op_en) == 1'b1) begin
           cur_line_packed <= reg2dp_line_packed;
       // VCS coverage off
       end else if ((wait_for_op_en & reg2dp_op_en) == 1'b0) begin
       end else begin
           cur_line_packed <= 'bx;
       // VCS coverage on
       end
   end
end
reg  cur_surf_packed;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       cur_surf_packed <= 'b0;
   end else begin
       if ((wait_for_op_en & reg2dp_op_en) == 1'b1) begin
           cur_surf_packed <= reg2dp_surf_packed;
       // VCS coverage off
       end else if ((wait_for_op_en & reg2dp_op_en) == 1'b0) begin
       end else begin
           cur_surf_packed <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
//////////////////////////////////////////////////////////////
///// generate current status signals                    /////
//////////////////////////////////////////////////////////////
wire is_int8_w = (reg2dp_proc_precision == 2'h0);
wire is_int8 = (cur_proc_precision == 2'h0);
wire is_winograd = 1'b0;
//////////////////////////////////////////////////////////////
///// generate write signal, 1 pipe for write data
//////////////////////////////////////////////////////////////
wire dbuf_wr_en_w = dlv_valid;
wire [32*32 -1:0] dbuf_wr_data_w = dlv_data;
reg [5 +1 -1:0] dbuf_wr_addr_pre;
reg [5 +1 -1:0] dbuf_wr_addr;
wire [5 +1 -1:0] dbuf_wr_addr_w;
wire mon_dbuf_wr_addr_w;
assign {mon_dbuf_wr_addr_w, dbuf_wr_addr_w} = dbuf_wr_addr_pre + 1'b1;
//: my $kk=32*32;
//: &eperl::flop("-nodeclare -q  dbuf_wr_addr_pre  -en \"dlv_valid\" -d  \"dbuf_wr_addr_w\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-nodeclare -q  dbuf_wr_addr  -en \"dlv_valid\" -d  \"dbuf_wr_addr_pre\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  dbuf_wr_en -d  \"dbuf_wr_en_w\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-wid ${kk} -q  dbuf_wr_data  -en \"dbuf_wr_en_w\" -d  \"dbuf_wr_data_w\" -clk nvdla_core_clk -rst nvdla_core_rstn");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dbuf_wr_addr_pre <= 'b0;
   end else begin
       if ((dlv_valid) == 1'b1) begin
           dbuf_wr_addr_pre <= dbuf_wr_addr_w;
       // VCS coverage off
       end else if ((dlv_valid) == 1'b0) begin
       end else begin
           dbuf_wr_addr_pre <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dbuf_wr_addr <= 'b0;
   end else begin
       if ((dlv_valid) == 1'b1) begin
           dbuf_wr_addr <= dbuf_wr_addr_pre;
       // VCS coverage off
       end else if ((dlv_valid) == 1'b0) begin
       end else begin
           dbuf_wr_addr <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dbuf_wr_en;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dbuf_wr_en <= 'b0;
   end else begin
       dbuf_wr_en <= dbuf_wr_en_w;
   end
end
reg [1023:0] dbuf_wr_data;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dbuf_wr_data <= 'b0;
   end else begin
       if ((dbuf_wr_en_w) == 1'b1) begin
           dbuf_wr_data <= dbuf_wr_data_w;
       // VCS coverage off
       end else if ((dbuf_wr_en_w) == 1'b0) begin
       end else begin
           dbuf_wr_data <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
///// generate stored data size, add delay for write, due to ecc,could set 0 currently.
wire dlv_push_valid = dlv_valid;
wire dlv_push_size = 1'b1;
//: my $latency = 1;
//: print "wire dlv_push_valid_d0 = dlv_push_valid;\n";
//: print "wire dlv_push_size_d0 = dlv_push_size;\n";
//:
//: for(my $i = 0; $i < $latency; $i ++) {
//: my $j = $i + 1;
//: &eperl::flop(" -q  dlv_push_valid_d${j}  -d \"dlv_push_valid_d${i}\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  dlv_push_size_d${j}  -en \"dlv_push_valid_d${i}\" -d  \"dlv_push_size_d${i}\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: }
//:
//: print "wire dlv_data_add_valid = dlv_push_valid_d${latency};\n";
//: print "wire dlv_data_add_size = dlv_push_size_d${latency};\n";
//| eperl: generated_beg (DO NOT EDIT BELOW)
wire dlv_push_valid_d0 = dlv_push_valid;
wire dlv_push_size_d0 = dlv_push_size;
reg  dlv_push_valid_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_push_valid_d1 <= 'b0;
   end else begin
       dlv_push_valid_d1 <= dlv_push_valid_d0;
   end
end
reg  dlv_push_size_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_push_size_d1 <= 'b0;
   end else begin
       if ((dlv_push_valid_d0) == 1'b1) begin
           dlv_push_size_d1 <= dlv_push_size_d0;
       // VCS coverage off
       end else if ((dlv_push_valid_d0) == 1'b0) begin
       end else begin
           dlv_push_size_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
wire dlv_data_add_valid = dlv_push_valid_d1;
wire dlv_data_add_size = dlv_push_size_d1;

//| eperl: generated_end (DO NOT EDIT ABOVE)
//// dbuffer data counter 
wire dlv_pop;
wire [32*2 -1:0] dlv_data_avl_w;
wire mon_dlv_data_avl_w;
reg [32*2 -1:0] dlv_data_avl;
wire dlv_data_avl_add = dlv_data_add_valid ? dlv_data_add_size : 1'h0;
wire dlv_data_avl_sub = dlv_pop ? 1'b1 : 1'b0;
wire dlv_data_sub_valid = dlv_pop;
assign {mon_dlv_data_avl_w,dlv_data_avl_w} = dlv_data_avl + dlv_data_avl_add - dlv_data_avl_sub;
//: my $kk=32*2;
//: &eperl::flop("-nodeclare -wid ${kk} -q  dlv_data_avl  -en \"dlv_data_add_valid | dlv_data_sub_valid\" -d  \"dlv_data_avl_w\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_data_avl <= 'b0;
   end else begin
       if ((dlv_data_add_valid | dlv_data_sub_valid) == 1'b1) begin
           dlv_data_avl <= dlv_data_avl_w;
       // VCS coverage off
       end else if ((dlv_data_add_valid | dlv_data_sub_valid) == 1'b0) begin
       end else begin
           dlv_data_avl <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
///// generate dbuf read request                
reg [5 +1 -1:0] dbuf_rd_addr_cnt;
wire [5 +1 -1:0] dbuf_rd_addr_cnt_inc;
wire mon_dbuf_rd_addr_cnt_inc;
assign dlv_pop = dbuf_rd_en & dbuf_rd_ready;
assign {mon_dbuf_rd_addr_cnt_inc,dbuf_rd_addr_cnt_inc} = dbuf_rd_addr_cnt + 1'b1;
wire dbuf_empty = ~(|dlv_data_avl);
assign dbuf_rd_en = ~dbuf_empty;
assign dbuf_rd_addr = dbuf_rd_addr_cnt;
//: &eperl::flop("-nodeclare -q  dbuf_rd_addr_cnt  -en \"dlv_pop\" -d  \"dbuf_rd_addr_cnt_inc\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dbuf_rd_addr_cnt <= 'b0;
   end else begin
       if ((dlv_pop) == 1'b1) begin
           dbuf_rd_addr_cnt <= dbuf_rd_addr_cnt_inc;
       // VCS coverage off
       end else if ((dlv_pop) == 1'b0) begin
       end else begin
           dbuf_rd_addr_cnt <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
/////// generate dp2reg_done signal
wire dp2reg_done_w = dlv_valid & dlv_stripe_end & dlv_layer_end;
//: &eperl::flop(" -q  dp2reg_done  -d \"dp2reg_done_w\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg  dp2reg_done;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dp2reg_done <= 'b0;
   end else begin
       dp2reg_done <= dp2reg_done_w;
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
/////// generate output package for sdp             
reg [5 +1 -1:0] dlv_end_tag0_addr;
reg [5 +1 -1:0] dlv_end_tag1_addr;
reg dlv_end_tag0_vld;
reg dlv_end_tag1_vld;
wire dlv_end_set = dlv_valid & dlv_stripe_end & dlv_layer_end;
wire [5 +1 -1:0] dlv_end_addr_w = dbuf_wr_addr_pre;
wire dlv_end_clr = dlv_pop & (dbuf_rd_addr == dlv_end_tag0_addr) & dlv_end_tag0_vld;
wire dlv_end_tag0_vld_w = (dlv_end_tag1_vld | dlv_end_set) ? 1'b1 : dlv_end_clr ? 1'b0 : dlv_end_tag0_vld;
wire dlv_end_tag1_vld_w = (dlv_end_tag0_vld & dlv_end_set) ? 1'b1 : dlv_end_clr ? 1'b0 : dlv_end_tag1_vld;
wire dlv_end_tag0_en = (dlv_end_set & ~dlv_end_tag0_vld) | (dlv_end_set & dlv_end_clr) |(dlv_end_clr & dlv_end_tag1_vld);
wire dlv_end_tag1_en = (dlv_end_set & dlv_end_tag0_vld & ~dlv_end_clr);
wire [5 +1 -1:0] dlv_end_tag0_addr_w = dlv_end_tag1_vld ? dlv_end_tag1_addr : dlv_end_addr_w;
wire [5 +1 -1:0] dlv_end_tag1_addr_w = dlv_end_addr_w;
wire dbuf_rd_layer_end = dlv_end_clr;
//: &eperl::flop("-nodeclare -q  dlv_end_tag0_vld  -d \"dlv_end_tag0_vld_w\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-nodeclare -q  dlv_end_tag1_vld  -d \"dlv_end_tag1_vld_w\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-nodeclare -q  dlv_end_tag0_addr  -en \"dlv_end_tag0_en\" -d  \"dlv_end_tag0_addr_w\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-nodeclare -q  dlv_end_tag1_addr  -en \"dlv_end_tag1_en\" -d  \"dlv_end_tag1_addr_w\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_end_tag0_vld <= 'b0;
   end else begin
       dlv_end_tag0_vld <= dlv_end_tag0_vld_w;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_end_tag1_vld <= 'b0;
   end else begin
       dlv_end_tag1_vld <= dlv_end_tag1_vld_w;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_end_tag0_addr <= 'b0;
   end else begin
       if ((dlv_end_tag0_en) == 1'b1) begin
           dlv_end_tag0_addr <= dlv_end_tag0_addr_w;
       // VCS coverage off
       end else if ((dlv_end_tag0_en) == 1'b0) begin
       end else begin
           dlv_end_tag0_addr <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_end_tag1_addr <= 'b0;
   end else begin
       if ((dlv_end_tag1_en) == 1'b1) begin
           dlv_end_tag1_addr <= dlv_end_tag1_addr_w;
       // VCS coverage off
       end else if ((dlv_end_tag1_en) == 1'b0) begin
       end else begin
           dlv_end_tag1_addr <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
// spyglass enable_block NoWidthInBasedNum-ML
// spyglass enable_block STARC-2.10.1.6
endmodule