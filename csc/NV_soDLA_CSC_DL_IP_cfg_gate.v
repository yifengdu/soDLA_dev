module NV_soDLA_CSC_DL_IP_cfg_gate( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_nvdla_core_clk, // @[:@6.4]
  input         io_nvdla_core_rstn, // @[:@6.4]
  input         io_is_sg_idle, // @[:@6.4]
  input         io_is_sg_running, // @[:@6.4]
  input         io_is_sg_done, // @[:@6.4]
  input         io_reg2dp_op_en, // @[:@6.4]
  input         io_reg2dp_conv_mode, // @[:@6.4]
  input  [4:0]  io_reg2dp_batches, // @[:@6.4]
  input  [1:0]  io_reg2dp_proc_precision, // @[:@6.4]
  input         io_reg2dp_datain_format, // @[:@6.4]
  input         io_reg2dp_skip_data_rls, // @[:@6.4]
  input  [12:0] io_reg2dp_datain_channel_ext, // @[:@6.4]
  input  [12:0] io_reg2dp_datain_height_ext, // @[:@6.4]
  input  [12:0] io_reg2dp_datain_width_ext, // @[:@6.4]
  input  [1:0]  io_reg2dp_y_extension, // @[:@6.4]
  input  [12:0] io_reg2dp_weight_channel_ext, // @[:@6.4]
  input  [13:0] io_reg2dp_entries, // @[:@6.4]
  input  [12:0] io_reg2dp_dataout_width, // @[:@6.4]
  input  [11:0] io_reg2dp_rls_slices, // @[:@6.4]
  input  [2:0]  io_reg2dp_conv_x_stride_ext, // @[:@6.4]
  input  [2:0]  io_reg2dp_conv_y_stride_ext, // @[:@6.4]
  input  [4:0]  io_reg2dp_x_dilation_ext, // @[:@6.4]
  input  [4:0]  io_reg2dp_y_dilation_ext, // @[:@6.4]
  input  [4:0]  io_reg2dp_pad_left, // @[:@6.4]
  input  [4:0]  io_reg2dp_pad_top, // @[:@6.4]
  input  [15:0] io_reg2dp_pad_value, // @[:@6.4]
  input  [4:0]  io_reg2dp_data_bank, // @[:@6.4]
  input  [1:0]  io_reg2dp_pra_truncate, // @[:@6.4]
  output        io_layer_st_d1, // @[:@6.4]
  output [12:0] io_dataout_w_init, // @[:@6.4]
  output [21:0] io_subfield_d1_is_winograd_d1, // @[:@6.4]
  output [33:0] io_subfield_d1_is_img_d1, // @[:@6.4]
  output [4:0]  io_subfield_d1_data_bank, // @[:@6.4]
  output [13:0] io_subfield_d1_datain_width, // @[:@6.4]
  output [12:0] io_subfield_d1_datain_width_cmp, // @[:@6.4]
  output [12:0] io_subfield_d1_datain_height_cmp, // @[:@6.4]
  output [10:0] io_subfield_d1_datain_channel_cmp, // @[:@6.4]
  output [2:0]  io_subfield_d1_sub_h_total_g0, // @[:@6.4]
  output [2:0]  io_subfield_d1_sub_h_total_g1, // @[:@6.4]
  output [1:0]  io_subfield_d1_sub_h_total_g2, // @[:@6.4]
  output [2:0]  io_subfield_d1_sub_h_total_g3, // @[:@6.4]
  output [2:0]  io_subfield_d1_sub_h_total_g4, // @[:@6.4]
  output [2:0]  io_subfield_d1_sub_h_total_g5, // @[:@6.4]
  output [2:0]  io_subfield_d1_sub_h_total_g6, // @[:@6.4]
  output [2:0]  io_subfield_d1_sub_h_total_g7, // @[:@6.4]
  output [2:0]  io_subfield_d1_sub_h_total_g8, // @[:@6.4]
  output [2:0]  io_subfield_d1_sub_h_total_g9, // @[:@6.4]
  output [2:0]  io_subfield_d1_sub_h_total_g10, // @[:@6.4]
  output [2:0]  io_subfield_d1_sub_h_total_g11, // @[:@6.4]
  output [2:0]  io_subfield_d1_sub_h_cmp_g0, // @[:@6.4]
  output [2:0]  io_subfield_d1_sub_h_cmp_g1, // @[:@6.4]
  output [3:0]  io_subfield_d1_conv_x_stride, // @[:@6.4]
  output [3:0]  io_subfield_d1_conv_y_stride, // @[:@6.4]
  output        io_subfield_d1_pixel_x_stride_odd, // @[:@6.4]
  output [5:0]  io_subfield_d1_data_batch, // @[:@6.4]
  output [4:0]  io_subfield_d1_batch_cmp, // @[:@6.4]
  output [5:0]  io_subfield_d1_pixel_x_init, // @[:@6.4]
  output [6:0]  io_subfield_d1_pixel_x_init_offset, // @[:@6.4]
  output [6:0]  io_subfield_d1_pixel_x_add, // @[:@6.4]
  output [6:0]  io_subfield_d1_pixel_x_byte_stride, // @[:@6.4]
  output [11:0] io_subfield_d1_pixel_ch_stride, // @[:@6.4]
  output [5:0]  io_subfield_d1_x_dilate, // @[:@6.4]
  output [5:0]  io_subfield_d1_y_dilate, // @[:@6.4]
  output [15:0] io_subfield_d1_pad_value, // @[:@6.4]
  output [14:0] io_subfield_d1_entries, // @[:@6.4]
  output [14:0] io_subfield_d1_entries_batch, // @[:@6.4]
  output [14:0] io_subfield_d1_entries_cmp, // @[:@6.4]
  output [13:0] io_subfield_d1_h_offset_slice, // @[:@6.4]
  output [13:0] io_subfield_d1_rls_slices, // @[:@6.4]
  output [13:0] io_subfield_d1_slice_left, // @[:@6.4]
  output [12:0] io_subfield_d1_dataout_width_cmp, // @[:@6.4]
  output [7:0]  io_subfield_d1_pra_truncate, // @[:@6.4]
  output [7:0]  io_subfield_d1_pra_precision, // @[:@6.4]
  output [11:0] io_subfield_d2_h_bias_0_stride, // @[:@6.4]
  output [11:0] io_subfield_d2_h_bias_1_stride, // @[:@6.4]
  output [12:0] io_subfield_d2_h_bias_2_stride, // @[:@6.4]
  output [12:0] io_subfield_d2_h_bias_3_stride, // @[:@6.4]
  output [14:0] io_subfield_d2_rls_entries, // @[:@6.4]
  output [13:0] io_subfield_sg_done_last_slices, // @[:@6.4]
  output [14:0] io_subfield_sg_done_last_entries // @[:@6.4]
);
  wire  _T_214; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 51:38:@8.4]
  wire  _T_215; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 56:32:@9.4]
  wire  _T_219; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 58:35:@11.4]
  wire  _T_220; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 59:22:@12.4]
  wire [5:0] _T_222; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 61:39:@13.4]
  wire [13:0] _T_230; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 69:108:@16.4]
  wire [6:0] _T_233; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 72:110:@19.4]
  wire [10:0] _T_234; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 72:31:@20.4]
  wire [8:0] _T_236; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 76:53:@21.4]
  wire [8:0] _T_238; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 76:24:@22.4]
  wire [2:0] _T_239; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 76:100:@23.4]
  wire [2:0] _T_243; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 77:22:@25.4]
  wire [3:0] _T_245; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 78:34:@26.4]
  wire [3:0] _T_246; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 78:34:@27.4]
  wire [3:0] _T_249; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 80:73:@29.4]
  wire [1:0] _T_251; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 81:62:@31.4]
  wire [5:0] _T_254; // @[Cat.scala 30:58:@32.4]
  wire [4:0] _T_257; // @[Cat.scala 30:58:@33.4]
  wire [4:0] _GEN_50; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 83:77:@34.4]
  wire [5:0] _T_258; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 83:77:@34.4]
  wire  _T_259; // @[Mux.scala 46:19:@35.4]
  wire [5:0] _T_260; // @[Mux.scala 46:16:@36.4]
  wire  _T_261; // @[Mux.scala 46:19:@37.4]
  wire [5:0] _T_262; // @[Mux.scala 46:16:@38.4]
  wire  _T_264; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 85:88:@39.4]
  wire [5:0] _T_270; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 85:172:@41.4]
  wire [5:0] _T_271; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 85:58:@42.4]
  wire [6:0] _T_274; // @[Cat.scala 30:58:@43.4]
  wire [6:0] _GEN_51; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 86:80:@44.4]
  wire [7:0] _T_275; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 86:80:@44.4]
  wire [7:0] _GEN_52; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 86:100:@46.4]
  wire [8:0] _T_277; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 86:100:@46.4]
  wire [6:0] _T_280; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 87:57:@48.4]
  wire  _T_281; // @[Mux.scala 46:19:@49.4]
  wire [6:0] _T_282; // @[Mux.scala 46:16:@50.4]
  wire  _T_283; // @[Mux.scala 46:19:@51.4]
  wire [8:0] _T_284; // @[Mux.scala 46:16:@52.4]
  wire [6:0] _T_287; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 89:80:@54.4]
  wire [7:0] _T_290; // @[Cat.scala 30:58:@55.4]
  wire [6:0] _T_295; // @[Mux.scala 46:16:@58.4]
  wire [7:0] _T_297; // @[Mux.scala 46:16:@60.4]
  wire [11:0] _T_299; // @[Cat.scala 30:58:@61.4]
  wire [3:0] _T_302; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 100:74:@62.4]
  wire [5:0] _T_307; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 101:74:@65.4]
  wire [5:0] _T_308; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 101:21:@66.4]
  wire [5:0] _T_312; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 102:74:@68.4]
  wire [5:0] _T_313; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 102:21:@69.4]
  wire [14:0] _T_315; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 105:43:@70.4]
  wire [20:0] _T_317; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 106:41:@72.4]
  wire [14:0] _T_318; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 106:56:@73.4]
  wire [15:0] _T_324; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 107:20:@77.4]
  wire [11:0] _T_325; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 108:37:@78.4]
  wire [12:0] _T_327; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 109:41:@79.4]
  wire [11:0] _T_328; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 109:41:@80.4]
  wire [13:0] _T_330; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 110:77:@81.4]
  wire [12:0] _GEN_53; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 110:113:@82.4]
  wire [13:0] _T_331; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 110:113:@82.4]
  wire [13:0] _T_332; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 110:113:@83.4]
  wire [13:0] _T_333; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 110:23:@84.4]
  wire  _T_335; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 112:49:@85.4]
  wire [1:0] _T_337; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 112:25:@86.4]
  reg  _T_340; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 115:26:@87.4]
  reg [31:0] _RAND_0;
  reg [21:0] _T_347; // @[Reg.scala 19:20:@91.4]
  reg [31:0] _RAND_1;
  wire [21:0] _GEN_0; // @[Reg.scala 20:19:@92.4]
  wire [33:0] _T_351; // @[Bitwise.scala 72:12:@97.4]
  reg [33:0] _T_354; // @[Reg.scala 19:20:@98.4]
  reg [63:0] _RAND_2;
  wire [33:0] _GEN_1; // @[Reg.scala 20:19:@99.4]
  reg [4:0] _T_357; // @[Reg.scala 19:20:@103.4]
  reg [31:0] _RAND_3;
  wire [5:0] _GEN_2; // @[Reg.scala 20:19:@104.4]
  reg [13:0] _T_360; // @[Reg.scala 19:20:@108.4]
  reg [31:0] _RAND_4;
  wire [13:0] _GEN_3; // @[Reg.scala 20:19:@109.4]
  reg [12:0] _T_363; // @[Reg.scala 19:20:@113.4]
  reg [31:0] _RAND_5;
  wire [12:0] _GEN_4; // @[Reg.scala 20:19:@114.4]
  reg [12:0] _T_366; // @[Reg.scala 19:20:@118.4]
  reg [31:0] _RAND_6;
  wire [12:0] _GEN_5; // @[Reg.scala 20:19:@119.4]
  reg [10:0] _T_369; // @[Reg.scala 19:20:@123.4]
  reg [31:0] _RAND_7;
  wire [10:0] _GEN_6; // @[Reg.scala 20:19:@124.4]
  reg [2:0] _T_372; // @[Reg.scala 19:20:@128.4]
  reg [31:0] _RAND_8;
  wire [2:0] _GEN_7; // @[Reg.scala 20:19:@129.4]
  reg [2:0] _T_375; // @[Reg.scala 19:20:@133.4]
  reg [31:0] _RAND_9;
  wire [2:0] _GEN_8; // @[Reg.scala 20:19:@134.4]
  wire [1:0] _T_376; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 125:57:@138.4]
  reg [1:0] _T_379; // @[Reg.scala 19:20:@139.4]
  reg [31:0] _RAND_10;
  wire [1:0] _GEN_9; // @[Reg.scala 20:19:@140.4]
  reg [2:0] _T_382; // @[Reg.scala 19:20:@144.4]
  reg [31:0] _RAND_11;
  wire [2:0] _GEN_10; // @[Reg.scala 20:19:@145.4]
  reg [2:0] _T_385; // @[Reg.scala 19:20:@149.4]
  reg [31:0] _RAND_12;
  wire [2:0] _GEN_11; // @[Reg.scala 20:19:@150.4]
  reg [2:0] _T_388; // @[Reg.scala 19:20:@154.4]
  reg [31:0] _RAND_13;
  wire [2:0] _GEN_12; // @[Reg.scala 20:19:@155.4]
  reg [2:0] _T_391; // @[Reg.scala 19:20:@159.4]
  reg [31:0] _RAND_14;
  wire [2:0] _GEN_13; // @[Reg.scala 20:19:@160.4]
  reg [2:0] _T_394; // @[Reg.scala 19:20:@164.4]
  reg [31:0] _RAND_15;
  wire [2:0] _GEN_14; // @[Reg.scala 20:19:@165.4]
  reg [2:0] _T_397; // @[Reg.scala 19:20:@169.4]
  reg [31:0] _RAND_16;
  wire [2:0] _GEN_15; // @[Reg.scala 20:19:@170.4]
  reg [2:0] _T_400; // @[Reg.scala 19:20:@174.4]
  reg [31:0] _RAND_17;
  wire [2:0] _GEN_16; // @[Reg.scala 20:19:@175.4]
  reg [2:0] _T_403; // @[Reg.scala 19:20:@179.4]
  reg [31:0] _RAND_18;
  wire [2:0] _GEN_17; // @[Reg.scala 20:19:@180.4]
  reg [2:0] _T_406; // @[Reg.scala 19:20:@184.4]
  reg [31:0] _RAND_19;
  wire [2:0] _GEN_18; // @[Reg.scala 20:19:@185.4]
  reg [2:0] _T_409; // @[Reg.scala 19:20:@189.4]
  reg [31:0] _RAND_20;
  wire [2:0] _GEN_19; // @[Reg.scala 20:19:@190.4]
  reg [2:0] _T_412; // @[Reg.scala 19:20:@194.4]
  reg [31:0] _RAND_21;
  wire [2:0] _GEN_20; // @[Reg.scala 20:19:@195.4]
  reg [3:0] _T_415; // @[Reg.scala 19:20:@199.4]
  reg [31:0] _RAND_22;
  wire [3:0] _GEN_21; // @[Reg.scala 20:19:@200.4]
  reg [3:0] _T_418; // @[Reg.scala 19:20:@204.4]
  reg [31:0] _RAND_23;
  wire [3:0] _GEN_22; // @[Reg.scala 20:19:@205.4]
  wire  _T_419; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 139:64:@209.4]
  reg  _T_422; // @[Reg.scala 19:20:@210.4]
  reg [31:0] _RAND_24;
  wire  _GEN_23; // @[Reg.scala 20:19:@211.4]
  reg [5:0] _T_425; // @[Reg.scala 19:20:@215.4]
  reg [31:0] _RAND_25;
  wire [5:0] _GEN_24; // @[Reg.scala 20:19:@216.4]
  reg [4:0] _T_428; // @[Reg.scala 19:20:@220.4]
  reg [31:0] _RAND_26;
  wire [4:0] _GEN_25; // @[Reg.scala 20:19:@221.4]
  reg [5:0] _T_431; // @[Reg.scala 19:20:@225.4]
  reg [31:0] _RAND_27;
  wire [8:0] _GEN_26; // @[Reg.scala 20:19:@226.4]
  reg [6:0] _T_434; // @[Reg.scala 19:20:@230.4]
  reg [31:0] _RAND_28;
  wire [6:0] _GEN_27; // @[Reg.scala 20:19:@231.4]
  wire [6:0] _T_435; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 144:54:@235.4]
  reg [6:0] _T_438; // @[Reg.scala 19:20:@236.4]
  reg [31:0] _RAND_29;
  wire [6:0] _GEN_28; // @[Reg.scala 20:19:@237.4]
  reg [6:0] _T_441; // @[Reg.scala 19:20:@241.4]
  reg [31:0] _RAND_30;
  wire [6:0] _GEN_29; // @[Reg.scala 20:19:@242.4]
  reg [11:0] _T_444; // @[Reg.scala 19:20:@246.4]
  reg [31:0] _RAND_31;
  wire [11:0] _GEN_30; // @[Reg.scala 20:19:@247.4]
  reg [5:0] _T_447; // @[Reg.scala 19:20:@251.4]
  reg [31:0] _RAND_32;
  wire [5:0] _GEN_31; // @[Reg.scala 20:19:@252.4]
  reg [5:0] _T_450; // @[Reg.scala 19:20:@256.4]
  reg [31:0] _RAND_33;
  wire [5:0] _GEN_32; // @[Reg.scala 20:19:@257.4]
  reg [15:0] _T_453; // @[Reg.scala 19:20:@261.4]
  reg [31:0] _RAND_34;
  wire [15:0] _GEN_33; // @[Reg.scala 20:19:@262.4]
  reg [14:0] _T_456; // @[Reg.scala 19:20:@266.4]
  reg [31:0] _RAND_35;
  wire [15:0] _GEN_34; // @[Reg.scala 20:19:@267.4]
  reg [14:0] _T_459; // @[Reg.scala 19:20:@271.4]
  reg [31:0] _RAND_36;
  wire [14:0] _GEN_35; // @[Reg.scala 20:19:@272.4]
  reg [14:0] _T_462; // @[Reg.scala 19:20:@276.4]
  reg [31:0] _RAND_37;
  wire [14:0] _GEN_36; // @[Reg.scala 20:19:@277.4]
  reg [13:0] _T_465; // @[Reg.scala 19:20:@281.4]
  reg [31:0] _RAND_38;
  wire [13:0] _GEN_37; // @[Reg.scala 20:19:@282.4]
  reg [13:0] _T_468; // @[Reg.scala 19:20:@286.4]
  reg [31:0] _RAND_39;
  wire [13:0] _GEN_38; // @[Reg.scala 20:19:@287.4]
  reg [13:0] _T_472; // @[Reg.scala 19:20:@292.4]
  reg [31:0] _RAND_40;
  wire [13:0] _GEN_39; // @[Reg.scala 20:19:@293.4]
  reg [12:0] _T_475; // @[Reg.scala 19:20:@297.4]
  reg [31:0] _RAND_41;
  wire [12:0] _GEN_40; // @[Reg.scala 20:19:@298.4]
  wire [7:0] _T_477; // @[Cat.scala 30:58:@303.4]
  reg [7:0] _T_480; // @[Reg.scala 19:20:@304.4]
  reg [31:0] _RAND_42;
  wire [7:0] _GEN_41; // @[Reg.scala 20:19:@305.4]
  wire [7:0] _T_482; // @[Cat.scala 30:58:@310.4]
  reg [7:0] _T_485; // @[Reg.scala 19:20:@311.4]
  reg [31:0] _RAND_43;
  wire [7:0] _GEN_42; // @[Reg.scala 20:19:@312.4]
  wire [14:0] _GEN_54; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 161:49:@316.4]
  wire [20:0] _T_486; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 161:49:@316.4]
  wire [12:0] _T_487; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 161:77:@317.4]
  wire [14:0] _GEN_55; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 162:49:@318.4]
  wire [28:0] _T_488; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 162:49:@318.4]
  wire [12:0] _T_489; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 162:81:@319.4]
  wire [13:0] _T_490; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 163:24:@320.4]
  wire [14:0] _GEN_56; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 164:53:@321.4]
  wire [28:0] _T_491; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 164:53:@321.4]
  wire [14:0] _T_492; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 164:69:@322.4]
  reg [11:0] _T_495; // @[Reg.scala 19:20:@323.4]
  reg [31:0] _RAND_44;
  wire [12:0] _GEN_43; // @[Reg.scala 20:19:@324.4]
  reg [11:0] _T_498; // @[Reg.scala 19:20:@328.4]
  reg [31:0] _RAND_45;
  wire [12:0] _GEN_44; // @[Reg.scala 20:19:@329.4]
  wire [12:0] _T_499; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 168:66:@333.4]
  reg [12:0] _T_502; // @[Reg.scala 19:20:@334.4]
  reg [31:0] _RAND_46;
  wire [12:0] _GEN_45; // @[Reg.scala 20:19:@335.4]
  reg [12:0] _T_506; // @[Reg.scala 19:20:@340.4]
  reg [31:0] _RAND_47;
  wire [12:0] _GEN_46; // @[Reg.scala 20:19:@341.4]
  reg [14:0] _T_509; // @[Reg.scala 19:20:@345.4]
  reg [31:0] _RAND_48;
  wire [14:0] _GEN_47; // @[Reg.scala 20:19:@346.4]
  reg [13:0] _T_512; // @[Reg.scala 19:20:@350.4]
  reg [31:0] _RAND_49;
  wire [13:0] _GEN_48; // @[Reg.scala 20:19:@351.4]
  reg [14:0] _T_515; // @[Reg.scala 19:20:@355.4]
  reg [31:0] _RAND_50;
  wire [14:0] _GEN_49; // @[Reg.scala 20:19:@356.4]
  assign _T_214 = io_nvdla_core_rstn == 1'h0; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 51:38:@8.4]
  assign _T_215 = io_reg2dp_op_en & io_is_sg_idle; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 56:32:@9.4]
  assign _T_219 = io_reg2dp_conv_mode == 1'h0; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 58:35:@11.4]
  assign _T_220 = _T_219 & io_reg2dp_datain_format; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 59:22:@12.4]
  assign _T_222 = io_reg2dp_data_bank + 5'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 61:39:@13.4]
  assign _T_230 = io_reg2dp_datain_width_ext + 13'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 69:108:@16.4]
  assign _T_233 = io_reg2dp_weight_channel_ext[12:6]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 72:110:@19.4]
  assign _T_234 = {{4'd0}, _T_233}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 72:31:@20.4]
  assign _T_236 = 9'h9 << io_reg2dp_y_extension; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 76:53:@21.4]
  assign _T_238 = _T_220 ? _T_236 : 9'h8; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 76:24:@22.4]
  assign _T_239 = _T_238[5:3]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 76:100:@23.4]
  assign _T_243 = _T_220 ? _T_239 : 3'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 77:22:@25.4]
  assign _T_245 = _T_243 - 3'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 78:34:@26.4]
  assign _T_246 = $unsigned(_T_245); // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 78:34:@27.4]
  assign _T_249 = io_reg2dp_conv_x_stride_ext + 3'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 80:73:@29.4]
  assign _T_251 = io_reg2dp_datain_channel_ext[1:0]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 81:62:@31.4]
  assign _T_254 = {_T_249,2'h0}; // @[Cat.scala 30:58:@32.4]
  assign _T_257 = {_T_249,1'h0}; // @[Cat.scala 30:58:@33.4]
  assign _GEN_50 = {{1'd0}, _T_249}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 83:77:@34.4]
  assign _T_258 = _T_257 + _GEN_50; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 83:77:@34.4]
  assign _T_259 = 2'h2 == _T_251; // @[Mux.scala 46:19:@35.4]
  assign _T_260 = _T_259 ? _T_258 : {{2'd0}, _T_249}; // @[Mux.scala 46:16:@36.4]
  assign _T_261 = 2'h3 == _T_251; // @[Mux.scala 46:19:@37.4]
  assign _T_262 = _T_261 ? _T_254 : _T_260; // @[Mux.scala 46:16:@38.4]
  assign _T_264 = io_reg2dp_weight_channel_ext >= 13'h40; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 85:88:@39.4]
  assign _T_270 = io_reg2dp_weight_channel_ext[5:0]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 85:172:@41.4]
  assign _T_271 = _T_264 ? 6'h3f : _T_270; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 85:58:@42.4]
  assign _T_274 = {_T_262,1'h0}; // @[Cat.scala 30:58:@43.4]
  assign _GEN_51 = {{1'd0}, _T_262}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 86:80:@44.4]
  assign _T_275 = _T_274 + _GEN_51; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 86:80:@44.4]
  assign _GEN_52 = {{2'd0}, _T_270}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 86:100:@46.4]
  assign _T_277 = _T_275 + _GEN_52; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 86:100:@46.4]
  assign _T_280 = _T_262 + _T_270; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 87:57:@48.4]
  assign _T_281 = 2'h1 == io_reg2dp_y_extension; // @[Mux.scala 46:19:@49.4]
  assign _T_282 = _T_281 ? _T_280 : {{1'd0}, _T_271}; // @[Mux.scala 46:16:@50.4]
  assign _T_283 = 2'h2 == io_reg2dp_y_extension; // @[Mux.scala 46:19:@51.4]
  assign _T_284 = _T_283 ? _T_277 : {{2'd0}, _T_282}; // @[Mux.scala 46:16:@52.4]
  assign _T_287 = _T_270 + 6'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 89:80:@54.4]
  assign _T_290 = {_T_262,2'h0}; // @[Cat.scala 30:58:@55.4]
  assign _T_295 = _T_281 ? _T_274 : {{1'd0}, _T_262}; // @[Mux.scala 46:16:@58.4]
  assign _T_297 = _T_283 ? _T_290 : {{1'd0}, _T_295}; // @[Mux.scala 46:16:@60.4]
  assign _T_299 = {_T_262,6'h0}; // @[Cat.scala 30:58:@61.4]
  assign _T_302 = io_reg2dp_conv_y_stride_ext + 3'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 100:74:@62.4]
  assign _T_307 = io_reg2dp_x_dilation_ext + 5'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 101:74:@65.4]
  assign _T_308 = _T_220 ? 6'h1 : _T_307; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 101:21:@66.4]
  assign _T_312 = io_reg2dp_y_dilation_ext + 5'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 102:74:@68.4]
  assign _T_313 = _T_220 ? 6'h1 : _T_312; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 102:21:@69.4]
  assign _T_315 = io_reg2dp_entries + 14'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 105:43:@70.4]
  assign _T_317 = _T_315 * 15'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 106:41:@72.4]
  assign _T_318 = _T_317[14:0]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 106:56:@73.4]
  assign _T_324 = {{1'd0}, _T_315}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 107:20:@77.4]
  assign _T_325 = 6'h1 * _T_313; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 108:37:@78.4]
  assign _T_327 = io_reg2dp_rls_slices + 12'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 109:41:@79.4]
  assign _T_328 = io_reg2dp_rls_slices + 12'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 109:41:@80.4]
  assign _T_330 = io_reg2dp_datain_height_ext + 13'h1; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 110:77:@81.4]
  assign _GEN_53 = {{1'd0}, io_reg2dp_rls_slices}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 110:113:@82.4]
  assign _T_331 = io_reg2dp_datain_height_ext - _GEN_53; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 110:113:@82.4]
  assign _T_332 = $unsigned(_T_331); // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 110:113:@83.4]
  assign _T_333 = io_reg2dp_skip_data_rls ? _T_330 : _T_332; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 110:23:@84.4]
  assign _T_335 = io_reg2dp_pra_truncate == 2'h3; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 112:49:@85.4]
  assign _T_337 = _T_335 ? 2'h2 : io_reg2dp_pra_truncate; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 112:25:@86.4]
  assign _GEN_0 = _T_215 ? 22'h0 : _T_347; // @[Reg.scala 20:19:@92.4]
  assign _T_351 = _T_220 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@97.4]
  assign _GEN_1 = _T_215 ? _T_351 : _T_354; // @[Reg.scala 20:19:@99.4]
  assign _GEN_2 = _T_215 ? _T_222 : {{1'd0}, _T_357}; // @[Reg.scala 20:19:@104.4]
  assign _GEN_3 = _T_215 ? _T_230 : _T_360; // @[Reg.scala 20:19:@109.4]
  assign _GEN_4 = _T_215 ? io_reg2dp_datain_width_ext : _T_363; // @[Reg.scala 20:19:@114.4]
  assign _GEN_5 = _T_215 ? io_reg2dp_datain_height_ext : _T_366; // @[Reg.scala 20:19:@119.4]
  assign _GEN_6 = _T_215 ? _T_234 : _T_369; // @[Reg.scala 20:19:@124.4]
  assign _GEN_7 = _T_215 ? _T_239 : _T_372; // @[Reg.scala 20:19:@129.4]
  assign _GEN_8 = _T_215 ? _T_239 : _T_375; // @[Reg.scala 20:19:@134.4]
  assign _T_376 = _T_239[2:1]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 125:57:@138.4]
  assign _GEN_9 = _T_215 ? _T_376 : _T_379; // @[Reg.scala 20:19:@140.4]
  assign _GEN_10 = _T_215 ? _T_239 : _T_382; // @[Reg.scala 20:19:@145.4]
  assign _GEN_11 = _T_215 ? _T_239 : _T_385; // @[Reg.scala 20:19:@150.4]
  assign _GEN_12 = _T_215 ? _T_239 : _T_388; // @[Reg.scala 20:19:@155.4]
  assign _GEN_13 = _T_215 ? _T_239 : _T_391; // @[Reg.scala 20:19:@160.4]
  assign _GEN_14 = _T_215 ? _T_239 : _T_394; // @[Reg.scala 20:19:@165.4]
  assign _GEN_15 = _T_215 ? _T_239 : _T_397; // @[Reg.scala 20:19:@170.4]
  assign _GEN_16 = _T_215 ? _T_239 : _T_400; // @[Reg.scala 20:19:@175.4]
  assign _GEN_17 = _T_215 ? _T_239 : _T_403; // @[Reg.scala 20:19:@180.4]
  assign _GEN_18 = _T_215 ? _T_239 : _T_406; // @[Reg.scala 20:19:@185.4]
  assign _GEN_19 = _T_215 ? _T_243 : _T_409; // @[Reg.scala 20:19:@190.4]
  assign _GEN_20 = _T_215 ? _T_243 : _T_412; // @[Reg.scala 20:19:@195.4]
  assign _GEN_21 = _T_215 ? _T_249 : _T_415; // @[Reg.scala 20:19:@200.4]
  assign _GEN_22 = _T_215 ? _T_302 : _T_418; // @[Reg.scala 20:19:@205.4]
  assign _T_419 = _T_262[0]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 139:64:@209.4]
  assign _GEN_23 = _T_215 ? _T_419 : _T_422; // @[Reg.scala 20:19:@211.4]
  assign _GEN_24 = _T_215 ? 6'h1 : _T_425; // @[Reg.scala 20:19:@216.4]
  assign _GEN_25 = _T_215 ? 5'h0 : _T_428; // @[Reg.scala 20:19:@221.4]
  assign _GEN_26 = _T_215 ? _T_284 : {{3'd0}, _T_431}; // @[Reg.scala 20:19:@226.4]
  assign _GEN_27 = _T_215 ? _T_287 : _T_434; // @[Reg.scala 20:19:@231.4]
  assign _T_435 = _T_297[6:0]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 144:54:@235.4]
  assign _GEN_28 = _T_215 ? _T_435 : _T_438; // @[Reg.scala 20:19:@237.4]
  assign _GEN_29 = _T_215 ? {{1'd0}, _T_262} : _T_441; // @[Reg.scala 20:19:@242.4]
  assign _GEN_30 = _T_215 ? _T_299 : _T_444; // @[Reg.scala 20:19:@247.4]
  assign _GEN_31 = _T_215 ? _T_308 : _T_447; // @[Reg.scala 20:19:@252.4]
  assign _GEN_32 = _T_215 ? _T_313 : _T_450; // @[Reg.scala 20:19:@257.4]
  assign _GEN_33 = _T_215 ? io_reg2dp_pad_value : _T_453; // @[Reg.scala 20:19:@262.4]
  assign _GEN_34 = _T_215 ? _T_324 : {{1'd0}, _T_456}; // @[Reg.scala 20:19:@267.4]
  assign _GEN_35 = _T_215 ? _T_318 : _T_459; // @[Reg.scala 20:19:@272.4]
  assign _GEN_36 = _T_215 ? {{1'd0}, io_reg2dp_entries} : _T_462; // @[Reg.scala 20:19:@277.4]
  assign _GEN_37 = _T_215 ? {{2'd0}, _T_325} : _T_465; // @[Reg.scala 20:19:@282.4]
  assign _GEN_38 = _T_215 ? {{2'd0}, _T_328} : _T_468; // @[Reg.scala 20:19:@287.4]
  assign _GEN_39 = _T_215 ? _T_333 : _T_472; // @[Reg.scala 20:19:@293.4]
  assign _GEN_40 = _T_215 ? io_reg2dp_dataout_width : _T_475; // @[Reg.scala 20:19:@298.4]
  assign _T_477 = {_T_337,_T_337,_T_337,_T_337}; // @[Cat.scala 30:58:@303.4]
  assign _GEN_41 = _T_215 ? _T_477 : _T_480; // @[Reg.scala 20:19:@305.4]
  assign _T_482 = {io_reg2dp_proc_precision,io_reg2dp_proc_precision,io_reg2dp_proc_precision,io_reg2dp_proc_precision}; // @[Cat.scala 30:58:@310.4]
  assign _GEN_42 = _T_215 ? _T_482 : _T_485; // @[Reg.scala 20:19:@312.4]
  assign _GEN_54 = {{9'd0}, io_subfield_d1_data_batch}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 161:49:@316.4]
  assign _T_486 = io_subfield_d1_entries * _GEN_54; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 161:49:@316.4]
  assign _T_487 = _T_486[12:0]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 161:77:@317.4]
  assign _GEN_55 = {{1'd0}, io_subfield_d1_h_offset_slice}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 162:49:@318.4]
  assign _T_488 = io_subfield_d1_entries * _GEN_55; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 162:49:@318.4]
  assign _T_489 = _T_488[12:0]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 162:81:@319.4]
  assign _T_490 = io_layer_st_d1 ? io_subfield_d1_rls_slices : io_subfield_d1_slice_left; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 163:24:@320.4]
  assign _GEN_56 = {{1'd0}, _T_490}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 164:53:@321.4]
  assign _T_491 = io_subfield_d1_entries_batch * _GEN_56; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 164:53:@321.4]
  assign _T_492 = _T_491[14:0]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 164:69:@322.4]
  assign _GEN_43 = io_layer_st_d1 ? _T_487 : {{1'd0}, _T_495}; // @[Reg.scala 20:19:@324.4]
  assign _GEN_44 = io_layer_st_d1 ? _T_489 : {{1'd0}, _T_498}; // @[Reg.scala 20:19:@329.4]
  assign _T_499 = io_subfield_d1_entries[12:0]; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 168:66:@333.4]
  assign _GEN_45 = io_layer_st_d1 ? _T_499 : _T_502; // @[Reg.scala 20:19:@335.4]
  assign _GEN_46 = io_layer_st_d1 ? _T_499 : _T_506; // @[Reg.scala 20:19:@341.4]
  assign _GEN_47 = io_layer_st_d1 ? _T_492 : _T_509; // @[Reg.scala 20:19:@346.4]
  assign _GEN_48 = io_is_sg_done ? io_subfield_d1_slice_left : _T_512; // @[Reg.scala 20:19:@351.4]
  assign _GEN_49 = io_is_sg_done ? _T_492 : _T_515; // @[Reg.scala 20:19:@356.4]
  assign io_layer_st_d1 = _T_340; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 115:16:@89.4]
  assign io_dataout_w_init = {{9'd0}, _T_246}; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 78:19:@28.4]
  assign io_subfield_d1_is_winograd_d1 = _T_347; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 116:31:@95.4]
  assign io_subfield_d1_is_img_d1 = _T_354; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 117:26:@102.4]
  assign io_subfield_d1_data_bank = _T_357; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 118:26:@107.4]
  assign io_subfield_d1_datain_width = _T_360; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 119:29:@112.4]
  assign io_subfield_d1_datain_width_cmp = _T_363; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 120:33:@117.4]
  assign io_subfield_d1_datain_height_cmp = _T_366; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 121:34:@122.4]
  assign io_subfield_d1_datain_channel_cmp = _T_369; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 122:35:@127.4]
  assign io_subfield_d1_sub_h_total_g0 = _T_372; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 123:31:@132.4]
  assign io_subfield_d1_sub_h_total_g1 = _T_375; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 124:31:@137.4]
  assign io_subfield_d1_sub_h_total_g2 = _T_379; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 125:31:@143.4]
  assign io_subfield_d1_sub_h_total_g3 = _T_382; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 126:31:@148.4]
  assign io_subfield_d1_sub_h_total_g4 = _T_385; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 127:31:@153.4]
  assign io_subfield_d1_sub_h_total_g5 = _T_388; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 128:31:@158.4]
  assign io_subfield_d1_sub_h_total_g6 = _T_391; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 129:31:@163.4]
  assign io_subfield_d1_sub_h_total_g7 = _T_394; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 130:31:@168.4]
  assign io_subfield_d1_sub_h_total_g8 = _T_397; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 131:31:@173.4]
  assign io_subfield_d1_sub_h_total_g9 = _T_400; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 132:31:@178.4]
  assign io_subfield_d1_sub_h_total_g10 = _T_403; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 133:32:@183.4]
  assign io_subfield_d1_sub_h_total_g11 = _T_406; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 134:32:@188.4]
  assign io_subfield_d1_sub_h_cmp_g0 = _T_409; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 135:29:@193.4]
  assign io_subfield_d1_sub_h_cmp_g1 = _T_412; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 136:29:@198.4]
  assign io_subfield_d1_conv_x_stride = _T_415; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 137:30:@203.4]
  assign io_subfield_d1_conv_y_stride = _T_418; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 138:30:@208.4]
  assign io_subfield_d1_pixel_x_stride_odd = _T_422; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 139:35:@214.4]
  assign io_subfield_d1_data_batch = _T_425; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 140:27:@219.4]
  assign io_subfield_d1_batch_cmp = _T_428; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 141:26:@224.4]
  assign io_subfield_d1_pixel_x_init = _T_431; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 142:29:@229.4]
  assign io_subfield_d1_pixel_x_init_offset = _T_434; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 143:36:@234.4]
  assign io_subfield_d1_pixel_x_add = _T_438; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 144:28:@240.4]
  assign io_subfield_d1_pixel_x_byte_stride = _T_441; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 145:36:@245.4]
  assign io_subfield_d1_pixel_ch_stride = _T_444; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 146:32:@250.4]
  assign io_subfield_d1_x_dilate = _T_447; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 147:25:@255.4]
  assign io_subfield_d1_y_dilate = _T_450; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 148:25:@260.4]
  assign io_subfield_d1_pad_value = _T_453; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 149:26:@265.4]
  assign io_subfield_d1_entries = _T_456; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 150:24:@270.4]
  assign io_subfield_d1_entries_batch = _T_459; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 151:30:@275.4]
  assign io_subfield_d1_entries_cmp = _T_462; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 152:28:@280.4]
  assign io_subfield_d1_h_offset_slice = _T_465; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 153:31:@285.4]
  assign io_subfield_d1_rls_slices = _T_468; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 154:27:@290.4]
  assign io_subfield_d1_slice_left = _T_472; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 155:27:@296.4]
  assign io_subfield_d1_dataout_width_cmp = _T_475; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 156:34:@301.4]
  assign io_subfield_d1_pra_truncate = _T_480; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 157:29:@308.4]
  assign io_subfield_d1_pra_precision = _T_485; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 158:30:@315.4]
  assign io_subfield_d2_h_bias_0_stride = _T_495; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 166:32:@327.4]
  assign io_subfield_d2_h_bias_1_stride = _T_498; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 167:32:@332.4]
  assign io_subfield_d2_h_bias_2_stride = _T_502; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 168:31:@338.4]
  assign io_subfield_d2_h_bias_3_stride = _T_506; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 169:32:@344.4]
  assign io_subfield_d2_rls_entries = _T_509; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 170:28:@349.4]
  assign io_subfield_sg_done_last_slices = _T_512; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 173:33:@354.4]
  assign io_subfield_sg_done_last_entries = _T_515; // @[NV_soDLA_CSC_DL_IP_cfg gate.scala 174:34:@359.4]
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
  _T_340 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_347 = _RAND_1[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_354 = _RAND_2[33:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_357 = _RAND_3[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_360 = _RAND_4[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_363 = _RAND_5[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_366 = _RAND_6[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_369 = _RAND_7[10:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_372 = _RAND_8[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_375 = _RAND_9[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_379 = _RAND_10[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_382 = _RAND_11[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_385 = _RAND_12[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_388 = _RAND_13[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_391 = _RAND_14[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_394 = _RAND_15[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_397 = _RAND_16[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_400 = _RAND_17[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_403 = _RAND_18[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_406 = _RAND_19[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_409 = _RAND_20[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_412 = _RAND_21[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_415 = _RAND_22[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_418 = _RAND_23[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_422 = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_425 = _RAND_25[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_428 = _RAND_26[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_431 = _RAND_27[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_434 = _RAND_28[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_438 = _RAND_29[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_441 = _RAND_30[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  _T_444 = _RAND_31[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  _T_447 = _RAND_32[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  _T_450 = _RAND_33[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  _T_453 = _RAND_34[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  _T_456 = _RAND_35[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  _T_459 = _RAND_36[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  _T_462 = _RAND_37[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  _T_465 = _RAND_38[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  _T_468 = _RAND_39[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  _T_472 = _RAND_40[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_475 = _RAND_41[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  _T_480 = _RAND_42[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  _T_485 = _RAND_43[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_495 = _RAND_44[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  _T_498 = _RAND_45[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  _T_502 = _RAND_46[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  _T_506 = _RAND_47[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  _T_509 = _RAND_48[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  _T_512 = _RAND_49[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  _T_515 = _RAND_50[14:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (_T_214) begin
      _T_340 <= 1'h0;
    end else begin
      _T_340 <= _T_215;
    end
    if (_T_214) begin
      _T_347 <= 22'h0;
    end else begin
      if (_T_215) begin
        _T_347 <= 22'h0;
      end
    end
    if (_T_214) begin
      _T_354 <= 34'h0;
    end else begin
      if (_T_215) begin
        if (_T_220) begin
          _T_354 <= 34'h3ffffffff;
        end else begin
          _T_354 <= 34'h0;
        end
      end
    end
    if (_T_214) begin
      _T_357 <= 5'h0;
    end else begin
      _T_357 <= _GEN_2[4:0];
    end
    if (_T_214) begin
      _T_360 <= 14'h0;
    end else begin
      if (_T_215) begin
        _T_360 <= _T_230;
      end
    end
    if (_T_214) begin
      _T_363 <= 13'h0;
    end else begin
      if (_T_215) begin
        _T_363 <= io_reg2dp_datain_width_ext;
      end
    end
    if (_T_214) begin
      _T_366 <= 13'h0;
    end else begin
      if (_T_215) begin
        _T_366 <= io_reg2dp_datain_height_ext;
      end
    end
    if (_T_214) begin
      _T_369 <= 11'h0;
    end else begin
      if (_T_215) begin
        _T_369 <= _T_234;
      end
    end
    if (_T_214) begin
      _T_372 <= 3'h1;
    end else begin
      if (_T_215) begin
        _T_372 <= _T_239;
      end
    end
    if (_T_214) begin
      _T_375 <= 3'h1;
    end else begin
      if (_T_215) begin
        _T_375 <= _T_239;
      end
    end
    if (_T_214) begin
      _T_379 <= 2'h1;
    end else begin
      if (_T_215) begin
        _T_379 <= _T_376;
      end
    end
    if (_T_214) begin
      _T_382 <= 3'h1;
    end else begin
      if (_T_215) begin
        _T_382 <= _T_239;
      end
    end
    if (_T_214) begin
      _T_385 <= 3'h1;
    end else begin
      if (_T_215) begin
        _T_385 <= _T_239;
      end
    end
    if (_T_214) begin
      _T_388 <= 3'h1;
    end else begin
      if (_T_215) begin
        _T_388 <= _T_239;
      end
    end
    if (_T_214) begin
      _T_391 <= 3'h1;
    end else begin
      if (_T_215) begin
        _T_391 <= _T_239;
      end
    end
    if (_T_214) begin
      _T_394 <= 3'h1;
    end else begin
      if (_T_215) begin
        _T_394 <= _T_239;
      end
    end
    if (_T_214) begin
      _T_397 <= 3'h1;
    end else begin
      if (_T_215) begin
        _T_397 <= _T_239;
      end
    end
    if (_T_214) begin
      _T_400 <= 3'h1;
    end else begin
      if (_T_215) begin
        _T_400 <= _T_239;
      end
    end
    if (_T_214) begin
      _T_403 <= 3'h1;
    end else begin
      if (_T_215) begin
        _T_403 <= _T_239;
      end
    end
    if (_T_214) begin
      _T_406 <= 3'h1;
    end else begin
      if (_T_215) begin
        _T_406 <= _T_239;
      end
    end
    if (_T_214) begin
      _T_409 <= 3'h1;
    end else begin
      if (_T_215) begin
        if (_T_220) begin
          _T_409 <= _T_239;
        end else begin
          _T_409 <= 3'h1;
        end
      end
    end
    if (_T_214) begin
      _T_412 <= 3'h1;
    end else begin
      if (_T_215) begin
        if (_T_220) begin
          _T_412 <= _T_239;
        end else begin
          _T_412 <= 3'h1;
        end
      end
    end
    if (_T_214) begin
      _T_415 <= 4'h0;
    end else begin
      if (_T_215) begin
        _T_415 <= _T_249;
      end
    end
    if (_T_214) begin
      _T_418 <= 4'h0;
    end else begin
      if (_T_215) begin
        _T_418 <= _T_302;
      end
    end
    if (_T_214) begin
      _T_422 <= 1'h0;
    end else begin
      if (_T_215) begin
        _T_422 <= _T_419;
      end
    end
    if (_T_214) begin
      _T_425 <= 6'h0;
    end else begin
      if (_T_215) begin
        _T_425 <= 6'h1;
      end
    end
    if (_T_214) begin
      _T_428 <= 5'h0;
    end else begin
      if (_T_215) begin
        _T_428 <= 5'h0;
      end
    end
    if (_T_214) begin
      _T_431 <= 6'h0;
    end else begin
      _T_431 <= _GEN_26[5:0];
    end
    if (_T_214) begin
      _T_434 <= 7'h0;
    end else begin
      if (_T_215) begin
        _T_434 <= _T_287;
      end
    end
    if (_T_214) begin
      _T_438 <= 7'h0;
    end else begin
      if (_T_215) begin
        _T_438 <= _T_435;
      end
    end
    if (_T_214) begin
      _T_441 <= 7'h0;
    end else begin
      if (_T_215) begin
        _T_441 <= {{1'd0}, _T_262};
      end
    end
    if (_T_214) begin
      _T_444 <= 12'h0;
    end else begin
      if (_T_215) begin
        _T_444 <= _T_299;
      end
    end
    if (_T_214) begin
      _T_447 <= 6'h0;
    end else begin
      if (_T_215) begin
        if (_T_220) begin
          _T_447 <= 6'h1;
        end else begin
          _T_447 <= _T_307;
        end
      end
    end
    if (_T_214) begin
      _T_450 <= 6'h0;
    end else begin
      if (_T_215) begin
        if (_T_220) begin
          _T_450 <= 6'h1;
        end else begin
          _T_450 <= _T_312;
        end
      end
    end
    if (_T_214) begin
      _T_453 <= 16'h0;
    end else begin
      if (_T_215) begin
        _T_453 <= io_reg2dp_pad_value;
      end
    end
    if (_T_214) begin
      _T_456 <= 15'h0;
    end else begin
      _T_456 <= _GEN_34[14:0];
    end
    if (_T_214) begin
      _T_459 <= 15'h0;
    end else begin
      if (_T_215) begin
        _T_459 <= _T_318;
      end
    end
    if (_T_214) begin
      _T_462 <= 15'h0;
    end else begin
      if (_T_215) begin
        _T_462 <= {{1'd0}, io_reg2dp_entries};
      end
    end
    if (_T_214) begin
      _T_465 <= 14'h0;
    end else begin
      if (_T_215) begin
        _T_465 <= {{2'd0}, _T_325};
      end
    end
    if (_T_214) begin
      _T_468 <= 14'h0;
    end else begin
      if (_T_215) begin
        _T_468 <= {{2'd0}, _T_328};
      end
    end
    if (_T_214) begin
      _T_472 <= 14'h0;
    end else begin
      if (_T_215) begin
        if (io_reg2dp_skip_data_rls) begin
          _T_472 <= _T_330;
        end else begin
          _T_472 <= _T_332;
        end
      end
    end
    if (_T_214) begin
      _T_475 <= 13'h0;
    end else begin
      if (_T_215) begin
        _T_475 <= io_reg2dp_dataout_width;
      end
    end
    if (_T_214) begin
      _T_480 <= 8'h0;
    end else begin
      if (_T_215) begin
        _T_480 <= _T_477;
      end
    end
    if (_T_214) begin
      _T_485 <= 8'h0;
    end else begin
      if (_T_215) begin
        _T_485 <= _T_482;
      end
    end
    if (_T_214) begin
      _T_495 <= 12'h0;
    end else begin
      _T_495 <= _GEN_43[11:0];
    end
    if (_T_214) begin
      _T_498 <= 12'h0;
    end else begin
      _T_498 <= _GEN_44[11:0];
    end
    if (_T_214) begin
      _T_502 <= 13'h0;
    end else begin
      if (io_layer_st_d1) begin
        _T_502 <= _T_499;
      end
    end
    if (_T_214) begin
      _T_506 <= 13'h0;
    end else begin
      if (io_layer_st_d1) begin
        _T_506 <= _T_499;
      end
    end
    if (_T_214) begin
      _T_509 <= 15'h0;
    end else begin
      if (io_layer_st_d1) begin
        _T_509 <= _T_492;
      end
    end
    if (_T_214) begin
      _T_512 <= 14'h0;
    end else begin
      if (io_is_sg_done) begin
        _T_512 <= io_subfield_d1_slice_left;
      end
    end
    if (_T_214) begin
      _T_515 <= 15'h0;
    end else begin
      if (io_is_sg_done) begin
        _T_515 <= _T_492;
      end
    end
  end
endmodule
