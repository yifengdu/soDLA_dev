module NV_soDLA_CACC_CALC_int8_gate( // @[:@3.2]
  input         nvdla_core_clk, // @[:@6.4]
  input         nvdla_core_rstn, // @[:@6.4]
  input  [4:0]  cfg_truncate, // @[:@6.4]
  input  [21:0] in_data, // @[:@6.4]
  input  [33:0] in_op, // @[:@6.4]
  input         in_op_valid, // @[:@6.4]
  input         in_sel, // @[:@6.4]
  input         in_valid, // @[:@6.4]
  output [31:0] out_final_data, // @[:@6.4]
  output        out_final_sat, // @[:@6.4]
  output        out_final_valid, // @[:@6.4]
  output [33:0] out_partial_data, // @[:@6.4]
  output        out_partial_valid // @[:@6.4]
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
  assign _T_32 = nvdla_core_rstn == 1'h0; // @[NV_soDLA_CACC_CALC_int8_gate.scala 53:38:@8.4]
  assign _T_38 = $signed(in_data); // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:33:@15.6]
  assign _T_40 = in_op_valid ? in_op : 34'h0; // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:46:@16.6]
  assign _T_41 = $signed(_T_40); // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:89:@17.6]
  assign _GEN_5 = {{12{_T_38[21]}},_T_38}; // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:40:@18.6]
  assign _T_42 = $signed(_GEN_5) + $signed(_T_41); // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:40:@18.6]
  assign _T_43 = $unsigned(_T_42); // @[NV_soDLA_CACC_CALC_int8_gate.scala 64:97:@19.6]
  assign _GEN_0 = in_valid ? in_sel : i_sat_sel; // @[NV_soDLA_CACC_CALC_int8_gate.scala 62:22:@13.4]
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
  assign i_pre_sft_pd_pack = $signed(_T_62) >>> cfg_truncate; // @[NV_soDLA_CACC_CALC_int8_gate.scala 90:73:@44.4]
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
  assign out_final_data = _T_114; // @[NV_soDLA_CACC_CALC_int8_gate.scala 113:23:@104.4]
  assign out_final_sat = _T_112; // @[NV_soDLA_CACC_CALC_int8_gate.scala 112:22:@99.4]
  assign out_final_valid = _T_108; // @[NV_soDLA_CACC_CALC_int8_gate.scala 111:24:@95.4]
  assign out_partial_data = _T_105; // @[NV_soDLA_CACC_CALC_int8_gate.scala 110:25:@92.4]
  assign out_partial_valid = _T_103; // @[NV_soDLA_CACC_CALC_int8_gate.scala 109:26:@87.4]
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
  always @(posedge nvdla_core_clk) begin
    if (_T_32) begin
      i_sat_vld <= 1'h0;
    end else begin
      i_sat_vld <= in_valid;
    end
    if (_T_32) begin
      i_sat_sel <= 1'h0;
    end else begin
      if (in_valid) begin
        i_sat_sel <= in_sel;
      end
    end
    if (in_valid) begin
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

// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================

// File Name: NV_NVDLA_CACC_CALC_int8.v

module NV_NVDLA_CACC_CALC_int8 (
   nvdla_core_clk
  ,nvdla_core_rstn
  ,cfg_truncate
  ,in_data
  ,in_op
  ,in_op_valid
  ,in_sel
  ,in_valid
  ,out_final_data
  ,out_final_sat
  ,out_final_valid
  ,out_partial_data
  ,out_partial_valid
  );
input   [4:0] cfg_truncate;
input  [21:0] in_data;
input  [33:0] in_op;
input         in_op_valid;
input         in_sel;
input         in_valid;
output [31:0] out_final_data;
output        out_final_sat;
output        out_final_valid;
output [33:0] out_partial_data;
output        out_partial_valid;

input nvdla_core_clk;
input nvdla_core_rstn;

reg    [32:0] i_sat_bits;
reg           i_sat_sel;
reg           i_sat_vld;
reg    [34:0] i_sum_pd;
reg    [31:0] out_final_data;
reg           out_final_sat;
reg           out_final_valid;
reg    [33:0] out_partial_data;
reg           out_partial_valid;
wire   [21:0] di_pd;
wire   [31:0] i_final_result;
wire          i_final_vld;
wire          i_guide;
wire   [33:0] i_partial_result;
wire          i_partial_vld;
wire          i_point5;
wire   [31:0] i_pos_pd;
wire   [33:0] i_pre_sft_pd;
wire   [33:0] i_sat_pd;
wire          i_sat_sign;
wire          i_sel;
wire   [31:0] i_sft_max;
wire          i_sft_need_sat;
wire   [33:0] i_sft_pd;
wire   [14:0] i_stick;
wire          i_sum_msb;
wire   [34:0] i_sum_pd_nxt;
wire          i_sum_sign;
wire   [31:0] i_tru_pd;
wire          i_vld;
wire   [33:0] in_mask_op;
wire          mon_pos_pd_c;
wire   [33:0] oi_pd;

    

assign i_sel = in_sel;
assign i_vld = in_valid;
assign in_mask_op = in_op_valid ? in_op[33:0] : 34'b0;

assign di_pd = in_data[21:0];
assign oi_pd = in_mask_op[33:0];

always @(posedge nvdla_core_clk) begin
  if (!nvdla_core_rstn) begin
    i_sat_vld <= 1'b0;
  end else begin
  i_sat_vld <= i_vld;
  end
end
always @(posedge nvdla_core_clk) begin
  if (!nvdla_core_rstn) begin
    i_sat_sel <= 1'b0;
  end else begin
  if ((i_vld) == 1'b1) begin
    i_sat_sel <= i_sel;
  // VCS coverage off
  end else if ((i_vld) == 1'b0) begin
  end else begin
    i_sat_sel <= 'bx;  // spyglass disable STARC-2.10.1.6 W443 NoWidthInBasedNum-ML -- (Constant containing x or z used, Based number `bx contains an X, Width specification missing for based number)
  // VCS coverage on
  end
  end
end

//====================
// Addition
//====================
assign i_sum_pd_nxt[34:0] = $signed(di_pd) + $signed(oi_pd);
always @(posedge nvdla_core_clk) begin
  if ((i_vld) == 1'b1) begin
    i_sum_pd <= i_sum_pd_nxt;
  // VCS coverage off
  end else if ((i_vld) == 1'b0) begin
  end else begin
    i_sum_pd <= 'bx;  // spyglass disable STARC-2.10.1.6 W443 NoWidthInBasedNum-ML -- (Constant containing x or z used, Based number `bx contains an X, Width specification missing for based number)
  // VCS coverage on
  end
end

//====================
// narrow down to 34bit, and need satuation only
//====================
assign i_sum_sign = i_sum_pd[34 +1 -1];
assign i_sum_msb  = i_sum_pd[34 +1 -2];
assign i_sat_sign = i_sum_sign;

always @(
  i_sum_sign
  or i_sum_msb
  or i_sum_pd
  ) begin
    if (i_sum_sign ^ i_sum_msb) begin // overflow, need satuation
        i_sat_bits = {33{~i_sum_sign}};
    end else begin
        i_sat_bits = i_sum_pd[32:0];
    end
end

assign i_sat_pd = {i_sat_sign,i_sat_bits};
assign i_partial_result = i_sat_pd;

//====================
// narrow down to 32bit, and need rounding and satuation 
//====================
assign i_pre_sft_pd = i_sat_sel ? i_sat_pd[33:0] : {34{1'b0}};
assign {i_sft_pd[33:0], i_guide, i_stick[14:0]} = ($signed({i_pre_sft_pd, 16'b0}) >>> cfg_truncate);

assign i_sft_need_sat = (i_sat_sign & ~(&i_sft_pd[32:31])) |
                        (~i_sat_sign & (|i_sft_pd[32:31])) |
                        (~i_sat_sign & (&{i_sft_pd[30:0], i_point5}));
assign i_sft_max      = i_sat_sign ? {1'b1, 31'b0} : ~{1'b1, 31'b0};

assign i_point5 = i_sat_sel & i_guide & (~i_sat_sign | (|i_stick));
assign {mon_pos_pd_c, i_pos_pd[31:0]} = i_sft_pd[31:0] + i_point5;
assign i_tru_pd   = i_pos_pd;

assign i_final_result = i_sft_need_sat ? i_sft_max : i_tru_pd;

assign i_partial_vld = i_sat_vld & ~i_sat_sel;
assign i_final_vld = i_sat_vld & i_sat_sel;

//====================
always @(posedge nvdla_core_clk) begin
  if (!nvdla_core_rstn) begin
    out_partial_valid <= 1'b0;
  end else begin
  out_partial_valid <= i_partial_vld;
  end
end

// spyglass disable_block STARC05-3.3.1.4b
always @(posedge nvdla_core_clk) begin
  if ((i_partial_vld) == 1'b1) begin
    out_partial_data <= i_partial_result;
  // VCS coverage off
  end else if ((i_partial_vld) == 1'b0) begin
  end else begin
    out_partial_data <= 'bx;  // spyglass disable STARC-2.10.1.6 W443 NoWidthInBasedNum-ML -- (Constant containing x or z used, Based number `bx contains an X, Width specification missing for based number)
  // VCS coverage on
  end
end
// spyglass enable_block STARC05-3.3.1.4b

always @(posedge nvdla_core_clk) begin
  if (!nvdla_core_rstn) begin
    out_final_valid <= 1'b0;
  end else begin
  out_final_valid <= i_final_vld;
  end
end
always @(posedge nvdla_core_clk) begin
  if (!nvdla_core_rstn) begin
    out_final_sat <= 1'b0;
  end else begin
  out_final_sat <= i_final_vld & i_sft_need_sat;
  end
end

// spyglass disable_block STARC05-3.3.1.4b
always @(posedge nvdla_core_clk) begin
  if ((i_final_vld) == 1'b1) begin
    out_final_data <= i_final_result;
  // VCS coverage off
  end else if ((i_final_vld) == 1'b0) begin
  end else begin
    out_final_data <= 'bx;  // spyglass disable STARC-2.10.1.6 W443 NoWidthInBasedNum-ML -- (Constant containing x or z used, Based number `bx contains an X, Width specification missing for based number)
  // VCS coverage on
  end
end
// spyglass enable_block STARC05-3.3.1.4b

//VCS coverage off
`ifndef DISABLE_FUNCPOINT
  `ifdef ENABLE_FUNCPOINT

    reg funcpoint_cover_off;
    initial begin
        if ( $test$plusargs( "cover_off" ) ) begin
            funcpoint_cover_off = 1'b1;
        end else begin
            funcpoint_cover_off = 1'b0;
        end
    end

    property cacc_calc_int8__partial_sum_need_sat__0_cov;
        disable iff((nvdla_core_rstn !== 1) || funcpoint_cover_off)
        @(posedge nvdla_core_clk)
        i_sum_sign ^ i_sum_msb;
    endproperty
    // Cover 0 : "i_sum_sign ^ i_sum_msb"
    FUNCPOINT_cacc_calc_int8__partial_sum_need_sat__0_COV : cover property (cacc_calc_int8__partial_sum_need_sat__0_cov);

  `endif
`endif
//VCS coverage on

//VCS coverage off
`ifndef DISABLE_FUNCPOINT
  `ifdef ENABLE_FUNCPOINT

    property cacc_calc_int8__out32_need_sat_pos__1_cov;
        disable iff((nvdla_core_rstn !== 1) || funcpoint_cover_off)
        @(posedge nvdla_core_clk)
        i_sft_need_sat & ~i_sat_sign & ~i_point5;
    endproperty
    // Cover 1 : "i_sft_need_sat & ~i_sat_sign & ~i_point5"
    FUNCPOINT_cacc_calc_int8__out32_need_sat_pos__1_COV : cover property (cacc_calc_int8__out32_need_sat_pos__1_cov);

  `endif
`endif
//VCS coverage on

//VCS coverage off
`ifndef DISABLE_FUNCPOINT
  `ifdef ENABLE_FUNCPOINT

    property cacc_calc_int8__out32_round_need_sat_pos__2_cov;
        disable iff((nvdla_core_rstn !== 1) || funcpoint_cover_off)
        @(posedge nvdla_core_clk)
        i_sft_need_sat & ~i_sat_sign & i_point5;
    endproperty
    // Cover 2 : "i_sft_need_sat & ~i_sat_sign & i_point5"
    FUNCPOINT_cacc_calc_int8__out32_round_need_sat_pos__2_COV : cover property (cacc_calc_int8__out32_round_need_sat_pos__2_cov);

  `endif
`endif
//VCS coverage on

//VCS coverage off
`ifndef DISABLE_FUNCPOINT
  `ifdef ENABLE_FUNCPOINT

    property cacc_calc_int8__out32_round_need_sat_neg__3_cov;
        disable iff((nvdla_core_rstn !== 1) || funcpoint_cover_off)
        @(posedge nvdla_core_clk)
        i_sft_need_sat & i_sat_sign;
    endproperty
    // Cover 3 : "i_sft_need_sat & i_sat_sign"
    FUNCPOINT_cacc_calc_int8__out32_round_need_sat_neg__3_COV : cover property (cacc_calc_int8__out32_round_need_sat_neg__3_cov);

  `endif
`endif
//VCS coverage on



endmodule // NV_NVDLA_CACC_CALC_int8
