module NV_soDLA_CSC_DL_IP_cfg_gate( // @[:@3.2]
  input         nvdla_core_clk, // @[:@6.4]
  input         nvdla_core_rstn, // @[:@6.4]
  input         is_sg_idle, // @[:@6.4]
  input         is_sg_running, // @[:@6.4]
  input         is_sg_done, // @[:@6.4]
  input         reg2dp_op_en, // @[:@6.4]
  input         reg2dp_conv_mode, // @[:@6.4]
  input  [4:0]  reg2dp_batches, // @[:@6.4]
  input  [1:0]  reg2dp_proc_precision, // @[:@6.4]
  input         reg2dp_datain_format, // @[:@6.4]
  input         reg2dp_skip_data_rls, // @[:@6.4]
  input  [12:0] reg2dp_datain_channel_ext, // @[:@6.4]
  input  [12:0] reg2dp_datain_height_ext, // @[:@6.4]
  input  [12:0] reg2dp_datain_width_ext, // @[:@6.4]
  input  [1:0]  reg2dp_y_extension, // @[:@6.4]
  input  [12:0] reg2dp_weight_channel_ext, // @[:@6.4]
  input  [13:0] reg2dp_entries, // @[:@6.4]
  input  [12:0] reg2dp_dataout_width, // @[:@6.4]
  input  [11:0] reg2dp_rls_slices, // @[:@6.4]
  input  [2:0]  reg2dp_conv_x_stride_ext, // @[:@6.4]
  input  [2:0]  reg2dp_conv_y_stride_ext, // @[:@6.4]
  input  [4:0]  reg2dp_x_dilation_ext, // @[:@6.4]
  input  [4:0]  reg2dp_y_dilation_ext, // @[:@6.4]
  input  [4:0]  reg2dp_pad_left, // @[:@6.4]
  input  [4:0]  reg2dp_pad_top, // @[:@6.4]
  input  [15:0] reg2dp_pad_value, // @[:@6.4]
  input  [4:0]  reg2dp_data_bank, // @[:@6.4]
  input  [1:0]  reg2dp_pra_truncate, // @[:@6.4]
  output        layer_st_d1, // @[:@6.4]
  output [12:0] dataout_w_init, // @[:@6.4]
  output [21:0] is_winograd_d1, // @[:@6.4]
  output [33:0] is_img_d1, // @[:@6.4]
  output [4:0]  data_bank, // @[:@6.4]
  output [13:0] datain_width, // @[:@6.4]
  output [12:0] datain_width_cmp, // @[:@6.4]
  output [12:0] datain_height_cmp, // @[:@6.4]
  output [10:0] datain_channel_cmp, // @[:@6.4]
  output [2:0]  sub_h_total_g0, // @[:@6.4]
  output [2:0]  sub_h_total_g1, // @[:@6.4]
  output [1:0]  sub_h_total_g2, // @[:@6.4]
  output [2:0]  sub_h_total_g3, // @[:@6.4]
  output [2:0]  sub_h_total_g4, // @[:@6.4]
  output [2:0]  sub_h_total_g5, // @[:@6.4]
  output [2:0]  sub_h_total_g6, // @[:@6.4]
  output [2:0]  sub_h_total_g7, // @[:@6.4]
  output [2:0]  sub_h_total_g8, // @[:@6.4]
  output [2:0]  sub_h_total_g9, // @[:@6.4]
  output [2:0]  sub_h_total_g10, // @[:@6.4]
  output [2:0]  sub_h_total_g11, // @[:@6.4]
  output [2:0]  sub_h_cmp_g0, // @[:@6.4]
  output [2:0]  sub_h_cmp_g1, // @[:@6.4]
  output [3:0]  conv_x_stride, // @[:@6.4]
  output [3:0]  conv_y_stride, // @[:@6.4]
  output        pixel_x_stride_odd, // @[:@6.4]
  output [5:0]  data_batch, // @[:@6.4]
  output [4:0]  batch_cmp, // @[:@6.4]
  output [5:0]  pixel_x_init, // @[:@6.4]
  output [6:0]  pixel_x_init_offset, // @[:@6.4]
  output [6:0]  pixel_x_add, // @[:@6.4]
  output [6:0]  pixel_x_byte_stride, // @[:@6.4]
  output [11:0] pixel_ch_stride, // @[:@6.4]
  output [5:0]  x_dilate, // @[:@6.4]
  output [5:0]  y_dilate, // @[:@6.4]
  output [15:0] pad_value, // @[:@6.4]
  output [14:0] entries, // @[:@6.4]
  output [14:0] entries_batch, // @[:@6.4]
  output [14:0] entries_cmp, // @[:@6.4]
  output [13:0] h_offset_slice, // @[:@6.4]
  output [13:0] rls_slices, // @[:@6.4]
  output [13:0] slice_left, // @[:@6.4]
  output [12:0] dataout_width_cmp, // @[:@6.4]
  output [7:0]  pra_truncate, // @[:@6.4]
  output [7:0]  pra_precision, // @[:@6.4]
  output [11:0] h_bias_0_stride, // @[:@6.4]
  output [11:0] h_bias_1_stride, // @[:@6.4]
  output [12:0] h_bias_2_stride, // @[:@6.4]
  output [12:0] h_bias_3_stride, // @[:@6.4]
  output [14:0] rls_entries, // @[:@6.4]
  output [13:0] last_slices, // @[:@6.4]
  output [14:0] last_entries // @[:@6.4]
);
  wire  _T_214; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 53:38:@8.4]
  wire  layer_st; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 58:32:@9.4]
  wire  is_conv; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 60:35:@11.4]
  wire  is_img; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 61:22:@12.4]
  wire [5:0] data_bank_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 63:39:@13.4]
  wire [13:0] datain_width_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 71:108:@16.4]
  wire [6:0] _T_224; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 74:110:@19.4]
  wire [10:0] datain_channel_cmp_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 74:31:@20.4]
  wire [8:0] _T_226; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 78:53:@21.4]
  wire [8:0] _T_228; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 78:24:@22.4]
  wire [2:0] sub_h_total_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 78:100:@23.4]
  wire [2:0] sub_h_cmp_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 79:22:@25.4]
  wire [3:0] _T_233; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 80:34:@26.4]
  wire [3:0] _T_234; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 80:34:@27.4]
  wire [3:0] conv_x_stride_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 82:78:@29.4]
  wire [1:0] _T_238; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 83:62:@31.4]
  wire [5:0] _T_241; // @[Cat.scala 30:58:@32.4]
  wire [4:0] _T_244; // @[Cat.scala 30:58:@33.4]
  wire [4:0] _GEN_50; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 85:77:@34.4]
  wire [5:0] _T_245; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 85:77:@34.4]
  wire  _T_246; // @[Mux.scala 46:19:@35.4]
  wire [5:0] _T_247; // @[Mux.scala 46:16:@36.4]
  wire  _T_248; // @[Mux.scala 46:19:@37.4]
  wire [5:0] pixel_x_stride_w; // @[Mux.scala 46:16:@38.4]
  wire  _T_250; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 87:88:@39.4]
  wire [5:0] _T_256; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 87:172:@41.4]
  wire [5:0] _T_257; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 87:58:@42.4]
  wire [6:0] _T_260; // @[Cat.scala 30:58:@43.4]
  wire [6:0] _GEN_51; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 88:80:@44.4]
  wire [7:0] _T_261; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 88:80:@44.4]
  wire [7:0] _GEN_52; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 88:100:@46.4]
  wire [8:0] _T_263; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 88:100:@46.4]
  wire [6:0] _T_266; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 89:57:@48.4]
  wire  _T_267; // @[Mux.scala 46:19:@49.4]
  wire [6:0] _T_268; // @[Mux.scala 46:16:@50.4]
  wire  _T_269; // @[Mux.scala 46:19:@51.4]
  wire [8:0] pixel_x_init_w; // @[Mux.scala 46:16:@52.4]
  wire [6:0] pixel_x_init_offset_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 91:80:@54.4]
  wire [7:0] _T_274; // @[Cat.scala 30:58:@55.4]
  wire [6:0] _T_279; // @[Mux.scala 46:16:@58.4]
  wire [7:0] pixel_x_add_w; // @[Mux.scala 46:16:@60.4]
  wire [11:0] pixel_ch_stride_w; // @[Cat.scala 30:58:@61.4]
  wire [3:0] conv_y_stride_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 102:74:@62.4]
  wire [5:0] _T_288; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 103:74:@65.4]
  wire [5:0] x_dilate_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 103:21:@66.4]
  wire [5:0] _T_292; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 104:74:@68.4]
  wire [5:0] y_dilate_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 104:21:@69.4]
  wire [14:0] entries_single_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 107:43:@70.4]
  wire [20:0] _T_295; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 108:41:@72.4]
  wire [14:0] entries_batch_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 108:56:@73.4]
  wire [15:0] entries_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 109:20:@77.4]
  wire [11:0] h_offset_slice_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 110:37:@78.4]
  wire [12:0] _T_302; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 111:41:@79.4]
  wire [11:0] rls_slices_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 111:41:@80.4]
  wire [13:0] _T_304; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 112:77:@81.4]
  wire [12:0] _GEN_53; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 112:113:@82.4]
  wire [13:0] _T_305; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 112:113:@82.4]
  wire [13:0] _T_306; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 112:113:@83.4]
  wire [13:0] slice_left_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 112:23:@84.4]
  wire  _T_308; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 114:49:@85.4]
  wire [1:0] pra_truncate_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 114:25:@86.4]
  reg  _T_312; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 117:26:@87.4]
  reg [31:0] _RAND_0;
  reg [21:0] _T_319; // @[Reg.scala 19:20:@91.4]
  reg [31:0] _RAND_1;
  wire [21:0] _GEN_0; // @[Reg.scala 20:19:@92.4]
  wire [33:0] _T_323; // @[Bitwise.scala 72:12:@97.4]
  reg [33:0] _T_326; // @[Reg.scala 19:20:@98.4]
  reg [63:0] _RAND_2;
  wire [33:0] _GEN_1; // @[Reg.scala 20:19:@99.4]
  reg [4:0] _T_329; // @[Reg.scala 19:20:@103.4]
  reg [31:0] _RAND_3;
  wire [5:0] _GEN_2; // @[Reg.scala 20:19:@104.4]
  reg [13:0] _T_332; // @[Reg.scala 19:20:@108.4]
  reg [31:0] _RAND_4;
  wire [13:0] _GEN_3; // @[Reg.scala 20:19:@109.4]
  reg [12:0] _T_335; // @[Reg.scala 19:20:@113.4]
  reg [31:0] _RAND_5;
  wire [12:0] _GEN_4; // @[Reg.scala 20:19:@114.4]
  reg [12:0] _T_338; // @[Reg.scala 19:20:@118.4]
  reg [31:0] _RAND_6;
  wire [12:0] _GEN_5; // @[Reg.scala 20:19:@119.4]
  reg [10:0] _T_341; // @[Reg.scala 19:20:@123.4]
  reg [31:0] _RAND_7;
  wire [10:0] _GEN_6; // @[Reg.scala 20:19:@124.4]
  reg [2:0] _T_344; // @[Reg.scala 19:20:@128.4]
  reg [31:0] _RAND_8;
  wire [2:0] _GEN_7; // @[Reg.scala 20:19:@129.4]
  reg [2:0] _T_347; // @[Reg.scala 19:20:@133.4]
  reg [31:0] _RAND_9;
  wire [2:0] _GEN_8; // @[Reg.scala 20:19:@134.4]
  wire [1:0] _T_348; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 127:57:@138.4]
  reg [1:0] _T_351; // @[Reg.scala 19:20:@139.4]
  reg [31:0] _RAND_10;
  wire [1:0] _GEN_9; // @[Reg.scala 20:19:@140.4]
  reg [2:0] _T_354; // @[Reg.scala 19:20:@144.4]
  reg [31:0] _RAND_11;
  wire [2:0] _GEN_10; // @[Reg.scala 20:19:@145.4]
  reg [2:0] _T_357; // @[Reg.scala 19:20:@149.4]
  reg [31:0] _RAND_12;
  wire [2:0] _GEN_11; // @[Reg.scala 20:19:@150.4]
  reg [2:0] _T_360; // @[Reg.scala 19:20:@154.4]
  reg [31:0] _RAND_13;
  wire [2:0] _GEN_12; // @[Reg.scala 20:19:@155.4]
  reg [2:0] _T_363; // @[Reg.scala 19:20:@159.4]
  reg [31:0] _RAND_14;
  wire [2:0] _GEN_13; // @[Reg.scala 20:19:@160.4]
  reg [2:0] _T_366; // @[Reg.scala 19:20:@164.4]
  reg [31:0] _RAND_15;
  wire [2:0] _GEN_14; // @[Reg.scala 20:19:@165.4]
  reg [2:0] _T_369; // @[Reg.scala 19:20:@169.4]
  reg [31:0] _RAND_16;
  wire [2:0] _GEN_15; // @[Reg.scala 20:19:@170.4]
  reg [2:0] _T_372; // @[Reg.scala 19:20:@174.4]
  reg [31:0] _RAND_17;
  wire [2:0] _GEN_16; // @[Reg.scala 20:19:@175.4]
  reg [2:0] _T_375; // @[Reg.scala 19:20:@179.4]
  reg [31:0] _RAND_18;
  wire [2:0] _GEN_17; // @[Reg.scala 20:19:@180.4]
  reg [2:0] _T_378; // @[Reg.scala 19:20:@184.4]
  reg [31:0] _RAND_19;
  wire [2:0] _GEN_18; // @[Reg.scala 20:19:@185.4]
  reg [2:0] _T_381; // @[Reg.scala 19:20:@189.4]
  reg [31:0] _RAND_20;
  wire [2:0] _GEN_19; // @[Reg.scala 20:19:@190.4]
  reg [2:0] _T_384; // @[Reg.scala 19:20:@194.4]
  reg [31:0] _RAND_21;
  wire [2:0] _GEN_20; // @[Reg.scala 20:19:@195.4]
  reg [3:0] _T_387; // @[Reg.scala 19:20:@199.4]
  reg [31:0] _RAND_22;
  wire [3:0] _GEN_21; // @[Reg.scala 20:19:@200.4]
  reg [3:0] _T_390; // @[Reg.scala 19:20:@204.4]
  reg [31:0] _RAND_23;
  wire [3:0] _GEN_22; // @[Reg.scala 20:19:@205.4]
  wire  _T_391; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 141:64:@209.4]
  reg  _T_394; // @[Reg.scala 19:20:@210.4]
  reg [31:0] _RAND_24;
  wire  _GEN_23; // @[Reg.scala 20:19:@211.4]
  reg [5:0] _T_397; // @[Reg.scala 19:20:@215.4]
  reg [31:0] _RAND_25;
  wire [5:0] _GEN_24; // @[Reg.scala 20:19:@216.4]
  reg [4:0] _T_400; // @[Reg.scala 19:20:@220.4]
  reg [31:0] _RAND_26;
  wire [4:0] _GEN_25; // @[Reg.scala 20:19:@221.4]
  reg [5:0] _T_403; // @[Reg.scala 19:20:@225.4]
  reg [31:0] _RAND_27;
  wire [8:0] _GEN_26; // @[Reg.scala 20:19:@226.4]
  reg [6:0] _T_406; // @[Reg.scala 19:20:@230.4]
  reg [31:0] _RAND_28;
  wire [6:0] _GEN_27; // @[Reg.scala 20:19:@231.4]
  wire [6:0] _T_407; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 146:54:@235.4]
  reg [6:0] _T_410; // @[Reg.scala 19:20:@236.4]
  reg [31:0] _RAND_29;
  wire [6:0] _GEN_28; // @[Reg.scala 20:19:@237.4]
  reg [6:0] _T_413; // @[Reg.scala 19:20:@241.4]
  reg [31:0] _RAND_30;
  wire [6:0] _GEN_29; // @[Reg.scala 20:19:@242.4]
  reg [11:0] _T_416; // @[Reg.scala 19:20:@246.4]
  reg [31:0] _RAND_31;
  wire [11:0] _GEN_30; // @[Reg.scala 20:19:@247.4]
  reg [5:0] _T_419; // @[Reg.scala 19:20:@251.4]
  reg [31:0] _RAND_32;
  wire [5:0] _GEN_31; // @[Reg.scala 20:19:@252.4]
  reg [5:0] _T_422; // @[Reg.scala 19:20:@256.4]
  reg [31:0] _RAND_33;
  wire [5:0] _GEN_32; // @[Reg.scala 20:19:@257.4]
  reg [15:0] _T_425; // @[Reg.scala 19:20:@261.4]
  reg [31:0] _RAND_34;
  wire [15:0] _GEN_33; // @[Reg.scala 20:19:@262.4]
  reg [14:0] _T_428; // @[Reg.scala 19:20:@266.4]
  reg [31:0] _RAND_35;
  wire [15:0] _GEN_34; // @[Reg.scala 20:19:@267.4]
  reg [14:0] _T_431; // @[Reg.scala 19:20:@271.4]
  reg [31:0] _RAND_36;
  wire [14:0] _GEN_35; // @[Reg.scala 20:19:@272.4]
  reg [14:0] _T_434; // @[Reg.scala 19:20:@276.4]
  reg [31:0] _RAND_37;
  wire [14:0] _GEN_36; // @[Reg.scala 20:19:@277.4]
  reg [13:0] _T_437; // @[Reg.scala 19:20:@281.4]
  reg [31:0] _RAND_38;
  wire [13:0] _GEN_37; // @[Reg.scala 20:19:@282.4]
  reg [13:0] _T_440; // @[Reg.scala 19:20:@286.4]
  reg [31:0] _RAND_39;
  wire [13:0] _GEN_38; // @[Reg.scala 20:19:@287.4]
  reg [13:0] _T_444; // @[Reg.scala 19:20:@292.4]
  reg [31:0] _RAND_40;
  wire [13:0] _GEN_39; // @[Reg.scala 20:19:@293.4]
  reg [12:0] _T_447; // @[Reg.scala 19:20:@297.4]
  reg [31:0] _RAND_41;
  wire [12:0] _GEN_40; // @[Reg.scala 20:19:@298.4]
  wire [7:0] _T_449; // @[Cat.scala 30:58:@303.4]
  reg [7:0] _T_452; // @[Reg.scala 19:20:@304.4]
  reg [31:0] _RAND_42;
  wire [7:0] _GEN_41; // @[Reg.scala 20:19:@305.4]
  wire [7:0] _T_454; // @[Cat.scala 30:58:@310.4]
  reg [7:0] _T_457; // @[Reg.scala 19:20:@311.4]
  reg [31:0] _RAND_43;
  wire [7:0] _GEN_42; // @[Reg.scala 20:19:@312.4]
  wire [14:0] _GEN_54; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 163:49:@316.4]
  wire [20:0] _T_458; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 163:49:@316.4]
  wire [12:0] h_bias_0_stride_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 163:77:@317.4]
  wire [14:0] _GEN_55; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 164:49:@318.4]
  wire [28:0] _T_459; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 164:49:@318.4]
  wire [12:0] h_bias_1_stride_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 164:81:@319.4]
  wire [13:0] slices_oprand; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 165:24:@320.4]
  wire [14:0] _GEN_56; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 166:53:@321.4]
  wire [28:0] _T_460; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 166:53:@321.4]
  wire [14:0] slice_entries_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 166:69:@322.4]
  reg [11:0] _T_463; // @[Reg.scala 19:20:@323.4]
  reg [31:0] _RAND_44;
  wire [12:0] _GEN_43; // @[Reg.scala 20:19:@324.4]
  reg [11:0] _T_466; // @[Reg.scala 19:20:@328.4]
  reg [31:0] _RAND_45;
  wire [12:0] _GEN_44; // @[Reg.scala 20:19:@329.4]
  wire [12:0] _T_467; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 170:66:@333.4]
  reg [12:0] _T_470; // @[Reg.scala 19:20:@334.4]
  reg [31:0] _RAND_46;
  wire [12:0] _GEN_45; // @[Reg.scala 20:19:@335.4]
  reg [12:0] _T_474; // @[Reg.scala 19:20:@340.4]
  reg [31:0] _RAND_47;
  wire [12:0] _GEN_46; // @[Reg.scala 20:19:@341.4]
  reg [14:0] _T_477; // @[Reg.scala 19:20:@345.4]
  reg [31:0] _RAND_48;
  wire [14:0] _GEN_47; // @[Reg.scala 20:19:@346.4]
  reg [13:0] _T_480; // @[Reg.scala 19:20:@350.4]
  reg [31:0] _RAND_49;
  wire [13:0] _GEN_48; // @[Reg.scala 20:19:@351.4]
  reg [14:0] _T_483; // @[Reg.scala 19:20:@355.4]
  reg [31:0] _RAND_50;
  wire [14:0] _GEN_49; // @[Reg.scala 20:19:@356.4]
  assign _T_214 = nvdla_core_rstn == 1'h0; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 53:38:@8.4]
  assign layer_st = reg2dp_op_en & is_sg_idle; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 58:32:@9.4]
  assign is_conv = reg2dp_conv_mode == 1'h0; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 60:35:@11.4]
  assign is_img = is_conv & reg2dp_datain_format; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 61:22:@12.4]
  assign data_bank_w = reg2dp_data_bank + 5'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 63:39:@13.4]
  assign datain_width_w = reg2dp_datain_width_ext + 13'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 71:108:@16.4]
  assign _T_224 = reg2dp_weight_channel_ext[12:6]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 74:110:@19.4]
  assign datain_channel_cmp_w = {{4'd0}, _T_224}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 74:31:@20.4]
  assign _T_226 = 9'h9 << reg2dp_y_extension; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 78:53:@21.4]
  assign _T_228 = is_img ? _T_226 : 9'h8; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 78:24:@22.4]
  assign sub_h_total_w = _T_228[5:3]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 78:100:@23.4]
  assign sub_h_cmp_w = is_img ? sub_h_total_w : 3'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 79:22:@25.4]
  assign _T_233 = sub_h_cmp_w - 3'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 80:34:@26.4]
  assign _T_234 = $unsigned(_T_233); // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 80:34:@27.4]
  assign conv_x_stride_w = reg2dp_conv_x_stride_ext + 3'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 82:78:@29.4]
  assign _T_238 = reg2dp_datain_channel_ext[1:0]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 83:62:@31.4]
  assign _T_241 = {conv_x_stride_w,2'h0}; // @[Cat.scala 30:58:@32.4]
  assign _T_244 = {conv_x_stride_w,1'h0}; // @[Cat.scala 30:58:@33.4]
  assign _GEN_50 = {{1'd0}, conv_x_stride_w}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 85:77:@34.4]
  assign _T_245 = _T_244 + _GEN_50; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 85:77:@34.4]
  assign _T_246 = 2'h2 == _T_238; // @[Mux.scala 46:19:@35.4]
  assign _T_247 = _T_246 ? _T_245 : {{2'd0}, conv_x_stride_w}; // @[Mux.scala 46:16:@36.4]
  assign _T_248 = 2'h3 == _T_238; // @[Mux.scala 46:19:@37.4]
  assign pixel_x_stride_w = _T_248 ? _T_241 : _T_247; // @[Mux.scala 46:16:@38.4]
  assign _T_250 = reg2dp_weight_channel_ext >= 13'h40; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 87:88:@39.4]
  assign _T_256 = reg2dp_weight_channel_ext[5:0]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 87:172:@41.4]
  assign _T_257 = _T_250 ? 6'h3f : _T_256; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 87:58:@42.4]
  assign _T_260 = {pixel_x_stride_w,1'h0}; // @[Cat.scala 30:58:@43.4]
  assign _GEN_51 = {{1'd0}, pixel_x_stride_w}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 88:80:@44.4]
  assign _T_261 = _T_260 + _GEN_51; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 88:80:@44.4]
  assign _GEN_52 = {{2'd0}, _T_256}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 88:100:@46.4]
  assign _T_263 = _T_261 + _GEN_52; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 88:100:@46.4]
  assign _T_266 = pixel_x_stride_w + _T_256; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 89:57:@48.4]
  assign _T_267 = 2'h1 == reg2dp_y_extension; // @[Mux.scala 46:19:@49.4]
  assign _T_268 = _T_267 ? _T_266 : {{1'd0}, _T_257}; // @[Mux.scala 46:16:@50.4]
  assign _T_269 = 2'h2 == reg2dp_y_extension; // @[Mux.scala 46:19:@51.4]
  assign pixel_x_init_w = _T_269 ? _T_263 : {{2'd0}, _T_268}; // @[Mux.scala 46:16:@52.4]
  assign pixel_x_init_offset_w = _T_256 + 6'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 91:80:@54.4]
  assign _T_274 = {pixel_x_stride_w,2'h0}; // @[Cat.scala 30:58:@55.4]
  assign _T_279 = _T_267 ? _T_260 : {{1'd0}, pixel_x_stride_w}; // @[Mux.scala 46:16:@58.4]
  assign pixel_x_add_w = _T_269 ? _T_274 : {{1'd0}, _T_279}; // @[Mux.scala 46:16:@60.4]
  assign pixel_ch_stride_w = {pixel_x_stride_w,6'h0}; // @[Cat.scala 30:58:@61.4]
  assign conv_y_stride_w = reg2dp_conv_y_stride_ext + 3'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 102:74:@62.4]
  assign _T_288 = reg2dp_x_dilation_ext + 5'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 103:74:@65.4]
  assign x_dilate_w = is_img ? 6'h1 : _T_288; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 103:21:@66.4]
  assign _T_292 = reg2dp_y_dilation_ext + 5'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 104:74:@68.4]
  assign y_dilate_w = is_img ? 6'h1 : _T_292; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 104:21:@69.4]
  assign entries_single_w = reg2dp_entries + 14'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 107:43:@70.4]
  assign _T_295 = entries_single_w * 15'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 108:41:@72.4]
  assign entries_batch_w = _T_295[14:0]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 108:56:@73.4]
  assign entries_w = {{1'd0}, entries_single_w}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 109:20:@77.4]
  assign h_offset_slice_w = 6'h1 * y_dilate_w; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 110:37:@78.4]
  assign _T_302 = reg2dp_rls_slices + 12'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 111:41:@79.4]
  assign rls_slices_w = reg2dp_rls_slices + 12'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 111:41:@80.4]
  assign _T_304 = reg2dp_datain_height_ext + 13'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 112:77:@81.4]
  assign _GEN_53 = {{1'd0}, reg2dp_rls_slices}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 112:113:@82.4]
  assign _T_305 = reg2dp_datain_height_ext - _GEN_53; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 112:113:@82.4]
  assign _T_306 = $unsigned(_T_305); // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 112:113:@83.4]
  assign slice_left_w = reg2dp_skip_data_rls ? _T_304 : _T_306; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 112:23:@84.4]
  assign _T_308 = reg2dp_pra_truncate == 2'h3; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 114:49:@85.4]
  assign pra_truncate_w = _T_308 ? 2'h2 : reg2dp_pra_truncate; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 114:25:@86.4]
  assign _GEN_0 = layer_st ? 22'h0 : _T_319; // @[Reg.scala 20:19:@92.4]
  assign _T_323 = is_img ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@97.4]
  assign _GEN_1 = layer_st ? _T_323 : _T_326; // @[Reg.scala 20:19:@99.4]
  assign _GEN_2 = layer_st ? data_bank_w : {{1'd0}, _T_329}; // @[Reg.scala 20:19:@104.4]
  assign _GEN_3 = layer_st ? datain_width_w : _T_332; // @[Reg.scala 20:19:@109.4]
  assign _GEN_4 = layer_st ? reg2dp_datain_width_ext : _T_335; // @[Reg.scala 20:19:@114.4]
  assign _GEN_5 = layer_st ? reg2dp_datain_height_ext : _T_338; // @[Reg.scala 20:19:@119.4]
  assign _GEN_6 = layer_st ? datain_channel_cmp_w : _T_341; // @[Reg.scala 20:19:@124.4]
  assign _GEN_7 = layer_st ? sub_h_total_w : _T_344; // @[Reg.scala 20:19:@129.4]
  assign _GEN_8 = layer_st ? sub_h_total_w : _T_347; // @[Reg.scala 20:19:@134.4]
  assign _T_348 = sub_h_total_w[2:1]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 127:57:@138.4]
  assign _GEN_9 = layer_st ? _T_348 : _T_351; // @[Reg.scala 20:19:@140.4]
  assign _GEN_10 = layer_st ? sub_h_total_w : _T_354; // @[Reg.scala 20:19:@145.4]
  assign _GEN_11 = layer_st ? sub_h_total_w : _T_357; // @[Reg.scala 20:19:@150.4]
  assign _GEN_12 = layer_st ? sub_h_total_w : _T_360; // @[Reg.scala 20:19:@155.4]
  assign _GEN_13 = layer_st ? sub_h_total_w : _T_363; // @[Reg.scala 20:19:@160.4]
  assign _GEN_14 = layer_st ? sub_h_total_w : _T_366; // @[Reg.scala 20:19:@165.4]
  assign _GEN_15 = layer_st ? sub_h_total_w : _T_369; // @[Reg.scala 20:19:@170.4]
  assign _GEN_16 = layer_st ? sub_h_total_w : _T_372; // @[Reg.scala 20:19:@175.4]
  assign _GEN_17 = layer_st ? sub_h_total_w : _T_375; // @[Reg.scala 20:19:@180.4]
  assign _GEN_18 = layer_st ? sub_h_total_w : _T_378; // @[Reg.scala 20:19:@185.4]
  assign _GEN_19 = layer_st ? sub_h_cmp_w : _T_381; // @[Reg.scala 20:19:@190.4]
  assign _GEN_20 = layer_st ? sub_h_cmp_w : _T_384; // @[Reg.scala 20:19:@195.4]
  assign _GEN_21 = layer_st ? conv_x_stride_w : _T_387; // @[Reg.scala 20:19:@200.4]
  assign _GEN_22 = layer_st ? conv_y_stride_w : _T_390; // @[Reg.scala 20:19:@205.4]
  assign _T_391 = pixel_x_stride_w[0]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 141:64:@209.4]
  assign _GEN_23 = layer_st ? _T_391 : _T_394; // @[Reg.scala 20:19:@211.4]
  assign _GEN_24 = layer_st ? 6'h1 : _T_397; // @[Reg.scala 20:19:@216.4]
  assign _GEN_25 = layer_st ? 5'h0 : _T_400; // @[Reg.scala 20:19:@221.4]
  assign _GEN_26 = layer_st ? pixel_x_init_w : {{3'd0}, _T_403}; // @[Reg.scala 20:19:@226.4]
  assign _GEN_27 = layer_st ? pixel_x_init_offset_w : _T_406; // @[Reg.scala 20:19:@231.4]
  assign _T_407 = pixel_x_add_w[6:0]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 146:54:@235.4]
  assign _GEN_28 = layer_st ? _T_407 : _T_410; // @[Reg.scala 20:19:@237.4]
  assign _GEN_29 = layer_st ? {{1'd0}, pixel_x_stride_w} : _T_413; // @[Reg.scala 20:19:@242.4]
  assign _GEN_30 = layer_st ? pixel_ch_stride_w : _T_416; // @[Reg.scala 20:19:@247.4]
  assign _GEN_31 = layer_st ? x_dilate_w : _T_419; // @[Reg.scala 20:19:@252.4]
  assign _GEN_32 = layer_st ? y_dilate_w : _T_422; // @[Reg.scala 20:19:@257.4]
  assign _GEN_33 = layer_st ? reg2dp_pad_value : _T_425; // @[Reg.scala 20:19:@262.4]
  assign _GEN_34 = layer_st ? entries_w : {{1'd0}, _T_428}; // @[Reg.scala 20:19:@267.4]
  assign _GEN_35 = layer_st ? entries_batch_w : _T_431; // @[Reg.scala 20:19:@272.4]
  assign _GEN_36 = layer_st ? {{1'd0}, reg2dp_entries} : _T_434; // @[Reg.scala 20:19:@277.4]
  assign _GEN_37 = layer_st ? {{2'd0}, h_offset_slice_w} : _T_437; // @[Reg.scala 20:19:@282.4]
  assign _GEN_38 = layer_st ? {{2'd0}, rls_slices_w} : _T_440; // @[Reg.scala 20:19:@287.4]
  assign _GEN_39 = layer_st ? slice_left_w : _T_444; // @[Reg.scala 20:19:@293.4]
  assign _GEN_40 = layer_st ? reg2dp_dataout_width : _T_447; // @[Reg.scala 20:19:@298.4]
  assign _T_449 = {pra_truncate_w,pra_truncate_w,pra_truncate_w,pra_truncate_w}; // @[Cat.scala 30:58:@303.4]
  assign _GEN_41 = layer_st ? _T_449 : _T_452; // @[Reg.scala 20:19:@305.4]
  assign _T_454 = {reg2dp_proc_precision,reg2dp_proc_precision,reg2dp_proc_precision,reg2dp_proc_precision}; // @[Cat.scala 30:58:@310.4]
  assign _GEN_42 = layer_st ? _T_454 : _T_457; // @[Reg.scala 20:19:@312.4]
  assign _GEN_54 = {{9'd0}, data_batch}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 163:49:@316.4]
  assign _T_458 = entries * _GEN_54; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 163:49:@316.4]
  assign h_bias_0_stride_w = _T_458[12:0]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 163:77:@317.4]
  assign _GEN_55 = {{1'd0}, h_offset_slice}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 164:49:@318.4]
  assign _T_459 = entries * _GEN_55; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 164:49:@318.4]
  assign h_bias_1_stride_w = _T_459[12:0]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 164:81:@319.4]
  assign slices_oprand = layer_st_d1 ? rls_slices : slice_left; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 165:24:@320.4]
  assign _GEN_56 = {{1'd0}, slices_oprand}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 166:53:@321.4]
  assign _T_460 = entries_batch * _GEN_56; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 166:53:@321.4]
  assign slice_entries_w = _T_460[14:0]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 166:69:@322.4]
  assign _GEN_43 = layer_st_d1 ? h_bias_0_stride_w : {{1'd0}, _T_463}; // @[Reg.scala 20:19:@324.4]
  assign _GEN_44 = layer_st_d1 ? h_bias_1_stride_w : {{1'd0}, _T_466}; // @[Reg.scala 20:19:@329.4]
  assign _T_467 = entries[12:0]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 170:66:@333.4]
  assign _GEN_45 = layer_st_d1 ? _T_467 : _T_470; // @[Reg.scala 20:19:@335.4]
  assign _GEN_46 = layer_st_d1 ? _T_467 : _T_474; // @[Reg.scala 20:19:@341.4]
  assign _GEN_47 = layer_st_d1 ? slice_entries_w : _T_477; // @[Reg.scala 20:19:@346.4]
  assign _GEN_48 = is_sg_done ? slice_left : _T_480; // @[Reg.scala 20:19:@351.4]
  assign _GEN_49 = is_sg_done ? slice_entries_w : _T_483; // @[Reg.scala 20:19:@356.4]
  assign layer_st_d1 = _T_312; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 117:16:@89.4]
  assign dataout_w_init = {{9'd0}, _T_234}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 80:19:@28.4]
  assign is_winograd_d1 = _T_319; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 118:31:@95.4]
  assign is_img_d1 = _T_326; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 119:26:@102.4]
  assign data_bank = _T_329; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 120:26:@107.4]
  assign datain_width = _T_332; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 121:29:@112.4]
  assign datain_width_cmp = _T_335; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 122:33:@117.4]
  assign datain_height_cmp = _T_338; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 123:34:@122.4]
  assign datain_channel_cmp = _T_341; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 124:35:@127.4]
  assign sub_h_total_g0 = _T_344; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 125:31:@132.4]
  assign sub_h_total_g1 = _T_347; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 126:31:@137.4]
  assign sub_h_total_g2 = _T_351; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 127:31:@143.4]
  assign sub_h_total_g3 = _T_354; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 128:31:@148.4]
  assign sub_h_total_g4 = _T_357; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 129:31:@153.4]
  assign sub_h_total_g5 = _T_360; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 130:31:@158.4]
  assign sub_h_total_g6 = _T_363; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 131:31:@163.4]
  assign sub_h_total_g7 = _T_366; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 132:31:@168.4]
  assign sub_h_total_g8 = _T_369; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 133:31:@173.4]
  assign sub_h_total_g9 = _T_372; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 134:31:@178.4]
  assign sub_h_total_g10 = _T_375; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 135:32:@183.4]
  assign sub_h_total_g11 = _T_378; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 136:32:@188.4]
  assign sub_h_cmp_g0 = _T_381; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 137:29:@193.4]
  assign sub_h_cmp_g1 = _T_384; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 138:29:@198.4]
  assign conv_x_stride = _T_387; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 139:30:@203.4]
  assign conv_y_stride = _T_390; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 140:30:@208.4]
  assign pixel_x_stride_odd = _T_394; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 141:35:@214.4]
  assign data_batch = _T_397; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 142:27:@219.4]
  assign batch_cmp = _T_400; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 143:26:@224.4]
  assign pixel_x_init = _T_403; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 144:29:@229.4]
  assign pixel_x_init_offset = _T_406; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 145:36:@234.4]
  assign pixel_x_add = _T_410; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 146:28:@240.4]
  assign pixel_x_byte_stride = _T_413; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 147:36:@245.4]
  assign pixel_ch_stride = _T_416; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 148:32:@250.4]
  assign x_dilate = _T_419; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 149:25:@255.4]
  assign y_dilate = _T_422; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 150:25:@260.4]
  assign pad_value = _T_425; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 151:26:@265.4]
  assign entries = _T_428; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 152:24:@270.4]
  assign entries_batch = _T_431; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 153:30:@275.4]
  assign entries_cmp = _T_434; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 154:28:@280.4]
  assign h_offset_slice = _T_437; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 155:31:@285.4]
  assign rls_slices = _T_440; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 156:27:@290.4]
  assign slice_left = _T_444; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 157:27:@296.4]
  assign dataout_width_cmp = _T_447; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 158:34:@301.4]
  assign pra_truncate = _T_452; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 159:29:@308.4]
  assign pra_precision = _T_457; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 160:30:@315.4]
  assign h_bias_0_stride = _T_463; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 168:32:@327.4]
  assign h_bias_1_stride = _T_466; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 169:32:@332.4]
  assign h_bias_2_stride = _T_470; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 170:31:@338.4]
  assign h_bias_3_stride = _T_474; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 171:32:@344.4]
  assign rls_entries = _T_477; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 172:28:@349.4]
  assign last_slices = _T_480; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 175:33:@354.4]
  assign last_entries = _T_483; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 176:34:@359.4]
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
  _T_312 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_319 = _RAND_1[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_326 = _RAND_2[33:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_329 = _RAND_3[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_332 = _RAND_4[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_335 = _RAND_5[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_338 = _RAND_6[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_341 = _RAND_7[10:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_344 = _RAND_8[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_347 = _RAND_9[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_351 = _RAND_10[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_354 = _RAND_11[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_357 = _RAND_12[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_360 = _RAND_13[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_363 = _RAND_14[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_366 = _RAND_15[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_369 = _RAND_16[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_372 = _RAND_17[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_375 = _RAND_18[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_378 = _RAND_19[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_381 = _RAND_20[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_384 = _RAND_21[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_387 = _RAND_22[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_390 = _RAND_23[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_394 = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_397 = _RAND_25[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_400 = _RAND_26[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_403 = _RAND_27[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_406 = _RAND_28[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_410 = _RAND_29[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_413 = _RAND_30[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  _T_416 = _RAND_31[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  _T_419 = _RAND_32[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  _T_422 = _RAND_33[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  _T_425 = _RAND_34[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  _T_428 = _RAND_35[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  _T_431 = _RAND_36[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  _T_434 = _RAND_37[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  _T_437 = _RAND_38[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  _T_440 = _RAND_39[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  _T_444 = _RAND_40[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_447 = _RAND_41[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  _T_452 = _RAND_42[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  _T_457 = _RAND_43[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_463 = _RAND_44[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  _T_466 = _RAND_45[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  _T_470 = _RAND_46[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  _T_474 = _RAND_47[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  _T_477 = _RAND_48[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  _T_480 = _RAND_49[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  _T_483 = _RAND_50[14:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge nvdla_core_clk or posedge _T_214) begin
    if (_T_214) begin
      _T_312 <= 1'h0;
    end else begin
      _T_312 <= layer_st;
    end
    if (_T_214) begin
      _T_319 <= 22'h0;
    end else begin
      if (layer_st) begin
        _T_319 <= 22'h0;
      end
    end
    if (_T_214) begin
      _T_326 <= 34'h0;
    end else begin
      if (layer_st) begin
        if (is_img) begin
          _T_326 <= 34'h3ffffffff;
        end else begin
          _T_326 <= 34'h0;
        end
      end
    end
    if (_T_214) begin
      _T_329 <= 5'h0;
    end else begin
      _T_329 <= _GEN_2[4:0];
    end
    if (_T_214) begin
      _T_332 <= 14'h0;
    end else begin
      if (layer_st) begin
        _T_332 <= datain_width_w;
      end
    end
    if (_T_214) begin
      _T_335 <= 13'h0;
    end else begin
      if (layer_st) begin
        _T_335 <= reg2dp_datain_width_ext;
      end
    end
    if (_T_214) begin
      _T_338 <= 13'h0;
    end else begin
      if (layer_st) begin
        _T_338 <= reg2dp_datain_height_ext;
      end
    end
    if (_T_214) begin
      _T_341 <= 11'h0;
    end else begin
      if (layer_st) begin
        _T_341 <= datain_channel_cmp_w;
      end
    end
    if (_T_214) begin
      _T_344 <= 3'h1;
    end else begin
      if (layer_st) begin
        _T_344 <= sub_h_total_w;
      end
    end
    if (_T_214) begin
      _T_347 <= 3'h1;
    end else begin
      if (layer_st) begin
        _T_347 <= sub_h_total_w;
      end
    end
    if (_T_214) begin
      _T_351 <= 2'h1;
    end else begin
      if (layer_st) begin
        _T_351 <= _T_348;
      end
    end
    if (_T_214) begin
      _T_354 <= 3'h1;
    end else begin
      if (layer_st) begin
        _T_354 <= sub_h_total_w;
      end
    end
    if (_T_214) begin
      _T_357 <= 3'h1;
    end else begin
      if (layer_st) begin
        _T_357 <= sub_h_total_w;
      end
    end
    if (_T_214) begin
      _T_360 <= 3'h1;
    end else begin
      if (layer_st) begin
        _T_360 <= sub_h_total_w;
      end
    end
    if (_T_214) begin
      _T_363 <= 3'h1;
    end else begin
      if (layer_st) begin
        _T_363 <= sub_h_total_w;
      end
    end
    if (_T_214) begin
      _T_366 <= 3'h1;
    end else begin
      if (layer_st) begin
        _T_366 <= sub_h_total_w;
      end
    end
    if (_T_214) begin
      _T_369 <= 3'h1;
    end else begin
      if (layer_st) begin
        _T_369 <= sub_h_total_w;
      end
    end
    if (_T_214) begin
      _T_372 <= 3'h1;
    end else begin
      if (layer_st) begin
        _T_372 <= sub_h_total_w;
      end
    end
    if (_T_214) begin
      _T_375 <= 3'h1;
    end else begin
      if (layer_st) begin
        _T_375 <= sub_h_total_w;
      end
    end
    if (_T_214) begin
      _T_378 <= 3'h1;
    end else begin
      if (layer_st) begin
        _T_378 <= sub_h_total_w;
      end
    end
    if (_T_214) begin
      _T_381 <= 3'h1;
    end else begin
      if (layer_st) begin
        if (is_img) begin
          _T_381 <= sub_h_total_w;
        end else begin
          _T_381 <= 3'h1;
        end
      end
    end
    if (_T_214) begin
      _T_384 <= 3'h1;
    end else begin
      if (layer_st) begin
        if (is_img) begin
          _T_384 <= sub_h_total_w;
        end else begin
          _T_384 <= 3'h1;
        end
      end
    end
    if (_T_214) begin
      _T_387 <= 4'h0;
    end else begin
      if (layer_st) begin
        _T_387 <= conv_x_stride_w;
      end
    end
    if (_T_214) begin
      _T_390 <= 4'h0;
    end else begin
      if (layer_st) begin
        _T_390 <= conv_y_stride_w;
      end
    end
    if (_T_214) begin
      _T_394 <= 1'h0;
    end else begin
      if (layer_st) begin
        _T_394 <= _T_391;
      end
    end
    if (_T_214) begin
      _T_397 <= 6'h0;
    end else begin
      if (layer_st) begin
        _T_397 <= 6'h1;
      end
    end
    if (_T_214) begin
      _T_400 <= 5'h0;
    end else begin
      if (layer_st) begin
        _T_400 <= 5'h0;
      end
    end
    if (_T_214) begin
      _T_403 <= 6'h0;
    end else begin
      _T_403 <= _GEN_26[5:0];
    end
    if (_T_214) begin
      _T_406 <= 7'h0;
    end else begin
      if (layer_st) begin
        _T_406 <= pixel_x_init_offset_w;
      end
    end
    if (_T_214) begin
      _T_410 <= 7'h0;
    end else begin
      if (layer_st) begin
        _T_410 <= _T_407;
      end
    end
    if (_T_214) begin
      _T_413 <= 7'h0;
    end else begin
      if (layer_st) begin
        _T_413 <= {{1'd0}, pixel_x_stride_w};
      end
    end
    if (_T_214) begin
      _T_416 <= 12'h0;
    end else begin
      if (layer_st) begin
        _T_416 <= pixel_ch_stride_w;
      end
    end
    if (_T_214) begin
      _T_419 <= 6'h0;
    end else begin
      if (layer_st) begin
        if (is_img) begin
          _T_419 <= 6'h1;
        end else begin
          _T_419 <= _T_288;
        end
      end
    end
    if (_T_214) begin
      _T_422 <= 6'h0;
    end else begin
      if (layer_st) begin
        if (is_img) begin
          _T_422 <= 6'h1;
        end else begin
          _T_422 <= _T_292;
        end
      end
    end
    if (_T_214) begin
      _T_425 <= 16'h0;
    end else begin
      if (layer_st) begin
        _T_425 <= reg2dp_pad_value;
      end
    end
    if (_T_214) begin
      _T_428 <= 15'h0;
    end else begin
      _T_428 <= _GEN_34[14:0];
    end
    if (_T_214) begin
      _T_431 <= 15'h0;
    end else begin
      if (layer_st) begin
        _T_431 <= entries_batch_w;
      end
    end
    if (_T_214) begin
      _T_434 <= 15'h0;
    end else begin
      if (layer_st) begin
        _T_434 <= {{1'd0}, reg2dp_entries};
      end
    end
    if (_T_214) begin
      _T_437 <= 14'h0;
    end else begin
      if (layer_st) begin
        _T_437 <= {{2'd0}, h_offset_slice_w};
      end
    end
    if (_T_214) begin
      _T_440 <= 14'h0;
    end else begin
      if (layer_st) begin
        _T_440 <= {{2'd0}, rls_slices_w};
      end
    end
    if (_T_214) begin
      _T_444 <= 14'h0;
    end else begin
      if (layer_st) begin
        if (reg2dp_skip_data_rls) begin
          _T_444 <= _T_304;
        end else begin
          _T_444 <= _T_306;
        end
      end
    end
    if (_T_214) begin
      _T_447 <= 13'h0;
    end else begin
      if (layer_st) begin
        _T_447 <= reg2dp_dataout_width;
      end
    end
    if (_T_214) begin
      _T_452 <= 8'h0;
    end else begin
      if (layer_st) begin
        _T_452 <= _T_449;
      end
    end
    if (_T_214) begin
      _T_457 <= 8'h0;
    end else begin
      if (layer_st) begin
        _T_457 <= _T_454;
      end
    end
    if (_T_214) begin
      _T_463 <= 12'h0;
    end else begin
      _T_463 <= _GEN_43[11:0];
    end
    if (_T_214) begin
      _T_466 <= 12'h0;
    end else begin
      _T_466 <= _GEN_44[11:0];
    end
    if (_T_214) begin
      _T_470 <= 13'h0;
    end else begin
      if (layer_st_d1) begin
        _T_470 <= _T_467;
      end
    end
    if (_T_214) begin
      _T_474 <= 13'h0;
    end else begin
      if (layer_st_d1) begin
        _T_474 <= _T_467;
      end
    end
    if (_T_214) begin
      _T_477 <= 15'h0;
    end else begin
      if (layer_st_d1) begin
        _T_477 <= slice_entries_w;
      end
    end
    if (_T_214) begin
      _T_480 <= 14'h0;
    end else begin
      if (is_sg_done) begin
        _T_480 <= slice_left;
      end
    end
    if (_T_214) begin
      _T_483 <= 15'h0;
    end else begin
      if (is_sg_done) begin
        _T_483 <= slice_entries_w;
      end
    end
  end
endmodule



module NV_NVDLA_CSC_dl (
  input         nvdla_core_clk, // @[:@6.4]
  input         nvdla_core_rstn, // @[:@6.4]
  input         is_sg_idle, // @[:@6.4]
  input         is_sg_running, // @[:@6.4]
  input         is_sg_done, // @[:@6.4]
  input         reg2dp_op_en, // @[:@6.4]
  input         reg2dp_conv_mode, // @[:@6.4]
  input  [4:0]  reg2dp_batches, // @[:@6.4]
  input  [1:0]  reg2dp_proc_precision, // @[:@6.4]
  input         reg2dp_datain_format, // @[:@6.4]
  input         reg2dp_skip_data_rls, // @[:@6.4]
  input  [12:0] reg2dp_datain_channel_ext, // @[:@6.4]
  input  [12:0] reg2dp_datain_height_ext, // @[:@6.4]
  input  [12:0] reg2dp_datain_width_ext, // @[:@6.4]
  input  [1:0]  reg2dp_y_extension, // @[:@6.4]
  input  [12:0] reg2dp_weight_channel_ext, // @[:@6.4]
  input  [13:0] reg2dp_entries, // @[:@6.4]
  input  [12:0] reg2dp_dataout_width, // @[:@6.4]
  input  [11:0] reg2dp_rls_slices, // @[:@6.4]
  input  [2:0]  reg2dp_conv_x_stride_ext, // @[:@6.4]
  input  [2:0]  reg2dp_conv_y_stride_ext, // @[:@6.4]
  input  [4:0]  reg2dp_x_dilation_ext, // @[:@6.4]
  input  [4:0]  reg2dp_y_dilation_ext, // @[:@6.4]
  input  [4:0]  reg2dp_pad_left, // @[:@6.4]
  input  [4:0]  reg2dp_pad_top, // @[:@6.4]
  input  [15:0] reg2dp_pad_value, // @[:@6.4]
  input  [4:0]  reg2dp_data_bank, // @[:@6.4]
  input  [1:0]  reg2dp_pra_truncate, // @[:@6.4]
  output        layer_st_d1, // @[:@6.4]
  output [12:0] dataout_w_init, // @[:@6.4]
  output [21:0] is_winograd_d1, // @[:@6.4]
  output [33:0] is_img_d1, // @[:@6.4]
  output [4:0]  data_bank, // @[:@6.4]
  output [13:0] datain_width, // @[:@6.4]
  output [12:0] datain_width_cmp, // @[:@6.4]
  output [12:0] datain_height_cmp, // @[:@6.4]
  output [10:0] datain_channel_cmp, // @[:@6.4]
  output [2:0]  sub_h_total_g0, // @[:@6.4]
  output [2:0]  sub_h_total_g1, // @[:@6.4]
  output [1:0]  sub_h_total_g2, // @[:@6.4]
  output [2:0]  sub_h_total_g3, // @[:@6.4]
  output [2:0]  sub_h_total_g4, // @[:@6.4]
  output [2:0]  sub_h_total_g5, // @[:@6.4]
  output [2:0]  sub_h_total_g6, // @[:@6.4]
  output [2:0]  sub_h_total_g7, // @[:@6.4]
  output [2:0]  sub_h_total_g8, // @[:@6.4]
  output [2:0]  sub_h_total_g9, // @[:@6.4]
  output [2:0]  sub_h_total_g10, // @[:@6.4]
  output [2:0]  sub_h_total_g11, // @[:@6.4]
  output [2:0]  sub_h_cmp_g0, // @[:@6.4]
  output [2:0]  sub_h_cmp_g1, // @[:@6.4]
  output [3:0]  conv_x_stride, // @[:@6.4]
  output [3:0]  conv_y_stride, // @[:@6.4]
  output        pixel_x_stride_odd, // @[:@6.4]
  output [5:0]  data_batch, // @[:@6.4]
  output [4:0]  batch_cmp, // @[:@6.4]
  output [5:0]  pixel_x_init, // @[:@6.4]
  output [6:0]  pixel_x_init_offset, // @[:@6.4]
  output [6:0]  pixel_x_add, // @[:@6.4]
  output [6:0]  pixel_x_byte_stride, // @[:@6.4]
  output [11:0] pixel_ch_stride, // @[:@6.4]
  output [5:0]  x_dilate, // @[:@6.4]
  output [5:0]  y_dilate, // @[:@6.4]
  output [15:0] pad_value, // @[:@6.4]
  output [14:0] entries, // @[:@6.4]
  output [14:0] entries_batch, // @[:@6.4]
  output [14:0] entries_cmp, // @[:@6.4]
  output [13:0] h_offset_slice, // @[:@6.4]
  output [13:0] rls_slices, // @[:@6.4]
  output [13:0] slice_left, // @[:@6.4]
  output [12:0] dataout_width_cmp, // @[:@6.4]
  output [7:0]  pra_truncate, // @[:@6.4]
  output [7:0]  pra_precision, // @[:@6.4]
  output [11:0] h_bias_0_stride, // @[:@6.4]
  output [11:0] h_bias_1_stride, // @[:@6.4]
  output [12:0] h_bias_2_stride, // @[:@6.4]
  output [12:0] h_bias_3_stride, // @[:@6.4]
  output [14:0] rls_entries, // @[:@6.4]
  output [13:0] last_slices, // @[:@6.4]
  output [14:0] last_entries // @[:@6.4]
);

//////////////////////////////////////////////////////////////
///// status from sequence generator                     /////
//////////////////////////////////////////////////////////////
assign is_sg_idle = (sc_state == 0 );
assign is_sg_running = (sc_state == 2 );
assign is_sg_done = (sc_state == 3 );
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"is_sg_running\" -q is_sg_running_d1");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       is_sg_running_d1 <= 1'b0;
   end else begin
       is_sg_running_d1 <= is_sg_running;
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
//////////////////////////////////////////////////////////////
///// input signals from registers                       /////
//////////////////////////////////////////////////////////////
assign layer_st = reg2dp_op_en & is_sg_idle;
assign is_pixel = (reg2dp_datain_format == 1'h1 );
`ifdef NVDLA_WINOGRAD_ENABLE
assign is_winograd = (reg2dp_conv_mode == 1'h1 );
`else
assign is_winograd = 1'b0;
`endif
assign is_conv = (reg2dp_conv_mode == 1'h0 );
assign is_img = is_conv & is_pixel;
assign {mon_data_bank_w, data_bank_w} = reg2dp_data_bank + 1'b1;
`ifdef NVDLA_BATCH_ENABLE
assign data_batch_w = (is_winograd | is_img) ? 6'b1 : reg2dp_batches + 1'b1;
assign batch_cmp_w = (is_winograd | is_img) ? 5'b0 : reg2dp_batches;
`else
assign data_batch_w = 6'b1;
assign batch_cmp_w = 5'b0;
`endif
//assign is_int8 = (reg2dp_proc_precision == 2'h0 );
//assign is_fp16 = (reg2dp_proc_precision == 2'h2 );
assign datain_width_w = is_winograd ? ({2'b0, reg2dp_datain_width_ext[12:2]} + 1'b1) : reg2dp_datain_width_ext + 1'b1;
assign datain_width_cmp_w = reg2dp_datain_width_ext;
assign datain_height_cmp_w = reg2dp_datain_height_ext;
assign datain_channel_cmp_w = is_winograd ? reg2dp_weight_channel_ext[12:2] : {{6 -2{1'b0}}, reg2dp_weight_channel_ext[12:6]};
//y_ex=0,sub_h_total=1;y_ex=1,sub_h_total=2; y_ext=2,sub_h_total=4; non_image, sub_h_total=1;
//sub_h_total means how many h lines are used in post-extention
assign {sub_h_total_w, mon_sub_h_total_w} = is_img ? (6'h9 << reg2dp_y_extension) : 6'h8;
assign sub_h_cmp_w = is_img ? sub_h_total_w : is_winograd ? 3'h2 : 3'h1;
assign dataout_w_init[12:0] = sub_h_cmp_w - 1'b1;
assign conv_x_stride_w = (is_winograd) ? 4'b1 : reg2dp_conv_x_stride_ext + 1'b1;
assign pixel_x_stride_w = (reg2dp_datain_channel_ext[1:0] == 2'h3) ? {conv_x_stride_w, 2'b0} : //*4, after pre_extension
                          (reg2dp_datain_channel_ext[1:0] == 2'h2) ? ({conv_x_stride_w, 1'b0} + conv_x_stride_w) : //*3
                          {2'b0, conv_x_stride_w}; //*1
//: my $kk=6;
//: if ($kk=6) {
//: print qq (
//: assign {mon_pixel_x_init_w,pixel_x_init_w} = (reg2dp_y_extension == 2'h2) ? ({pixel_x_stride_w, 1'b0} + pixel_x_stride_w + reg2dp_weight_channel_ext[5:0]) :
//: (reg2dp_y_extension == 2'h1) ? (pixel_x_stride_w + reg2dp_weight_channel_ext[5:0]):
//: (reg2dp_weight_channel_ext >= 7'h40) ? {6{1'b1}}: //cut by atomC
//: {reg2dp_weight_channel_ext[6 -1:0]};
//: )
//: }
//: else {
//: print qq(
//: assign {mon_pixel_x_init_w,pixel_x_init_w} = (reg2dp_y_extension == 2'h2) ? ({pixel_x_stride_w, 1'b0} + pixel_x_stride_w + reg2dp_weight_channel_ext[5:0]) :
//: (reg2dp_y_extension == 2'h1) ? (pixel_x_stride_w + reg2dp_weight_channel_ext[5:0]):
//: (reg2dp_weight_channel_ext >= 7'h40) ? {6{1'b1}}: //cut by atomC
//: {{6-6{1'b0}},reg2dp_weight_channel_ext[6 -1:0]};
//: )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

assign {mon_pixel_x_init_w,pixel_x_init_w} = (reg2dp_y_extension == 2'h2) ? ({pixel_x_stride_w, 1'b0} + pixel_x_stride_w + reg2dp_weight_channel_ext[5:0]) :
(reg2dp_y_extension == 2'h1) ? (pixel_x_stride_w + reg2dp_weight_channel_ext[5:0]):
(reg2dp_weight_channel_ext >= 7'h40) ? {6{1'b1}}: //cut by atomC
{reg2dp_weight_channel_ext[6 -1:0]};

//| eperl: generated_end (DO NOT EDIT ABOVE)
assign pixel_x_init_offset_w = (reg2dp_weight_channel_ext[6 -1:0] + 1'b1);
assign pixel_x_add_w = (reg2dp_y_extension == 2'h2) ? {pixel_x_stride_w, 2'b0} : //*4, after post_extension
                       (reg2dp_y_extension == 2'h1) ? {1'b0, pixel_x_stride_w, 1'b0} : //*2
                       {2'b0, pixel_x_stride_w};
assign pixel_x_byte_stride_w = {1'b0, pixel_x_stride_w};
//: my $kk=5;
//: if($kk=5) {
//: print qq(
//: `ifdef CC_ATOMC_DIV_ATOMK_EQUAL_1
//: assign pixel_ch_stride_w = {pixel_x_stride_w, {5 +1{1'b0}}}; //stick to 2*atomK  no matter which config.  
//: `endif
//: `ifdef CC_ATOMC_DIV_ATOMK_EQUAL_2
//: assign pixel_ch_stride_w = {pixel_x_stride_w, {5 +1{1'b0}}}; //stick to 2*atomK  no matter which config.  
//: `endif
//: `ifdef CC_ATOMC_DIV_ATOMK_EQUAL_4
//: assign pixel_ch_stride_w = {pixel_x_stride_w, {5 +2{1'b0}}}; //stick to 4*atomK  no matter which config.  
//: `endif
//: )
//: }
//: else {
//: print qq(
//: `ifdef CC_ATOMC_DIV_ATOMK_EQUAL_1
//: assign pixel_ch_stride_w = {{5-5{1'b0}},pixel_x_stride_w, {5 +1{1'b0}}}; //stick to 2*atomK  no matter which config.  
//: `endif
//: `ifdef CC_ATOMC_DIV_ATOMK_EQUAL_2
//: assign pixel_ch_stride_w = {{5-5{1'b0}},pixel_x_stride_w, {5 +1{1'b0}}}; //stick to 2*atomK  no matter which config.  
//: `endif
//: `ifdef CC_ATOMC_DIV_ATOMK_EQUAL_4
//: assign pixel_ch_stride_w = {{5-5{1'b0}},pixel_x_stride_w, {5 +2{1'b0}}}; //stick to 4*atomK  no matter which config.  
//: `endif
//: )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

`ifdef CC_ATOMC_DIV_ATOMK_EQUAL_1
assign pixel_ch_stride_w = {pixel_x_stride_w, {5 +1{1'b0}}}; //stick to 2*atomK  no matter which config.  
`endif
`ifdef CC_ATOMC_DIV_ATOMK_EQUAL_2
assign pixel_ch_stride_w = {pixel_x_stride_w, {5 +1{1'b0}}}; //stick to 2*atomK  no matter which config.  
`endif
`ifdef CC_ATOMC_DIV_ATOMK_EQUAL_4
assign pixel_ch_stride_w = {pixel_x_stride_w, {5 +2{1'b0}}}; //stick to 4*atomK  no matter which config.  
`endif

//| eperl: generated_end (DO NOT EDIT ABOVE)
assign conv_y_stride_w = (is_winograd) ? 4'b1 : reg2dp_conv_y_stride_ext + 1'b1;
assign x_dilate_w = (is_winograd | is_img) ? 6'b1 : reg2dp_x_dilation_ext + 1'b1;
assign y_dilate_w = (is_winograd | is_img) ? 6'b1 : reg2dp_y_dilation_ext + 1'b1;
//reg2dp_entries means entry per slice
assign {mon_entries_single_w,entries_single_w} = (reg2dp_entries + 1'b1);
assign {mon_entries_batch_w,entries_batch_w} = entries_single_w * data_batch_w;
assign {mon_entries_w,entries_w} = (is_winograd) ? ({reg2dp_entries[12:0], 2'b0} + 3'h4) : entries_single_w;
assign h_offset_slice_w[11:0] = data_batch_w * y_dilate_w;
assign h_offset_slice_w[13:12] = 2'b0;
assign {mon_h_bias_0_stride_w,h_bias_0_stride_w} = entries * data_batch;
assign {mon_h_bias_1_stride_w,h_bias_1_stride_w} = entries * h_offset_slice;
assign {mon_rls_slices_w,rls_slices_w} = reg2dp_rls_slices + 1'b1;
assign {mon_slice_left_w,slice_left_w} = reg2dp_skip_data_rls ? (reg2dp_datain_height_ext + 1'b1) : reg2dp_datain_height_ext - reg2dp_rls_slices;
assign slices_oprand = layer_st_d1 ? rls_slices : slice_left;
assign {mon_slice_entries_w,slice_entries_w} = entries_batch * slices_oprand;
assign dataout_width_cmp_w = reg2dp_dataout_width;
assign pra_truncate_w = (reg2dp_pra_truncate == 2'h3) ? 2'h2 : reg2dp_pra_truncate;
//: my $kk=15;
//: my $jj=13;
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"layer_st\" -q layer_st_d1");
//: &eperl::flop("-nodeclare   -rval \"{22{1'b0}}\"  -en \"layer_st\" -d \"{22{is_winograd}}\" -q is_winograd_d1");
//: &eperl::flop("-nodeclare   -rval \"{34{1'b0}}\"  -en \"layer_st\" -d \"{34{is_img}}\" -q is_img_d1");
//: &eperl::flop("-nodeclare   -rval \"{5{1'b0}}\"  -en \"layer_st\" -d \"data_bank_w\" -q data_bank");
//: &eperl::flop("-nodeclare   -rval \"{14{1'b0}}\"  -en \"layer_st\" -d \"datain_width_w\" -q datain_width");
//: &eperl::flop("-nodeclare   -rval \"{13{1'b0}}\"  -en \"layer_st\" -d \"datain_width_cmp_w\" -q datain_width_cmp");
//: &eperl::flop("-nodeclare   -rval \"{13{1'b0}}\"  -en \"layer_st\" -d \"datain_height_cmp_w\" -q datain_height_cmp");
//: &eperl::flop("-nodeclare   -rval \"{11{1'b0}}\"  -en \"layer_st\" -d \"datain_channel_cmp_w\" -q datain_channel_cmp");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g0");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g1");
//: &eperl::flop("-nodeclare   -rval \"2'h1\"  -en \"layer_st\" -d \"sub_h_total_w[2:1]\" -q sub_h_total_g2");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g3");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g4");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g5");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g6");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g7");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g8");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g9");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g10");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_total_w\" -q sub_h_total_g11");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_cmp_w\" -q sub_h_cmp_g0");
//: &eperl::flop("-nodeclare   -rval \"3'h1\"  -en \"layer_st\" -d \"sub_h_cmp_w\" -q sub_h_cmp_g1");
//: &eperl::flop("-nodeclare   -rval \"{4{1'b0}}\"  -en \"layer_st\" -d \"conv_x_stride_w\" -q conv_x_stride");
//: &eperl::flop("-nodeclare   -rval \"{4{1'b0}}\"  -en \"layer_st\" -d \"conv_y_stride_w\" -q conv_y_stride");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"  -en \"layer_st\" -d \"pixel_x_stride_w[0]\" -q pixel_x_stride_odd");
//: &eperl::flop("-nodeclare   -rval \"{6{1'b0}}\"  -en \"layer_st\" -d \"data_batch_w\" -q data_batch");
//: &eperl::flop("-nodeclare   -rval \"{5{1'b0}}\"  -en \"layer_st\" -d \"batch_cmp_w\" -q batch_cmp");
//: &eperl::flop("-nodeclare   -rval \"{6{1'b0}}\"  -en \"layer_st\" -d \"pixel_x_init_w\" -q pixel_x_init");
//: &eperl::flop("-nodeclare   -rval \"{7{1'b0}}\"  -en \"layer_st\" -d \"pixel_x_init_offset_w\" -q pixel_x_init_offset");
//: &eperl::flop("-nodeclare   -rval \"{7{1'b0}}\"  -en \"layer_st\" -d \"pixel_x_add_w[6:0]\" -q pixel_x_add");
//: &eperl::flop("-nodeclare   -rval \"{7{1'b0}}\"  -en \"layer_st\" -d \"pixel_x_byte_stride_w\" -q pixel_x_byte_stride");
//: &eperl::flop("-nodeclare   -rval \"{12{1'b0}}\"  -en \"layer_st\" -d \"pixel_ch_stride_w\" -q pixel_ch_stride");
//: &eperl::flop("-nodeclare   -rval \"{6{1'b0}}\"  -en \"layer_st\" -d \"x_dilate_w\" -q x_dilate");
//: &eperl::flop("-nodeclare   -rval \"{6{1'b0}}\"  -en \"layer_st\" -d \"y_dilate_w\" -q y_dilate");
//: &eperl::flop("-nodeclare   -rval \"{16{1'b0}}\"  -en \"layer_st\" -d \"reg2dp_pad_value\" -q pad_value");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"layer_st\" -d \"entries_w\" -q entries");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"layer_st\" -d \"entries_batch_w\" -q entries_batch");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"layer_st\" -d \"{1'h0,reg2dp_entries}\" -q entries_cmp");
//: &eperl::flop("-nodeclare   -rval \"{14{1'b0}}\"  -en \"layer_st\" -d \"h_offset_slice_w\" -q h_offset_slice");
//: &eperl::flop("-nodeclare   -rval \"{12{1'b0}}\"  -en \"layer_st_d1\" -d \"h_bias_0_stride_w\" -q h_bias_0_stride");
//: &eperl::flop("-nodeclare   -rval \"{12{1'b0}}\"  -en \"layer_st_d1\" -d \"h_bias_1_stride_w\" -q h_bias_1_stride");
//: &eperl::flop("-nodeclare   -rval \"{${jj}{1'b0}}\"  -en \"layer_st_d1\" -d \"entries[${jj}-1:0]\" -q h_bias_2_stride");
//: &eperl::flop("-nodeclare   -rval \"{${jj}{1'b0}}\"  -en \"layer_st_d1\" -d \"entries[${jj}-1:0]\" -q h_bias_3_stride");
//: &eperl::flop("-nodeclare   -rval \"{14{1'b0}}\"  -en \"layer_st\" -d \"rls_slices_w\" -q rls_slices");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"layer_st_d1\" -d \"slice_entries_w\" -q rls_entries");
//: &eperl::flop("-nodeclare   -rval \"{14{1'b0}}\"  -en \"layer_st\" -d \"slice_left_w[13:0]\" -q slice_left");
//: &eperl::flop("-nodeclare   -rval \"{14{1'b0}}\"  -en \"is_sg_done\" -d \"slice_left\" -q last_slices");
//: &eperl::flop("-nodeclare   -rval \"{${kk}{1'b0}}\"  -en \"is_sg_done\" -d \"slice_entries_w\" -q last_entries");
//: &eperl::flop("-nodeclare   -rval \"{13{1'b0}}\"  -en \"layer_st\" -d \"dataout_width_cmp_w\" -q dataout_width_cmp");
//: &eperl::flop("-nodeclare   -rval \"{8{1'b0}}\"  -en \"layer_st\" -d \"{4{pra_truncate_w}}\" -q pra_truncate");
//: &eperl::flop("-nodeclare   -rval \"{8{1'b0}}\"  -en \"layer_st\" -d \"{4{reg2dp_proc_precision}}\" -q pra_precision");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       layer_st_d1 <= 1'b0;
   end else begin
       layer_st_d1 <= layer_st;
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       is_winograd_d1 <= {22{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           is_winograd_d1 <= {22{is_winograd}};
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           is_winograd_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       is_img_d1 <= {34{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           is_img_d1 <= {34{is_img}};
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           is_img_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       data_bank <= {5{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           data_bank <= data_bank_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           data_bank <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       datain_width <= {14{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           datain_width <= datain_width_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           datain_width <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       datain_width_cmp <= {13{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           datain_width_cmp <= datain_width_cmp_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           datain_width_cmp <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       datain_height_cmp <= {13{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           datain_height_cmp <= datain_height_cmp_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           datain_height_cmp <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       datain_channel_cmp <= {11{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           datain_channel_cmp <= datain_channel_cmp_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           datain_channel_cmp <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g0 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g0 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g0 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g1 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g1 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g2 <= 2'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g2 <= sub_h_total_w[2:1];
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g2 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g3 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g3 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g3 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g4 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g4 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g4 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g5 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g5 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g5 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g6 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g6 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g6 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g7 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g7 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g7 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g8 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g8 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g8 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g9 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g9 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g9 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g10 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g10 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g10 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sub_h_total_g11 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_total_g11 <= sub_h_total_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_total_g11 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sub_h_cmp_g0 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_cmp_g0 <= sub_h_cmp_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_cmp_g0 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sub_h_cmp_g1 <= 3'h1;
   end else begin
       if ((layer_st) == 1'b1) begin
           sub_h_cmp_g1 <= sub_h_cmp_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           sub_h_cmp_g1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       conv_x_stride <= {4{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           conv_x_stride <= conv_x_stride_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           conv_x_stride <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       conv_y_stride <= {4{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           conv_y_stride <= conv_y_stride_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           conv_y_stride <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       pixel_x_stride_odd <= 1'b0;
   end else begin
       if ((layer_st) == 1'b1) begin
           pixel_x_stride_odd <= pixel_x_stride_w[0];
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           pixel_x_stride_odd <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       data_batch <= {6{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           data_batch <= data_batch_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           data_batch <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       batch_cmp <= {5{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           batch_cmp <= batch_cmp_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           batch_cmp <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       pixel_x_init <= {6{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           pixel_x_init <= pixel_x_init_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           pixel_x_init <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       pixel_x_init_offset <= {7{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           pixel_x_init_offset <= pixel_x_init_offset_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           pixel_x_init_offset <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       pixel_x_add <= {7{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           pixel_x_add <= pixel_x_add_w[6:0];
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           pixel_x_add <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       pixel_x_byte_stride <= {7{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           pixel_x_byte_stride <= pixel_x_byte_stride_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           pixel_x_byte_stride <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       pixel_ch_stride <= {12{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           pixel_ch_stride <= pixel_ch_stride_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           pixel_ch_stride <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       x_dilate <= {6{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           x_dilate <= x_dilate_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           x_dilate <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       y_dilate <= {6{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           y_dilate <= y_dilate_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           y_dilate <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       pad_value <= {16{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           pad_value <= reg2dp_pad_value;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           pad_value <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       entries <= {15{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           entries <= entries_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           entries <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       entries_batch <= {15{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           entries_batch <= entries_batch_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           entries_batch <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       entries_cmp <= {15{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           entries_cmp <= {1'h0,reg2dp_entries};
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           entries_cmp <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       h_offset_slice <= {14{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           h_offset_slice <= h_offset_slice_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           h_offset_slice <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       h_bias_0_stride <= {12{1'b0}};
   end else begin
       if ((layer_st_d1) == 1'b1) begin
           h_bias_0_stride <= h_bias_0_stride_w;
       // VCS coverage off
       end else if ((layer_st_d1) == 1'b0) begin
       end else begin
           h_bias_0_stride <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       h_bias_1_stride <= {12{1'b0}};
   end else begin
       if ((layer_st_d1) == 1'b1) begin
           h_bias_1_stride <= h_bias_1_stride_w;
       // VCS coverage off
       end else if ((layer_st_d1) == 1'b0) begin
       end else begin
           h_bias_1_stride <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       h_bias_2_stride <= {13{1'b0}};
   end else begin
       if ((layer_st_d1) == 1'b1) begin
           h_bias_2_stride <= entries[13-1:0];
       // VCS coverage off
       end else if ((layer_st_d1) == 1'b0) begin
       end else begin
           h_bias_2_stride <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       h_bias_3_stride <= {13{1'b0}};
   end else begin
       if ((layer_st_d1) == 1'b1) begin
           h_bias_3_stride <= entries[13-1:0];
       // VCS coverage off
       end else if ((layer_st_d1) == 1'b0) begin
       end else begin
           h_bias_3_stride <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       rls_slices <= {14{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           rls_slices <= rls_slices_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           rls_slices <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       rls_entries <= {15{1'b0}};
   end else begin
       if ((layer_st_d1) == 1'b1) begin
           rls_entries <= slice_entries_w;
       // VCS coverage off
       end else if ((layer_st_d1) == 1'b0) begin
       end else begin
           rls_entries <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       slice_left <= {14{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           slice_left <= slice_left_w[13:0];
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           slice_left <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       last_slices <= {14{1'b0}};
   end else begin
       if ((is_sg_done) == 1'b1) begin
           last_slices <= slice_left;
       // VCS coverage off
       end else if ((is_sg_done) == 1'b0) begin
       end else begin
           last_slices <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       last_entries <= {15{1'b0}};
   end else begin
       if ((is_sg_done) == 1'b1) begin
           last_entries <= slice_entries_w;
       // VCS coverage off
       end else if ((is_sg_done) == 1'b0) begin
       end else begin
           last_entries <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       dataout_width_cmp <= {13{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           dataout_width_cmp <= dataout_width_cmp_w;
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           dataout_width_cmp <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       pra_truncate <= {8{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           pra_truncate <= {4{pra_truncate_w}};
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           pra_truncate <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       pra_precision <= {8{1'b0}};
   end else begin
       if ((layer_st) == 1'b1) begin
           pra_precision <= {4{reg2dp_proc_precision}};
       // VCS coverage off
       end else if ((layer_st) == 1'b0) begin
       end else begin
           pra_precision <= 'bx;
       // VCS coverage on
       end
   end
end

endmodule