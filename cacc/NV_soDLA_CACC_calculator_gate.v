module NV_soDLA_CACC_CALC_int8_gate( // @[:@3.2]
  input         io_nvdla_core_clk, // @[:@6.4]
  input         io_nvdla_core_rstn, // @[:@6.4]
  input  [4:0]  io_cfg_truncate, // @[:@6.4]
  input  [21:0] io_in_data, // @[:@6.4]
  input  [33:0] io_in_op, // @[:@6.4]
  input         io_in_op_valid, // @[:@6.4]
  input         io_in_sel, // @[:@6.4]
  input         io_in_valid, // @[:@6.4]
  output [31:0] io_out_final_data, // @[:@6.4]
  output        io_out_final_sat, // @[:@6.4]
  output        io_out_final_valid, // @[:@6.4]
  output [33:0] io_out_partial_data, // @[:@6.4]
  output        io_out_partial_valid // @[:@6.4]
);
  wire  _T_32; // @[NV_soDLA_CACC_CALC_int8_gate.scala 53:38:@8.4]
  reg  i_sat_vld; // @[NV_soDLA_CACC_CALC_int8_gate.scala 57:28:@9.4]
  reg [31:0] _RAND_0;
  reg  i_sat_sel; // @[NV_soDLA_CACC_CALC_int8_gate.scala 58:29:@10.4]
  reg [31:0] _RAND_1;
  reg [34:0] i_sum_pd; // @[NV_soDLA_CACC_CALC_int8_gate.scala 59:23:@11.4]
  reg [63:0] _RAND_2;
  wire [21:0] _T_38; // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:33:@15.6]
  wire [33:0] _T_40; // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:46:@16.6]
  wire [33:0] _T_41; // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:89:@17.6]
  wire [33:0] _GEN_5; // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:40:@18.6]
  wire [34:0] _T_42; // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:40:@18.6]
  wire [34:0] _T_43; // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:97:@19.6]
  wire  _GEN_0; // @[NV_soDLA_CACC_CALC_int8_gate.scala 62:22:@13.4]
  wire  i_sum_sign; // @[NV_soDLA_CACC_CALC_int8_gate.scala 70:30:@22.4]
  wire  i_sum_msb; // @[NV_soDLA_CACC_CALC_int8_gate.scala 71:29:@23.4]
  wire  _T_46; // @[NV_soDLA_CACC_CALC_int8_gate.scala 75:20:@26.4]
  wire  _T_47; // @[NV_soDLA_CACC_CALC_int8_gate.scala 76:32:@28.6]
  wire [32:0] _T_51; // @[Bitwise.scala 72:12:@30.6]
  wire [32:0] _T_52; // @[NV_soDLA_CACC_CALC_int8_gate.scala 79:31:@34.6]
  wire [32:0] i_sat_bits; // @[NV_soDLA_CACC_CALC_int8_gate.scala 75:31:@27.4]
  wire [33:0] i_sat_pd; // @[Cat.scala 30:58:@37.4]
  wire [33:0] i_pre_sft_pd; // @[NV_soDLA_CACC_CALC_int8_gate.scala 89:27:@41.4]
  wire [49:0] _T_61; // @[Cat.scala 30:58:@42.4]
  wire [49:0] _T_62; // @[NV_soDLA_CACC_CALC_int8_gate.scala 90:66:@43.4]
  wire [49:0] i_pre_sft_pd_pack; // @[NV_soDLA_CACC_CALC_int8_gate.scala 90:73:@44.4]
  wire [49:0] _T_63; // @[Cat.scala 30:58:@45.4]
  wire [33:0] i_sft_pd; // @[NV_soDLA_CACC_CALC_int8_gate.scala 91:42:@46.4]
  wire  i_guide; // @[NV_soDLA_CACC_CALC_int8_gate.scala 92:41:@48.4]
  wire [14:0] i_stick; // @[NV_soDLA_CACC_CALC_int8_gate.scala 93:41:@50.4]
  wire [1:0] _T_66; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:51:@51.4]
  wire [1:0] _T_67; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:60:@52.4]
  wire  _T_69; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:60:@53.4]
  wire  _T_70; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:41:@54.4]
  wire  _T_71; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:38:@55.4]
  wire  _T_75; // @[NV_soDLA_CACC_CALC_int8_gate.scala 96:59:@58.4]
  wire  _T_76; // @[NV_soDLA_CACC_CALC_int8_gate.scala 96:39:@59.4]
  wire  _T_77; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:67:@60.4]
  wire [30:0] _T_79; // @[NV_soDLA_CACC_CALC_int8_gate.scala 97:53:@62.4]
  wire  _T_92; // @[NV_soDLA_CACC_CALC_int8_gate.scala 100:27:@72.4]
  wire  _T_95; // @[NV_soDLA_CACC_CALC_int8_gate.scala 100:61:@74.4]
  wire  _T_96; // @[NV_soDLA_CACC_CALC_int8_gate.scala 100:51:@75.4]
  wire  i_point5; // @[NV_soDLA_CACC_CALC_int8_gate.scala 100:37:@76.4]
  wire [31:0] _T_80; // @[Cat.scala 30:58:@63.4]
  wire [31:0] _T_81; // @[NV_soDLA_CACC_CALC_int8_gate.scala 97:71:@64.4]
  wire  _T_83; // @[NV_soDLA_CACC_CALC_int8_gate.scala 97:71:@65.4]
  wire  _T_84; // @[NV_soDLA_CACC_CALC_int8_gate.scala 97:39:@66.4]
  wire  i_sft_need_sat; // @[NV_soDLA_CACC_CALC_int8_gate.scala 96:65:@67.4]
  wire [31:0] i_sft_max; // @[NV_soDLA_CACC_CALC_int8_gate.scala 98:24:@71.4]
  wire [31:0] _T_98; // @[NV_soDLA_CACC_CALC_int8_gate.scala 101:28:@78.4]
  wire [31:0] _GEN_6; // @[NV_soDLA_CACC_CALC_int8_gate.scala 101:36:@79.4]
  wire [32:0] _T_99; // @[NV_soDLA_CACC_CALC_int8_gate.scala 101:36:@79.4]
  wire [31:0] i_pos_pd; // @[NV_soDLA_CACC_CALC_int8_gate.scala 101:36:@80.4]
  wire [31:0] i_final_result; // @[NV_soDLA_CACC_CALC_int8_gate.scala 104:29:@81.4]
  wire  _T_100; // @[NV_soDLA_CACC_CALC_int8_gate.scala 106:37:@82.4]
  wire  i_partial_vld; // @[NV_soDLA_CACC_CALC_int8_gate.scala 106:35:@83.4]
  wire  i_final_vld; // @[NV_soDLA_CACC_CALC_int8_gate.scala 107:32:@84.4]
  reg  _T_103; // @[NV_soDLA_CACC_CALC_int8_gate.scala 109:36:@85.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_105; // @[Reg.scala 11:16:@88.4]
  reg [63:0] _RAND_4;
  reg  _T_108; // @[NV_soDLA_CACC_CALC_int8_gate.scala 111:34:@93.4]
  reg [31:0] _RAND_5;
  wire  _T_109; // @[NV_soDLA_CACC_CALC_int8_gate.scala 112:45:@96.4]
  reg  _T_112; // @[NV_soDLA_CACC_CALC_int8_gate.scala 112:32:@97.4]
  reg [31:0] _RAND_6;
  reg [31:0] _T_114; // @[Reg.scala 11:16:@100.4]
  reg [31:0] _RAND_7;
  assign _T_32 = io_nvdla_core_rstn == 1'h0; // @[NV_soDLA_CACC_CALC_int8_gate.scala 53:38:@8.4]
  assign _T_38 = $signed(io_in_data); // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:33:@15.6]
  assign _T_40 = io_in_op_valid ? io_in_op : 34'h0; // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:46:@16.6]
  assign _T_41 = $signed(_T_40); // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:89:@17.6]
  assign _GEN_5 = {{12{_T_38[21]}},_T_38}; // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:40:@18.6]
  assign _T_42 = $signed(_GEN_5) + $signed(_T_41); // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:40:@18.6]
  assign _T_43 = $unsigned(_T_42); // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:97:@19.6]
  assign _GEN_0 = io_in_valid ? io_in_sel : i_sat_sel; // @[NV_soDLA_CACC_CALC_int8_gate.scala 62:22:@13.4]
  assign i_sum_sign = i_sum_pd[34]; // @[NV_soDLA_CACC_CALC_int8_gate.scala 70:30:@22.4]
  assign i_sum_msb = i_sum_pd[33]; // @[NV_soDLA_CACC_CALC_int8_gate.scala 71:29:@23.4]
  assign _T_46 = i_sum_sign ^ i_sum_msb; // @[NV_soDLA_CACC_CALC_int8_gate.scala 75:20:@26.4]
  assign _T_47 = ~ i_sum_sign; // @[NV_soDLA_CACC_CALC_int8_gate.scala 76:32:@28.6]
  assign _T_51 = _T_47 ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12:@30.6]
  assign _T_52 = i_sum_pd[32:0]; // @[NV_soDLA_CACC_CALC_int8_gate.scala 79:31:@34.6]
  assign i_sat_bits = _T_46 ? _T_51 : _T_52; // @[NV_soDLA_CACC_CALC_int8_gate.scala 75:31:@27.4]
  assign i_sat_pd = {i_sum_sign,i_sat_bits}; // @[Cat.scala 30:58:@37.4]
  assign i_pre_sft_pd = i_sat_sel ? i_sat_pd : 34'h0; // @[NV_soDLA_CACC_CALC_int8_gate.scala 89:27:@41.4]
  assign _T_61 = {i_pre_sft_pd,16'h0}; // @[Cat.scala 30:58:@42.4]
  assign _T_62 = $signed(_T_61); // @[NV_soDLA_CACC_CALC_int8_gate.scala 90:66:@43.4]
  assign i_pre_sft_pd_pack = $signed(_T_62) >>> io_cfg_truncate; // @[NV_soDLA_CACC_CALC_int8_gate.scala 90:73:@44.4]
  assign _T_63 = $unsigned(i_pre_sft_pd_pack); // @[Cat.scala 30:58:@45.4]
  assign i_sft_pd = _T_63[49:16]; // @[NV_soDLA_CACC_CALC_int8_gate.scala 91:42:@46.4]
  assign i_guide = _T_63[15]; // @[NV_soDLA_CACC_CALC_int8_gate.scala 92:41:@48.4]
  assign i_stick = _T_63[14:0]; // @[NV_soDLA_CACC_CALC_int8_gate.scala 93:41:@50.4]
  assign _T_66 = i_sft_pd[32:31]; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:51:@51.4]
  assign _T_67 = ~ _T_66; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:60:@52.4]
  assign _T_69 = _T_67 == 2'h0; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:60:@53.4]
  assign _T_70 = ~ _T_69; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:41:@54.4]
  assign _T_71 = i_sum_sign & _T_70; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:38:@55.4]
  assign _T_75 = _T_66 != 2'h0; // @[NV_soDLA_CACC_CALC_int8_gate.scala 96:59:@58.4]
  assign _T_76 = _T_47 & _T_75; // @[NV_soDLA_CACC_CALC_int8_gate.scala 96:39:@59.4]
  assign _T_77 = _T_71 | _T_76; // @[NV_soDLA_CACC_CALC_int8_gate.scala 95:67:@60.4]
  assign _T_79 = i_sft_pd[30:0]; // @[NV_soDLA_CACC_CALC_int8_gate.scala 97:53:@62.4]
  assign _T_92 = i_sat_sel & i_guide; // @[NV_soDLA_CACC_CALC_int8_gate.scala 100:27:@72.4]
  assign _T_95 = i_stick != 15'h0; // @[NV_soDLA_CACC_CALC_int8_gate.scala 100:61:@74.4]
  assign _T_96 = _T_47 | _T_95; // @[NV_soDLA_CACC_CALC_int8_gate.scala 100:51:@75.4]
  assign i_point5 = _T_92 & _T_96; // @[NV_soDLA_CACC_CALC_int8_gate.scala 100:37:@76.4]
  assign _T_80 = {_T_79,i_point5}; // @[Cat.scala 30:58:@63.4]
  assign _T_81 = ~ _T_80; // @[NV_soDLA_CACC_CALC_int8_gate.scala 97:71:@64.4]
  assign _T_83 = _T_81 == 32'h0; // @[NV_soDLA_CACC_CALC_int8_gate.scala 97:71:@65.4]
  assign _T_84 = _T_47 & _T_83; // @[NV_soDLA_CACC_CALC_int8_gate.scala 97:39:@66.4]
  assign i_sft_need_sat = _T_77 | _T_84; // @[NV_soDLA_CACC_CALC_int8_gate.scala 96:65:@67.4]
  assign i_sft_max = i_sum_sign ? 32'h80000000 : 32'h7fffffff; // @[NV_soDLA_CACC_CALC_int8_gate.scala 98:24:@71.4]
  assign _T_98 = i_sft_pd[31:0]; // @[NV_soDLA_CACC_CALC_int8_gate.scala 101:28:@78.4]
  assign _GEN_6 = {{31'd0}, i_point5}; // @[NV_soDLA_CACC_CALC_int8_gate.scala 101:36:@79.4]
  assign _T_99 = _T_98 + _GEN_6; // @[NV_soDLA_CACC_CALC_int8_gate.scala 101:36:@79.4]
  assign i_pos_pd = _T_98 + _GEN_6; // @[NV_soDLA_CACC_CALC_int8_gate.scala 101:36:@80.4]
  assign i_final_result = i_sft_need_sat ? i_sft_max : i_pos_pd; // @[NV_soDLA_CACC_CALC_int8_gate.scala 104:29:@81.4]
  assign _T_100 = ~ i_sat_sel; // @[NV_soDLA_CACC_CALC_int8_gate.scala 106:37:@82.4]
  assign i_partial_vld = i_sat_vld & _T_100; // @[NV_soDLA_CACC_CALC_int8_gate.scala 106:35:@83.4]
  assign i_final_vld = i_sat_vld & i_sat_sel; // @[NV_soDLA_CACC_CALC_int8_gate.scala 107:32:@84.4]
  assign _T_109 = i_final_vld & i_sft_need_sat; // @[NV_soDLA_CACC_CALC_int8_gate.scala 112:45:@96.4]
  assign io_out_final_data = _T_114; // @[NV_soDLA_CACC_CALC_int8_gate.scala 113:23:@104.4]
  assign io_out_final_sat = _T_112; // @[NV_soDLA_CACC_CALC_int8_gate.scala 112:22:@99.4]
  assign io_out_final_valid = _T_108; // @[NV_soDLA_CACC_CALC_int8_gate.scala 111:24:@95.4]
  assign io_out_partial_data = _T_105; // @[NV_soDLA_CACC_CALC_int8_gate.scala 110:25:@92.4]
  assign io_out_partial_valid = _T_103; // @[NV_soDLA_CACC_CALC_int8_gate.scala 109:26:@87.4]
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
  i_sat_vld = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  i_sat_sel = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  i_sum_pd = _RAND_2[34:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_103 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_105 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_108 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_112 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_114 = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (_T_32) begin
      i_sat_vld <= 1'h0;
    end else begin
      i_sat_vld <= io_in_valid;
    end
    if (_T_32) begin
      i_sat_sel <= 1'h0;
    end else begin
      if (io_in_valid) begin
        i_sat_sel <= io_in_sel;
      end
    end
    if (io_in_valid) begin
      i_sum_pd <= _T_43;
    end
    if (_T_32) begin
      _T_103 <= 1'h0;
    end else begin
      _T_103 <= i_partial_vld;
    end
    if (i_partial_vld) begin
      _T_105 <= i_sat_pd;
    end
    if (_T_32) begin
      _T_108 <= 1'h0;
    end else begin
      _T_108 <= i_final_vld;
    end
    if (_T_32) begin
      _T_112 <= 1'h0;
    end else begin
      _T_112 <= _T_109;
    end
    if (i_final_vld) begin
      if (i_sft_need_sat) begin
        if (i_sum_sign) begin
          _T_114 <= 32'h80000000;
        end else begin
          _T_114 <= 32'h7fffffff;
        end
      end else begin
        _T_114 <= i_pos_pd;
      end
    end
  end
endmodule
module NV_soDLA_CACC_calculator_gate( // @[:@3299.2]
  input           clock, // @[:@3300.4]
  input           reset, // @[:@3301.4]
  input           io_nvdla_core_clk, // @[:@3302.4]
  input           io_nvdla_cell_clk, // @[:@3302.4]
  input           io_nvdla_core_rstn, // @[:@3302.4]
  input  [1087:0] io_abuf_rd_data, // @[:@3302.4]
  output          io_abuf_wr_addr_valid, // @[:@3302.4]
  output [5:0]    io_abuf_wr_addr_bits, // @[:@3302.4]
  output [1087:0] io_abuf_wr_data, // @[:@3302.4]
  output          io_dlv_valid, // @[:@3302.4]
  output          io_dlv_mask, // @[:@3302.4]
  output [1023:0] io_dlv_data, // @[:@3302.4]
  output [1:0]    io_dlv_pd, // @[:@3302.4]
  input           io_accu_ctrl_valid, // @[:@3302.4]
  input  [12:0]   io_accu_ctrl_pd, // @[:@3302.4]
  input           io_accu_ctrl_ram_valid, // @[:@3302.4]
  input  [4:0]    io_cfg_truncate, // @[:@3302.4]
  input  [21:0]   io_mac_a2accu_data_0, // @[:@3302.4]
  input  [21:0]   io_mac_a2accu_data_1, // @[:@3302.4]
  input  [21:0]   io_mac_a2accu_data_2, // @[:@3302.4]
  input  [21:0]   io_mac_a2accu_data_3, // @[:@3302.4]
  input  [21:0]   io_mac_a2accu_data_4, // @[:@3302.4]
  input  [21:0]   io_mac_a2accu_data_5, // @[:@3302.4]
  input  [21:0]   io_mac_a2accu_data_6, // @[:@3302.4]
  input  [21:0]   io_mac_a2accu_data_7, // @[:@3302.4]
  input  [21:0]   io_mac_a2accu_data_8, // @[:@3302.4]
  input  [21:0]   io_mac_a2accu_data_9, // @[:@3302.4]
  input  [21:0]   io_mac_a2accu_data_10, // @[:@3302.4]
  input  [21:0]   io_mac_a2accu_data_11, // @[:@3302.4]
  input  [21:0]   io_mac_a2accu_data_12, // @[:@3302.4]
  input  [21:0]   io_mac_a2accu_data_13, // @[:@3302.4]
  input  [21:0]   io_mac_a2accu_data_14, // @[:@3302.4]
  input  [21:0]   io_mac_a2accu_data_15, // @[:@3302.4]
  input  [15:0]   io_mac_a2accu_mask, // @[:@3302.4]
  input           io_mac_a2accu_pvld, // @[:@3302.4]
  input  [21:0]   io_mac_b2accu_data_0, // @[:@3302.4]
  input  [21:0]   io_mac_b2accu_data_1, // @[:@3302.4]
  input  [21:0]   io_mac_b2accu_data_2, // @[:@3302.4]
  input  [21:0]   io_mac_b2accu_data_3, // @[:@3302.4]
  input  [21:0]   io_mac_b2accu_data_4, // @[:@3302.4]
  input  [21:0]   io_mac_b2accu_data_5, // @[:@3302.4]
  input  [21:0]   io_mac_b2accu_data_6, // @[:@3302.4]
  input  [21:0]   io_mac_b2accu_data_7, // @[:@3302.4]
  input  [21:0]   io_mac_b2accu_data_8, // @[:@3302.4]
  input  [21:0]   io_mac_b2accu_data_9, // @[:@3302.4]
  input  [21:0]   io_mac_b2accu_data_10, // @[:@3302.4]
  input  [21:0]   io_mac_b2accu_data_11, // @[:@3302.4]
  input  [21:0]   io_mac_b2accu_data_12, // @[:@3302.4]
  input  [21:0]   io_mac_b2accu_data_13, // @[:@3302.4]
  input  [21:0]   io_mac_b2accu_data_14, // @[:@3302.4]
  input  [21:0]   io_mac_b2accu_data_15, // @[:@3302.4]
  input  [15:0]   io_mac_b2accu_mask, // @[:@3302.4]
  input           io_mac_b2accu_pvld, // @[:@3302.4]
  output [31:0]   io_dp2reg_sat_count // @[:@3302.4]
);
  wire  NV_soDLA_CACC_CALC_int8_gate_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_1_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_1_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_1_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_1_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_1_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_1_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_1_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_1_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_1_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_1_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_1_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_1_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_1_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_2_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_2_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_2_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_2_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_2_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_2_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_2_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_2_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_2_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_2_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_2_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_2_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_2_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_3_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_3_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_3_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_3_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_3_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_3_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_3_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_3_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_3_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_3_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_3_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_3_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_3_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_4_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_4_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_4_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_4_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_4_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_4_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_4_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_4_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_4_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_4_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_4_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_4_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_4_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_5_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_5_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_5_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_5_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_5_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_5_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_5_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_5_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_5_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_5_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_5_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_5_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_5_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_6_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_6_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_6_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_6_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_6_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_6_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_6_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_6_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_6_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_6_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_6_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_6_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_6_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_7_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_7_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_7_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_7_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_7_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_7_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_7_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_7_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_7_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_7_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_7_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_7_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_7_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_8_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_8_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_8_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_8_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_8_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_8_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_8_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_8_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_8_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_8_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_8_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_8_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_8_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_9_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_9_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_9_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_9_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_9_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_9_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_9_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_9_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_9_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_9_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_9_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_9_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_9_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_10_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_10_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_10_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_10_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_10_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_10_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_10_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_10_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_10_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_10_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_10_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_10_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_10_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_11_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_11_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_11_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_11_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_11_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_11_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_11_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_11_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_11_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_11_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_11_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_11_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_11_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_12_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_12_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_12_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_12_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_12_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_12_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_12_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_12_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_12_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_12_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_12_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_12_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_12_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_13_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_13_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_13_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_13_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_13_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_13_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_13_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_13_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_13_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_13_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_13_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_13_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_13_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_14_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_14_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_14_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_14_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_14_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_14_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_14_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_14_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_14_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_14_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_14_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_14_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_14_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_15_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_15_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_15_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_15_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_15_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_15_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_15_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_15_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_15_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_15_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_15_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_15_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_15_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_16_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_16_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_16_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_16_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_16_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_16_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_16_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_16_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_16_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_16_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_16_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_16_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_16_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_17_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_17_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_17_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_17_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_17_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_17_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_17_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_17_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_17_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_17_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_17_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_17_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_17_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_18_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_18_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_18_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_18_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_18_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_18_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_18_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_18_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_18_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_18_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_18_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_18_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_18_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_19_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_19_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_19_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_19_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_19_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_19_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_19_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_19_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_19_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_19_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_19_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_19_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_19_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_20_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_20_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_20_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_20_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_20_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_20_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_20_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_20_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_20_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_20_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_20_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_20_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_20_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_21_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_21_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_21_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_21_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_21_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_21_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_21_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_21_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_21_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_21_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_21_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_21_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_21_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_22_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_22_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_22_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_22_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_22_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_22_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_22_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_22_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_22_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_22_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_22_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_22_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_22_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_23_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_23_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_23_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_23_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_23_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_23_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_23_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_23_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_23_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_23_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_23_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_23_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_23_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_24_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_24_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_24_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_24_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_24_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_24_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_24_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_24_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_24_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_24_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_24_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_24_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_24_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_25_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_25_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_25_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_25_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_25_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_25_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_25_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_25_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_25_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_25_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_25_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_25_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_25_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_26_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_26_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_26_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_26_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_26_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_26_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_26_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_26_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_26_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_26_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_26_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_26_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_26_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_27_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_27_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_27_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_27_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_27_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_27_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_27_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_27_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_27_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_27_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_27_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_27_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_27_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_28_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_28_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_28_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_28_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_28_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_28_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_28_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_28_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_28_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_28_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_28_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_28_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_28_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_29_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_29_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_29_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_29_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_29_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_29_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_29_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_29_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_29_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_29_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_29_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_29_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_29_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_30_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_30_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_30_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_30_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_30_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_30_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_30_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_30_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_30_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_30_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_30_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_30_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_30_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_31_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_31_io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire [4:0] NV_soDLA_CACC_CALC_int8_gate_31_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire [21:0] NV_soDLA_CACC_CALC_int8_gate_31_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_31_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_31_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_31_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_31_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire [31:0] NV_soDLA_CACC_CALC_int8_gate_31_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_31_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_31_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire [33:0] NV_soDLA_CACC_CALC_int8_gate_31_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire  NV_soDLA_CACC_CALC_int8_gate_31_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
  wire  _T_130; // @[NV_soDLA_CACC_calculator_gate.scala 70:38:@3304.4]
  reg [12:0] accu_ctrl_pd_d1; // @[Reg.scala 19:20:@3370.4]
  reg [31:0] _RAND_0;
  wire [12:0] _GEN_0; // @[Reg.scala 20:19:@3371.4]
  reg  _T_204; // @[Reg.scala 11:16:@3375.4]
  reg [31:0] _RAND_1;
  reg  _T_206; // @[Reg.scala 11:16:@3379.4]
  reg [31:0] _RAND_2;
  reg  calc_valid; // @[Reg.scala 11:16:@3383.4]
  reg [31:0] _RAND_3;
  wire [5:0] calc_addr; // @[NV_soDLA_CACC_calculator_gate.scala 81:36:@3387.4]
  wire  calc_stripe_end; // @[NV_soDLA_CACC_calculator_gate.scala 83:42:@3389.4]
  wire  calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 84:43:@3390.4]
  wire  calc_layer_end; // @[NV_soDLA_CACC_calculator_gate.scala 85:41:@3391.4]
  wire  calc_in_mask_0; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3397.4]
  wire  calc_in_mask_16; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3399.4]
  wire  calc_in_mask_1; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3403.4]
  wire  calc_in_mask_17; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3405.4]
  wire  calc_in_mask_2; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3409.4]
  wire  calc_in_mask_18; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3411.4]
  wire  calc_in_mask_3; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3415.4]
  wire  calc_in_mask_19; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3417.4]
  wire  calc_in_mask_4; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3421.4]
  wire  calc_in_mask_20; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3423.4]
  wire  calc_in_mask_5; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3427.4]
  wire  calc_in_mask_21; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3429.4]
  wire  calc_in_mask_6; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3433.4]
  wire  calc_in_mask_22; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3435.4]
  wire  calc_in_mask_7; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3439.4]
  wire  calc_in_mask_23; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3441.4]
  wire  calc_in_mask_8; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3445.4]
  wire  calc_in_mask_24; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3447.4]
  wire  calc_in_mask_9; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3451.4]
  wire  calc_in_mask_25; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3453.4]
  wire  calc_in_mask_10; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3457.4]
  wire  calc_in_mask_26; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3459.4]
  wire  calc_in_mask_11; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3463.4]
  wire  calc_in_mask_27; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3465.4]
  wire  calc_in_mask_12; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3469.4]
  wire  calc_in_mask_28; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3471.4]
  wire  calc_in_mask_13; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3475.4]
  wire  calc_in_mask_29; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3477.4]
  wire  calc_in_mask_14; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3481.4]
  wire  calc_in_mask_30; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3483.4]
  wire  calc_in_mask_15; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3487.4]
  wire  calc_in_mask_31; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3489.4]
  wire  calc_dlv_valid; // @[NV_soDLA_CACC_calculator_gate.scala 99:37:@3589.4]
  wire  _T_420; // @[NV_soDLA_CACC_calculator_gate.scala 100:36:@3590.4]
  wire  calc_wr_en; // @[NV_soDLA_CACC_calculator_gate.scala 100:33:@3591.4]
  reg  _T_610; // @[NV_soDLA_CACC_calculator_gate.scala 134:72:@4110.4]
  reg [31:0] _RAND_4;
  reg  _T_617; // @[NV_soDLA_CACC_calculator_gate.scala 136:72:@4113.4]
  reg [31:0] _RAND_5;
  reg  calc_wr_en_out; // @[NV_soDLA_CACC_calculator_gate.scala 136:72:@4114.4]
  reg [31:0] _RAND_6;
  reg [5:0] _T_624; // @[NV_soDLA_CACC_calculator_gate.scala 138:71:@4116.4]
  reg [31:0] _RAND_7;
  reg [5:0] calc_addr_out; // @[NV_soDLA_CACC_calculator_gate.scala 138:71:@4117.4]
  reg [31:0] _RAND_8;
  wire [5:0] _GEN_4; // @[NV_soDLA_CACC_calculator_gate.scala 147:30:@4123.4]
  wire [5:0] _GEN_5; // @[NV_soDLA_CACC_calculator_gate.scala 147:30:@4128.4]
  reg  _T_631; // @[NV_soDLA_CACC_calculator_gate.scala 157:74:@4132.4]
  reg [31:0] _RAND_9;
  reg  calc_dlv_valid_out; // @[NV_soDLA_CACC_calculator_gate.scala 157:74:@4133.4]
  reg [31:0] _RAND_10;
  reg  _T_638; // @[NV_soDLA_CACC_calculator_gate.scala 159:75:@4135.4]
  reg [31:0] _RAND_11;
  reg  calc_stripe_end_out; // @[NV_soDLA_CACC_calculator_gate.scala 159:75:@4136.4]
  reg [31:0] _RAND_12;
  reg  _T_645; // @[NV_soDLA_CACC_calculator_gate.scala 161:74:@4138.4]
  reg [31:0] _RAND_13;
  reg  calc_layer_end_out; // @[NV_soDLA_CACC_calculator_gate.scala 161:74:@4139.4]
  reg [31:0] _RAND_14;
  wire  _GEN_6; // @[NV_soDLA_CACC_calculator_gate.scala 169:34:@4144.4]
  wire  _GEN_7; // @[NV_soDLA_CACC_calculator_gate.scala 169:34:@4144.4]
  wire  _GEN_8; // @[NV_soDLA_CACC_calculator_gate.scala 169:34:@4149.4]
  wire  _GEN_9; // @[NV_soDLA_CACC_calculator_gate.scala 169:34:@4149.4]
  wire  calc_pout_vld_0; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3705.4]
  wire [33:0] _T_688; // @[Bitwise.scala 72:12:@4155.4]
  wire [33:0] calc_pout_sum_0; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3704.4]
  wire [33:0] calc_pout_0; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4156.4]
  wire  calc_pout_vld_1; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3718.4]
  wire [33:0] _T_693; // @[Bitwise.scala 72:12:@4159.4]
  wire [33:0] calc_pout_sum_1; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3717.4]
  wire [33:0] calc_pout_1; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4160.4]
  wire  calc_pout_vld_2; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3731.4]
  wire [33:0] _T_698; // @[Bitwise.scala 72:12:@4163.4]
  wire [33:0] calc_pout_sum_2; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3730.4]
  wire [33:0] calc_pout_2; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4164.4]
  wire  calc_pout_vld_3; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3744.4]
  wire [33:0] _T_703; // @[Bitwise.scala 72:12:@4167.4]
  wire [33:0] calc_pout_sum_3; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3743.4]
  wire [33:0] calc_pout_3; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4168.4]
  wire  calc_pout_vld_4; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3757.4]
  wire [33:0] _T_708; // @[Bitwise.scala 72:12:@4171.4]
  wire [33:0] calc_pout_sum_4; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3756.4]
  wire [33:0] calc_pout_4; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4172.4]
  wire  calc_pout_vld_5; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3770.4]
  wire [33:0] _T_713; // @[Bitwise.scala 72:12:@4175.4]
  wire [33:0] calc_pout_sum_5; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3769.4]
  wire [33:0] calc_pout_5; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4176.4]
  wire  calc_pout_vld_6; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3783.4]
  wire [33:0] _T_718; // @[Bitwise.scala 72:12:@4179.4]
  wire [33:0] calc_pout_sum_6; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3782.4]
  wire [33:0] calc_pout_6; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4180.4]
  wire  calc_pout_vld_7; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3796.4]
  wire [33:0] _T_723; // @[Bitwise.scala 72:12:@4183.4]
  wire [33:0] calc_pout_sum_7; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3795.4]
  wire [33:0] calc_pout_7; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4184.4]
  wire  calc_pout_vld_8; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3809.4]
  wire [33:0] _T_728; // @[Bitwise.scala 72:12:@4187.4]
  wire [33:0] calc_pout_sum_8; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3808.4]
  wire [33:0] calc_pout_8; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4188.4]
  wire  calc_pout_vld_9; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3822.4]
  wire [33:0] _T_733; // @[Bitwise.scala 72:12:@4191.4]
  wire [33:0] calc_pout_sum_9; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3821.4]
  wire [33:0] calc_pout_9; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4192.4]
  wire  calc_pout_vld_10; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3835.4]
  wire [33:0] _T_738; // @[Bitwise.scala 72:12:@4195.4]
  wire [33:0] calc_pout_sum_10; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3834.4]
  wire [33:0] calc_pout_10; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4196.4]
  wire  calc_pout_vld_11; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3848.4]
  wire [33:0] _T_743; // @[Bitwise.scala 72:12:@4199.4]
  wire [33:0] calc_pout_sum_11; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3847.4]
  wire [33:0] calc_pout_11; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4200.4]
  wire  calc_pout_vld_12; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3861.4]
  wire [33:0] _T_748; // @[Bitwise.scala 72:12:@4203.4]
  wire [33:0] calc_pout_sum_12; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3860.4]
  wire [33:0] calc_pout_12; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4204.4]
  wire  calc_pout_vld_13; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3874.4]
  wire [33:0] _T_753; // @[Bitwise.scala 72:12:@4207.4]
  wire [33:0] calc_pout_sum_13; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3873.4]
  wire [33:0] calc_pout_13; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4208.4]
  wire  calc_pout_vld_14; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3887.4]
  wire [33:0] _T_758; // @[Bitwise.scala 72:12:@4211.4]
  wire [33:0] calc_pout_sum_14; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3886.4]
  wire [33:0] calc_pout_14; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4212.4]
  wire  calc_pout_vld_15; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3900.4]
  wire [33:0] _T_763; // @[Bitwise.scala 72:12:@4215.4]
  wire [33:0] calc_pout_sum_15; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3899.4]
  wire [33:0] calc_pout_15; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4216.4]
  wire  calc_pout_vld_16; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3913.4]
  wire [33:0] _T_768; // @[Bitwise.scala 72:12:@4219.4]
  wire [33:0] calc_pout_sum_16; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3912.4]
  wire [33:0] calc_pout_16; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4220.4]
  wire  calc_pout_vld_17; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3926.4]
  wire [33:0] _T_773; // @[Bitwise.scala 72:12:@4223.4]
  wire [33:0] calc_pout_sum_17; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3925.4]
  wire [33:0] calc_pout_17; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4224.4]
  wire  calc_pout_vld_18; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3939.4]
  wire [33:0] _T_778; // @[Bitwise.scala 72:12:@4227.4]
  wire [33:0] calc_pout_sum_18; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3938.4]
  wire [33:0] calc_pout_18; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4228.4]
  wire  calc_pout_vld_19; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3952.4]
  wire [33:0] _T_783; // @[Bitwise.scala 72:12:@4231.4]
  wire [33:0] calc_pout_sum_19; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3951.4]
  wire [33:0] calc_pout_19; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4232.4]
  wire  calc_pout_vld_20; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3965.4]
  wire [33:0] _T_788; // @[Bitwise.scala 72:12:@4235.4]
  wire [33:0] calc_pout_sum_20; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3964.4]
  wire [33:0] calc_pout_20; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4236.4]
  wire  calc_pout_vld_21; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3978.4]
  wire [33:0] _T_793; // @[Bitwise.scala 72:12:@4239.4]
  wire [33:0] calc_pout_sum_21; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3977.4]
  wire [33:0] calc_pout_21; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4240.4]
  wire  calc_pout_vld_22; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3991.4]
  wire [33:0] _T_798; // @[Bitwise.scala 72:12:@4243.4]
  wire [33:0] calc_pout_sum_22; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3990.4]
  wire [33:0] calc_pout_22; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4244.4]
  wire  calc_pout_vld_23; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4004.4]
  wire [33:0] _T_803; // @[Bitwise.scala 72:12:@4247.4]
  wire [33:0] calc_pout_sum_23; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4003.4]
  wire [33:0] calc_pout_23; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4248.4]
  wire  calc_pout_vld_24; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4017.4]
  wire [33:0] _T_808; // @[Bitwise.scala 72:12:@4251.4]
  wire [33:0] calc_pout_sum_24; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4016.4]
  wire [33:0] calc_pout_24; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4252.4]
  wire  calc_pout_vld_25; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4030.4]
  wire [33:0] _T_813; // @[Bitwise.scala 72:12:@4255.4]
  wire [33:0] calc_pout_sum_25; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4029.4]
  wire [33:0] calc_pout_25; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4256.4]
  wire  calc_pout_vld_26; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4043.4]
  wire [33:0] _T_818; // @[Bitwise.scala 72:12:@4259.4]
  wire [33:0] calc_pout_sum_26; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4042.4]
  wire [33:0] calc_pout_26; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4260.4]
  wire  calc_pout_vld_27; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4056.4]
  wire [33:0] _T_823; // @[Bitwise.scala 72:12:@4263.4]
  wire [33:0] calc_pout_sum_27; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4055.4]
  wire [33:0] calc_pout_27; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4264.4]
  wire  calc_pout_vld_28; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4069.4]
  wire [33:0] _T_828; // @[Bitwise.scala 72:12:@4267.4]
  wire [33:0] calc_pout_sum_28; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4068.4]
  wire [33:0] calc_pout_28; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4268.4]
  wire  calc_pout_vld_29; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4082.4]
  wire [33:0] _T_833; // @[Bitwise.scala 72:12:@4271.4]
  wire [33:0] calc_pout_sum_29; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4081.4]
  wire [33:0] calc_pout_29; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4272.4]
  wire  calc_pout_vld_30; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4095.4]
  wire [33:0] _T_838; // @[Bitwise.scala 72:12:@4275.4]
  wire [33:0] calc_pout_sum_30; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4094.4]
  wire [33:0] calc_pout_30; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4276.4]
  wire  calc_pout_vld_31; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4108.4]
  wire [33:0] _T_843; // @[Bitwise.scala 72:12:@4279.4]
  wire [33:0] calc_pout_sum_31; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4107.4]
  wire [33:0] calc_pout_31; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4280.4]
  wire  calc_fout_vld_0; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3703.4]
  wire [31:0] _T_885; // @[Bitwise.scala 72:12:@4284.4]
  wire [31:0] calc_fout_sum_0; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3701.4]
  wire [31:0] calc_fout_0; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4285.4]
  wire  calc_fout_vld_1; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3716.4]
  wire [31:0] _T_890; // @[Bitwise.scala 72:12:@4288.4]
  wire [31:0] calc_fout_sum_1; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3714.4]
  wire [31:0] calc_fout_1; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4289.4]
  wire  calc_fout_vld_2; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3729.4]
  wire [31:0] _T_895; // @[Bitwise.scala 72:12:@4292.4]
  wire [31:0] calc_fout_sum_2; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3727.4]
  wire [31:0] calc_fout_2; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4293.4]
  wire  calc_fout_vld_3; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3742.4]
  wire [31:0] _T_900; // @[Bitwise.scala 72:12:@4296.4]
  wire [31:0] calc_fout_sum_3; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3740.4]
  wire [31:0] calc_fout_3; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4297.4]
  wire  calc_fout_vld_4; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3755.4]
  wire [31:0] _T_905; // @[Bitwise.scala 72:12:@4300.4]
  wire [31:0] calc_fout_sum_4; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3753.4]
  wire [31:0] calc_fout_4; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4301.4]
  wire  calc_fout_vld_5; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3768.4]
  wire [31:0] _T_910; // @[Bitwise.scala 72:12:@4304.4]
  wire [31:0] calc_fout_sum_5; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3766.4]
  wire [31:0] calc_fout_5; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4305.4]
  wire  calc_fout_vld_6; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3781.4]
  wire [31:0] _T_915; // @[Bitwise.scala 72:12:@4308.4]
  wire [31:0] calc_fout_sum_6; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3779.4]
  wire [31:0] calc_fout_6; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4309.4]
  wire  calc_fout_vld_7; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3794.4]
  wire [31:0] _T_920; // @[Bitwise.scala 72:12:@4312.4]
  wire [31:0] calc_fout_sum_7; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3792.4]
  wire [31:0] calc_fout_7; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4313.4]
  wire  calc_fout_vld_8; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3807.4]
  wire [31:0] _T_925; // @[Bitwise.scala 72:12:@4316.4]
  wire [31:0] calc_fout_sum_8; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3805.4]
  wire [31:0] calc_fout_8; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4317.4]
  wire  calc_fout_vld_9; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3820.4]
  wire [31:0] _T_930; // @[Bitwise.scala 72:12:@4320.4]
  wire [31:0] calc_fout_sum_9; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3818.4]
  wire [31:0] calc_fout_9; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4321.4]
  wire  calc_fout_vld_10; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3833.4]
  wire [31:0] _T_935; // @[Bitwise.scala 72:12:@4324.4]
  wire [31:0] calc_fout_sum_10; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3831.4]
  wire [31:0] calc_fout_10; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4325.4]
  wire  calc_fout_vld_11; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3846.4]
  wire [31:0] _T_940; // @[Bitwise.scala 72:12:@4328.4]
  wire [31:0] calc_fout_sum_11; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3844.4]
  wire [31:0] calc_fout_11; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4329.4]
  wire  calc_fout_vld_12; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3859.4]
  wire [31:0] _T_945; // @[Bitwise.scala 72:12:@4332.4]
  wire [31:0] calc_fout_sum_12; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3857.4]
  wire [31:0] calc_fout_12; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4333.4]
  wire  calc_fout_vld_13; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3872.4]
  wire [31:0] _T_950; // @[Bitwise.scala 72:12:@4336.4]
  wire [31:0] calc_fout_sum_13; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3870.4]
  wire [31:0] calc_fout_13; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4337.4]
  wire  calc_fout_vld_14; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3885.4]
  wire [31:0] _T_955; // @[Bitwise.scala 72:12:@4340.4]
  wire [31:0] calc_fout_sum_14; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3883.4]
  wire [31:0] calc_fout_14; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4341.4]
  wire  calc_fout_vld_15; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3898.4]
  wire [31:0] _T_960; // @[Bitwise.scala 72:12:@4344.4]
  wire [31:0] calc_fout_sum_15; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3896.4]
  wire [31:0] calc_fout_15; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4345.4]
  wire  calc_fout_vld_16; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3911.4]
  wire [31:0] _T_965; // @[Bitwise.scala 72:12:@4348.4]
  wire [31:0] calc_fout_sum_16; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3909.4]
  wire [31:0] calc_fout_16; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4349.4]
  wire  calc_fout_vld_17; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3924.4]
  wire [31:0] _T_970; // @[Bitwise.scala 72:12:@4352.4]
  wire [31:0] calc_fout_sum_17; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3922.4]
  wire [31:0] calc_fout_17; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4353.4]
  wire  calc_fout_vld_18; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3937.4]
  wire [31:0] _T_975; // @[Bitwise.scala 72:12:@4356.4]
  wire [31:0] calc_fout_sum_18; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3935.4]
  wire [31:0] calc_fout_18; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4357.4]
  wire  calc_fout_vld_19; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3950.4]
  wire [31:0] _T_980; // @[Bitwise.scala 72:12:@4360.4]
  wire [31:0] calc_fout_sum_19; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3948.4]
  wire [31:0] calc_fout_19; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4361.4]
  wire  calc_fout_vld_20; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3963.4]
  wire [31:0] _T_985; // @[Bitwise.scala 72:12:@4364.4]
  wire [31:0] calc_fout_sum_20; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3961.4]
  wire [31:0] calc_fout_20; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4365.4]
  wire  calc_fout_vld_21; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3976.4]
  wire [31:0] _T_990; // @[Bitwise.scala 72:12:@4368.4]
  wire [31:0] calc_fout_sum_21; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3974.4]
  wire [31:0] calc_fout_21; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4369.4]
  wire  calc_fout_vld_22; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3989.4]
  wire [31:0] _T_995; // @[Bitwise.scala 72:12:@4372.4]
  wire [31:0] calc_fout_sum_22; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3987.4]
  wire [31:0] calc_fout_22; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4373.4]
  wire  calc_fout_vld_23; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4002.4]
  wire [31:0] _T_1000; // @[Bitwise.scala 72:12:@4376.4]
  wire [31:0] calc_fout_sum_23; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4000.4]
  wire [31:0] calc_fout_23; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4377.4]
  wire  calc_fout_vld_24; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4015.4]
  wire [31:0] _T_1005; // @[Bitwise.scala 72:12:@4380.4]
  wire [31:0] calc_fout_sum_24; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4013.4]
  wire [31:0] calc_fout_24; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4381.4]
  wire  calc_fout_vld_25; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4028.4]
  wire [31:0] _T_1010; // @[Bitwise.scala 72:12:@4384.4]
  wire [31:0] calc_fout_sum_25; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4026.4]
  wire [31:0] calc_fout_25; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4385.4]
  wire  calc_fout_vld_26; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4041.4]
  wire [31:0] _T_1015; // @[Bitwise.scala 72:12:@4388.4]
  wire [31:0] calc_fout_sum_26; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4039.4]
  wire [31:0] calc_fout_26; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4389.4]
  wire  calc_fout_vld_27; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4054.4]
  wire [31:0] _T_1020; // @[Bitwise.scala 72:12:@4392.4]
  wire [31:0] calc_fout_sum_27; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4052.4]
  wire [31:0] calc_fout_27; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4393.4]
  wire  calc_fout_vld_28; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4067.4]
  wire [31:0] _T_1025; // @[Bitwise.scala 72:12:@4396.4]
  wire [31:0] calc_fout_sum_28; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4065.4]
  wire [31:0] calc_fout_28; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4397.4]
  wire  calc_fout_vld_29; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4080.4]
  wire [31:0] _T_1030; // @[Bitwise.scala 72:12:@4400.4]
  wire [31:0] calc_fout_sum_29; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4078.4]
  wire [31:0] calc_fout_29; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4401.4]
  wire  calc_fout_vld_30; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4093.4]
  wire [31:0] _T_1035; // @[Bitwise.scala 72:12:@4404.4]
  wire [31:0] calc_fout_sum_30; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4091.4]
  wire [31:0] calc_fout_30; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4405.4]
  wire  calc_fout_vld_31; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4106.4]
  wire [31:0] _T_1040; // @[Bitwise.scala 72:12:@4408.4]
  wire [31:0] calc_fout_sum_31; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4104.4]
  wire [31:0] calc_fout_31; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4409.4]
  reg  _T_1044; // @[NV_soDLA_CACC_calculator_gate.scala 191:37:@4411.4]
  reg [31:0] _RAND_15;
  reg [5:0] _T_1047; // @[Reg.scala 19:20:@4414.4]
  reg [31:0] _RAND_16;
  wire [5:0] _GEN_10; // @[Reg.scala 20:19:@4415.4]
  wire [271:0] _T_1054; // @[NV_soDLA_CACC_calculator_gate.scala 193:44:@4425.4]
  wire [543:0] _T_1062; // @[NV_soDLA_CACC_calculator_gate.scala 193:44:@4433.4]
  wire [271:0] _T_1069; // @[NV_soDLA_CACC_calculator_gate.scala 193:44:@4440.4]
  wire [1087:0] _T_1078; // @[NV_soDLA_CACC_calculator_gate.scala 193:44:@4449.4]
  reg [1087:0] _T_1080; // @[Reg.scala 11:16:@4450.4]
  reg [1087:0] _RAND_17;
  wire [255:0] _T_1087; // @[NV_soDLA_CACC_calculator_gate.scala 196:40:@4461.4]
  wire [511:0] _T_1095; // @[NV_soDLA_CACC_calculator_gate.scala 196:40:@4469.4]
  wire [255:0] _T_1102; // @[NV_soDLA_CACC_calculator_gate.scala 196:40:@4476.4]
  wire [1023:0] _T_1111; // @[NV_soDLA_CACC_calculator_gate.scala 196:40:@4485.4]
  reg [1023:0] _T_1113; // @[Reg.scala 11:16:@4486.4]
  reg [1023:0] _RAND_18;
  reg  _T_1116; // @[NV_soDLA_CACC_calculator_gate.scala 197:28:@4491.4]
  reg [31:0] _RAND_19;
  reg  _T_1119; // @[NV_soDLA_CACC_calculator_gate.scala 198:27:@4494.4]
  reg [31:0] _RAND_20;
  reg  dlv_stripe_end; // @[Reg.scala 19:20:@4497.4]
  reg [31:0] _RAND_21;
  wire  _GEN_13; // @[Reg.scala 20:19:@4498.4]
  reg  dlv_layer_end; // @[Reg.scala 19:20:@4501.4]
  reg [31:0] _RAND_22;
  wire  _GEN_14; // @[Reg.scala 20:19:@4502.4]
  reg  dlv_sat_vld_d1; // @[NV_soDLA_CACC_calculator_gate.scala 204:33:@4507.4]
  reg [31:0] _RAND_23;
  reg  dlv_sat_end_d1; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4508.4]
  reg [31:0] _RAND_24;
  reg  dlv_sat_bit_d1_0; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_25;
  reg  dlv_sat_bit_d1_1; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_26;
  reg  dlv_sat_bit_d1_2; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_27;
  reg  dlv_sat_bit_d1_3; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_28;
  reg  dlv_sat_bit_d1_4; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_29;
  reg  dlv_sat_bit_d1_5; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_30;
  reg  dlv_sat_bit_d1_6; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_31;
  reg  dlv_sat_bit_d1_7; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_32;
  reg  dlv_sat_bit_d1_8; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_33;
  reg  dlv_sat_bit_d1_9; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_34;
  reg  dlv_sat_bit_d1_10; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_35;
  reg  dlv_sat_bit_d1_11; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_36;
  reg  dlv_sat_bit_d1_12; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_37;
  reg  dlv_sat_bit_d1_13; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_38;
  reg  dlv_sat_bit_d1_14; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_39;
  reg  dlv_sat_bit_d1_15; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_40;
  reg  dlv_sat_bit_d1_16; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_41;
  reg  dlv_sat_bit_d1_17; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_42;
  reg  dlv_sat_bit_d1_18; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_43;
  reg  dlv_sat_bit_d1_19; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_44;
  reg  dlv_sat_bit_d1_20; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_45;
  reg  dlv_sat_bit_d1_21; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_46;
  reg  dlv_sat_bit_d1_22; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_47;
  reg  dlv_sat_bit_d1_23; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_48;
  reg  dlv_sat_bit_d1_24; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_49;
  reg  dlv_sat_bit_d1_25; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_50;
  reg  dlv_sat_bit_d1_26; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_51;
  reg  dlv_sat_bit_d1_27; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_52;
  reg  dlv_sat_bit_d1_28; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_53;
  reg  dlv_sat_bit_d1_29; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_54;
  reg  dlv_sat_bit_d1_30; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_55;
  reg  dlv_sat_bit_d1_31; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4542.4]
  reg [31:0] _RAND_56;
  reg  dlv_sat_clr_d1; // @[NV_soDLA_CACC_calculator_gate.scala 207:33:@4543.4]
  reg [31:0] _RAND_57;
  wire  dlv_sat_end; // @[NV_soDLA_CACC_calculator_gate.scala 210:42:@4544.4]
  wire  _T_1369; // @[NV_soDLA_CACC_calculator_gate.scala 211:44:@4545.4]
  wire  _T_1370; // @[NV_soDLA_CACC_calculator_gate.scala 211:42:@4546.4]
  wire  dlv_sat_clr; // @[NV_soDLA_CACC_calculator_gate.scala 211:57:@4547.4]
  wire  _GEN_15; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_0; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3702.4]
  wire  _GEN_16; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_1; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3715.4]
  wire  _GEN_17; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_2; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3728.4]
  wire  _GEN_18; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_3; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3741.4]
  wire  _GEN_19; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_4; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3754.4]
  wire  _GEN_20; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_5; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3767.4]
  wire  _GEN_21; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_6; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3780.4]
  wire  _GEN_22; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_7; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3793.4]
  wire  _GEN_23; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_8; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3806.4]
  wire  _GEN_24; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_9; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3819.4]
  wire  _GEN_25; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_10; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3832.4]
  wire  _GEN_26; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_11; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3845.4]
  wire  _GEN_27; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_12; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3858.4]
  wire  _GEN_28; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_13; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3871.4]
  wire  _GEN_29; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_14; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3884.4]
  wire  _GEN_30; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_15; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3897.4]
  wire  _GEN_31; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_16; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3910.4]
  wire  _GEN_32; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_17; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3923.4]
  wire  _GEN_33; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_18; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3936.4]
  wire  _GEN_34; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_19; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3949.4]
  wire  _GEN_35; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_20; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3962.4]
  wire  _GEN_36; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_21; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3975.4]
  wire  _GEN_37; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_22; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3988.4]
  wire  _GEN_38; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_23; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4001.4]
  wire  _GEN_39; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_24; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4014.4]
  wire  _GEN_40; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_25; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4027.4]
  wire  _GEN_41; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_26; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4040.4]
  wire  _GEN_42; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_27; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4053.4]
  wire  _GEN_43; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_28; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4066.4]
  wire  _GEN_44; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_29; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4079.4]
  wire  _GEN_45; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_30; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4092.4]
  wire  _GEN_46; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire  calc_fout_sat_31; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4105.4]
  wire  _GEN_47; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  wire [1:0] _T_1409; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4618.4]
  wire [1:0] _GEN_49; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4619.4]
  wire [2:0] _T_1410; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4619.4]
  wire [2:0] _GEN_50; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4620.4]
  wire [3:0] _T_1411; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4620.4]
  wire [3:0] _GEN_51; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4621.4]
  wire [4:0] _T_1412; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4621.4]
  wire [4:0] _GEN_52; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4622.4]
  wire [5:0] _T_1413; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4622.4]
  wire [5:0] _GEN_53; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4623.4]
  wire [6:0] _T_1414; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4623.4]
  wire [6:0] _GEN_54; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4624.4]
  wire [7:0] _T_1415; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4624.4]
  wire [7:0] _GEN_55; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4625.4]
  wire [8:0] _T_1416; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4625.4]
  wire [8:0] _GEN_56; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4626.4]
  wire [9:0] _T_1417; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4626.4]
  wire [9:0] _GEN_57; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4627.4]
  wire [10:0] _T_1418; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4627.4]
  wire [10:0] _GEN_58; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4628.4]
  wire [11:0] _T_1419; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4628.4]
  wire [11:0] _GEN_59; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4629.4]
  wire [12:0] _T_1420; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4629.4]
  wire [12:0] _GEN_60; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4630.4]
  wire [13:0] _T_1421; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4630.4]
  wire [13:0] _GEN_61; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4631.4]
  wire [14:0] _T_1422; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4631.4]
  wire [14:0] _GEN_62; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4632.4]
  wire [15:0] _T_1423; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4632.4]
  wire [15:0] _GEN_63; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4633.4]
  wire [16:0] _T_1424; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4633.4]
  wire [16:0] _GEN_64; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4634.4]
  wire [17:0] _T_1425; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4634.4]
  wire [17:0] _GEN_65; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4635.4]
  wire [18:0] _T_1426; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4635.4]
  wire [18:0] _GEN_66; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4636.4]
  wire [19:0] _T_1427; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4636.4]
  wire [19:0] _GEN_67; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4637.4]
  wire [20:0] _T_1428; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4637.4]
  wire [20:0] _GEN_68; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4638.4]
  wire [21:0] _T_1429; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4638.4]
  wire [21:0] _GEN_69; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4639.4]
  wire [22:0] _T_1430; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4639.4]
  wire [22:0] _GEN_70; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4640.4]
  wire [23:0] _T_1431; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4640.4]
  wire [23:0] _GEN_71; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4641.4]
  wire [24:0] _T_1432; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4641.4]
  wire [24:0] _GEN_72; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4642.4]
  wire [25:0] _T_1433; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4642.4]
  wire [25:0] _GEN_73; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4643.4]
  wire [26:0] _T_1434; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4643.4]
  wire [26:0] _GEN_74; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4644.4]
  wire [27:0] _T_1435; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4644.4]
  wire [27:0] _GEN_75; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4645.4]
  wire [28:0] _T_1436; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4645.4]
  wire [28:0] _GEN_76; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4646.4]
  wire [29:0] _T_1437; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4646.4]
  wire [29:0] _GEN_77; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4647.4]
  wire [30:0] _T_1438; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4647.4]
  wire [30:0] _GEN_78; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4648.4]
  wire [31:0] sat_sum; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4648.4]
  reg [31:0] sat_count; // @[NV_soDLA_CACC_calculator_gate.scala 221:28:@4649.4]
  reg [31:0] _RAND_58;
  wire [32:0] _T_1441; // @[NV_soDLA_CACC_calculator_gate.scala 222:36:@4650.4]
  wire [31:0] sat_count_inc; // @[NV_soDLA_CACC_calculator_gate.scala 222:47:@4651.4]
  wire  sat_carry; // @[NV_soDLA_CACC_calculator_gate.scala 223:43:@4653.4]
  wire [31:0] _T_1448; // @[NV_soDLA_CACC_calculator_gate.scala 225:26:@4655.4]
  wire [31:0] sat_count_w; // @[NV_soDLA_CACC_calculator_gate.scala 224:26:@4656.4]
  wire  _T_1450; // @[NV_soDLA_CACC_calculator_gate.scala 226:49:@4657.4]
  wire  _T_1451; // @[NV_soDLA_CACC_calculator_gate.scala 226:54:@4658.4]
  wire  sat_reg_en; // @[NV_soDLA_CACC_calculator_gate.scala 226:37:@4659.4]
  wire [31:0] _GEN_48; // @[NV_soDLA_CACC_calculator_gate.scala 227:21:@4660.4]
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3597.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_1 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3600.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_1_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_1_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_1_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_1_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_1_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_1_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_1_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_1_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_1_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_1_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_1_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_1_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_1_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_2 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3603.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_2_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_2_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_2_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_2_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_2_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_2_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_2_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_2_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_2_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_2_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_2_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_2_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_2_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_3 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3606.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_3_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_3_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_3_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_3_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_3_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_3_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_3_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_3_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_3_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_3_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_3_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_3_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_3_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_4 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3609.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_4_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_4_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_4_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_4_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_4_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_4_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_4_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_4_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_4_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_4_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_4_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_4_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_4_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_5 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3612.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_5_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_5_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_5_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_5_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_5_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_5_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_5_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_5_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_5_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_5_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_5_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_5_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_5_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_6 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3615.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_6_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_6_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_6_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_6_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_6_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_6_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_6_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_6_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_6_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_6_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_6_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_6_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_6_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_7 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3618.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_7_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_7_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_7_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_7_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_7_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_7_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_7_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_7_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_7_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_7_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_7_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_7_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_7_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_8 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3621.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_8_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_8_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_8_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_8_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_8_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_8_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_8_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_8_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_8_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_8_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_8_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_8_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_8_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_9 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3624.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_9_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_9_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_9_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_9_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_9_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_9_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_9_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_9_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_9_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_9_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_9_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_9_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_9_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_10 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3627.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_10_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_10_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_10_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_10_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_10_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_10_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_10_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_10_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_10_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_10_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_10_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_10_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_10_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_11 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3630.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_11_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_11_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_11_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_11_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_11_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_11_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_11_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_11_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_11_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_11_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_11_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_11_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_11_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_12 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3633.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_12_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_12_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_12_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_12_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_12_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_12_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_12_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_12_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_12_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_12_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_12_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_12_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_12_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_13 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3636.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_13_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_13_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_13_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_13_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_13_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_13_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_13_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_13_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_13_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_13_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_13_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_13_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_13_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_14 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3639.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_14_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_14_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_14_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_14_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_14_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_14_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_14_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_14_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_14_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_14_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_14_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_14_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_14_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_15 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3642.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_15_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_15_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_15_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_15_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_15_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_15_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_15_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_15_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_15_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_15_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_15_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_15_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_15_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_16 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3645.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_16_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_16_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_16_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_16_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_16_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_16_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_16_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_16_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_16_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_16_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_16_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_16_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_16_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_17 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3648.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_17_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_17_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_17_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_17_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_17_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_17_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_17_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_17_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_17_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_17_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_17_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_17_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_17_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_18 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3651.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_18_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_18_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_18_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_18_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_18_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_18_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_18_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_18_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_18_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_18_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_18_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_18_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_18_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_19 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3654.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_19_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_19_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_19_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_19_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_19_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_19_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_19_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_19_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_19_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_19_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_19_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_19_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_19_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_20 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3657.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_20_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_20_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_20_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_20_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_20_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_20_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_20_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_20_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_20_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_20_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_20_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_20_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_20_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_21 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3660.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_21_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_21_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_21_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_21_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_21_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_21_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_21_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_21_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_21_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_21_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_21_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_21_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_21_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_22 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3663.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_22_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_22_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_22_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_22_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_22_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_22_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_22_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_22_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_22_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_22_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_22_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_22_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_22_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_23 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3666.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_23_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_23_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_23_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_23_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_23_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_23_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_23_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_23_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_23_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_23_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_23_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_23_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_23_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_24 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3669.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_24_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_24_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_24_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_24_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_24_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_24_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_24_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_24_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_24_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_24_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_24_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_24_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_24_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_25 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3672.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_25_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_25_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_25_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_25_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_25_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_25_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_25_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_25_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_25_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_25_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_25_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_25_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_25_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_26 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3675.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_26_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_26_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_26_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_26_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_26_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_26_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_26_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_26_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_26_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_26_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_26_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_26_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_26_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_27 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3678.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_27_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_27_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_27_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_27_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_27_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_27_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_27_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_27_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_27_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_27_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_27_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_27_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_27_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_28 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3681.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_28_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_28_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_28_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_28_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_28_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_28_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_28_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_28_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_28_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_28_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_28_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_28_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_28_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_29 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3684.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_29_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_29_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_29_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_29_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_29_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_29_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_29_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_29_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_29_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_29_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_29_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_29_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_29_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_30 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3687.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_30_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_30_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_30_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_30_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_30_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_30_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_30_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_30_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_30_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_30_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_30_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_30_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_30_io_out_partial_valid)
  );
  NV_soDLA_CACC_CALC_int8_gate NV_soDLA_CACC_CALC_int8_gate_31 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3690.4]
    .io_nvdla_core_clk(NV_soDLA_CACC_CALC_int8_gate_31_io_nvdla_core_clk),
    .io_nvdla_core_rstn(NV_soDLA_CACC_CALC_int8_gate_31_io_nvdla_core_rstn),
    .io_cfg_truncate(NV_soDLA_CACC_CALC_int8_gate_31_io_cfg_truncate),
    .io_in_data(NV_soDLA_CACC_CALC_int8_gate_31_io_in_data),
    .io_in_op(NV_soDLA_CACC_CALC_int8_gate_31_io_in_op),
    .io_in_op_valid(NV_soDLA_CACC_CALC_int8_gate_31_io_in_op_valid),
    .io_in_sel(NV_soDLA_CACC_CALC_int8_gate_31_io_in_sel),
    .io_in_valid(NV_soDLA_CACC_CALC_int8_gate_31_io_in_valid),
    .io_out_final_data(NV_soDLA_CACC_CALC_int8_gate_31_io_out_final_data),
    .io_out_final_sat(NV_soDLA_CACC_CALC_int8_gate_31_io_out_final_sat),
    .io_out_final_valid(NV_soDLA_CACC_CALC_int8_gate_31_io_out_final_valid),
    .io_out_partial_data(NV_soDLA_CACC_CALC_int8_gate_31_io_out_partial_data),
    .io_out_partial_valid(NV_soDLA_CACC_CALC_int8_gate_31_io_out_partial_valid)
  );
  assign _T_130 = io_nvdla_core_rstn == 1'h0; // @[NV_soDLA_CACC_calculator_gate.scala 70:38:@3304.4]
  assign _GEN_0 = io_accu_ctrl_valid ? io_accu_ctrl_pd : accu_ctrl_pd_d1; // @[Reg.scala 20:19:@3371.4]
  assign calc_addr = accu_ctrl_pd_d1[5:0]; // @[NV_soDLA_CACC_calculator_gate.scala 81:36:@3387.4]
  assign calc_stripe_end = accu_ctrl_pd_d1[9]; // @[NV_soDLA_CACC_calculator_gate.scala 83:42:@3389.4]
  assign calc_channel_end = accu_ctrl_pd_d1[10]; // @[NV_soDLA_CACC_calculator_gate.scala 84:43:@3390.4]
  assign calc_layer_end = accu_ctrl_pd_d1[11]; // @[NV_soDLA_CACC_calculator_gate.scala 85:41:@3391.4]
  assign calc_in_mask_0 = io_mac_a2accu_mask[0]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3397.4]
  assign calc_in_mask_16 = io_mac_b2accu_mask[0]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3399.4]
  assign calc_in_mask_1 = io_mac_a2accu_mask[1]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3403.4]
  assign calc_in_mask_17 = io_mac_b2accu_mask[1]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3405.4]
  assign calc_in_mask_2 = io_mac_a2accu_mask[2]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3409.4]
  assign calc_in_mask_18 = io_mac_b2accu_mask[2]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3411.4]
  assign calc_in_mask_3 = io_mac_a2accu_mask[3]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3415.4]
  assign calc_in_mask_19 = io_mac_b2accu_mask[3]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3417.4]
  assign calc_in_mask_4 = io_mac_a2accu_mask[4]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3421.4]
  assign calc_in_mask_20 = io_mac_b2accu_mask[4]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3423.4]
  assign calc_in_mask_5 = io_mac_a2accu_mask[5]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3427.4]
  assign calc_in_mask_21 = io_mac_b2accu_mask[5]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3429.4]
  assign calc_in_mask_6 = io_mac_a2accu_mask[6]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3433.4]
  assign calc_in_mask_22 = io_mac_b2accu_mask[6]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3435.4]
  assign calc_in_mask_7 = io_mac_a2accu_mask[7]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3439.4]
  assign calc_in_mask_23 = io_mac_b2accu_mask[7]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3441.4]
  assign calc_in_mask_8 = io_mac_a2accu_mask[8]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3445.4]
  assign calc_in_mask_24 = io_mac_b2accu_mask[8]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3447.4]
  assign calc_in_mask_9 = io_mac_a2accu_mask[9]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3451.4]
  assign calc_in_mask_25 = io_mac_b2accu_mask[9]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3453.4]
  assign calc_in_mask_10 = io_mac_a2accu_mask[10]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3457.4]
  assign calc_in_mask_26 = io_mac_b2accu_mask[10]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3459.4]
  assign calc_in_mask_11 = io_mac_a2accu_mask[11]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3463.4]
  assign calc_in_mask_27 = io_mac_b2accu_mask[11]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3465.4]
  assign calc_in_mask_12 = io_mac_a2accu_mask[12]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3469.4]
  assign calc_in_mask_28 = io_mac_b2accu_mask[12]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3471.4]
  assign calc_in_mask_13 = io_mac_a2accu_mask[13]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3475.4]
  assign calc_in_mask_29 = io_mac_b2accu_mask[13]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3477.4]
  assign calc_in_mask_14 = io_mac_a2accu_mask[14]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3481.4]
  assign calc_in_mask_30 = io_mac_b2accu_mask[14]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3483.4]
  assign calc_in_mask_15 = io_mac_a2accu_mask[15]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3487.4]
  assign calc_in_mask_31 = io_mac_b2accu_mask[15]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3489.4]
  assign calc_dlv_valid = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 99:37:@3589.4]
  assign _T_420 = ~ calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 100:36:@3590.4]
  assign calc_wr_en = calc_valid & _T_420; // @[NV_soDLA_CACC_calculator_gate.scala 100:33:@3591.4]
  assign _GEN_4 = calc_valid ? calc_addr : _T_624; // @[NV_soDLA_CACC_calculator_gate.scala 147:30:@4123.4]
  assign _GEN_5 = _T_610 ? _T_624 : calc_addr_out; // @[NV_soDLA_CACC_calculator_gate.scala 147:30:@4128.4]
  assign _GEN_6 = calc_dlv_valid ? calc_stripe_end : _T_638; // @[NV_soDLA_CACC_calculator_gate.scala 169:34:@4144.4]
  assign _GEN_7 = calc_dlv_valid ? calc_layer_end : _T_645; // @[NV_soDLA_CACC_calculator_gate.scala 169:34:@4144.4]
  assign _GEN_8 = _T_631 ? _T_638 : calc_stripe_end_out; // @[NV_soDLA_CACC_calculator_gate.scala 169:34:@4149.4]
  assign _GEN_9 = _T_631 ? _T_645 : calc_layer_end_out; // @[NV_soDLA_CACC_calculator_gate.scala 169:34:@4149.4]
  assign calc_pout_vld_0 = NV_soDLA_CACC_CALC_int8_gate_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3705.4]
  assign _T_688 = calc_pout_vld_0 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4155.4]
  assign calc_pout_sum_0 = NV_soDLA_CACC_CALC_int8_gate_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3704.4]
  assign calc_pout_0 = _T_688 & calc_pout_sum_0; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4156.4]
  assign calc_pout_vld_1 = NV_soDLA_CACC_CALC_int8_gate_1_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3718.4]
  assign _T_693 = calc_pout_vld_1 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4159.4]
  assign calc_pout_sum_1 = NV_soDLA_CACC_CALC_int8_gate_1_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3717.4]
  assign calc_pout_1 = _T_693 & calc_pout_sum_1; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4160.4]
  assign calc_pout_vld_2 = NV_soDLA_CACC_CALC_int8_gate_2_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3731.4]
  assign _T_698 = calc_pout_vld_2 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4163.4]
  assign calc_pout_sum_2 = NV_soDLA_CACC_CALC_int8_gate_2_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3730.4]
  assign calc_pout_2 = _T_698 & calc_pout_sum_2; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4164.4]
  assign calc_pout_vld_3 = NV_soDLA_CACC_CALC_int8_gate_3_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3744.4]
  assign _T_703 = calc_pout_vld_3 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4167.4]
  assign calc_pout_sum_3 = NV_soDLA_CACC_CALC_int8_gate_3_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3743.4]
  assign calc_pout_3 = _T_703 & calc_pout_sum_3; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4168.4]
  assign calc_pout_vld_4 = NV_soDLA_CACC_CALC_int8_gate_4_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3757.4]
  assign _T_708 = calc_pout_vld_4 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4171.4]
  assign calc_pout_sum_4 = NV_soDLA_CACC_CALC_int8_gate_4_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3756.4]
  assign calc_pout_4 = _T_708 & calc_pout_sum_4; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4172.4]
  assign calc_pout_vld_5 = NV_soDLA_CACC_CALC_int8_gate_5_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3770.4]
  assign _T_713 = calc_pout_vld_5 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4175.4]
  assign calc_pout_sum_5 = NV_soDLA_CACC_CALC_int8_gate_5_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3769.4]
  assign calc_pout_5 = _T_713 & calc_pout_sum_5; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4176.4]
  assign calc_pout_vld_6 = NV_soDLA_CACC_CALC_int8_gate_6_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3783.4]
  assign _T_718 = calc_pout_vld_6 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4179.4]
  assign calc_pout_sum_6 = NV_soDLA_CACC_CALC_int8_gate_6_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3782.4]
  assign calc_pout_6 = _T_718 & calc_pout_sum_6; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4180.4]
  assign calc_pout_vld_7 = NV_soDLA_CACC_CALC_int8_gate_7_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3796.4]
  assign _T_723 = calc_pout_vld_7 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4183.4]
  assign calc_pout_sum_7 = NV_soDLA_CACC_CALC_int8_gate_7_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3795.4]
  assign calc_pout_7 = _T_723 & calc_pout_sum_7; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4184.4]
  assign calc_pout_vld_8 = NV_soDLA_CACC_CALC_int8_gate_8_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3809.4]
  assign _T_728 = calc_pout_vld_8 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4187.4]
  assign calc_pout_sum_8 = NV_soDLA_CACC_CALC_int8_gate_8_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3808.4]
  assign calc_pout_8 = _T_728 & calc_pout_sum_8; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4188.4]
  assign calc_pout_vld_9 = NV_soDLA_CACC_CALC_int8_gate_9_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3822.4]
  assign _T_733 = calc_pout_vld_9 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4191.4]
  assign calc_pout_sum_9 = NV_soDLA_CACC_CALC_int8_gate_9_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3821.4]
  assign calc_pout_9 = _T_733 & calc_pout_sum_9; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4192.4]
  assign calc_pout_vld_10 = NV_soDLA_CACC_CALC_int8_gate_10_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3835.4]
  assign _T_738 = calc_pout_vld_10 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4195.4]
  assign calc_pout_sum_10 = NV_soDLA_CACC_CALC_int8_gate_10_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3834.4]
  assign calc_pout_10 = _T_738 & calc_pout_sum_10; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4196.4]
  assign calc_pout_vld_11 = NV_soDLA_CACC_CALC_int8_gate_11_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3848.4]
  assign _T_743 = calc_pout_vld_11 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4199.4]
  assign calc_pout_sum_11 = NV_soDLA_CACC_CALC_int8_gate_11_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3847.4]
  assign calc_pout_11 = _T_743 & calc_pout_sum_11; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4200.4]
  assign calc_pout_vld_12 = NV_soDLA_CACC_CALC_int8_gate_12_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3861.4]
  assign _T_748 = calc_pout_vld_12 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4203.4]
  assign calc_pout_sum_12 = NV_soDLA_CACC_CALC_int8_gate_12_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3860.4]
  assign calc_pout_12 = _T_748 & calc_pout_sum_12; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4204.4]
  assign calc_pout_vld_13 = NV_soDLA_CACC_CALC_int8_gate_13_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3874.4]
  assign _T_753 = calc_pout_vld_13 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4207.4]
  assign calc_pout_sum_13 = NV_soDLA_CACC_CALC_int8_gate_13_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3873.4]
  assign calc_pout_13 = _T_753 & calc_pout_sum_13; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4208.4]
  assign calc_pout_vld_14 = NV_soDLA_CACC_CALC_int8_gate_14_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3887.4]
  assign _T_758 = calc_pout_vld_14 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4211.4]
  assign calc_pout_sum_14 = NV_soDLA_CACC_CALC_int8_gate_14_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3886.4]
  assign calc_pout_14 = _T_758 & calc_pout_sum_14; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4212.4]
  assign calc_pout_vld_15 = NV_soDLA_CACC_CALC_int8_gate_15_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3900.4]
  assign _T_763 = calc_pout_vld_15 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4215.4]
  assign calc_pout_sum_15 = NV_soDLA_CACC_CALC_int8_gate_15_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3899.4]
  assign calc_pout_15 = _T_763 & calc_pout_sum_15; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4216.4]
  assign calc_pout_vld_16 = NV_soDLA_CACC_CALC_int8_gate_16_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3913.4]
  assign _T_768 = calc_pout_vld_16 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4219.4]
  assign calc_pout_sum_16 = NV_soDLA_CACC_CALC_int8_gate_16_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3912.4]
  assign calc_pout_16 = _T_768 & calc_pout_sum_16; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4220.4]
  assign calc_pout_vld_17 = NV_soDLA_CACC_CALC_int8_gate_17_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3926.4]
  assign _T_773 = calc_pout_vld_17 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4223.4]
  assign calc_pout_sum_17 = NV_soDLA_CACC_CALC_int8_gate_17_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3925.4]
  assign calc_pout_17 = _T_773 & calc_pout_sum_17; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4224.4]
  assign calc_pout_vld_18 = NV_soDLA_CACC_CALC_int8_gate_18_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3939.4]
  assign _T_778 = calc_pout_vld_18 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4227.4]
  assign calc_pout_sum_18 = NV_soDLA_CACC_CALC_int8_gate_18_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3938.4]
  assign calc_pout_18 = _T_778 & calc_pout_sum_18; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4228.4]
  assign calc_pout_vld_19 = NV_soDLA_CACC_CALC_int8_gate_19_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3952.4]
  assign _T_783 = calc_pout_vld_19 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4231.4]
  assign calc_pout_sum_19 = NV_soDLA_CACC_CALC_int8_gate_19_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3951.4]
  assign calc_pout_19 = _T_783 & calc_pout_sum_19; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4232.4]
  assign calc_pout_vld_20 = NV_soDLA_CACC_CALC_int8_gate_20_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3965.4]
  assign _T_788 = calc_pout_vld_20 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4235.4]
  assign calc_pout_sum_20 = NV_soDLA_CACC_CALC_int8_gate_20_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3964.4]
  assign calc_pout_20 = _T_788 & calc_pout_sum_20; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4236.4]
  assign calc_pout_vld_21 = NV_soDLA_CACC_CALC_int8_gate_21_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3978.4]
  assign _T_793 = calc_pout_vld_21 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4239.4]
  assign calc_pout_sum_21 = NV_soDLA_CACC_CALC_int8_gate_21_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3977.4]
  assign calc_pout_21 = _T_793 & calc_pout_sum_21; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4240.4]
  assign calc_pout_vld_22 = NV_soDLA_CACC_CALC_int8_gate_22_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@3991.4]
  assign _T_798 = calc_pout_vld_22 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4243.4]
  assign calc_pout_sum_22 = NV_soDLA_CACC_CALC_int8_gate_22_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3990.4]
  assign calc_pout_22 = _T_798 & calc_pout_sum_22; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4244.4]
  assign calc_pout_vld_23 = NV_soDLA_CACC_CALC_int8_gate_23_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4004.4]
  assign _T_803 = calc_pout_vld_23 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4247.4]
  assign calc_pout_sum_23 = NV_soDLA_CACC_CALC_int8_gate_23_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4003.4]
  assign calc_pout_23 = _T_803 & calc_pout_sum_23; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4248.4]
  assign calc_pout_vld_24 = NV_soDLA_CACC_CALC_int8_gate_24_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4017.4]
  assign _T_808 = calc_pout_vld_24 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4251.4]
  assign calc_pout_sum_24 = NV_soDLA_CACC_CALC_int8_gate_24_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4016.4]
  assign calc_pout_24 = _T_808 & calc_pout_sum_24; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4252.4]
  assign calc_pout_vld_25 = NV_soDLA_CACC_CALC_int8_gate_25_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4030.4]
  assign _T_813 = calc_pout_vld_25 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4255.4]
  assign calc_pout_sum_25 = NV_soDLA_CACC_CALC_int8_gate_25_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4029.4]
  assign calc_pout_25 = _T_813 & calc_pout_sum_25; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4256.4]
  assign calc_pout_vld_26 = NV_soDLA_CACC_CALC_int8_gate_26_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4043.4]
  assign _T_818 = calc_pout_vld_26 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4259.4]
  assign calc_pout_sum_26 = NV_soDLA_CACC_CALC_int8_gate_26_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4042.4]
  assign calc_pout_26 = _T_818 & calc_pout_sum_26; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4260.4]
  assign calc_pout_vld_27 = NV_soDLA_CACC_CALC_int8_gate_27_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4056.4]
  assign _T_823 = calc_pout_vld_27 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4263.4]
  assign calc_pout_sum_27 = NV_soDLA_CACC_CALC_int8_gate_27_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4055.4]
  assign calc_pout_27 = _T_823 & calc_pout_sum_27; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4264.4]
  assign calc_pout_vld_28 = NV_soDLA_CACC_CALC_int8_gate_28_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4069.4]
  assign _T_828 = calc_pout_vld_28 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4267.4]
  assign calc_pout_sum_28 = NV_soDLA_CACC_CALC_int8_gate_28_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4068.4]
  assign calc_pout_28 = _T_828 & calc_pout_sum_28; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4268.4]
  assign calc_pout_vld_29 = NV_soDLA_CACC_CALC_int8_gate_29_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4082.4]
  assign _T_833 = calc_pout_vld_29 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4271.4]
  assign calc_pout_sum_29 = NV_soDLA_CACC_CALC_int8_gate_29_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4081.4]
  assign calc_pout_29 = _T_833 & calc_pout_sum_29; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4272.4]
  assign calc_pout_vld_30 = NV_soDLA_CACC_CALC_int8_gate_30_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4095.4]
  assign _T_838 = calc_pout_vld_30 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4275.4]
  assign calc_pout_sum_30 = NV_soDLA_CACC_CALC_int8_gate_30_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4094.4]
  assign calc_pout_30 = _T_838 & calc_pout_sum_30; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4276.4]
  assign calc_pout_vld_31 = NV_soDLA_CACC_CALC_int8_gate_31_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3593.4 NV_soDLA_CACC_calculator_gate.scala 128:26:@4108.4]
  assign _T_843 = calc_pout_vld_31 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4279.4]
  assign calc_pout_sum_31 = NV_soDLA_CACC_CALC_int8_gate_31_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3595.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4107.4]
  assign calc_pout_31 = _T_843 & calc_pout_sum_31; // @[NV_soDLA_CACC_calculator_gate.scala 182:72:@4280.4]
  assign calc_fout_vld_0 = NV_soDLA_CACC_CALC_int8_gate_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3703.4]
  assign _T_885 = calc_fout_vld_0 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4284.4]
  assign calc_fout_sum_0 = NV_soDLA_CACC_CALC_int8_gate_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3701.4]
  assign calc_fout_0 = _T_885 & calc_fout_sum_0; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4285.4]
  assign calc_fout_vld_1 = NV_soDLA_CACC_CALC_int8_gate_1_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3716.4]
  assign _T_890 = calc_fout_vld_1 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4288.4]
  assign calc_fout_sum_1 = NV_soDLA_CACC_CALC_int8_gate_1_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3714.4]
  assign calc_fout_1 = _T_890 & calc_fout_sum_1; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4289.4]
  assign calc_fout_vld_2 = NV_soDLA_CACC_CALC_int8_gate_2_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3729.4]
  assign _T_895 = calc_fout_vld_2 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4292.4]
  assign calc_fout_sum_2 = NV_soDLA_CACC_CALC_int8_gate_2_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3727.4]
  assign calc_fout_2 = _T_895 & calc_fout_sum_2; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4293.4]
  assign calc_fout_vld_3 = NV_soDLA_CACC_CALC_int8_gate_3_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3742.4]
  assign _T_900 = calc_fout_vld_3 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4296.4]
  assign calc_fout_sum_3 = NV_soDLA_CACC_CALC_int8_gate_3_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3740.4]
  assign calc_fout_3 = _T_900 & calc_fout_sum_3; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4297.4]
  assign calc_fout_vld_4 = NV_soDLA_CACC_CALC_int8_gate_4_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3755.4]
  assign _T_905 = calc_fout_vld_4 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4300.4]
  assign calc_fout_sum_4 = NV_soDLA_CACC_CALC_int8_gate_4_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3753.4]
  assign calc_fout_4 = _T_905 & calc_fout_sum_4; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4301.4]
  assign calc_fout_vld_5 = NV_soDLA_CACC_CALC_int8_gate_5_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3768.4]
  assign _T_910 = calc_fout_vld_5 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4304.4]
  assign calc_fout_sum_5 = NV_soDLA_CACC_CALC_int8_gate_5_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3766.4]
  assign calc_fout_5 = _T_910 & calc_fout_sum_5; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4305.4]
  assign calc_fout_vld_6 = NV_soDLA_CACC_CALC_int8_gate_6_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3781.4]
  assign _T_915 = calc_fout_vld_6 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4308.4]
  assign calc_fout_sum_6 = NV_soDLA_CACC_CALC_int8_gate_6_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3779.4]
  assign calc_fout_6 = _T_915 & calc_fout_sum_6; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4309.4]
  assign calc_fout_vld_7 = NV_soDLA_CACC_CALC_int8_gate_7_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3794.4]
  assign _T_920 = calc_fout_vld_7 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4312.4]
  assign calc_fout_sum_7 = NV_soDLA_CACC_CALC_int8_gate_7_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3792.4]
  assign calc_fout_7 = _T_920 & calc_fout_sum_7; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4313.4]
  assign calc_fout_vld_8 = NV_soDLA_CACC_CALC_int8_gate_8_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3807.4]
  assign _T_925 = calc_fout_vld_8 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4316.4]
  assign calc_fout_sum_8 = NV_soDLA_CACC_CALC_int8_gate_8_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3805.4]
  assign calc_fout_8 = _T_925 & calc_fout_sum_8; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4317.4]
  assign calc_fout_vld_9 = NV_soDLA_CACC_CALC_int8_gate_9_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3820.4]
  assign _T_930 = calc_fout_vld_9 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4320.4]
  assign calc_fout_sum_9 = NV_soDLA_CACC_CALC_int8_gate_9_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3818.4]
  assign calc_fout_9 = _T_930 & calc_fout_sum_9; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4321.4]
  assign calc_fout_vld_10 = NV_soDLA_CACC_CALC_int8_gate_10_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3833.4]
  assign _T_935 = calc_fout_vld_10 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4324.4]
  assign calc_fout_sum_10 = NV_soDLA_CACC_CALC_int8_gate_10_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3831.4]
  assign calc_fout_10 = _T_935 & calc_fout_sum_10; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4325.4]
  assign calc_fout_vld_11 = NV_soDLA_CACC_CALC_int8_gate_11_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3846.4]
  assign _T_940 = calc_fout_vld_11 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4328.4]
  assign calc_fout_sum_11 = NV_soDLA_CACC_CALC_int8_gate_11_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3844.4]
  assign calc_fout_11 = _T_940 & calc_fout_sum_11; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4329.4]
  assign calc_fout_vld_12 = NV_soDLA_CACC_CALC_int8_gate_12_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3859.4]
  assign _T_945 = calc_fout_vld_12 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4332.4]
  assign calc_fout_sum_12 = NV_soDLA_CACC_CALC_int8_gate_12_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3857.4]
  assign calc_fout_12 = _T_945 & calc_fout_sum_12; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4333.4]
  assign calc_fout_vld_13 = NV_soDLA_CACC_CALC_int8_gate_13_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3872.4]
  assign _T_950 = calc_fout_vld_13 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4336.4]
  assign calc_fout_sum_13 = NV_soDLA_CACC_CALC_int8_gate_13_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3870.4]
  assign calc_fout_13 = _T_950 & calc_fout_sum_13; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4337.4]
  assign calc_fout_vld_14 = NV_soDLA_CACC_CALC_int8_gate_14_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3885.4]
  assign _T_955 = calc_fout_vld_14 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4340.4]
  assign calc_fout_sum_14 = NV_soDLA_CACC_CALC_int8_gate_14_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3883.4]
  assign calc_fout_14 = _T_955 & calc_fout_sum_14; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4341.4]
  assign calc_fout_vld_15 = NV_soDLA_CACC_CALC_int8_gate_15_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3898.4]
  assign _T_960 = calc_fout_vld_15 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4344.4]
  assign calc_fout_sum_15 = NV_soDLA_CACC_CALC_int8_gate_15_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3896.4]
  assign calc_fout_15 = _T_960 & calc_fout_sum_15; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4345.4]
  assign calc_fout_vld_16 = NV_soDLA_CACC_CALC_int8_gate_16_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3911.4]
  assign _T_965 = calc_fout_vld_16 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4348.4]
  assign calc_fout_sum_16 = NV_soDLA_CACC_CALC_int8_gate_16_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3909.4]
  assign calc_fout_16 = _T_965 & calc_fout_sum_16; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4349.4]
  assign calc_fout_vld_17 = NV_soDLA_CACC_CALC_int8_gate_17_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3924.4]
  assign _T_970 = calc_fout_vld_17 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4352.4]
  assign calc_fout_sum_17 = NV_soDLA_CACC_CALC_int8_gate_17_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3922.4]
  assign calc_fout_17 = _T_970 & calc_fout_sum_17; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4353.4]
  assign calc_fout_vld_18 = NV_soDLA_CACC_CALC_int8_gate_18_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3937.4]
  assign _T_975 = calc_fout_vld_18 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4356.4]
  assign calc_fout_sum_18 = NV_soDLA_CACC_CALC_int8_gate_18_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3935.4]
  assign calc_fout_18 = _T_975 & calc_fout_sum_18; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4357.4]
  assign calc_fout_vld_19 = NV_soDLA_CACC_CALC_int8_gate_19_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3950.4]
  assign _T_980 = calc_fout_vld_19 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4360.4]
  assign calc_fout_sum_19 = NV_soDLA_CACC_CALC_int8_gate_19_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3948.4]
  assign calc_fout_19 = _T_980 & calc_fout_sum_19; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4361.4]
  assign calc_fout_vld_20 = NV_soDLA_CACC_CALC_int8_gate_20_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3963.4]
  assign _T_985 = calc_fout_vld_20 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4364.4]
  assign calc_fout_sum_20 = NV_soDLA_CACC_CALC_int8_gate_20_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3961.4]
  assign calc_fout_20 = _T_985 & calc_fout_sum_20; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4365.4]
  assign calc_fout_vld_21 = NV_soDLA_CACC_CALC_int8_gate_21_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3976.4]
  assign _T_990 = calc_fout_vld_21 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4368.4]
  assign calc_fout_sum_21 = NV_soDLA_CACC_CALC_int8_gate_21_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3974.4]
  assign calc_fout_21 = _T_990 & calc_fout_sum_21; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4369.4]
  assign calc_fout_vld_22 = NV_soDLA_CACC_CALC_int8_gate_22_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3989.4]
  assign _T_995 = calc_fout_vld_22 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4372.4]
  assign calc_fout_sum_22 = NV_soDLA_CACC_CALC_int8_gate_22_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3987.4]
  assign calc_fout_22 = _T_995 & calc_fout_sum_22; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4373.4]
  assign calc_fout_vld_23 = NV_soDLA_CACC_CALC_int8_gate_23_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4002.4]
  assign _T_1000 = calc_fout_vld_23 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4376.4]
  assign calc_fout_sum_23 = NV_soDLA_CACC_CALC_int8_gate_23_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4000.4]
  assign calc_fout_23 = _T_1000 & calc_fout_sum_23; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4377.4]
  assign calc_fout_vld_24 = NV_soDLA_CACC_CALC_int8_gate_24_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4015.4]
  assign _T_1005 = calc_fout_vld_24 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4380.4]
  assign calc_fout_sum_24 = NV_soDLA_CACC_CALC_int8_gate_24_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4013.4]
  assign calc_fout_24 = _T_1005 & calc_fout_sum_24; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4381.4]
  assign calc_fout_vld_25 = NV_soDLA_CACC_CALC_int8_gate_25_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4028.4]
  assign _T_1010 = calc_fout_vld_25 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4384.4]
  assign calc_fout_sum_25 = NV_soDLA_CACC_CALC_int8_gate_25_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4026.4]
  assign calc_fout_25 = _T_1010 & calc_fout_sum_25; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4385.4]
  assign calc_fout_vld_26 = NV_soDLA_CACC_CALC_int8_gate_26_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4041.4]
  assign _T_1015 = calc_fout_vld_26 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4388.4]
  assign calc_fout_sum_26 = NV_soDLA_CACC_CALC_int8_gate_26_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4039.4]
  assign calc_fout_26 = _T_1015 & calc_fout_sum_26; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4389.4]
  assign calc_fout_vld_27 = NV_soDLA_CACC_CALC_int8_gate_27_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4054.4]
  assign _T_1020 = calc_fout_vld_27 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4392.4]
  assign calc_fout_sum_27 = NV_soDLA_CACC_CALC_int8_gate_27_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4052.4]
  assign calc_fout_27 = _T_1020 & calc_fout_sum_27; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4393.4]
  assign calc_fout_vld_28 = NV_soDLA_CACC_CALC_int8_gate_28_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4067.4]
  assign _T_1025 = calc_fout_vld_28 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4396.4]
  assign calc_fout_sum_28 = NV_soDLA_CACC_CALC_int8_gate_28_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4065.4]
  assign calc_fout_28 = _T_1025 & calc_fout_sum_28; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4397.4]
  assign calc_fout_vld_29 = NV_soDLA_CACC_CALC_int8_gate_29_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4080.4]
  assign _T_1030 = calc_fout_vld_29 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4400.4]
  assign calc_fout_sum_29 = NV_soDLA_CACC_CALC_int8_gate_29_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4078.4]
  assign calc_fout_29 = _T_1030 & calc_fout_sum_29; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4401.4]
  assign calc_fout_vld_30 = NV_soDLA_CACC_CALC_int8_gate_30_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4093.4]
  assign _T_1035 = calc_fout_vld_30 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4404.4]
  assign calc_fout_sum_30 = NV_soDLA_CACC_CALC_int8_gate_30_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4091.4]
  assign calc_fout_30 = _T_1035 & calc_fout_sum_30; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4405.4]
  assign calc_fout_vld_31 = NV_soDLA_CACC_CALC_int8_gate_31_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3594.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4106.4]
  assign _T_1040 = calc_fout_vld_31 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4408.4]
  assign calc_fout_sum_31 = NV_soDLA_CACC_CALC_int8_gate_31_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3596.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4104.4]
  assign calc_fout_31 = _T_1040 & calc_fout_sum_31; // @[NV_soDLA_CACC_calculator_gate.scala 186:71:@4409.4]
  assign _GEN_10 = calc_wr_en_out ? calc_addr_out : _T_1047; // @[Reg.scala 20:19:@4415.4]
  assign _T_1054 = {calc_pout_7,calc_pout_6,calc_pout_5,calc_pout_4,calc_pout_3,calc_pout_2,calc_pout_1,calc_pout_0}; // @[NV_soDLA_CACC_calculator_gate.scala 193:44:@4425.4]
  assign _T_1062 = {calc_pout_15,calc_pout_14,calc_pout_13,calc_pout_12,calc_pout_11,calc_pout_10,calc_pout_9,calc_pout_8,_T_1054}; // @[NV_soDLA_CACC_calculator_gate.scala 193:44:@4433.4]
  assign _T_1069 = {calc_pout_23,calc_pout_22,calc_pout_21,calc_pout_20,calc_pout_19,calc_pout_18,calc_pout_17,calc_pout_16}; // @[NV_soDLA_CACC_calculator_gate.scala 193:44:@4440.4]
  assign _T_1078 = {calc_pout_31,calc_pout_30,calc_pout_29,calc_pout_28,calc_pout_27,calc_pout_26,calc_pout_25,calc_pout_24,_T_1069,_T_1062}; // @[NV_soDLA_CACC_calculator_gate.scala 193:44:@4449.4]
  assign _T_1087 = {calc_fout_7,calc_fout_6,calc_fout_5,calc_fout_4,calc_fout_3,calc_fout_2,calc_fout_1,calc_fout_0}; // @[NV_soDLA_CACC_calculator_gate.scala 196:40:@4461.4]
  assign _T_1095 = {calc_fout_15,calc_fout_14,calc_fout_13,calc_fout_12,calc_fout_11,calc_fout_10,calc_fout_9,calc_fout_8,_T_1087}; // @[NV_soDLA_CACC_calculator_gate.scala 196:40:@4469.4]
  assign _T_1102 = {calc_fout_23,calc_fout_22,calc_fout_21,calc_fout_20,calc_fout_19,calc_fout_18,calc_fout_17,calc_fout_16}; // @[NV_soDLA_CACC_calculator_gate.scala 196:40:@4476.4]
  assign _T_1111 = {calc_fout_31,calc_fout_30,calc_fout_29,calc_fout_28,calc_fout_27,calc_fout_26,calc_fout_25,calc_fout_24,_T_1102,_T_1095}; // @[NV_soDLA_CACC_calculator_gate.scala 196:40:@4485.4]
  assign _GEN_13 = calc_dlv_valid_out ? calc_stripe_end_out : dlv_stripe_end; // @[Reg.scala 20:19:@4498.4]
  assign _GEN_14 = calc_dlv_valid_out ? calc_layer_end_out : dlv_layer_end; // @[Reg.scala 20:19:@4502.4]
  assign dlv_sat_end = calc_layer_end_out & calc_stripe_end_out; // @[NV_soDLA_CACC_calculator_gate.scala 210:42:@4544.4]
  assign _T_1369 = ~ dlv_sat_end; // @[NV_soDLA_CACC_calculator_gate.scala 211:44:@4545.4]
  assign _T_1370 = calc_dlv_valid_out & _T_1369; // @[NV_soDLA_CACC_calculator_gate.scala 211:42:@4546.4]
  assign dlv_sat_clr = _T_1370 & dlv_sat_end_d1; // @[NV_soDLA_CACC_calculator_gate.scala 211:57:@4547.4]
  assign _GEN_15 = calc_dlv_valid_out ? dlv_sat_end : dlv_sat_end_d1; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_0 = NV_soDLA_CACC_CALC_int8_gate_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3702.4]
  assign _GEN_16 = calc_dlv_valid_out ? calc_fout_sat_0 : dlv_sat_bit_d1_0; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_1 = NV_soDLA_CACC_CALC_int8_gate_1_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3715.4]
  assign _GEN_17 = calc_dlv_valid_out ? calc_fout_sat_1 : dlv_sat_bit_d1_1; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_2 = NV_soDLA_CACC_CALC_int8_gate_2_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3728.4]
  assign _GEN_18 = calc_dlv_valid_out ? calc_fout_sat_2 : dlv_sat_bit_d1_2; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_3 = NV_soDLA_CACC_CALC_int8_gate_3_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3741.4]
  assign _GEN_19 = calc_dlv_valid_out ? calc_fout_sat_3 : dlv_sat_bit_d1_3; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_4 = NV_soDLA_CACC_CALC_int8_gate_4_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3754.4]
  assign _GEN_20 = calc_dlv_valid_out ? calc_fout_sat_4 : dlv_sat_bit_d1_4; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_5 = NV_soDLA_CACC_CALC_int8_gate_5_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3767.4]
  assign _GEN_21 = calc_dlv_valid_out ? calc_fout_sat_5 : dlv_sat_bit_d1_5; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_6 = NV_soDLA_CACC_CALC_int8_gate_6_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3780.4]
  assign _GEN_22 = calc_dlv_valid_out ? calc_fout_sat_6 : dlv_sat_bit_d1_6; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_7 = NV_soDLA_CACC_CALC_int8_gate_7_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3793.4]
  assign _GEN_23 = calc_dlv_valid_out ? calc_fout_sat_7 : dlv_sat_bit_d1_7; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_8 = NV_soDLA_CACC_CALC_int8_gate_8_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3806.4]
  assign _GEN_24 = calc_dlv_valid_out ? calc_fout_sat_8 : dlv_sat_bit_d1_8; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_9 = NV_soDLA_CACC_CALC_int8_gate_9_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3819.4]
  assign _GEN_25 = calc_dlv_valid_out ? calc_fout_sat_9 : dlv_sat_bit_d1_9; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_10 = NV_soDLA_CACC_CALC_int8_gate_10_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3832.4]
  assign _GEN_26 = calc_dlv_valid_out ? calc_fout_sat_10 : dlv_sat_bit_d1_10; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_11 = NV_soDLA_CACC_CALC_int8_gate_11_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3845.4]
  assign _GEN_27 = calc_dlv_valid_out ? calc_fout_sat_11 : dlv_sat_bit_d1_11; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_12 = NV_soDLA_CACC_CALC_int8_gate_12_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3858.4]
  assign _GEN_28 = calc_dlv_valid_out ? calc_fout_sat_12 : dlv_sat_bit_d1_12; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_13 = NV_soDLA_CACC_CALC_int8_gate_13_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3871.4]
  assign _GEN_29 = calc_dlv_valid_out ? calc_fout_sat_13 : dlv_sat_bit_d1_13; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_14 = NV_soDLA_CACC_CALC_int8_gate_14_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3884.4]
  assign _GEN_30 = calc_dlv_valid_out ? calc_fout_sat_14 : dlv_sat_bit_d1_14; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_15 = NV_soDLA_CACC_CALC_int8_gate_15_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3897.4]
  assign _GEN_31 = calc_dlv_valid_out ? calc_fout_sat_15 : dlv_sat_bit_d1_15; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_16 = NV_soDLA_CACC_CALC_int8_gate_16_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3910.4]
  assign _GEN_32 = calc_dlv_valid_out ? calc_fout_sat_16 : dlv_sat_bit_d1_16; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_17 = NV_soDLA_CACC_CALC_int8_gate_17_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3923.4]
  assign _GEN_33 = calc_dlv_valid_out ? calc_fout_sat_17 : dlv_sat_bit_d1_17; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_18 = NV_soDLA_CACC_CALC_int8_gate_18_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3936.4]
  assign _GEN_34 = calc_dlv_valid_out ? calc_fout_sat_18 : dlv_sat_bit_d1_18; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_19 = NV_soDLA_CACC_CALC_int8_gate_19_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3949.4]
  assign _GEN_35 = calc_dlv_valid_out ? calc_fout_sat_19 : dlv_sat_bit_d1_19; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_20 = NV_soDLA_CACC_CALC_int8_gate_20_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3962.4]
  assign _GEN_36 = calc_dlv_valid_out ? calc_fout_sat_20 : dlv_sat_bit_d1_20; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_21 = NV_soDLA_CACC_CALC_int8_gate_21_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3975.4]
  assign _GEN_37 = calc_dlv_valid_out ? calc_fout_sat_21 : dlv_sat_bit_d1_21; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_22 = NV_soDLA_CACC_CALC_int8_gate_22_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3988.4]
  assign _GEN_38 = calc_dlv_valid_out ? calc_fout_sat_22 : dlv_sat_bit_d1_22; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_23 = NV_soDLA_CACC_CALC_int8_gate_23_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4001.4]
  assign _GEN_39 = calc_dlv_valid_out ? calc_fout_sat_23 : dlv_sat_bit_d1_23; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_24 = NV_soDLA_CACC_CALC_int8_gate_24_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4014.4]
  assign _GEN_40 = calc_dlv_valid_out ? calc_fout_sat_24 : dlv_sat_bit_d1_24; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_25 = NV_soDLA_CACC_CALC_int8_gate_25_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4027.4]
  assign _GEN_41 = calc_dlv_valid_out ? calc_fout_sat_25 : dlv_sat_bit_d1_25; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_26 = NV_soDLA_CACC_CALC_int8_gate_26_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4040.4]
  assign _GEN_42 = calc_dlv_valid_out ? calc_fout_sat_26 : dlv_sat_bit_d1_26; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_27 = NV_soDLA_CACC_CALC_int8_gate_27_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4053.4]
  assign _GEN_43 = calc_dlv_valid_out ? calc_fout_sat_27 : dlv_sat_bit_d1_27; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_28 = NV_soDLA_CACC_CALC_int8_gate_28_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4066.4]
  assign _GEN_44 = calc_dlv_valid_out ? calc_fout_sat_28 : dlv_sat_bit_d1_28; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_29 = NV_soDLA_CACC_CALC_int8_gate_29_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4079.4]
  assign _GEN_45 = calc_dlv_valid_out ? calc_fout_sat_29 : dlv_sat_bit_d1_29; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_30 = NV_soDLA_CACC_CALC_int8_gate_30_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4092.4]
  assign _GEN_46 = calc_dlv_valid_out ? calc_fout_sat_30 : dlv_sat_bit_d1_30; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign calc_fout_sat_31 = NV_soDLA_CACC_CALC_int8_gate_31_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3592.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4105.4]
  assign _GEN_47 = calc_dlv_valid_out ? calc_fout_sat_31 : dlv_sat_bit_d1_31; // @[NV_soDLA_CACC_calculator_gate.scala 214:29:@4549.4]
  assign _T_1409 = dlv_sat_bit_d1_0 + dlv_sat_bit_d1_1; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4618.4]
  assign _GEN_49 = {{1'd0}, dlv_sat_bit_d1_2}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4619.4]
  assign _T_1410 = _T_1409 + _GEN_49; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4619.4]
  assign _GEN_50 = {{2'd0}, dlv_sat_bit_d1_3}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4620.4]
  assign _T_1411 = _T_1410 + _GEN_50; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4620.4]
  assign _GEN_51 = {{3'd0}, dlv_sat_bit_d1_4}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4621.4]
  assign _T_1412 = _T_1411 + _GEN_51; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4621.4]
  assign _GEN_52 = {{4'd0}, dlv_sat_bit_d1_5}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4622.4]
  assign _T_1413 = _T_1412 + _GEN_52; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4622.4]
  assign _GEN_53 = {{5'd0}, dlv_sat_bit_d1_6}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4623.4]
  assign _T_1414 = _T_1413 + _GEN_53; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4623.4]
  assign _GEN_54 = {{6'd0}, dlv_sat_bit_d1_7}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4624.4]
  assign _T_1415 = _T_1414 + _GEN_54; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4624.4]
  assign _GEN_55 = {{7'd0}, dlv_sat_bit_d1_8}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4625.4]
  assign _T_1416 = _T_1415 + _GEN_55; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4625.4]
  assign _GEN_56 = {{8'd0}, dlv_sat_bit_d1_9}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4626.4]
  assign _T_1417 = _T_1416 + _GEN_56; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4626.4]
  assign _GEN_57 = {{9'd0}, dlv_sat_bit_d1_10}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4627.4]
  assign _T_1418 = _T_1417 + _GEN_57; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4627.4]
  assign _GEN_58 = {{10'd0}, dlv_sat_bit_d1_11}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4628.4]
  assign _T_1419 = _T_1418 + _GEN_58; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4628.4]
  assign _GEN_59 = {{11'd0}, dlv_sat_bit_d1_12}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4629.4]
  assign _T_1420 = _T_1419 + _GEN_59; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4629.4]
  assign _GEN_60 = {{12'd0}, dlv_sat_bit_d1_13}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4630.4]
  assign _T_1421 = _T_1420 + _GEN_60; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4630.4]
  assign _GEN_61 = {{13'd0}, dlv_sat_bit_d1_14}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4631.4]
  assign _T_1422 = _T_1421 + _GEN_61; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4631.4]
  assign _GEN_62 = {{14'd0}, dlv_sat_bit_d1_15}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4632.4]
  assign _T_1423 = _T_1422 + _GEN_62; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4632.4]
  assign _GEN_63 = {{15'd0}, dlv_sat_bit_d1_16}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4633.4]
  assign _T_1424 = _T_1423 + _GEN_63; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4633.4]
  assign _GEN_64 = {{16'd0}, dlv_sat_bit_d1_17}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4634.4]
  assign _T_1425 = _T_1424 + _GEN_64; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4634.4]
  assign _GEN_65 = {{17'd0}, dlv_sat_bit_d1_18}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4635.4]
  assign _T_1426 = _T_1425 + _GEN_65; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4635.4]
  assign _GEN_66 = {{18'd0}, dlv_sat_bit_d1_19}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4636.4]
  assign _T_1427 = _T_1426 + _GEN_66; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4636.4]
  assign _GEN_67 = {{19'd0}, dlv_sat_bit_d1_20}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4637.4]
  assign _T_1428 = _T_1427 + _GEN_67; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4637.4]
  assign _GEN_68 = {{20'd0}, dlv_sat_bit_d1_21}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4638.4]
  assign _T_1429 = _T_1428 + _GEN_68; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4638.4]
  assign _GEN_69 = {{21'd0}, dlv_sat_bit_d1_22}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4639.4]
  assign _T_1430 = _T_1429 + _GEN_69; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4639.4]
  assign _GEN_70 = {{22'd0}, dlv_sat_bit_d1_23}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4640.4]
  assign _T_1431 = _T_1430 + _GEN_70; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4640.4]
  assign _GEN_71 = {{23'd0}, dlv_sat_bit_d1_24}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4641.4]
  assign _T_1432 = _T_1431 + _GEN_71; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4641.4]
  assign _GEN_72 = {{24'd0}, dlv_sat_bit_d1_25}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4642.4]
  assign _T_1433 = _T_1432 + _GEN_72; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4642.4]
  assign _GEN_73 = {{25'd0}, dlv_sat_bit_d1_26}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4643.4]
  assign _T_1434 = _T_1433 + _GEN_73; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4643.4]
  assign _GEN_74 = {{26'd0}, dlv_sat_bit_d1_27}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4644.4]
  assign _T_1435 = _T_1434 + _GEN_74; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4644.4]
  assign _GEN_75 = {{27'd0}, dlv_sat_bit_d1_28}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4645.4]
  assign _T_1436 = _T_1435 + _GEN_75; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4645.4]
  assign _GEN_76 = {{28'd0}, dlv_sat_bit_d1_29}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4646.4]
  assign _T_1437 = _T_1436 + _GEN_76; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4646.4]
  assign _GEN_77 = {{29'd0}, dlv_sat_bit_d1_30}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4647.4]
  assign _T_1438 = _T_1437 + _GEN_77; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4647.4]
  assign _GEN_78 = {{30'd0}, dlv_sat_bit_d1_31}; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4648.4]
  assign sat_sum = _T_1438 + _GEN_78; // @[NV_soDLA_CACC_calculator_gate.scala 219:98:@4648.4]
  assign _T_1441 = sat_count + sat_sum; // @[NV_soDLA_CACC_calculator_gate.scala 222:36:@4650.4]
  assign sat_count_inc = _T_1441[31:0]; // @[NV_soDLA_CACC_calculator_gate.scala 222:47:@4651.4]
  assign sat_carry = _T_1441[32]; // @[NV_soDLA_CACC_calculator_gate.scala 223:43:@4653.4]
  assign _T_1448 = sat_carry ? 32'hffffffff : sat_count_inc; // @[NV_soDLA_CACC_calculator_gate.scala 225:26:@4655.4]
  assign sat_count_w = dlv_sat_clr_d1 ? sat_sum : _T_1448; // @[NV_soDLA_CACC_calculator_gate.scala 224:26:@4656.4]
  assign _T_1450 = sat_sum != 32'h0; // @[NV_soDLA_CACC_calculator_gate.scala 226:49:@4657.4]
  assign _T_1451 = _T_1450 | dlv_sat_clr_d1; // @[NV_soDLA_CACC_calculator_gate.scala 226:54:@4658.4]
  assign sat_reg_en = dlv_sat_vld_d1 & _T_1451; // @[NV_soDLA_CACC_calculator_gate.scala 226:37:@4659.4]
  assign _GEN_48 = sat_reg_en ? sat_count_w : sat_count; // @[NV_soDLA_CACC_calculator_gate.scala 227:21:@4660.4]
  assign io_abuf_wr_addr_valid = _T_1044; // @[NV_soDLA_CACC_calculator_gate.scala 191:27:@4413.4]
  assign io_abuf_wr_addr_bits = _T_1047; // @[NV_soDLA_CACC_calculator_gate.scala 192:26:@4418.4]
  assign io_abuf_wr_data = _T_1080; // @[NV_soDLA_CACC_calculator_gate.scala 193:21:@4454.4]
  assign io_dlv_valid = _T_1116; // @[NV_soDLA_CACC_calculator_gate.scala 197:18:@4493.4]
  assign io_dlv_mask = _T_1119; // @[NV_soDLA_CACC_calculator_gate.scala 198:17:@4496.4]
  assign io_dlv_data = _T_1113; // @[NV_soDLA_CACC_calculator_gate.scala 196:17:@4490.4]
  assign io_dlv_pd = {dlv_layer_end,dlv_stripe_end}; // @[NV_soDLA_CACC_calculator_gate.scala 201:15:@4506.4]
  assign io_dp2reg_sat_count = sat_count; // @[NV_soDLA_CACC_calculator_gate.scala 231:25:@4663.4]
  assign NV_soDLA_CACC_CALC_int8_gate_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3693.4]
  assign NV_soDLA_CACC_CALC_int8_gate_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3694.4]
  assign NV_soDLA_CACC_CALC_int8_gate_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3695.4]
  assign NV_soDLA_CACC_CALC_int8_gate_io_in_data = io_mac_a2accu_data_0; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3696.4]
  assign NV_soDLA_CACC_CALC_int8_gate_io_in_op = io_abuf_rd_data[33:0]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3697.4]
  assign NV_soDLA_CACC_CALC_int8_gate_io_in_op_valid = calc_in_mask_0 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3698.4]
  assign NV_soDLA_CACC_CALC_int8_gate_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3699.4]
  assign NV_soDLA_CACC_CALC_int8_gate_io_in_valid = io_mac_a2accu_mask[0]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3700.4]
  assign NV_soDLA_CACC_CALC_int8_gate_1_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3706.4]
  assign NV_soDLA_CACC_CALC_int8_gate_1_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3707.4]
  assign NV_soDLA_CACC_CALC_int8_gate_1_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3708.4]
  assign NV_soDLA_CACC_CALC_int8_gate_1_io_in_data = io_mac_a2accu_data_1; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3709.4]
  assign NV_soDLA_CACC_CALC_int8_gate_1_io_in_op = io_abuf_rd_data[67:34]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3710.4]
  assign NV_soDLA_CACC_CALC_int8_gate_1_io_in_op_valid = calc_in_mask_1 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3711.4]
  assign NV_soDLA_CACC_CALC_int8_gate_1_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3712.4]
  assign NV_soDLA_CACC_CALC_int8_gate_1_io_in_valid = io_mac_a2accu_mask[1]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3713.4]
  assign NV_soDLA_CACC_CALC_int8_gate_2_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3719.4]
  assign NV_soDLA_CACC_CALC_int8_gate_2_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3720.4]
  assign NV_soDLA_CACC_CALC_int8_gate_2_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3721.4]
  assign NV_soDLA_CACC_CALC_int8_gate_2_io_in_data = io_mac_a2accu_data_2; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3722.4]
  assign NV_soDLA_CACC_CALC_int8_gate_2_io_in_op = io_abuf_rd_data[101:68]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3723.4]
  assign NV_soDLA_CACC_CALC_int8_gate_2_io_in_op_valid = calc_in_mask_2 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3724.4]
  assign NV_soDLA_CACC_CALC_int8_gate_2_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3725.4]
  assign NV_soDLA_CACC_CALC_int8_gate_2_io_in_valid = io_mac_a2accu_mask[2]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3726.4]
  assign NV_soDLA_CACC_CALC_int8_gate_3_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3732.4]
  assign NV_soDLA_CACC_CALC_int8_gate_3_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3733.4]
  assign NV_soDLA_CACC_CALC_int8_gate_3_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3734.4]
  assign NV_soDLA_CACC_CALC_int8_gate_3_io_in_data = io_mac_a2accu_data_3; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3735.4]
  assign NV_soDLA_CACC_CALC_int8_gate_3_io_in_op = io_abuf_rd_data[135:102]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3736.4]
  assign NV_soDLA_CACC_CALC_int8_gate_3_io_in_op_valid = calc_in_mask_3 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3737.4]
  assign NV_soDLA_CACC_CALC_int8_gate_3_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3738.4]
  assign NV_soDLA_CACC_CALC_int8_gate_3_io_in_valid = io_mac_a2accu_mask[3]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3739.4]
  assign NV_soDLA_CACC_CALC_int8_gate_4_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3745.4]
  assign NV_soDLA_CACC_CALC_int8_gate_4_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3746.4]
  assign NV_soDLA_CACC_CALC_int8_gate_4_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3747.4]
  assign NV_soDLA_CACC_CALC_int8_gate_4_io_in_data = io_mac_a2accu_data_4; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3748.4]
  assign NV_soDLA_CACC_CALC_int8_gate_4_io_in_op = io_abuf_rd_data[169:136]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3749.4]
  assign NV_soDLA_CACC_CALC_int8_gate_4_io_in_op_valid = calc_in_mask_4 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3750.4]
  assign NV_soDLA_CACC_CALC_int8_gate_4_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3751.4]
  assign NV_soDLA_CACC_CALC_int8_gate_4_io_in_valid = io_mac_a2accu_mask[4]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3752.4]
  assign NV_soDLA_CACC_CALC_int8_gate_5_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3758.4]
  assign NV_soDLA_CACC_CALC_int8_gate_5_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3759.4]
  assign NV_soDLA_CACC_CALC_int8_gate_5_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3760.4]
  assign NV_soDLA_CACC_CALC_int8_gate_5_io_in_data = io_mac_a2accu_data_5; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3761.4]
  assign NV_soDLA_CACC_CALC_int8_gate_5_io_in_op = io_abuf_rd_data[203:170]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3762.4]
  assign NV_soDLA_CACC_CALC_int8_gate_5_io_in_op_valid = calc_in_mask_5 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3763.4]
  assign NV_soDLA_CACC_CALC_int8_gate_5_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3764.4]
  assign NV_soDLA_CACC_CALC_int8_gate_5_io_in_valid = io_mac_a2accu_mask[5]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3765.4]
  assign NV_soDLA_CACC_CALC_int8_gate_6_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3771.4]
  assign NV_soDLA_CACC_CALC_int8_gate_6_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3772.4]
  assign NV_soDLA_CACC_CALC_int8_gate_6_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3773.4]
  assign NV_soDLA_CACC_CALC_int8_gate_6_io_in_data = io_mac_a2accu_data_6; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3774.4]
  assign NV_soDLA_CACC_CALC_int8_gate_6_io_in_op = io_abuf_rd_data[237:204]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3775.4]
  assign NV_soDLA_CACC_CALC_int8_gate_6_io_in_op_valid = calc_in_mask_6 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3776.4]
  assign NV_soDLA_CACC_CALC_int8_gate_6_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3777.4]
  assign NV_soDLA_CACC_CALC_int8_gate_6_io_in_valid = io_mac_a2accu_mask[6]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3778.4]
  assign NV_soDLA_CACC_CALC_int8_gate_7_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3784.4]
  assign NV_soDLA_CACC_CALC_int8_gate_7_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3785.4]
  assign NV_soDLA_CACC_CALC_int8_gate_7_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3786.4]
  assign NV_soDLA_CACC_CALC_int8_gate_7_io_in_data = io_mac_a2accu_data_7; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3787.4]
  assign NV_soDLA_CACC_CALC_int8_gate_7_io_in_op = io_abuf_rd_data[271:238]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3788.4]
  assign NV_soDLA_CACC_CALC_int8_gate_7_io_in_op_valid = calc_in_mask_7 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3789.4]
  assign NV_soDLA_CACC_CALC_int8_gate_7_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3790.4]
  assign NV_soDLA_CACC_CALC_int8_gate_7_io_in_valid = io_mac_a2accu_mask[7]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3791.4]
  assign NV_soDLA_CACC_CALC_int8_gate_8_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3797.4]
  assign NV_soDLA_CACC_CALC_int8_gate_8_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3798.4]
  assign NV_soDLA_CACC_CALC_int8_gate_8_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3799.4]
  assign NV_soDLA_CACC_CALC_int8_gate_8_io_in_data = io_mac_a2accu_data_8; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3800.4]
  assign NV_soDLA_CACC_CALC_int8_gate_8_io_in_op = io_abuf_rd_data[305:272]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3801.4]
  assign NV_soDLA_CACC_CALC_int8_gate_8_io_in_op_valid = calc_in_mask_8 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3802.4]
  assign NV_soDLA_CACC_CALC_int8_gate_8_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3803.4]
  assign NV_soDLA_CACC_CALC_int8_gate_8_io_in_valid = io_mac_a2accu_mask[8]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3804.4]
  assign NV_soDLA_CACC_CALC_int8_gate_9_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3810.4]
  assign NV_soDLA_CACC_CALC_int8_gate_9_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3811.4]
  assign NV_soDLA_CACC_CALC_int8_gate_9_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3812.4]
  assign NV_soDLA_CACC_CALC_int8_gate_9_io_in_data = io_mac_a2accu_data_9; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3813.4]
  assign NV_soDLA_CACC_CALC_int8_gate_9_io_in_op = io_abuf_rd_data[339:306]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3814.4]
  assign NV_soDLA_CACC_CALC_int8_gate_9_io_in_op_valid = calc_in_mask_9 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3815.4]
  assign NV_soDLA_CACC_CALC_int8_gate_9_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3816.4]
  assign NV_soDLA_CACC_CALC_int8_gate_9_io_in_valid = io_mac_a2accu_mask[9]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3817.4]
  assign NV_soDLA_CACC_CALC_int8_gate_10_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3823.4]
  assign NV_soDLA_CACC_CALC_int8_gate_10_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3824.4]
  assign NV_soDLA_CACC_CALC_int8_gate_10_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3825.4]
  assign NV_soDLA_CACC_CALC_int8_gate_10_io_in_data = io_mac_a2accu_data_10; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3826.4]
  assign NV_soDLA_CACC_CALC_int8_gate_10_io_in_op = io_abuf_rd_data[373:340]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3827.4]
  assign NV_soDLA_CACC_CALC_int8_gate_10_io_in_op_valid = calc_in_mask_10 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3828.4]
  assign NV_soDLA_CACC_CALC_int8_gate_10_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3829.4]
  assign NV_soDLA_CACC_CALC_int8_gate_10_io_in_valid = io_mac_a2accu_mask[10]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3830.4]
  assign NV_soDLA_CACC_CALC_int8_gate_11_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3836.4]
  assign NV_soDLA_CACC_CALC_int8_gate_11_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3837.4]
  assign NV_soDLA_CACC_CALC_int8_gate_11_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3838.4]
  assign NV_soDLA_CACC_CALC_int8_gate_11_io_in_data = io_mac_a2accu_data_11; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3839.4]
  assign NV_soDLA_CACC_CALC_int8_gate_11_io_in_op = io_abuf_rd_data[407:374]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3840.4]
  assign NV_soDLA_CACC_CALC_int8_gate_11_io_in_op_valid = calc_in_mask_11 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3841.4]
  assign NV_soDLA_CACC_CALC_int8_gate_11_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3842.4]
  assign NV_soDLA_CACC_CALC_int8_gate_11_io_in_valid = io_mac_a2accu_mask[11]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3843.4]
  assign NV_soDLA_CACC_CALC_int8_gate_12_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3849.4]
  assign NV_soDLA_CACC_CALC_int8_gate_12_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3850.4]
  assign NV_soDLA_CACC_CALC_int8_gate_12_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3851.4]
  assign NV_soDLA_CACC_CALC_int8_gate_12_io_in_data = io_mac_a2accu_data_12; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3852.4]
  assign NV_soDLA_CACC_CALC_int8_gate_12_io_in_op = io_abuf_rd_data[441:408]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3853.4]
  assign NV_soDLA_CACC_CALC_int8_gate_12_io_in_op_valid = calc_in_mask_12 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3854.4]
  assign NV_soDLA_CACC_CALC_int8_gate_12_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3855.4]
  assign NV_soDLA_CACC_CALC_int8_gate_12_io_in_valid = io_mac_a2accu_mask[12]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3856.4]
  assign NV_soDLA_CACC_CALC_int8_gate_13_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3862.4]
  assign NV_soDLA_CACC_CALC_int8_gate_13_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3863.4]
  assign NV_soDLA_CACC_CALC_int8_gate_13_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3864.4]
  assign NV_soDLA_CACC_CALC_int8_gate_13_io_in_data = io_mac_a2accu_data_13; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3865.4]
  assign NV_soDLA_CACC_CALC_int8_gate_13_io_in_op = io_abuf_rd_data[475:442]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3866.4]
  assign NV_soDLA_CACC_CALC_int8_gate_13_io_in_op_valid = calc_in_mask_13 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3867.4]
  assign NV_soDLA_CACC_CALC_int8_gate_13_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3868.4]
  assign NV_soDLA_CACC_CALC_int8_gate_13_io_in_valid = io_mac_a2accu_mask[13]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3869.4]
  assign NV_soDLA_CACC_CALC_int8_gate_14_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3875.4]
  assign NV_soDLA_CACC_CALC_int8_gate_14_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3876.4]
  assign NV_soDLA_CACC_CALC_int8_gate_14_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3877.4]
  assign NV_soDLA_CACC_CALC_int8_gate_14_io_in_data = io_mac_a2accu_data_14; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3878.4]
  assign NV_soDLA_CACC_CALC_int8_gate_14_io_in_op = io_abuf_rd_data[509:476]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3879.4]
  assign NV_soDLA_CACC_CALC_int8_gate_14_io_in_op_valid = calc_in_mask_14 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3880.4]
  assign NV_soDLA_CACC_CALC_int8_gate_14_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3881.4]
  assign NV_soDLA_CACC_CALC_int8_gate_14_io_in_valid = io_mac_a2accu_mask[14]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3882.4]
  assign NV_soDLA_CACC_CALC_int8_gate_15_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3888.4]
  assign NV_soDLA_CACC_CALC_int8_gate_15_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3889.4]
  assign NV_soDLA_CACC_CALC_int8_gate_15_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3890.4]
  assign NV_soDLA_CACC_CALC_int8_gate_15_io_in_data = io_mac_a2accu_data_15; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3891.4]
  assign NV_soDLA_CACC_CALC_int8_gate_15_io_in_op = io_abuf_rd_data[543:510]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3892.4]
  assign NV_soDLA_CACC_CALC_int8_gate_15_io_in_op_valid = calc_in_mask_15 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3893.4]
  assign NV_soDLA_CACC_CALC_int8_gate_15_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3894.4]
  assign NV_soDLA_CACC_CALC_int8_gate_15_io_in_valid = io_mac_a2accu_mask[15]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3895.4]
  assign NV_soDLA_CACC_CALC_int8_gate_16_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3901.4]
  assign NV_soDLA_CACC_CALC_int8_gate_16_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3902.4]
  assign NV_soDLA_CACC_CALC_int8_gate_16_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3903.4]
  assign NV_soDLA_CACC_CALC_int8_gate_16_io_in_data = io_mac_b2accu_data_0; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3904.4]
  assign NV_soDLA_CACC_CALC_int8_gate_16_io_in_op = io_abuf_rd_data[577:544]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3905.4]
  assign NV_soDLA_CACC_CALC_int8_gate_16_io_in_op_valid = calc_in_mask_16 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3906.4]
  assign NV_soDLA_CACC_CALC_int8_gate_16_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3907.4]
  assign NV_soDLA_CACC_CALC_int8_gate_16_io_in_valid = io_mac_b2accu_mask[0]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3908.4]
  assign NV_soDLA_CACC_CALC_int8_gate_17_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3914.4]
  assign NV_soDLA_CACC_CALC_int8_gate_17_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3915.4]
  assign NV_soDLA_CACC_CALC_int8_gate_17_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3916.4]
  assign NV_soDLA_CACC_CALC_int8_gate_17_io_in_data = io_mac_b2accu_data_1; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3917.4]
  assign NV_soDLA_CACC_CALC_int8_gate_17_io_in_op = io_abuf_rd_data[611:578]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3918.4]
  assign NV_soDLA_CACC_CALC_int8_gate_17_io_in_op_valid = calc_in_mask_17 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3919.4]
  assign NV_soDLA_CACC_CALC_int8_gate_17_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3920.4]
  assign NV_soDLA_CACC_CALC_int8_gate_17_io_in_valid = io_mac_b2accu_mask[1]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3921.4]
  assign NV_soDLA_CACC_CALC_int8_gate_18_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3927.4]
  assign NV_soDLA_CACC_CALC_int8_gate_18_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3928.4]
  assign NV_soDLA_CACC_CALC_int8_gate_18_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3929.4]
  assign NV_soDLA_CACC_CALC_int8_gate_18_io_in_data = io_mac_b2accu_data_2; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3930.4]
  assign NV_soDLA_CACC_CALC_int8_gate_18_io_in_op = io_abuf_rd_data[645:612]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3931.4]
  assign NV_soDLA_CACC_CALC_int8_gate_18_io_in_op_valid = calc_in_mask_18 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3932.4]
  assign NV_soDLA_CACC_CALC_int8_gate_18_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3933.4]
  assign NV_soDLA_CACC_CALC_int8_gate_18_io_in_valid = io_mac_b2accu_mask[2]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3934.4]
  assign NV_soDLA_CACC_CALC_int8_gate_19_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3940.4]
  assign NV_soDLA_CACC_CALC_int8_gate_19_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3941.4]
  assign NV_soDLA_CACC_CALC_int8_gate_19_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3942.4]
  assign NV_soDLA_CACC_CALC_int8_gate_19_io_in_data = io_mac_b2accu_data_3; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3943.4]
  assign NV_soDLA_CACC_CALC_int8_gate_19_io_in_op = io_abuf_rd_data[679:646]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3944.4]
  assign NV_soDLA_CACC_CALC_int8_gate_19_io_in_op_valid = calc_in_mask_19 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3945.4]
  assign NV_soDLA_CACC_CALC_int8_gate_19_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3946.4]
  assign NV_soDLA_CACC_CALC_int8_gate_19_io_in_valid = io_mac_b2accu_mask[3]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3947.4]
  assign NV_soDLA_CACC_CALC_int8_gate_20_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3953.4]
  assign NV_soDLA_CACC_CALC_int8_gate_20_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3954.4]
  assign NV_soDLA_CACC_CALC_int8_gate_20_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3955.4]
  assign NV_soDLA_CACC_CALC_int8_gate_20_io_in_data = io_mac_b2accu_data_4; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3956.4]
  assign NV_soDLA_CACC_CALC_int8_gate_20_io_in_op = io_abuf_rd_data[713:680]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3957.4]
  assign NV_soDLA_CACC_CALC_int8_gate_20_io_in_op_valid = calc_in_mask_20 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3958.4]
  assign NV_soDLA_CACC_CALC_int8_gate_20_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3959.4]
  assign NV_soDLA_CACC_CALC_int8_gate_20_io_in_valid = io_mac_b2accu_mask[4]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3960.4]
  assign NV_soDLA_CACC_CALC_int8_gate_21_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3966.4]
  assign NV_soDLA_CACC_CALC_int8_gate_21_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3967.4]
  assign NV_soDLA_CACC_CALC_int8_gate_21_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3968.4]
  assign NV_soDLA_CACC_CALC_int8_gate_21_io_in_data = io_mac_b2accu_data_5; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3969.4]
  assign NV_soDLA_CACC_CALC_int8_gate_21_io_in_op = io_abuf_rd_data[747:714]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3970.4]
  assign NV_soDLA_CACC_CALC_int8_gate_21_io_in_op_valid = calc_in_mask_21 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3971.4]
  assign NV_soDLA_CACC_CALC_int8_gate_21_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3972.4]
  assign NV_soDLA_CACC_CALC_int8_gate_21_io_in_valid = io_mac_b2accu_mask[5]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3973.4]
  assign NV_soDLA_CACC_CALC_int8_gate_22_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3979.4]
  assign NV_soDLA_CACC_CALC_int8_gate_22_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3980.4]
  assign NV_soDLA_CACC_CALC_int8_gate_22_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3981.4]
  assign NV_soDLA_CACC_CALC_int8_gate_22_io_in_data = io_mac_b2accu_data_6; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3982.4]
  assign NV_soDLA_CACC_CALC_int8_gate_22_io_in_op = io_abuf_rd_data[781:748]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3983.4]
  assign NV_soDLA_CACC_CALC_int8_gate_22_io_in_op_valid = calc_in_mask_22 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3984.4]
  assign NV_soDLA_CACC_CALC_int8_gate_22_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3985.4]
  assign NV_soDLA_CACC_CALC_int8_gate_22_io_in_valid = io_mac_b2accu_mask[6]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3986.4]
  assign NV_soDLA_CACC_CALC_int8_gate_23_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3992.4]
  assign NV_soDLA_CACC_CALC_int8_gate_23_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@3993.4]
  assign NV_soDLA_CACC_CALC_int8_gate_23_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@3994.4]
  assign NV_soDLA_CACC_CALC_int8_gate_23_io_in_data = io_mac_b2accu_data_7; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@3995.4]
  assign NV_soDLA_CACC_CALC_int8_gate_23_io_in_op = io_abuf_rd_data[815:782]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@3996.4]
  assign NV_soDLA_CACC_CALC_int8_gate_23_io_in_op_valid = calc_in_mask_23 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@3997.4]
  assign NV_soDLA_CACC_CALC_int8_gate_23_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@3998.4]
  assign NV_soDLA_CACC_CALC_int8_gate_23_io_in_valid = io_mac_b2accu_mask[7]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@3999.4]
  assign NV_soDLA_CACC_CALC_int8_gate_24_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@4005.4]
  assign NV_soDLA_CACC_CALC_int8_gate_24_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@4006.4]
  assign NV_soDLA_CACC_CALC_int8_gate_24_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@4007.4]
  assign NV_soDLA_CACC_CALC_int8_gate_24_io_in_data = io_mac_b2accu_data_8; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@4008.4]
  assign NV_soDLA_CACC_CALC_int8_gate_24_io_in_op = io_abuf_rd_data[849:816]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@4009.4]
  assign NV_soDLA_CACC_CALC_int8_gate_24_io_in_op_valid = calc_in_mask_24 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@4010.4]
  assign NV_soDLA_CACC_CALC_int8_gate_24_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@4011.4]
  assign NV_soDLA_CACC_CALC_int8_gate_24_io_in_valid = io_mac_b2accu_mask[8]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@4012.4]
  assign NV_soDLA_CACC_CALC_int8_gate_25_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@4018.4]
  assign NV_soDLA_CACC_CALC_int8_gate_25_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@4019.4]
  assign NV_soDLA_CACC_CALC_int8_gate_25_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@4020.4]
  assign NV_soDLA_CACC_CALC_int8_gate_25_io_in_data = io_mac_b2accu_data_9; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@4021.4]
  assign NV_soDLA_CACC_CALC_int8_gate_25_io_in_op = io_abuf_rd_data[883:850]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@4022.4]
  assign NV_soDLA_CACC_CALC_int8_gate_25_io_in_op_valid = calc_in_mask_25 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@4023.4]
  assign NV_soDLA_CACC_CALC_int8_gate_25_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@4024.4]
  assign NV_soDLA_CACC_CALC_int8_gate_25_io_in_valid = io_mac_b2accu_mask[9]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@4025.4]
  assign NV_soDLA_CACC_CALC_int8_gate_26_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@4031.4]
  assign NV_soDLA_CACC_CALC_int8_gate_26_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@4032.4]
  assign NV_soDLA_CACC_CALC_int8_gate_26_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@4033.4]
  assign NV_soDLA_CACC_CALC_int8_gate_26_io_in_data = io_mac_b2accu_data_10; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@4034.4]
  assign NV_soDLA_CACC_CALC_int8_gate_26_io_in_op = io_abuf_rd_data[917:884]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@4035.4]
  assign NV_soDLA_CACC_CALC_int8_gate_26_io_in_op_valid = calc_in_mask_26 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@4036.4]
  assign NV_soDLA_CACC_CALC_int8_gate_26_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@4037.4]
  assign NV_soDLA_CACC_CALC_int8_gate_26_io_in_valid = io_mac_b2accu_mask[10]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@4038.4]
  assign NV_soDLA_CACC_CALC_int8_gate_27_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@4044.4]
  assign NV_soDLA_CACC_CALC_int8_gate_27_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@4045.4]
  assign NV_soDLA_CACC_CALC_int8_gate_27_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@4046.4]
  assign NV_soDLA_CACC_CALC_int8_gate_27_io_in_data = io_mac_b2accu_data_11; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@4047.4]
  assign NV_soDLA_CACC_CALC_int8_gate_27_io_in_op = io_abuf_rd_data[951:918]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@4048.4]
  assign NV_soDLA_CACC_CALC_int8_gate_27_io_in_op_valid = calc_in_mask_27 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@4049.4]
  assign NV_soDLA_CACC_CALC_int8_gate_27_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@4050.4]
  assign NV_soDLA_CACC_CALC_int8_gate_27_io_in_valid = io_mac_b2accu_mask[11]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@4051.4]
  assign NV_soDLA_CACC_CALC_int8_gate_28_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@4057.4]
  assign NV_soDLA_CACC_CALC_int8_gate_28_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@4058.4]
  assign NV_soDLA_CACC_CALC_int8_gate_28_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@4059.4]
  assign NV_soDLA_CACC_CALC_int8_gate_28_io_in_data = io_mac_b2accu_data_12; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@4060.4]
  assign NV_soDLA_CACC_CALC_int8_gate_28_io_in_op = io_abuf_rd_data[985:952]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@4061.4]
  assign NV_soDLA_CACC_CALC_int8_gate_28_io_in_op_valid = calc_in_mask_28 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@4062.4]
  assign NV_soDLA_CACC_CALC_int8_gate_28_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@4063.4]
  assign NV_soDLA_CACC_CALC_int8_gate_28_io_in_valid = io_mac_b2accu_mask[12]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@4064.4]
  assign NV_soDLA_CACC_CALC_int8_gate_29_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@4070.4]
  assign NV_soDLA_CACC_CALC_int8_gate_29_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@4071.4]
  assign NV_soDLA_CACC_CALC_int8_gate_29_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@4072.4]
  assign NV_soDLA_CACC_CALC_int8_gate_29_io_in_data = io_mac_b2accu_data_13; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@4073.4]
  assign NV_soDLA_CACC_CALC_int8_gate_29_io_in_op = io_abuf_rd_data[1019:986]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@4074.4]
  assign NV_soDLA_CACC_CALC_int8_gate_29_io_in_op_valid = calc_in_mask_29 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@4075.4]
  assign NV_soDLA_CACC_CALC_int8_gate_29_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@4076.4]
  assign NV_soDLA_CACC_CALC_int8_gate_29_io_in_valid = io_mac_b2accu_mask[13]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@4077.4]
  assign NV_soDLA_CACC_CALC_int8_gate_30_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@4083.4]
  assign NV_soDLA_CACC_CALC_int8_gate_30_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@4084.4]
  assign NV_soDLA_CACC_CALC_int8_gate_30_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@4085.4]
  assign NV_soDLA_CACC_CALC_int8_gate_30_io_in_data = io_mac_b2accu_data_14; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@4086.4]
  assign NV_soDLA_CACC_CALC_int8_gate_30_io_in_op = io_abuf_rd_data[1053:1020]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@4087.4]
  assign NV_soDLA_CACC_CALC_int8_gate_30_io_in_op_valid = calc_in_mask_30 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@4088.4]
  assign NV_soDLA_CACC_CALC_int8_gate_30_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@4089.4]
  assign NV_soDLA_CACC_CALC_int8_gate_30_io_in_valid = io_mac_b2accu_mask[14]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@4090.4]
  assign NV_soDLA_CACC_CALC_int8_gate_31_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@4096.4]
  assign NV_soDLA_CACC_CALC_int8_gate_31_io_nvdla_core_rstn = io_nvdla_core_rstn; // @[NV_soDLA_CACC_calculator_gate.scala 117:43:@4097.4]
  assign NV_soDLA_CACC_CALC_int8_gate_31_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 118:40:@4098.4]
  assign NV_soDLA_CACC_CALC_int8_gate_31_io_in_data = io_mac_b2accu_data_15; // @[NV_soDLA_CACC_calculator_gate.scala 119:35:@4099.4]
  assign NV_soDLA_CACC_CALC_int8_gate_31_io_in_op = io_abuf_rd_data[1087:1054]; // @[NV_soDLA_CACC_calculator_gate.scala 120:33:@4100.4]
  assign NV_soDLA_CACC_CALC_int8_gate_31_io_in_op_valid = calc_in_mask_31 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 121:39:@4101.4]
  assign NV_soDLA_CACC_CALC_int8_gate_31_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 122:34:@4102.4]
  assign NV_soDLA_CACC_CALC_int8_gate_31_io_in_valid = io_mac_b2accu_mask[15]; // @[NV_soDLA_CACC_calculator_gate.scala 123:36:@4103.4]
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
  accu_ctrl_pd_d1 = _RAND_0[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_204 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_206 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  calc_valid = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_610 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_617 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  calc_wr_en_out = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_624 = _RAND_7[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  calc_addr_out = _RAND_8[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_631 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  calc_dlv_valid_out = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_638 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  calc_stripe_end_out = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_645 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  calc_layer_end_out = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_1044 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_1047 = _RAND_16[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {34{`RANDOM}};
  _T_1080 = _RAND_17[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {32{`RANDOM}};
  _T_1113 = _RAND_18[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_1116 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_1119 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  dlv_stripe_end = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  dlv_layer_end = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  dlv_sat_vld_d1 = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  dlv_sat_end_d1 = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  dlv_sat_bit_d1_0 = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  dlv_sat_bit_d1_1 = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  dlv_sat_bit_d1_2 = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  dlv_sat_bit_d1_3 = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  dlv_sat_bit_d1_4 = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  dlv_sat_bit_d1_5 = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  dlv_sat_bit_d1_6 = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  dlv_sat_bit_d1_7 = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  dlv_sat_bit_d1_8 = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  dlv_sat_bit_d1_9 = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  dlv_sat_bit_d1_10 = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  dlv_sat_bit_d1_11 = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  dlv_sat_bit_d1_12 = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  dlv_sat_bit_d1_13 = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  dlv_sat_bit_d1_14 = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  dlv_sat_bit_d1_15 = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  dlv_sat_bit_d1_16 = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  dlv_sat_bit_d1_17 = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  dlv_sat_bit_d1_18 = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  dlv_sat_bit_d1_19 = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  dlv_sat_bit_d1_20 = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  dlv_sat_bit_d1_21 = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  dlv_sat_bit_d1_22 = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  dlv_sat_bit_d1_23 = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  dlv_sat_bit_d1_24 = _RAND_49[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  dlv_sat_bit_d1_25 = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  dlv_sat_bit_d1_26 = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  dlv_sat_bit_d1_27 = _RAND_52[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  dlv_sat_bit_d1_28 = _RAND_53[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  dlv_sat_bit_d1_29 = _RAND_54[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  dlv_sat_bit_d1_30 = _RAND_55[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  dlv_sat_bit_d1_31 = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  dlv_sat_clr_d1 = _RAND_57[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  sat_count = _RAND_58[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (_T_130) begin
      accu_ctrl_pd_d1 <= 13'h0;
    end else begin
      if (io_accu_ctrl_valid) begin
        accu_ctrl_pd_d1 <= io_accu_ctrl_pd;
      end
    end
    _T_204 <= io_mac_b2accu_pvld | io_mac_a2accu_pvld;
    _T_206 <= _T_204;
    calc_valid <= _T_206;
    if (_T_130) begin
      _T_610 <= 1'h0;
    end else begin
      _T_610 <= calc_valid;
    end
    if (_T_130) begin
      _T_617 <= 1'h0;
    end else begin
      _T_617 <= calc_wr_en;
    end
    if (_T_130) begin
      calc_wr_en_out <= 1'h0;
    end else begin
      calc_wr_en_out <= _T_617;
    end
    if (_T_130) begin
      _T_624 <= 6'h0;
    end else begin
      if (calc_valid) begin
        _T_624 <= calc_addr;
      end
    end
    if (_T_130) begin
      calc_addr_out <= 6'h0;
    end else begin
      if (_T_610) begin
        calc_addr_out <= _T_624;
      end
    end
    if (_T_130) begin
      _T_631 <= 1'h0;
    end else begin
      _T_631 <= calc_dlv_valid;
    end
    if (_T_130) begin
      calc_dlv_valid_out <= 1'h0;
    end else begin
      calc_dlv_valid_out <= _T_631;
    end
    if (_T_130) begin
      _T_638 <= 1'h0;
    end else begin
      if (calc_dlv_valid) begin
        _T_638 <= calc_stripe_end;
      end
    end
    if (_T_130) begin
      calc_stripe_end_out <= 1'h0;
    end else begin
      if (_T_631) begin
        calc_stripe_end_out <= _T_638;
      end
    end
    if (_T_130) begin
      _T_645 <= 1'h0;
    end else begin
      if (calc_dlv_valid) begin
        _T_645 <= calc_layer_end;
      end
    end
    if (_T_130) begin
      calc_layer_end_out <= 1'h0;
    end else begin
      if (_T_631) begin
        calc_layer_end_out <= _T_645;
      end
    end
    if (_T_130) begin
      _T_1044 <= 1'h0;
    end else begin
      _T_1044 <= calc_wr_en_out;
    end
    if (_T_130) begin
      _T_1047 <= 6'h0;
    end else begin
      if (calc_wr_en_out) begin
        _T_1047 <= calc_addr_out;
      end
    end
    if (calc_wr_en_out) begin
      _T_1080 <= _T_1078;
    end
    if (calc_dlv_valid_out) begin
      _T_1113 <= _T_1111;
    end
    if (_T_130) begin
      _T_1116 <= 1'h0;
    end else begin
      _T_1116 <= calc_dlv_valid_out;
    end
    if (_T_130) begin
      _T_1119 <= 1'h0;
    end else begin
      _T_1119 <= calc_dlv_valid_out;
    end
    if (_T_130) begin
      dlv_stripe_end <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_stripe_end <= calc_stripe_end_out;
      end
    end
    if (_T_130) begin
      dlv_layer_end <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_layer_end <= calc_layer_end_out;
      end
    end
    if (_T_130) begin
      dlv_sat_vld_d1 <= 1'h0;
    end else begin
      dlv_sat_vld_d1 <= calc_dlv_valid_out;
    end
    if (_T_130) begin
      dlv_sat_end_d1 <= 1'h1;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_end_d1 <= dlv_sat_end;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_0 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_0 <= calc_fout_sat_0;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_1 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_1 <= calc_fout_sat_1;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_2 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_2 <= calc_fout_sat_2;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_3 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_3 <= calc_fout_sat_3;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_4 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_4 <= calc_fout_sat_4;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_5 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_5 <= calc_fout_sat_5;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_6 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_6 <= calc_fout_sat_6;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_7 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_7 <= calc_fout_sat_7;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_8 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_8 <= calc_fout_sat_8;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_9 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_9 <= calc_fout_sat_9;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_10 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_10 <= calc_fout_sat_10;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_11 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_11 <= calc_fout_sat_11;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_12 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_12 <= calc_fout_sat_12;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_13 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_13 <= calc_fout_sat_13;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_14 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_14 <= calc_fout_sat_14;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_15 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_15 <= calc_fout_sat_15;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_16 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_16 <= calc_fout_sat_16;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_17 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_17 <= calc_fout_sat_17;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_18 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_18 <= calc_fout_sat_18;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_19 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_19 <= calc_fout_sat_19;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_20 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_20 <= calc_fout_sat_20;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_21 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_21 <= calc_fout_sat_21;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_22 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_22 <= calc_fout_sat_22;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_23 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_23 <= calc_fout_sat_23;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_24 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_24 <= calc_fout_sat_24;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_25 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_25 <= calc_fout_sat_25;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_26 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_26 <= calc_fout_sat_26;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_27 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_27 <= calc_fout_sat_27;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_28 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_28 <= calc_fout_sat_28;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_29 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_29 <= calc_fout_sat_29;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_30 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_30 <= calc_fout_sat_30;
      end
    end
    if (_T_130) begin
      dlv_sat_bit_d1_31 <= 1'h0;
    end else begin
      if (calc_dlv_valid_out) begin
        dlv_sat_bit_d1_31 <= calc_fout_sat_31;
      end
    end
    if (_T_130) begin
      dlv_sat_clr_d1 <= 1'h0;
    end else begin
      dlv_sat_clr_d1 <= dlv_sat_clr;
    end
    if (_T_130) begin
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
