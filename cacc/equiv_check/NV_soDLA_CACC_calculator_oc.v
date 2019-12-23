module NV_soDLA_CACC_calculator_oc_gate( // @[:@3.2]
  input         nvdla_core_clk, // @[:@6.4]
  input         nvdla_core_rstn, // @[:@6.4]
  input  [31:0] calc_fout_sat, // @[:@6.4]
  input         calc_layer_end_out, // @[:@6.4]
  input         calc_stripe_end_out, // @[:@6.4]
  input         calc_dlv_valid_out, // @[:@6.4]
  output [31:0] dp2reg_sat_count // @[:@6.4]
);
  wire  _T_20; // @[NV_soDLA_CACC_calculator_oc_gate.scala 23:38:@8.4]
  reg  _T_23; // @[NV_soDLA_CACC_calculator_oc_gate.scala 25:33:@9.4]
  reg [31:0] _RAND_0;
  reg  _T_26; // @[NV_soDLA_CACC_calculator_oc_gate.scala 26:33:@10.4]
  reg [31:0] _RAND_1;
  reg [31:0] _T_29; // @[NV_soDLA_CACC_calculator_oc_gate.scala 27:33:@11.4]
  reg [31:0] _RAND_2;
  reg  _T_32; // @[NV_soDLA_CACC_calculator_oc_gate.scala 28:33:@12.4]
  reg [31:0] _RAND_3;
  wire  _T_33; // @[NV_soDLA_CACC_calculator_oc_gate.scala 31:45:@13.4]
  wire  _T_34; // @[NV_soDLA_CACC_calculator_oc_gate.scala 32:47:@14.4]
  wire  _T_35; // @[NV_soDLA_CACC_calculator_oc_gate.scala 32:45:@15.4]
  wire  _T_36; // @[NV_soDLA_CACC_calculator_oc_gate.scala 32:60:@16.4]
  wire  _GEN_0; // @[NV_soDLA_CACC_calculator_oc_gate.scala 35:32:@18.4]
  wire [31:0] _GEN_1; // @[NV_soDLA_CACC_calculator_oc_gate.scala 35:32:@18.4]
  wire  _T_37; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@23.4]
  wire  _T_38; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@24.4]
  wire  _T_39; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@25.4]
  wire  _T_40; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@26.4]
  wire  _T_41; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@27.4]
  wire  _T_42; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@28.4]
  wire  _T_43; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@29.4]
  wire  _T_44; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@30.4]
  wire  _T_45; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@31.4]
  wire  _T_46; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@32.4]
  wire  _T_47; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@33.4]
  wire  _T_48; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@34.4]
  wire  _T_49; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@35.4]
  wire  _T_50; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@36.4]
  wire  _T_51; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@37.4]
  wire  _T_52; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@38.4]
  wire  _T_53; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@39.4]
  wire  _T_54; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@40.4]
  wire  _T_55; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@41.4]
  wire  _T_56; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@42.4]
  wire  _T_57; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@43.4]
  wire  _T_58; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@44.4]
  wire  _T_59; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@45.4]
  wire  _T_60; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@46.4]
  wire  _T_61; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@47.4]
  wire  _T_62; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@48.4]
  wire  _T_63; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@49.4]
  wire  _T_64; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@50.4]
  wire  _T_65; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@51.4]
  wire  _T_66; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@52.4]
  wire  _T_67; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@53.4]
  wire  _T_68; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@54.4]
  wire [1:0] _T_107; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@88.4]
  wire [1:0] _GEN_3; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@89.4]
  wire [2:0] _T_108; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@89.4]
  wire [2:0] _GEN_4; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@90.4]
  wire [3:0] _T_109; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@90.4]
  wire [3:0] _GEN_5; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@91.4]
  wire [4:0] _T_110; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@91.4]
  wire [4:0] _GEN_6; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@92.4]
  wire [5:0] _T_111; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@92.4]
  wire [5:0] _GEN_7; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@93.4]
  wire [6:0] _T_112; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@93.4]
  wire [6:0] _GEN_8; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@94.4]
  wire [7:0] _T_113; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@94.4]
  wire [7:0] _GEN_9; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@95.4]
  wire [8:0] _T_114; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@95.4]
  wire [8:0] _GEN_10; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@96.4]
  wire [9:0] _T_115; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@96.4]
  wire [9:0] _GEN_11; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@97.4]
  wire [10:0] _T_116; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@97.4]
  wire [10:0] _GEN_12; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@98.4]
  wire [11:0] _T_117; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@98.4]
  wire [11:0] _GEN_13; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@99.4]
  wire [12:0] _T_118; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@99.4]
  wire [12:0] _GEN_14; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@100.4]
  wire [13:0] _T_119; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@100.4]
  wire [13:0] _GEN_15; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@101.4]
  wire [14:0] _T_120; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@101.4]
  wire [14:0] _GEN_16; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@102.4]
  wire [15:0] _T_121; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@102.4]
  wire [15:0] _GEN_17; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@103.4]
  wire [16:0] _T_122; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@103.4]
  wire [16:0] _GEN_18; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@104.4]
  wire [17:0] _T_123; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@104.4]
  wire [17:0] _GEN_19; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@105.4]
  wire [18:0] _T_124; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@105.4]
  wire [18:0] _GEN_20; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@106.4]
  wire [19:0] _T_125; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@106.4]
  wire [19:0] _GEN_21; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@107.4]
  wire [20:0] _T_126; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@107.4]
  wire [20:0] _GEN_22; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@108.4]
  wire [21:0] _T_127; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@108.4]
  wire [21:0] _GEN_23; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@109.4]
  wire [22:0] _T_128; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@109.4]
  wire [22:0] _GEN_24; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@110.4]
  wire [23:0] _T_129; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@110.4]
  wire [23:0] _GEN_25; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@111.4]
  wire [24:0] _T_130; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@111.4]
  wire [24:0] _GEN_26; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@112.4]
  wire [25:0] _T_131; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@112.4]
  wire [25:0] _GEN_27; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@113.4]
  wire [26:0] _T_132; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@113.4]
  wire [26:0] _GEN_28; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@114.4]
  wire [27:0] _T_133; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@114.4]
  wire [27:0] _GEN_29; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@115.4]
  wire [28:0] _T_134; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@115.4]
  wire [28:0] _GEN_30; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@116.4]
  wire [29:0] _T_135; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@116.4]
  wire [29:0] _GEN_31; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@117.4]
  wire [30:0] _T_136; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@117.4]
  wire [30:0] _GEN_32; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@118.4]
  wire [31:0] _T_137; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@118.4]
  reg [31:0] _T_140; // @[NV_soDLA_CACC_calculator_oc_gate.scala 42:28:@119.4]
  reg [31:0] _RAND_4;
  wire [32:0] _T_141; // @[NV_soDLA_CACC_calculator_oc_gate.scala 43:36:@120.4]
  wire [31:0] _T_142; // @[NV_soDLA_CACC_calculator_oc_gate.scala 43:47:@121.4]
  wire  _T_144; // @[NV_soDLA_CACC_calculator_oc_gate.scala 44:43:@123.4]
  wire [31:0] _T_150; // @[NV_soDLA_CACC_calculator_oc_gate.scala 46:26:@125.4]
  wire [31:0] _T_151; // @[NV_soDLA_CACC_calculator_oc_gate.scala 45:26:@126.4]
  wire  _T_153; // @[NV_soDLA_CACC_calculator_oc_gate.scala 47:49:@127.4]
  wire  _T_154; // @[NV_soDLA_CACC_calculator_oc_gate.scala 47:54:@128.4]
  wire  _T_155; // @[NV_soDLA_CACC_calculator_oc_gate.scala 47:37:@129.4]
  wire [31:0] _GEN_2; // @[NV_soDLA_CACC_calculator_oc_gate.scala 48:21:@130.4]
  assign _T_20 = nvdla_core_rstn == 1'h0; // @[NV_soDLA_CACC_calculator_oc_gate.scala 23:38:@8.4]
  assign _T_33 = calc_layer_end_out & calc_stripe_end_out; // @[NV_soDLA_CACC_calculator_oc_gate.scala 31:45:@13.4]
  assign _T_34 = ~ _T_33; // @[NV_soDLA_CACC_calculator_oc_gate.scala 32:47:@14.4]
  assign _T_35 = calc_dlv_valid_out & _T_34; // @[NV_soDLA_CACC_calculator_oc_gate.scala 32:45:@15.4]
  assign _T_36 = _T_35 & _T_26; // @[NV_soDLA_CACC_calculator_oc_gate.scala 32:60:@16.4]
  assign _GEN_0 = calc_dlv_valid_out ? _T_33 : _T_26; // @[NV_soDLA_CACC_calculator_oc_gate.scala 35:32:@18.4]
  assign _GEN_1 = calc_dlv_valid_out ? calc_fout_sat : _T_29; // @[NV_soDLA_CACC_calculator_oc_gate.scala 35:32:@18.4]
  assign _T_37 = _T_29[0]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@23.4]
  assign _T_38 = _T_29[1]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@24.4]
  assign _T_39 = _T_29[2]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@25.4]
  assign _T_40 = _T_29[3]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@26.4]
  assign _T_41 = _T_29[4]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@27.4]
  assign _T_42 = _T_29[5]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@28.4]
  assign _T_43 = _T_29[6]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@29.4]
  assign _T_44 = _T_29[7]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@30.4]
  assign _T_45 = _T_29[8]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@31.4]
  assign _T_46 = _T_29[9]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@32.4]
  assign _T_47 = _T_29[10]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@33.4]
  assign _T_48 = _T_29[11]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@34.4]
  assign _T_49 = _T_29[12]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@35.4]
  assign _T_50 = _T_29[13]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@36.4]
  assign _T_51 = _T_29[14]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@37.4]
  assign _T_52 = _T_29[15]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@38.4]
  assign _T_53 = _T_29[16]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@39.4]
  assign _T_54 = _T_29[17]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@40.4]
  assign _T_55 = _T_29[18]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@41.4]
  assign _T_56 = _T_29[19]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@42.4]
  assign _T_57 = _T_29[20]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@43.4]
  assign _T_58 = _T_29[21]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@44.4]
  assign _T_59 = _T_29[22]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@45.4]
  assign _T_60 = _T_29[23]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@46.4]
  assign _T_61 = _T_29[24]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@47.4]
  assign _T_62 = _T_29[25]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@48.4]
  assign _T_63 = _T_29[26]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@49.4]
  assign _T_64 = _T_29[27]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@50.4]
  assign _T_65 = _T_29[28]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@51.4]
  assign _T_66 = _T_29[29]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@52.4]
  assign _T_67 = _T_29[30]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@53.4]
  assign _T_68 = _T_29[31]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:77:@54.4]
  assign _T_107 = _T_37 + _T_38; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@88.4]
  assign _GEN_3 = {{1'd0}, _T_39}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@89.4]
  assign _T_108 = _T_107 + _GEN_3; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@89.4]
  assign _GEN_4 = {{2'd0}, _T_40}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@90.4]
  assign _T_109 = _T_108 + _GEN_4; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@90.4]
  assign _GEN_5 = {{3'd0}, _T_41}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@91.4]
  assign _T_110 = _T_109 + _GEN_5; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@91.4]
  assign _GEN_6 = {{4'd0}, _T_42}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@92.4]
  assign _T_111 = _T_110 + _GEN_6; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@92.4]
  assign _GEN_7 = {{5'd0}, _T_43}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@93.4]
  assign _T_112 = _T_111 + _GEN_7; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@93.4]
  assign _GEN_8 = {{6'd0}, _T_44}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@94.4]
  assign _T_113 = _T_112 + _GEN_8; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@94.4]
  assign _GEN_9 = {{7'd0}, _T_45}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@95.4]
  assign _T_114 = _T_113 + _GEN_9; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@95.4]
  assign _GEN_10 = {{8'd0}, _T_46}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@96.4]
  assign _T_115 = _T_114 + _GEN_10; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@96.4]
  assign _GEN_11 = {{9'd0}, _T_47}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@97.4]
  assign _T_116 = _T_115 + _GEN_11; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@97.4]
  assign _GEN_12 = {{10'd0}, _T_48}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@98.4]
  assign _T_117 = _T_116 + _GEN_12; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@98.4]
  assign _GEN_13 = {{11'd0}, _T_49}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@99.4]
  assign _T_118 = _T_117 + _GEN_13; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@99.4]
  assign _GEN_14 = {{12'd0}, _T_50}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@100.4]
  assign _T_119 = _T_118 + _GEN_14; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@100.4]
  assign _GEN_15 = {{13'd0}, _T_51}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@101.4]
  assign _T_120 = _T_119 + _GEN_15; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@101.4]
  assign _GEN_16 = {{14'd0}, _T_52}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@102.4]
  assign _T_121 = _T_120 + _GEN_16; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@102.4]
  assign _GEN_17 = {{15'd0}, _T_53}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@103.4]
  assign _T_122 = _T_121 + _GEN_17; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@103.4]
  assign _GEN_18 = {{16'd0}, _T_54}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@104.4]
  assign _T_123 = _T_122 + _GEN_18; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@104.4]
  assign _GEN_19 = {{17'd0}, _T_55}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@105.4]
  assign _T_124 = _T_123 + _GEN_19; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@105.4]
  assign _GEN_20 = {{18'd0}, _T_56}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@106.4]
  assign _T_125 = _T_124 + _GEN_20; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@106.4]
  assign _GEN_21 = {{19'd0}, _T_57}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@107.4]
  assign _T_126 = _T_125 + _GEN_21; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@107.4]
  assign _GEN_22 = {{20'd0}, _T_58}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@108.4]
  assign _T_127 = _T_126 + _GEN_22; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@108.4]
  assign _GEN_23 = {{21'd0}, _T_59}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@109.4]
  assign _T_128 = _T_127 + _GEN_23; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@109.4]
  assign _GEN_24 = {{22'd0}, _T_60}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@110.4]
  assign _T_129 = _T_128 + _GEN_24; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@110.4]
  assign _GEN_25 = {{23'd0}, _T_61}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@111.4]
  assign _T_130 = _T_129 + _GEN_25; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@111.4]
  assign _GEN_26 = {{24'd0}, _T_62}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@112.4]
  assign _T_131 = _T_130 + _GEN_26; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@112.4]
  assign _GEN_27 = {{25'd0}, _T_63}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@113.4]
  assign _T_132 = _T_131 + _GEN_27; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@113.4]
  assign _GEN_28 = {{26'd0}, _T_64}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@114.4]
  assign _T_133 = _T_132 + _GEN_28; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@114.4]
  assign _GEN_29 = {{27'd0}, _T_65}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@115.4]
  assign _T_134 = _T_133 + _GEN_29; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@115.4]
  assign _GEN_30 = {{28'd0}, _T_66}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@116.4]
  assign _T_135 = _T_134 + _GEN_30; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@116.4]
  assign _GEN_31 = {{29'd0}, _T_67}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@117.4]
  assign _T_136 = _T_135 + _GEN_31; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@117.4]
  assign _GEN_32 = {{30'd0}, _T_68}; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@118.4]
  assign _T_137 = _T_136 + _GEN_32; // @[NV_soDLA_CACC_calculator_oc_gate.scala 40:98:@118.4]
  assign _T_141 = _T_140 + _T_137; // @[NV_soDLA_CACC_calculator_oc_gate.scala 43:36:@120.4]
  assign _T_142 = _T_141[31:0]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 43:47:@121.4]
  assign _T_144 = _T_141[32]; // @[NV_soDLA_CACC_calculator_oc_gate.scala 44:43:@123.4]
  assign _T_150 = _T_144 ? 32'hffffffff : _T_142; // @[NV_soDLA_CACC_calculator_oc_gate.scala 46:26:@125.4]
  assign _T_151 = _T_32 ? _T_137 : _T_150; // @[NV_soDLA_CACC_calculator_oc_gate.scala 45:26:@126.4]
  assign _T_153 = _T_137 != 32'h0; // @[NV_soDLA_CACC_calculator_oc_gate.scala 47:49:@127.4]
  assign _T_154 = _T_153 | _T_32; // @[NV_soDLA_CACC_calculator_oc_gate.scala 47:54:@128.4]
  assign _T_155 = _T_23 & _T_154; // @[NV_soDLA_CACC_calculator_oc_gate.scala 47:37:@129.4]
  assign _GEN_2 = _T_155 ? _T_151 : _T_140; // @[NV_soDLA_CACC_calculator_oc_gate.scala 48:21:@130.4]
  assign dp2reg_sat_count = _T_140; // @[NV_soDLA_CACC_calculator_oc_gate.scala 52:25:@133.4]
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
  _T_23 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_26 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_29 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_32 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_140 = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge nvdla_core_clk) begin
    if (_T_20) begin
      _T_23 <= 1'h0;
    end else begin
      _T_23 <= calc_dlv_valid_out;
    end
    if (_T_20) begin
      _T_26 <= 1'h1;
    end else begin
      if (calc_dlv_valid_out) begin
        _T_26 <= _T_33;
      end
    end
    if (_T_20) begin
      _T_29 <= 32'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        _T_29 <= calc_fout_sat;
      end
    end
    if (_T_20) begin
      _T_32 <= 1'h0;
    end else begin
      _T_32 <= _T_36;
    end
    if (_T_20) begin
      _T_140 <= 32'h0;
    end else begin
      if (_T_155) begin
        if (_T_32) begin
          _T_140 <= _T_137;
        end else begin
          if (_T_144) begin
            _T_140 <= 32'hffffffff;
          end else begin
            _T_140 <= _T_142;
          end
        end
      end
    end
  end
endmodule




module NV_NVDLA_CACC_calculator_oc( // @[:@3.2]
  input         nvdla_core_clk, // @[:@6.4]
  input         nvdla_core_rstn, // @[:@6.4]
  input  [31:0] calc_fout_sat, // @[:@6.4]
  input         calc_layer_end_out, // @[:@6.4]
  input         calc_stripe_end_out, // @[:@6.4]
  input         calc_dlv_valid_out, // @[:@6.4]
  output [31:0] dp2reg_sat_count // @[:@6.4]
);

// overflow count
reg dlv_sat_end_d1;
wire [32 -1:0] dlv_sat_bit = calc_fout_sat;
wire dlv_sat_end = calc_layer_end_out & calc_stripe_end_out;
wire dlv_sat_clr = calc_dlv_valid_out & ~dlv_sat_end & dlv_sat_end_d1;
//: my $kk= 32;
//: my $jj= 5;
//: &eperl::flop(" -q  dlv_sat_vld_d1  -d \"calc_dlv_valid_out\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-nodeclare  -q  dlv_sat_end_d1  -en \"calc_dlv_valid_out\" -d  \"dlv_sat_end\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 1");
//: &eperl::flop(" -wid ${kk} -q  dlv_sat_bit_d1  -en \"calc_dlv_valid_out\" -d  \"dlv_sat_bit\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  dlv_sat_clr_d1  -d \"dlv_sat_clr\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: print "wire [${jj}-1:0] sat_sum = ";
//: for(my $i=0; $i<32 -1 ; $i++){
//: print "dlv_sat_bit_d1[${i}]+";
//: }
//: my $i=32 -1;
//: print "dlv_sat_bit_d1[${i}]; \n";
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg  dlv_sat_vld_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_sat_vld_d1 <= 'b0;
   end else begin
       dlv_sat_vld_d1 <= calc_dlv_valid_out;
   end
end
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_sat_end_d1 <= 1;
   end else begin
       if ((calc_dlv_valid_out) == 1'b1) begin
           dlv_sat_end_d1 <= dlv_sat_end;
       // VCS coverage off
       end else if ((calc_dlv_valid_out) == 1'b0) begin
       end else begin
           dlv_sat_end_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [31:0] dlv_sat_bit_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_sat_bit_d1 <= 'b0;
   end else begin
       if ((calc_dlv_valid_out) == 1'b1) begin
           dlv_sat_bit_d1 <= dlv_sat_bit;
       // VCS coverage off
       end else if ((calc_dlv_valid_out) == 1'b0) begin
       end else begin
           dlv_sat_bit_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dlv_sat_clr_d1;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_sat_clr_d1 <= 'b0;
   end else begin
       dlv_sat_clr_d1 <= dlv_sat_clr;
   end
end
wire [5-1:0] sat_sum = dlv_sat_bit_d1[0]+dlv_sat_bit_d1[1]+dlv_sat_bit_d1[2]+dlv_sat_bit_d1[3]+dlv_sat_bit_d1[4]+dlv_sat_bit_d1[5]+dlv_sat_bit_d1[6]+dlv_sat_bit_d1[7]+dlv_sat_bit_d1[8]+dlv_sat_bit_d1[9]+dlv_sat_bit_d1[10]+dlv_sat_bit_d1[11]+dlv_sat_bit_d1[12]+dlv_sat_bit_d1[13]+dlv_sat_bit_d1[14]+dlv_sat_bit_d1[15]+dlv_sat_bit_d1[16]+dlv_sat_bit_d1[17]+dlv_sat_bit_d1[18]+dlv_sat_bit_d1[19]+dlv_sat_bit_d1[20]+dlv_sat_bit_d1[21]+dlv_sat_bit_d1[22]+dlv_sat_bit_d1[23]+dlv_sat_bit_d1[24]+dlv_sat_bit_d1[25]+dlv_sat_bit_d1[26]+dlv_sat_bit_d1[27]+dlv_sat_bit_d1[28]+dlv_sat_bit_d1[29]+dlv_sat_bit_d1[30]+dlv_sat_bit_d1[31]; 

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire [31:0] sat_count_inc;
reg [31:0] sat_count;
wire sat_carry;
wire [31:0] sat_count_w;
wire sat_reg_en;
assign {sat_carry, sat_count_inc[31:0]} = sat_count + sat_sum;
assign sat_count_w = (dlv_sat_clr_d1) ? {24'b0, sat_sum} : sat_carry ? {32{1'b1}} : sat_count_inc;
assign sat_reg_en = dlv_sat_vld_d1 & ((|sat_sum) | dlv_sat_clr_d1);
//: &eperl::flop("-nodeclare -q  sat_count  -en \"sat_reg_en\" -d  \"sat_count_w\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       sat_count <= 'b0;
   end else begin
       if ((sat_reg_en) == 1'b1) begin
           sat_count <= sat_count_w;
       // VCS coverage off
       end else if ((sat_reg_en) == 1'b0) begin
       end else begin
           sat_count <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
// spyglass enable_block NoWidthInBasedNum-ML
// spyglass enable_block STARC-2.10.1.6
assign dp2reg_sat_count = sat_count;
endmodule