module NV_NVDLA_CACC_calculator_oc( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_nvdla_core_clk, // @[:@6.4]
  input  [31:0] io_calc_fout_sat, // @[:@6.4]
  input         io_calc_layer_end_out, // @[:@6.4]
  input         io_calc_stripe_end_out, // @[:@6.4]
  input         io_calc_dlv_valid_out, // @[:@6.4]
  output [31:0] io_dp2reg_sat_count // @[:@6.4]
);
  reg  _T_19; // @[NV_NVDLA_CACC_calculator_oc.scala 27:33:@8.4]
  reg [31:0] _RAND_0;
  reg  _T_22; // @[NV_NVDLA_CACC_calculator_oc.scala 28:33:@9.4]
  reg [31:0] _RAND_1;
  reg [31:0] _T_25; // @[NV_NVDLA_CACC_calculator_oc.scala 29:33:@10.4]
  reg [31:0] _RAND_2;
  reg  _T_28; // @[NV_NVDLA_CACC_calculator_oc.scala 30:33:@11.4]
  reg [31:0] _RAND_3;
  wire  _T_29; // @[NV_NVDLA_CACC_calculator_oc.scala 33:45:@12.4]
  wire  _T_30; // @[NV_NVDLA_CACC_calculator_oc.scala 34:47:@13.4]
  wire  _T_31; // @[NV_NVDLA_CACC_calculator_oc.scala 34:45:@14.4]
  wire  _T_32; // @[NV_NVDLA_CACC_calculator_oc.scala 34:60:@15.4]
  wire  _GEN_0; // @[NV_NVDLA_CACC_calculator_oc.scala 37:32:@17.4]
  wire [31:0] _GEN_1; // @[NV_NVDLA_CACC_calculator_oc.scala 37:32:@17.4]
  wire  _T_33; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@22.4]
  wire  _T_34; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@23.4]
  wire  _T_35; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@24.4]
  wire  _T_36; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@25.4]
  wire  _T_37; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@26.4]
  wire  _T_38; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@27.4]
  wire  _T_39; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@28.4]
  wire  _T_40; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@29.4]
  wire  _T_41; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@30.4]
  wire  _T_42; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@31.4]
  wire  _T_43; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@32.4]
  wire  _T_44; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@33.4]
  wire  _T_45; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@34.4]
  wire  _T_46; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@35.4]
  wire  _T_47; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@36.4]
  wire  _T_48; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@37.4]
  wire  _T_49; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@38.4]
  wire  _T_50; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@39.4]
  wire  _T_51; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@40.4]
  wire  _T_52; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@41.4]
  wire  _T_53; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@42.4]
  wire  _T_54; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@43.4]
  wire  _T_55; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@44.4]
  wire  _T_56; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@45.4]
  wire  _T_57; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@46.4]
  wire  _T_58; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@47.4]
  wire  _T_59; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@48.4]
  wire  _T_60; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@49.4]
  wire  _T_61; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@50.4]
  wire  _T_62; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@51.4]
  wire  _T_63; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@52.4]
  wire  _T_64; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@53.4]
  wire [1:0] _T_103; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@87.4]
  wire [1:0] _GEN_3; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@88.4]
  wire [2:0] _T_104; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@88.4]
  wire [2:0] _GEN_4; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@89.4]
  wire [3:0] _T_105; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@89.4]
  wire [3:0] _GEN_5; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@90.4]
  wire [4:0] _T_106; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@90.4]
  wire [4:0] _GEN_6; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@91.4]
  wire [5:0] _T_107; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@91.4]
  wire [5:0] _GEN_7; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@92.4]
  wire [6:0] _T_108; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@92.4]
  wire [6:0] _GEN_8; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@93.4]
  wire [7:0] _T_109; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@93.4]
  wire [7:0] _GEN_9; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@94.4]
  wire [8:0] _T_110; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@94.4]
  wire [8:0] _GEN_10; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@95.4]
  wire [9:0] _T_111; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@95.4]
  wire [9:0] _GEN_11; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@96.4]
  wire [10:0] _T_112; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@96.4]
  wire [10:0] _GEN_12; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@97.4]
  wire [11:0] _T_113; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@97.4]
  wire [11:0] _GEN_13; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@98.4]
  wire [12:0] _T_114; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@98.4]
  wire [12:0] _GEN_14; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@99.4]
  wire [13:0] _T_115; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@99.4]
  wire [13:0] _GEN_15; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@100.4]
  wire [14:0] _T_116; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@100.4]
  wire [14:0] _GEN_16; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@101.4]
  wire [15:0] _T_117; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@101.4]
  wire [15:0] _GEN_17; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@102.4]
  wire [16:0] _T_118; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@102.4]
  wire [16:0] _GEN_18; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@103.4]
  wire [17:0] _T_119; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@103.4]
  wire [17:0] _GEN_19; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@104.4]
  wire [18:0] _T_120; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@104.4]
  wire [18:0] _GEN_20; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@105.4]
  wire [19:0] _T_121; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@105.4]
  wire [19:0] _GEN_21; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@106.4]
  wire [20:0] _T_122; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@106.4]
  wire [20:0] _GEN_22; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@107.4]
  wire [21:0] _T_123; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@107.4]
  wire [21:0] _GEN_23; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@108.4]
  wire [22:0] _T_124; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@108.4]
  wire [22:0] _GEN_24; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@109.4]
  wire [23:0] _T_125; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@109.4]
  wire [23:0] _GEN_25; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@110.4]
  wire [24:0] _T_126; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@110.4]
  wire [24:0] _GEN_26; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@111.4]
  wire [25:0] _T_127; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@111.4]
  wire [25:0] _GEN_27; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@112.4]
  wire [26:0] _T_128; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@112.4]
  wire [26:0] _GEN_28; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@113.4]
  wire [27:0] _T_129; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@113.4]
  wire [27:0] _GEN_29; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@114.4]
  wire [28:0] _T_130; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@114.4]
  wire [28:0] _GEN_30; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@115.4]
  wire [29:0] _T_131; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@115.4]
  wire [29:0] _GEN_31; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@116.4]
  wire [30:0] _T_132; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@116.4]
  wire [30:0] _GEN_32; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@117.4]
  wire [31:0] _T_133; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@117.4]
  reg [31:0] _T_136; // @[NV_NVDLA_CACC_calculator_oc.scala 44:28:@118.4]
  reg [31:0] _RAND_4;
  wire [32:0] _T_137; // @[NV_NVDLA_CACC_calculator_oc.scala 45:36:@119.4]
  wire [31:0] _T_138; // @[NV_NVDLA_CACC_calculator_oc.scala 45:47:@120.4]
  wire  _T_140; // @[NV_NVDLA_CACC_calculator_oc.scala 46:43:@122.4]
  wire [31:0] _T_146; // @[NV_NVDLA_CACC_calculator_oc.scala 48:26:@124.4]
  wire [31:0] _T_147; // @[NV_NVDLA_CACC_calculator_oc.scala 47:26:@125.4]
  wire  _T_149; // @[NV_NVDLA_CACC_calculator_oc.scala 49:49:@126.4]
  wire  _T_150; // @[NV_NVDLA_CACC_calculator_oc.scala 49:54:@127.4]
  wire  _T_151; // @[NV_NVDLA_CACC_calculator_oc.scala 49:37:@128.4]
  wire [31:0] _GEN_2; // @[NV_NVDLA_CACC_calculator_oc.scala 50:21:@129.4]
  assign _T_29 = io_calc_layer_end_out & io_calc_stripe_end_out; // @[NV_NVDLA_CACC_calculator_oc.scala 33:45:@12.4]
  assign _T_30 = ~ _T_29; // @[NV_NVDLA_CACC_calculator_oc.scala 34:47:@13.4]
  assign _T_31 = io_calc_dlv_valid_out & _T_30; // @[NV_NVDLA_CACC_calculator_oc.scala 34:45:@14.4]
  assign _T_32 = _T_31 & _T_22; // @[NV_NVDLA_CACC_calculator_oc.scala 34:60:@15.4]
  assign _GEN_0 = io_calc_dlv_valid_out ? _T_29 : _T_22; // @[NV_NVDLA_CACC_calculator_oc.scala 37:32:@17.4]
  assign _GEN_1 = io_calc_dlv_valid_out ? io_calc_fout_sat : _T_25; // @[NV_NVDLA_CACC_calculator_oc.scala 37:32:@17.4]
  assign _T_33 = _T_25[0]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@22.4]
  assign _T_34 = _T_25[1]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@23.4]
  assign _T_35 = _T_25[2]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@24.4]
  assign _T_36 = _T_25[3]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@25.4]
  assign _T_37 = _T_25[4]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@26.4]
  assign _T_38 = _T_25[5]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@27.4]
  assign _T_39 = _T_25[6]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@28.4]
  assign _T_40 = _T_25[7]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@29.4]
  assign _T_41 = _T_25[8]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@30.4]
  assign _T_42 = _T_25[9]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@31.4]
  assign _T_43 = _T_25[10]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@32.4]
  assign _T_44 = _T_25[11]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@33.4]
  assign _T_45 = _T_25[12]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@34.4]
  assign _T_46 = _T_25[13]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@35.4]
  assign _T_47 = _T_25[14]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@36.4]
  assign _T_48 = _T_25[15]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@37.4]
  assign _T_49 = _T_25[16]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@38.4]
  assign _T_50 = _T_25[17]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@39.4]
  assign _T_51 = _T_25[18]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@40.4]
  assign _T_52 = _T_25[19]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@41.4]
  assign _T_53 = _T_25[20]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@42.4]
  assign _T_54 = _T_25[21]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@43.4]
  assign _T_55 = _T_25[22]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@44.4]
  assign _T_56 = _T_25[23]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@45.4]
  assign _T_57 = _T_25[24]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@46.4]
  assign _T_58 = _T_25[25]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@47.4]
  assign _T_59 = _T_25[26]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@48.4]
  assign _T_60 = _T_25[27]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@49.4]
  assign _T_61 = _T_25[28]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@50.4]
  assign _T_62 = _T_25[29]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@51.4]
  assign _T_63 = _T_25[30]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@52.4]
  assign _T_64 = _T_25[31]; // @[NV_NVDLA_CACC_calculator_oc.scala 42:77:@53.4]
  assign _T_103 = _T_33 + _T_34; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@87.4]
  assign _GEN_3 = {{1'd0}, _T_35}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@88.4]
  assign _T_104 = _T_103 + _GEN_3; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@88.4]
  assign _GEN_4 = {{2'd0}, _T_36}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@89.4]
  assign _T_105 = _T_104 + _GEN_4; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@89.4]
  assign _GEN_5 = {{3'd0}, _T_37}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@90.4]
  assign _T_106 = _T_105 + _GEN_5; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@90.4]
  assign _GEN_6 = {{4'd0}, _T_38}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@91.4]
  assign _T_107 = _T_106 + _GEN_6; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@91.4]
  assign _GEN_7 = {{5'd0}, _T_39}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@92.4]
  assign _T_108 = _T_107 + _GEN_7; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@92.4]
  assign _GEN_8 = {{6'd0}, _T_40}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@93.4]
  assign _T_109 = _T_108 + _GEN_8; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@93.4]
  assign _GEN_9 = {{7'd0}, _T_41}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@94.4]
  assign _T_110 = _T_109 + _GEN_9; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@94.4]
  assign _GEN_10 = {{8'd0}, _T_42}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@95.4]
  assign _T_111 = _T_110 + _GEN_10; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@95.4]
  assign _GEN_11 = {{9'd0}, _T_43}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@96.4]
  assign _T_112 = _T_111 + _GEN_11; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@96.4]
  assign _GEN_12 = {{10'd0}, _T_44}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@97.4]
  assign _T_113 = _T_112 + _GEN_12; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@97.4]
  assign _GEN_13 = {{11'd0}, _T_45}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@98.4]
  assign _T_114 = _T_113 + _GEN_13; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@98.4]
  assign _GEN_14 = {{12'd0}, _T_46}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@99.4]
  assign _T_115 = _T_114 + _GEN_14; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@99.4]
  assign _GEN_15 = {{13'd0}, _T_47}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@100.4]
  assign _T_116 = _T_115 + _GEN_15; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@100.4]
  assign _GEN_16 = {{14'd0}, _T_48}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@101.4]
  assign _T_117 = _T_116 + _GEN_16; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@101.4]
  assign _GEN_17 = {{15'd0}, _T_49}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@102.4]
  assign _T_118 = _T_117 + _GEN_17; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@102.4]
  assign _GEN_18 = {{16'd0}, _T_50}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@103.4]
  assign _T_119 = _T_118 + _GEN_18; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@103.4]
  assign _GEN_19 = {{17'd0}, _T_51}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@104.4]
  assign _T_120 = _T_119 + _GEN_19; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@104.4]
  assign _GEN_20 = {{18'd0}, _T_52}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@105.4]
  assign _T_121 = _T_120 + _GEN_20; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@105.4]
  assign _GEN_21 = {{19'd0}, _T_53}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@106.4]
  assign _T_122 = _T_121 + _GEN_21; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@106.4]
  assign _GEN_22 = {{20'd0}, _T_54}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@107.4]
  assign _T_123 = _T_122 + _GEN_22; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@107.4]
  assign _GEN_23 = {{21'd0}, _T_55}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@108.4]
  assign _T_124 = _T_123 + _GEN_23; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@108.4]
  assign _GEN_24 = {{22'd0}, _T_56}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@109.4]
  assign _T_125 = _T_124 + _GEN_24; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@109.4]
  assign _GEN_25 = {{23'd0}, _T_57}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@110.4]
  assign _T_126 = _T_125 + _GEN_25; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@110.4]
  assign _GEN_26 = {{24'd0}, _T_58}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@111.4]
  assign _T_127 = _T_126 + _GEN_26; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@111.4]
  assign _GEN_27 = {{25'd0}, _T_59}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@112.4]
  assign _T_128 = _T_127 + _GEN_27; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@112.4]
  assign _GEN_28 = {{26'd0}, _T_60}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@113.4]
  assign _T_129 = _T_128 + _GEN_28; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@113.4]
  assign _GEN_29 = {{27'd0}, _T_61}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@114.4]
  assign _T_130 = _T_129 + _GEN_29; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@114.4]
  assign _GEN_30 = {{28'd0}, _T_62}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@115.4]
  assign _T_131 = _T_130 + _GEN_30; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@115.4]
  assign _GEN_31 = {{29'd0}, _T_63}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@116.4]
  assign _T_132 = _T_131 + _GEN_31; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@116.4]
  assign _GEN_32 = {{30'd0}, _T_64}; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@117.4]
  assign _T_133 = _T_132 + _GEN_32; // @[NV_NVDLA_CACC_calculator_oc.scala 42:98:@117.4]
  assign _T_137 = _T_136 + _T_133; // @[NV_NVDLA_CACC_calculator_oc.scala 45:36:@119.4]
  assign _T_138 = _T_137[31:0]; // @[NV_NVDLA_CACC_calculator_oc.scala 45:47:@120.4]
  assign _T_140 = _T_137[32]; // @[NV_NVDLA_CACC_calculator_oc.scala 46:43:@122.4]
  assign _T_146 = _T_140 ? 32'hffffffff : _T_138; // @[NV_NVDLA_CACC_calculator_oc.scala 48:26:@124.4]
  assign _T_147 = _T_28 ? _T_133 : _T_146; // @[NV_NVDLA_CACC_calculator_oc.scala 47:26:@125.4]
  assign _T_149 = _T_133 != 32'h0; // @[NV_NVDLA_CACC_calculator_oc.scala 49:49:@126.4]
  assign _T_150 = _T_149 | _T_28; // @[NV_NVDLA_CACC_calculator_oc.scala 49:54:@127.4]
  assign _T_151 = _T_19 & _T_150; // @[NV_NVDLA_CACC_calculator_oc.scala 49:37:@128.4]
  assign _GEN_2 = _T_151 ? _T_147 : _T_136; // @[NV_NVDLA_CACC_calculator_oc.scala 50:21:@129.4]
  assign io_dp2reg_sat_count = _T_136; // @[NV_NVDLA_CACC_calculator_oc.scala 54:25:@132.4]
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
  _T_19 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_22 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_25 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_28 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_136 = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_19 <= 1'h0;
    end else begin
      _T_19 <= io_calc_dlv_valid_out;
    end
    if (reset) begin
      _T_22 <= 1'h1;
    end else begin
      if (io_calc_dlv_valid_out) begin
        _T_22 <= _T_29;
      end
    end
    if (reset) begin
      _T_25 <= 32'h0;
    end else begin
      if (io_calc_dlv_valid_out) begin
        _T_25 <= io_calc_fout_sat;
      end
    end
    if (reset) begin
      _T_28 <= 1'h0;
    end else begin
      _T_28 <= _T_32;
    end
    if (reset) begin
      _T_136 <= 32'h0;
    end else begin
      if (_T_151) begin
        if (_T_28) begin
          _T_136 <= _T_133;
        end else begin
          if (_T_140) begin
            _T_136 <= 32'hffffffff;
          end else begin
            _T_136 <= _T_138;
          end
        end
      end
    end
  end
endmodule
