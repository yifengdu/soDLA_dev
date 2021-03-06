module NV_soDLA_CACC_calculator_oc_gate( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_nvdla_core_clk, // @[:@6.4]
  input         io_nvdla_core_rstn, // @[:@6.4]
  input  [31:0] io_calc_fout_sat, // @[:@6.4]
  input         io_calc_layer_end_out, // @[:@6.4]
  input         io_calc_stripe_end_out, // @[:@6.4]
  input         io_calc_dlv_valid_out, // @[:@6.4]
  output [31:0] io_dp2reg_sat_count // @[:@6.4]
);
  wire  _T_20; // @[NV_soDLA_CACC_calculator_oc_gate.scala 25:38:@8.4]
  reg  dlv_sat_vld_d1; // @[NV_soDLA_CACC_calculator_oc_gate.scala 27:33:@9.4]
  reg [31:0] _RAND_0;
  reg  dlv_sat_end_d1; // @[NV_soDLA_CACC_calculator_oc_gate.scala 28:33:@10.4]
  reg [31:0] _RAND_1;
  reg [31:0] dlv_sat_bit_d1; // @[NV_soDLA_CACC_calculator_oc_gate.scala 29:33:@11.4]
  reg [31:0] _RAND_2;
  reg  dlv_sat_clr_d1; // @[NV_soDLA_CACC_calculator_oc_gate.scala 30:33:@12.4]
  reg [31:0] _RAND_3;
  wire  dlv_sat_end; // @[NV_soDLA_CACC_calculator_oc_gate.scala 33:45:@13.4]
  wire  _T_29; // @[NV_soDLA_CACC_calculator_oc_gate.scala 34:47:@14.4]
  wire  _T_30; // @[NV_soDLA_CACC_calculator_oc_gate.scala 34:45:@15.4]
  wire  dlv_sat_clr; // @[NV_soDLA_CACC_calculator_oc_gate.scala 34:60:@16.4]
  wire  _GEN_0; // @[NV_soDLA_CACC_calculator_oc_gate.scala 37:32:@18.4]
  wire [31:0] _GEN_1; // @[NV_soDLA_CACC_calculator_oc_gate.scala 37:32:@18.4]
  wire  _T_31; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@23.4]
  wire  _T_32; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@24.4]
  wire  _T_33; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@25.4]
  wire  _T_34; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@26.4]
  wire  _T_35; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@27.4]
  wire  _T_36; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@28.4]
  wire  _T_37; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@29.4]
  wire  _T_38; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@30.4]
  wire  _T_39; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@31.4]
  wire  _T_40; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@32.4]
  wire  _T_41; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@33.4]
  wire  _T_42; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@34.4]
  wire  _T_43; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@35.4]
  wire  _T_44; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@36.4]
  wire  _T_45; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@37.4]
  wire  _T_46; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@38.4]
  wire  _T_47; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@39.4]
  wire  _T_48; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@40.4]
  wire  _T_49; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@41.4]
  wire  _T_50; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@42.4]
  wire  _T_51; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@43.4]
  wire  _T_52; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@44.4]
  wire  _T_53; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@45.4]
  wire  _T_54; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@46.4]
  wire  _T_55; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@47.4]
  wire  _T_56; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@48.4]
  wire  _T_57; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@49.4]
  wire  _T_58; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@50.4]
  wire  _T_59; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@51.4]
  wire  _T_60; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@52.4]
  wire  _T_61; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@53.4]
  wire  _T_62; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@54.4]
  wire [1:0] _T_101; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@88.4]
  wire [1:0] _GEN_3; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@89.4]
  wire [2:0] _T_102; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@89.4]
  wire [2:0] _GEN_4; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@90.4]
  wire [3:0] _T_103; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@90.4]
  wire [3:0] _GEN_5; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@91.4]
  wire [4:0] _T_104; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@91.4]
  wire [4:0] _GEN_6; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@92.4]
  wire [5:0] _T_105; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@92.4]
  wire [5:0] _GEN_7; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@93.4]
  wire [6:0] _T_106; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@93.4]
  wire [6:0] _GEN_8; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@94.4]
  wire [7:0] _T_107; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@94.4]
  wire [7:0] _GEN_9; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@95.4]
  wire [8:0] _T_108; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@95.4]
  wire [8:0] _GEN_10; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@96.4]
  wire [9:0] _T_109; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@96.4]
  wire [9:0] _GEN_11; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@97.4]
  wire [10:0] _T_110; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@97.4]
  wire [10:0] _GEN_12; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@98.4]
  wire [11:0] _T_111; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@98.4]
  wire [11:0] _GEN_13; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@99.4]
  wire [12:0] _T_112; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@99.4]
  wire [12:0] _GEN_14; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@100.4]
  wire [13:0] _T_113; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@100.4]
  wire [13:0] _GEN_15; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@101.4]
  wire [14:0] _T_114; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@101.4]
  wire [14:0] _GEN_16; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@102.4]
  wire [15:0] _T_115; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@102.4]
  wire [15:0] _GEN_17; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@103.4]
  wire [16:0] _T_116; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@103.4]
  wire [16:0] _GEN_18; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@104.4]
  wire [17:0] _T_117; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@104.4]
  wire [17:0] _GEN_19; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@105.4]
  wire [18:0] _T_118; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@105.4]
  wire [18:0] _GEN_20; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@106.4]
  wire [19:0] _T_119; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@106.4]
  wire [19:0] _GEN_21; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@107.4]
  wire [20:0] _T_120; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@107.4]
  wire [20:0] _GEN_22; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@108.4]
  wire [21:0] _T_121; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@108.4]
  wire [21:0] _GEN_23; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@109.4]
  wire [22:0] _T_122; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@109.4]
  wire [22:0] _GEN_24; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@110.4]
  wire [23:0] _T_123; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@110.4]
  wire [23:0] _GEN_25; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@111.4]
  wire [24:0] _T_124; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@111.4]
  wire [24:0] _GEN_26; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@112.4]
  wire [25:0] _T_125; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@112.4]
  wire [25:0] _GEN_27; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@113.4]
  wire [26:0] _T_126; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@113.4]
  wire [26:0] _GEN_28; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@114.4]
  wire [27:0] _T_127; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@114.4]
  wire [27:0] _GEN_29; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@115.4]
  wire [28:0] _T_128; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@115.4]
  wire [28:0] _GEN_30; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@116.4]
  wire [29:0] _T_129; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@116.4]
  wire [29:0] _GEN_31; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@117.4]
  wire [30:0] _T_130; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@117.4]
  wire [30:0] _GEN_32; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@118.4]
  wire [31:0] sat_sum; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@118.4]
  reg [31:0] sat_count; // @[NV_soDLA_CACC_calculator_oc_gate.scala 44:28:@119.4]
  reg [31:0] _RAND_4;
  wire [32:0] _T_133; // @[NV_soDLA_CACC_calculator_oc_gate.scala 45:36:@120.4]
  wire [31:0] sat_count_inc; // @[NV_soDLA_CACC_calculator_oc_gate.scala 45:47:@121.4]
  wire  sat_carry; // @[NV_soDLA_CACC_calculator_oc_gate.scala 46:43:@123.4]
  wire [31:0] _T_141; // @[NV_soDLA_CACC_calculator_oc_gate.scala 49:26:@126.4]
  wire [31:0] sat_count_w; // @[NV_soDLA_CACC_calculator_oc_gate.scala 48:23:@127.4]
  wire  _T_144; // @[NV_soDLA_CACC_calculator_oc_gate.scala 50:49:@129.4]
  wire  _T_145; // @[NV_soDLA_CACC_calculator_oc_gate.scala 50:54:@130.4]
  wire  sat_reg_en; // @[NV_soDLA_CACC_calculator_oc_gate.scala 50:37:@131.4]
  wire [31:0] _GEN_2; // @[NV_soDLA_CACC_calculator_oc_gate.scala 51:21:@132.4]
  assign _T_20 = io_nvdla_core_rstn == 1'h0; // @[NV_soDLA_CACC_calculator_oc_gate.scala 25:38:@8.4]
  assign dlv_sat_end = io_calc_layer_end_out & io_calc_stripe_end_out; // @[NV_soDLA_CACC_calculator_oc_gate.scala 33:45:@13.4]
  assign _T_29 = ~ dlv_sat_end; // @[NV_soDLA_CACC_calculator_oc_gate.scala 34:47:@14.4]
  assign _T_30 = io_calc_dlv_valid_out & _T_29; // @[NV_soDLA_CACC_calculator_oc_gate.scala 34:45:@15.4]
  assign dlv_sat_clr = _T_30 & dlv_sat_end_d1; // @[NV_soDLA_CACC_calculator_oc_gate.scala 34:60:@16.4]
  assign _GEN_0 = io_calc_dlv_valid_out ? dlv_sat_end : dlv_sat_end_d1; // @[NV_soDLA_CACC_calculator_oc_gate.scala 37:32:@18.4]
  assign _GEN_1 = io_calc_dlv_valid_out ? io_calc_fout_sat : dlv_sat_bit_d1; // @[NV_soDLA_CACC_calculator_oc_gate.scala 37:32:@18.4]
  assign _T_31 = dlv_sat_bit_d1[0]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@23.4]
  assign _T_32 = dlv_sat_bit_d1[1]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@24.4]
  assign _T_33 = dlv_sat_bit_d1[2]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@25.4]
  assign _T_34 = dlv_sat_bit_d1[3]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@26.4]
  assign _T_35 = dlv_sat_bit_d1[4]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@27.4]
  assign _T_36 = dlv_sat_bit_d1[5]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@28.4]
  assign _T_37 = dlv_sat_bit_d1[6]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@29.4]
  assign _T_38 = dlv_sat_bit_d1[7]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@30.4]
  assign _T_39 = dlv_sat_bit_d1[8]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@31.4]
  assign _T_40 = dlv_sat_bit_d1[9]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@32.4]
  assign _T_41 = dlv_sat_bit_d1[10]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@33.4]
  assign _T_42 = dlv_sat_bit_d1[11]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@34.4]
  assign _T_43 = dlv_sat_bit_d1[12]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@35.4]
  assign _T_44 = dlv_sat_bit_d1[13]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@36.4]
  assign _T_45 = dlv_sat_bit_d1[14]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@37.4]
  assign _T_46 = dlv_sat_bit_d1[15]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@38.4]
  assign _T_47 = dlv_sat_bit_d1[16]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@39.4]
  assign _T_48 = dlv_sat_bit_d1[17]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@40.4]
  assign _T_49 = dlv_sat_bit_d1[18]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@41.4]
  assign _T_50 = dlv_sat_bit_d1[19]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@42.4]
  assign _T_51 = dlv_sat_bit_d1[20]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@43.4]
  assign _T_52 = dlv_sat_bit_d1[21]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@44.4]
  assign _T_53 = dlv_sat_bit_d1[22]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@45.4]
  assign _T_54 = dlv_sat_bit_d1[23]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@46.4]
  assign _T_55 = dlv_sat_bit_d1[24]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@47.4]
  assign _T_56 = dlv_sat_bit_d1[25]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@48.4]
  assign _T_57 = dlv_sat_bit_d1[26]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@49.4]
  assign _T_58 = dlv_sat_bit_d1[27]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@50.4]
  assign _T_59 = dlv_sat_bit_d1[28]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@51.4]
  assign _T_60 = dlv_sat_bit_d1[29]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@52.4]
  assign _T_61 = dlv_sat_bit_d1[30]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@53.4]
  assign _T_62 = dlv_sat_bit_d1[31]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:77:@54.4]
  assign _T_101 = _T_31 + _T_32; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@88.4]
  assign _GEN_3 = {{1'd0}, _T_33}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@89.4]
  assign _T_102 = _T_101 + _GEN_3; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@89.4]
  assign _GEN_4 = {{2'd0}, _T_34}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@90.4]
  assign _T_103 = _T_102 + _GEN_4; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@90.4]
  assign _GEN_5 = {{3'd0}, _T_35}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@91.4]
  assign _T_104 = _T_103 + _GEN_5; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@91.4]
  assign _GEN_6 = {{4'd0}, _T_36}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@92.4]
  assign _T_105 = _T_104 + _GEN_6; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@92.4]
  assign _GEN_7 = {{5'd0}, _T_37}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@93.4]
  assign _T_106 = _T_105 + _GEN_7; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@93.4]
  assign _GEN_8 = {{6'd0}, _T_38}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@94.4]
  assign _T_107 = _T_106 + _GEN_8; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@94.4]
  assign _GEN_9 = {{7'd0}, _T_39}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@95.4]
  assign _T_108 = _T_107 + _GEN_9; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@95.4]
  assign _GEN_10 = {{8'd0}, _T_40}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@96.4]
  assign _T_109 = _T_108 + _GEN_10; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@96.4]
  assign _GEN_11 = {{9'd0}, _T_41}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@97.4]
  assign _T_110 = _T_109 + _GEN_11; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@97.4]
  assign _GEN_12 = {{10'd0}, _T_42}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@98.4]
  assign _T_111 = _T_110 + _GEN_12; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@98.4]
  assign _GEN_13 = {{11'd0}, _T_43}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@99.4]
  assign _T_112 = _T_111 + _GEN_13; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@99.4]
  assign _GEN_14 = {{12'd0}, _T_44}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@100.4]
  assign _T_113 = _T_112 + _GEN_14; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@100.4]
  assign _GEN_15 = {{13'd0}, _T_45}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@101.4]
  assign _T_114 = _T_113 + _GEN_15; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@101.4]
  assign _GEN_16 = {{14'd0}, _T_46}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@102.4]
  assign _T_115 = _T_114 + _GEN_16; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@102.4]
  assign _GEN_17 = {{15'd0}, _T_47}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@103.4]
  assign _T_116 = _T_115 + _GEN_17; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@103.4]
  assign _GEN_18 = {{16'd0}, _T_48}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@104.4]
  assign _T_117 = _T_116 + _GEN_18; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@104.4]
  assign _GEN_19 = {{17'd0}, _T_49}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@105.4]
  assign _T_118 = _T_117 + _GEN_19; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@105.4]
  assign _GEN_20 = {{18'd0}, _T_50}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@106.4]
  assign _T_119 = _T_118 + _GEN_20; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@106.4]
  assign _GEN_21 = {{19'd0}, _T_51}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@107.4]
  assign _T_120 = _T_119 + _GEN_21; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@107.4]
  assign _GEN_22 = {{20'd0}, _T_52}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@108.4]
  assign _T_121 = _T_120 + _GEN_22; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@108.4]
  assign _GEN_23 = {{21'd0}, _T_53}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@109.4]
  assign _T_122 = _T_121 + _GEN_23; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@109.4]
  assign _GEN_24 = {{22'd0}, _T_54}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@110.4]
  assign _T_123 = _T_122 + _GEN_24; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@110.4]
  assign _GEN_25 = {{23'd0}, _T_55}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@111.4]
  assign _T_124 = _T_123 + _GEN_25; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@111.4]
  assign _GEN_26 = {{24'd0}, _T_56}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@112.4]
  assign _T_125 = _T_124 + _GEN_26; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@112.4]
  assign _GEN_27 = {{25'd0}, _T_57}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@113.4]
  assign _T_126 = _T_125 + _GEN_27; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@113.4]
  assign _GEN_28 = {{26'd0}, _T_58}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@114.4]
  assign _T_127 = _T_126 + _GEN_28; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@114.4]
  assign _GEN_29 = {{27'd0}, _T_59}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@115.4]
  assign _T_128 = _T_127 + _GEN_29; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@115.4]
  assign _GEN_30 = {{28'd0}, _T_60}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@116.4]
  assign _T_129 = _T_128 + _GEN_30; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@116.4]
  assign _GEN_31 = {{29'd0}, _T_61}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@117.4]
  assign _T_130 = _T_129 + _GEN_31; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@117.4]
  assign _GEN_32 = {{30'd0}, _T_62}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@118.4]
  assign sat_sum = _T_130 + _GEN_32; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:98:@118.4]
  assign _T_133 = sat_count + sat_sum; // @[NV_soDLA_CACC_calculator_oc_gate.scala 45:36:@120.4]
  assign sat_count_inc = _T_133[31:0]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 45:47:@121.4]
  assign sat_carry = _T_133[32]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 46:43:@123.4]
  assign _T_141 = sat_carry ? 32'hffffffff : sat_count_inc; // @[NV_soDLA_CACC_calculator_oc_gate.scala 49:26:@126.4]
  assign sat_count_w = dlv_sat_clr_d1 ? sat_sum : _T_141; // @[NV_soDLA_CACC_calculator_oc_gate.scala 48:23:@127.4]
  assign _T_144 = sat_sum != 32'h0; // @[NV_soDLA_CACC_calculator_oc_gate.scala 50:49:@129.4]
  assign _T_145 = _T_144 | dlv_sat_clr_d1; // @[NV_soDLA_CACC_calculator_oc_gate.scala 50:54:@130.4]
  assign sat_reg_en = dlv_sat_vld_d1 & _T_145; // @[NV_soDLA_CACC_calculator_oc_gate.scala 50:37:@131.4]
  assign _GEN_2 = sat_reg_en ? sat_count_w : sat_count; // @[NV_soDLA_CACC_calculator_oc_gate.scala 51:21:@132.4]
  assign io_dp2reg_sat_count = sat_count; // @[NV_soDLA_CACC_calculator_oc_gate.scala 55:25:@135.4]
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
  always @(posedge io_nvdla_core_clk) begin
    if (_T_20) begin
      dlv_sat_vld_d1 <= 1'h0;
    end else begin
      dlv_sat_vld_d1 <= io_calc_dlv_valid_out;
    end
    if (_T_20) begin
      dlv_sat_end_d1 <= 1'h1;
    end else begin
      if (io_calc_dlv_valid_out) begin
        dlv_sat_end_d1 <= dlv_sat_end;
      end
    end
    if (_T_20) begin
      dlv_sat_bit_d1 <= 32'h0;
    end else begin
      if (io_calc_dlv_valid_out) begin
        dlv_sat_bit_d1 <= io_calc_fout_sat;
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
