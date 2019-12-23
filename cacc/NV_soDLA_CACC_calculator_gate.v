module NV_NVDLA_CACC_CALC_int8( // @[:@3.2]
  input         reset, // @[:@5.4]
  input         io_nvdla_core_clk, // @[:@6.4]
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
  reg  _T_31; // @[NV_NVDLA_CACC_CALC_int8.scala 55:28:@8.4]
  reg [31:0] _RAND_0;
  reg  _T_34; // @[NV_NVDLA_CACC_CALC_int8.scala 56:29:@9.4]
  reg [31:0] _RAND_1;
  reg [34:0] _T_36; // @[NV_NVDLA_CACC_CALC_int8.scala 57:23:@10.4]
  reg [63:0] _RAND_2;
  wire [21:0] _T_37; // @[NV_NVDLA_CACC_CALC_int8.scala 62:33:@14.6]
  wire [33:0] _T_39; // @[NV_NVDLA_CACC_CALC_int8.scala 62:46:@15.6]
  wire [33:0] _T_40; // @[NV_NVDLA_CACC_CALC_int8.scala 62:89:@16.6]
  wire [33:0] _GEN_5; // @[NV_NVDLA_CACC_CALC_int8.scala 62:40:@17.6]
  wire [34:0] _T_41; // @[NV_NVDLA_CACC_CALC_int8.scala 62:40:@17.6]
  wire [34:0] _T_42; // @[NV_NVDLA_CACC_CALC_int8.scala 62:97:@18.6]
  wire  _GEN_0; // @[NV_NVDLA_CACC_CALC_int8.scala 60:22:@12.4]
  wire  _T_43; // @[NV_NVDLA_CACC_CALC_int8.scala 68:30:@21.4]
  wire  _T_44; // @[NV_NVDLA_CACC_CALC_int8.scala 69:29:@22.4]
  wire  _T_48; // @[NV_NVDLA_CACC_CALC_int8.scala 73:20:@25.4]
  wire  _T_49; // @[NV_NVDLA_CACC_CALC_int8.scala 74:32:@27.6]
  wire [32:0] _T_53; // @[Bitwise.scala 72:12:@29.6]
  wire [32:0] _T_54; // @[NV_NVDLA_CACC_CALC_int8.scala 77:31:@33.6]
  wire [32:0] _GEN_2; // @[NV_NVDLA_CACC_CALC_int8.scala 73:31:@26.4]
  wire [33:0] _T_55; // @[Cat.scala 30:58:@36.4]
  wire [33:0] _T_64; // @[NV_NVDLA_CACC_CALC_int8.scala 87:27:@40.4]
  wire [49:0] _T_66; // @[Cat.scala 30:58:@41.4]
  wire [49:0] _T_67; // @[NV_NVDLA_CACC_CALC_int8.scala 88:66:@42.4]
  wire [49:0] _T_68; // @[NV_NVDLA_CACC_CALC_int8.scala 88:73:@43.4]
  wire [49:0] _T_69; // @[Cat.scala 30:58:@44.4]
  wire [33:0] _T_70; // @[NV_NVDLA_CACC_CALC_int8.scala 89:42:@45.4]
  wire  _T_72; // @[NV_NVDLA_CACC_CALC_int8.scala 90:41:@47.4]
  wire [14:0] _T_74; // @[NV_NVDLA_CACC_CALC_int8.scala 91:41:@49.4]
  wire [1:0] _T_75; // @[NV_NVDLA_CACC_CALC_int8.scala 93:51:@50.4]
  wire [1:0] _T_76; // @[NV_NVDLA_CACC_CALC_int8.scala 93:60:@51.4]
  wire  _T_78; // @[NV_NVDLA_CACC_CALC_int8.scala 93:60:@52.4]
  wire  _T_79; // @[NV_NVDLA_CACC_CALC_int8.scala 93:41:@53.4]
  wire  _T_80; // @[NV_NVDLA_CACC_CALC_int8.scala 93:38:@54.4]
  wire  _T_84; // @[NV_NVDLA_CACC_CALC_int8.scala 94:59:@57.4]
  wire  _T_85; // @[NV_NVDLA_CACC_CALC_int8.scala 94:39:@58.4]
  wire  _T_86; // @[NV_NVDLA_CACC_CALC_int8.scala 93:67:@59.4]
  wire [30:0] _T_88; // @[NV_NVDLA_CACC_CALC_int8.scala 95:53:@61.4]
  wire  _T_103; // @[NV_NVDLA_CACC_CALC_int8.scala 98:27:@71.4]
  wire  _T_106; // @[NV_NVDLA_CACC_CALC_int8.scala 98:61:@73.4]
  wire  _T_107; // @[NV_NVDLA_CACC_CALC_int8.scala 98:51:@74.4]
  wire  _T_108; // @[NV_NVDLA_CACC_CALC_int8.scala 98:37:@75.4]
  wire [31:0] _T_89; // @[Cat.scala 30:58:@62.4]
  wire [31:0] _T_90; // @[NV_NVDLA_CACC_CALC_int8.scala 95:71:@63.4]
  wire  _T_92; // @[NV_NVDLA_CACC_CALC_int8.scala 95:71:@64.4]
  wire  _T_93; // @[NV_NVDLA_CACC_CALC_int8.scala 95:39:@65.4]
  wire  _T_94; // @[NV_NVDLA_CACC_CALC_int8.scala 94:65:@66.4]
  wire [31:0] _T_102; // @[NV_NVDLA_CACC_CALC_int8.scala 96:24:@70.4]
  wire [31:0] _T_109; // @[NV_NVDLA_CACC_CALC_int8.scala 99:28:@77.4]
  wire [31:0] _GEN_6; // @[NV_NVDLA_CACC_CALC_int8.scala 99:36:@78.4]
  wire [32:0] _T_110; // @[NV_NVDLA_CACC_CALC_int8.scala 99:36:@78.4]
  wire [31:0] _T_111; // @[NV_NVDLA_CACC_CALC_int8.scala 99:36:@79.4]
  wire [31:0] _T_112; // @[NV_NVDLA_CACC_CALC_int8.scala 102:29:@80.4]
  wire  _T_113; // @[NV_NVDLA_CACC_CALC_int8.scala 104:37:@81.4]
  wire  _T_114; // @[NV_NVDLA_CACC_CALC_int8.scala 104:35:@82.4]
  wire  _T_115; // @[NV_NVDLA_CACC_CALC_int8.scala 105:32:@83.4]
  reg  _T_118; // @[NV_NVDLA_CACC_CALC_int8.scala 107:36:@84.4]
  reg [31:0] _RAND_3;
  reg [33:0] _T_120; // @[Reg.scala 11:16:@87.4]
  reg [63:0] _RAND_4;
  reg  _T_123; // @[NV_NVDLA_CACC_CALC_int8.scala 109:34:@92.4]
  reg [31:0] _RAND_5;
  wire  _T_124; // @[NV_NVDLA_CACC_CALC_int8.scala 110:45:@95.4]
  reg  _T_127; // @[NV_NVDLA_CACC_CALC_int8.scala 110:32:@96.4]
  reg [31:0] _RAND_6;
  reg [31:0] _T_129; // @[Reg.scala 11:16:@99.4]
  reg [31:0] _RAND_7;
  assign _T_37 = $signed(io_in_data); // @[NV_NVDLA_CACC_CALC_int8.scala 62:33:@14.6]
  assign _T_39 = io_in_op_valid ? io_in_op : 34'h0; // @[NV_NVDLA_CACC_CALC_int8.scala 62:46:@15.6]
  assign _T_40 = $signed(_T_39); // @[NV_NVDLA_CACC_CALC_int8.scala 62:89:@16.6]
  assign _GEN_5 = {{12{_T_37[21]}},_T_37}; // @[NV_NVDLA_CACC_CALC_int8.scala 62:40:@17.6]
  assign _T_41 = $signed(_GEN_5) + $signed(_T_40); // @[NV_NVDLA_CACC_CALC_int8.scala 62:40:@17.6]
  assign _T_42 = $unsigned(_T_41); // @[NV_NVDLA_CACC_CALC_int8.scala 62:97:@18.6]
  assign _GEN_0 = io_in_valid ? io_in_sel : _T_34; // @[NV_NVDLA_CACC_CALC_int8.scala 60:22:@12.4]
  assign _T_43 = _T_36[34]; // @[NV_NVDLA_CACC_CALC_int8.scala 68:30:@21.4]
  assign _T_44 = _T_36[33]; // @[NV_NVDLA_CACC_CALC_int8.scala 69:29:@22.4]
  assign _T_48 = _T_43 ^ _T_44; // @[NV_NVDLA_CACC_CALC_int8.scala 73:20:@25.4]
  assign _T_49 = ~ _T_43; // @[NV_NVDLA_CACC_CALC_int8.scala 74:32:@27.6]
  assign _T_53 = _T_49 ? 33'h1ffffffff : 33'h0; // @[Bitwise.scala 72:12:@29.6]
  assign _T_54 = _T_36[32:0]; // @[NV_NVDLA_CACC_CALC_int8.scala 77:31:@33.6]
  assign _GEN_2 = _T_48 ? _T_53 : _T_54; // @[NV_NVDLA_CACC_CALC_int8.scala 73:31:@26.4]
  assign _T_55 = {_T_43,_GEN_2}; // @[Cat.scala 30:58:@36.4]
  assign _T_64 = _T_34 ? _T_55 : 34'h0; // @[NV_NVDLA_CACC_CALC_int8.scala 87:27:@40.4]
  assign _T_66 = {_T_64,16'h0}; // @[Cat.scala 30:58:@41.4]
  assign _T_67 = $signed(_T_66); // @[NV_NVDLA_CACC_CALC_int8.scala 88:66:@42.4]
  assign _T_68 = $signed(_T_67) >>> io_cfg_truncate; // @[NV_NVDLA_CACC_CALC_int8.scala 88:73:@43.4]
  assign _T_69 = $unsigned(_T_68); // @[Cat.scala 30:58:@44.4]
  assign _T_70 = _T_69[49:16]; // @[NV_NVDLA_CACC_CALC_int8.scala 89:42:@45.4]
  assign _T_72 = _T_69[15]; // @[NV_NVDLA_CACC_CALC_int8.scala 90:41:@47.4]
  assign _T_74 = _T_69[14:0]; // @[NV_NVDLA_CACC_CALC_int8.scala 91:41:@49.4]
  assign _T_75 = _T_70[32:31]; // @[NV_NVDLA_CACC_CALC_int8.scala 93:51:@50.4]
  assign _T_76 = ~ _T_75; // @[NV_NVDLA_CACC_CALC_int8.scala 93:60:@51.4]
  assign _T_78 = _T_76 == 2'h0; // @[NV_NVDLA_CACC_CALC_int8.scala 93:60:@52.4]
  assign _T_79 = ~ _T_78; // @[NV_NVDLA_CACC_CALC_int8.scala 93:41:@53.4]
  assign _T_80 = _T_43 & _T_79; // @[NV_NVDLA_CACC_CALC_int8.scala 93:38:@54.4]
  assign _T_84 = _T_75 != 2'h0; // @[NV_NVDLA_CACC_CALC_int8.scala 94:59:@57.4]
  assign _T_85 = _T_49 & _T_84; // @[NV_NVDLA_CACC_CALC_int8.scala 94:39:@58.4]
  assign _T_86 = _T_80 | _T_85; // @[NV_NVDLA_CACC_CALC_int8.scala 93:67:@59.4]
  assign _T_88 = _T_70[30:0]; // @[NV_NVDLA_CACC_CALC_int8.scala 95:53:@61.4]
  assign _T_103 = _T_34 & _T_72; // @[NV_NVDLA_CACC_CALC_int8.scala 98:27:@71.4]
  assign _T_106 = _T_74 != 15'h0; // @[NV_NVDLA_CACC_CALC_int8.scala 98:61:@73.4]
  assign _T_107 = _T_49 | _T_106; // @[NV_NVDLA_CACC_CALC_int8.scala 98:51:@74.4]
  assign _T_108 = _T_103 & _T_107; // @[NV_NVDLA_CACC_CALC_int8.scala 98:37:@75.4]
  assign _T_89 = {_T_88,_T_108}; // @[Cat.scala 30:58:@62.4]
  assign _T_90 = ~ _T_89; // @[NV_NVDLA_CACC_CALC_int8.scala 95:71:@63.4]
  assign _T_92 = _T_90 == 32'h0; // @[NV_NVDLA_CACC_CALC_int8.scala 95:71:@64.4]
  assign _T_93 = _T_49 & _T_92; // @[NV_NVDLA_CACC_CALC_int8.scala 95:39:@65.4]
  assign _T_94 = _T_86 | _T_93; // @[NV_NVDLA_CACC_CALC_int8.scala 94:65:@66.4]
  assign _T_102 = _T_43 ? 32'h80000000 : 32'h7fffffff; // @[NV_NVDLA_CACC_CALC_int8.scala 96:24:@70.4]
  assign _T_109 = _T_70[31:0]; // @[NV_NVDLA_CACC_CALC_int8.scala 99:28:@77.4]
  assign _GEN_6 = {{31'd0}, _T_108}; // @[NV_NVDLA_CACC_CALC_int8.scala 99:36:@78.4]
  assign _T_110 = _T_109 + _GEN_6; // @[NV_NVDLA_CACC_CALC_int8.scala 99:36:@78.4]
  assign _T_111 = _T_109 + _GEN_6; // @[NV_NVDLA_CACC_CALC_int8.scala 99:36:@79.4]
  assign _T_112 = _T_94 ? _T_102 : _T_111; // @[NV_NVDLA_CACC_CALC_int8.scala 102:29:@80.4]
  assign _T_113 = ~ _T_34; // @[NV_NVDLA_CACC_CALC_int8.scala 104:37:@81.4]
  assign _T_114 = _T_31 & _T_113; // @[NV_NVDLA_CACC_CALC_int8.scala 104:35:@82.4]
  assign _T_115 = _T_31 & _T_34; // @[NV_NVDLA_CACC_CALC_int8.scala 105:32:@83.4]
  assign _T_124 = _T_115 & _T_94; // @[NV_NVDLA_CACC_CALC_int8.scala 110:45:@95.4]
  assign io_out_final_data = _T_129; // @[NV_NVDLA_CACC_CALC_int8.scala 111:23:@103.4]
  assign io_out_final_sat = _T_127; // @[NV_NVDLA_CACC_CALC_int8.scala 110:22:@98.4]
  assign io_out_final_valid = _T_123; // @[NV_NVDLA_CACC_CALC_int8.scala 109:24:@94.4]
  assign io_out_partial_data = _T_120; // @[NV_NVDLA_CACC_CALC_int8.scala 108:25:@91.4]
  assign io_out_partial_valid = _T_118; // @[NV_NVDLA_CACC_CALC_int8.scala 107:26:@86.4]
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
  _T_31 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_34 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_36 = _RAND_2[34:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_118 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_120 = _RAND_4[33:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_123 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_127 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_129 = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (reset) begin
      _T_31 <= 1'h0;
    end else begin
      _T_31 <= io_in_valid;
    end
    if (reset) begin
      _T_34 <= 1'h0;
    end else begin
      if (io_in_valid) begin
        _T_34 <= io_in_sel;
      end
    end
    if (io_in_valid) begin
      _T_36 <= _T_42;
    end
    if (reset) begin
      _T_118 <= 1'h0;
    end else begin
      _T_118 <= _T_114;
    end
    if (_T_114) begin
      _T_120 <= _T_55;
    end
    if (reset) begin
      _T_123 <= 1'h0;
    end else begin
      _T_123 <= _T_115;
    end
    if (reset) begin
      _T_127 <= 1'h0;
    end else begin
      _T_127 <= _T_124;
    end
    if (_T_115) begin
      if (_T_94) begin
        if (_T_43) begin
          _T_129 <= 32'h80000000;
        end else begin
          _T_129 <= 32'h7fffffff;
        end
      end else begin
        _T_129 <= _T_111;
      end
    end
  end
endmodule
module NV_soDLA_CACC_calculator_gate( // @[:@3267.2]
  input           clock, // @[:@3268.4]
  input           reset, // @[:@3269.4]
  input           io_nvdla_core_clk, // @[:@3270.4]
  input           io_nvdla_cell_clk, // @[:@3270.4]
  input           io_nvdla_core_rstn, // @[:@3270.4]
  input  [1087:0] io_abuf_rd_data, // @[:@3270.4]
  output          io_abuf_wr_addr_valid, // @[:@3270.4]
  output [5:0]    io_abuf_wr_addr_bits, // @[:@3270.4]
  output [1087:0] io_abuf_wr_data, // @[:@3270.4]
  output          io_dlv_valid, // @[:@3270.4]
  output          io_dlv_mask, // @[:@3270.4]
  output [1023:0] io_dlv_data, // @[:@3270.4]
  output [1:0]    io_dlv_pd, // @[:@3270.4]
  input           io_accu_ctrl_valid, // @[:@3270.4]
  input  [12:0]   io_accu_ctrl_pd, // @[:@3270.4]
  input           io_accu_ctrl_ram_valid, // @[:@3270.4]
  input  [4:0]    io_cfg_truncate, // @[:@3270.4]
  input  [21:0]   io_mac_a2accu_data_0, // @[:@3270.4]
  input  [21:0]   io_mac_a2accu_data_1, // @[:@3270.4]
  input  [21:0]   io_mac_a2accu_data_2, // @[:@3270.4]
  input  [21:0]   io_mac_a2accu_data_3, // @[:@3270.4]
  input  [21:0]   io_mac_a2accu_data_4, // @[:@3270.4]
  input  [21:0]   io_mac_a2accu_data_5, // @[:@3270.4]
  input  [21:0]   io_mac_a2accu_data_6, // @[:@3270.4]
  input  [21:0]   io_mac_a2accu_data_7, // @[:@3270.4]
  input  [21:0]   io_mac_a2accu_data_8, // @[:@3270.4]
  input  [21:0]   io_mac_a2accu_data_9, // @[:@3270.4]
  input  [21:0]   io_mac_a2accu_data_10, // @[:@3270.4]
  input  [21:0]   io_mac_a2accu_data_11, // @[:@3270.4]
  input  [21:0]   io_mac_a2accu_data_12, // @[:@3270.4]
  input  [21:0]   io_mac_a2accu_data_13, // @[:@3270.4]
  input  [21:0]   io_mac_a2accu_data_14, // @[:@3270.4]
  input  [21:0]   io_mac_a2accu_data_15, // @[:@3270.4]
  input  [15:0]   io_mac_a2accu_mask, // @[:@3270.4]
  input           io_mac_a2accu_pvld, // @[:@3270.4]
  input  [21:0]   io_mac_b2accu_data_0, // @[:@3270.4]
  input  [21:0]   io_mac_b2accu_data_1, // @[:@3270.4]
  input  [21:0]   io_mac_b2accu_data_2, // @[:@3270.4]
  input  [21:0]   io_mac_b2accu_data_3, // @[:@3270.4]
  input  [21:0]   io_mac_b2accu_data_4, // @[:@3270.4]
  input  [21:0]   io_mac_b2accu_data_5, // @[:@3270.4]
  input  [21:0]   io_mac_b2accu_data_6, // @[:@3270.4]
  input  [21:0]   io_mac_b2accu_data_7, // @[:@3270.4]
  input  [21:0]   io_mac_b2accu_data_8, // @[:@3270.4]
  input  [21:0]   io_mac_b2accu_data_9, // @[:@3270.4]
  input  [21:0]   io_mac_b2accu_data_10, // @[:@3270.4]
  input  [21:0]   io_mac_b2accu_data_11, // @[:@3270.4]
  input  [21:0]   io_mac_b2accu_data_12, // @[:@3270.4]
  input  [21:0]   io_mac_b2accu_data_13, // @[:@3270.4]
  input  [21:0]   io_mac_b2accu_data_14, // @[:@3270.4]
  input  [21:0]   io_mac_b2accu_data_15, // @[:@3270.4]
  input  [15:0]   io_mac_b2accu_mask, // @[:@3270.4]
  input           io_mac_b2accu_pvld, // @[:@3270.4]
  output [31:0]   io_dp2reg_sat_count // @[:@3270.4]
);
  wire  NV_NVDLA_CACC_CALC_int8_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3565.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3565.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3565.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3565.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3565.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3565.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3565.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3565.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3565.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3565.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3565.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3565.4]
  wire  NV_NVDLA_CACC_CALC_int8_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3565.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3568.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3568.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_1_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3568.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_1_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3568.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_1_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3568.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3568.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3568.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3568.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_1_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3568.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3568.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3568.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_1_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3568.4]
  wire  NV_NVDLA_CACC_CALC_int8_1_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3568.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3571.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3571.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_2_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3571.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_2_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3571.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_2_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3571.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3571.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3571.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3571.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_2_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3571.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3571.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3571.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_2_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3571.4]
  wire  NV_NVDLA_CACC_CALC_int8_2_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3571.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3574.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3574.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_3_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3574.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_3_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3574.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_3_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3574.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3574.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3574.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3574.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_3_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3574.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3574.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3574.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_3_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3574.4]
  wire  NV_NVDLA_CACC_CALC_int8_3_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3574.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3577.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3577.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_4_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3577.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_4_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3577.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_4_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3577.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3577.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3577.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3577.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_4_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3577.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3577.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3577.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_4_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3577.4]
  wire  NV_NVDLA_CACC_CALC_int8_4_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3577.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3580.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3580.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_5_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3580.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_5_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3580.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_5_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3580.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3580.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3580.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3580.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_5_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3580.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3580.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3580.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_5_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3580.4]
  wire  NV_NVDLA_CACC_CALC_int8_5_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3580.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3583.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3583.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_6_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3583.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_6_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3583.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_6_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3583.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3583.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3583.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3583.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_6_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3583.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3583.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3583.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_6_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3583.4]
  wire  NV_NVDLA_CACC_CALC_int8_6_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3583.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3586.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3586.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_7_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3586.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_7_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3586.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_7_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3586.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3586.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3586.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3586.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_7_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3586.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3586.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3586.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_7_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3586.4]
  wire  NV_NVDLA_CACC_CALC_int8_7_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3586.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3589.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3589.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_8_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3589.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_8_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3589.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_8_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3589.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3589.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3589.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3589.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_8_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3589.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3589.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3589.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_8_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3589.4]
  wire  NV_NVDLA_CACC_CALC_int8_8_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3589.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3592.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3592.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_9_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3592.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_9_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3592.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_9_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3592.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3592.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3592.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3592.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_9_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3592.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3592.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3592.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_9_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3592.4]
  wire  NV_NVDLA_CACC_CALC_int8_9_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3592.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3595.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3595.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_10_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3595.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_10_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3595.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_10_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3595.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3595.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3595.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3595.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_10_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3595.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3595.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3595.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_10_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3595.4]
  wire  NV_NVDLA_CACC_CALC_int8_10_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3595.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3598.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3598.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_11_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3598.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_11_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3598.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_11_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3598.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3598.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3598.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3598.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_11_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3598.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3598.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3598.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_11_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3598.4]
  wire  NV_NVDLA_CACC_CALC_int8_11_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3598.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3601.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3601.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_12_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3601.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_12_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3601.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_12_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3601.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3601.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3601.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3601.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_12_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3601.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3601.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3601.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_12_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3601.4]
  wire  NV_NVDLA_CACC_CALC_int8_12_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3601.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3604.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3604.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_13_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3604.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_13_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3604.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_13_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3604.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3604.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3604.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3604.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_13_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3604.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3604.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3604.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_13_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3604.4]
  wire  NV_NVDLA_CACC_CALC_int8_13_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3604.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3607.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3607.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_14_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3607.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_14_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3607.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_14_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3607.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3607.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3607.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3607.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_14_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3607.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3607.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3607.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_14_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3607.4]
  wire  NV_NVDLA_CACC_CALC_int8_14_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3607.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3610.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3610.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_15_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3610.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_15_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3610.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_15_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3610.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3610.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3610.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3610.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_15_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3610.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3610.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3610.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_15_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3610.4]
  wire  NV_NVDLA_CACC_CALC_int8_15_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3610.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3613.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3613.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_16_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3613.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_16_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3613.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_16_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3613.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3613.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3613.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3613.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_16_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3613.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3613.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3613.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_16_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3613.4]
  wire  NV_NVDLA_CACC_CALC_int8_16_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3613.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3616.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3616.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_17_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3616.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_17_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3616.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_17_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3616.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3616.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3616.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3616.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_17_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3616.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3616.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3616.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_17_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3616.4]
  wire  NV_NVDLA_CACC_CALC_int8_17_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3616.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3619.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3619.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_18_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3619.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_18_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3619.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_18_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3619.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3619.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3619.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3619.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_18_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3619.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3619.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3619.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_18_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3619.4]
  wire  NV_NVDLA_CACC_CALC_int8_18_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3619.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3622.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3622.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_19_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3622.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_19_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3622.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_19_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3622.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3622.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3622.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3622.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_19_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3622.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3622.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3622.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_19_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3622.4]
  wire  NV_NVDLA_CACC_CALC_int8_19_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3622.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3625.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3625.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_20_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3625.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_20_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3625.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_20_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3625.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3625.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3625.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3625.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_20_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3625.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3625.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3625.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_20_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3625.4]
  wire  NV_NVDLA_CACC_CALC_int8_20_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3625.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3628.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3628.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_21_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3628.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_21_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3628.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_21_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3628.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3628.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3628.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3628.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_21_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3628.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3628.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3628.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_21_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3628.4]
  wire  NV_NVDLA_CACC_CALC_int8_21_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3628.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3631.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3631.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_22_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3631.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_22_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3631.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_22_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3631.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3631.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3631.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3631.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_22_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3631.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3631.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3631.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_22_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3631.4]
  wire  NV_NVDLA_CACC_CALC_int8_22_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3631.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3634.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3634.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_23_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3634.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_23_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3634.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_23_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3634.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3634.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3634.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3634.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_23_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3634.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3634.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3634.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_23_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3634.4]
  wire  NV_NVDLA_CACC_CALC_int8_23_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3634.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3637.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3637.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_24_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3637.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_24_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3637.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_24_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3637.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3637.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3637.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3637.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_24_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3637.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3637.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3637.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_24_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3637.4]
  wire  NV_NVDLA_CACC_CALC_int8_24_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3637.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3640.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3640.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_25_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3640.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_25_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3640.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_25_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3640.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3640.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3640.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3640.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_25_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3640.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3640.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3640.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_25_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3640.4]
  wire  NV_NVDLA_CACC_CALC_int8_25_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3640.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3643.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3643.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_26_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3643.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_26_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3643.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_26_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3643.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3643.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3643.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3643.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_26_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3643.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3643.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3643.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_26_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3643.4]
  wire  NV_NVDLA_CACC_CALC_int8_26_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3643.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3646.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3646.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_27_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3646.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_27_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3646.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_27_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3646.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3646.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3646.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3646.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_27_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3646.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3646.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3646.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_27_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3646.4]
  wire  NV_NVDLA_CACC_CALC_int8_27_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3646.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3649.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3649.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_28_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3649.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_28_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3649.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_28_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3649.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3649.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3649.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3649.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_28_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3649.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3649.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3649.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_28_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3649.4]
  wire  NV_NVDLA_CACC_CALC_int8_28_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3649.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3652.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3652.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_29_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3652.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_29_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3652.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_29_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3652.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3652.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3652.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3652.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_29_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3652.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3652.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3652.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_29_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3652.4]
  wire  NV_NVDLA_CACC_CALC_int8_29_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3652.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3655.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3655.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_30_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3655.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_30_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3655.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_30_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3655.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3655.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3655.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3655.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_30_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3655.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3655.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3655.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_30_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3655.4]
  wire  NV_NVDLA_CACC_CALC_int8_30_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3655.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_reset; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3658.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_nvdla_core_clk; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3658.4]
  wire [4:0] NV_NVDLA_CACC_CALC_int8_31_io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3658.4]
  wire [21:0] NV_NVDLA_CACC_CALC_int8_31_io_in_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3658.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_31_io_in_op; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3658.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_in_op_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3658.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_in_sel; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3658.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_in_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3658.4]
  wire [31:0] NV_NVDLA_CACC_CALC_int8_31_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3658.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3658.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3658.4]
  wire [33:0] NV_NVDLA_CACC_CALC_int8_31_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3658.4]
  wire  NV_NVDLA_CACC_CALC_int8_31_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3658.4]
  wire  _T_130; // @[NV_soDLA_CACC_calculator_gate.scala 70:38:@3272.4]
  reg [12:0] accu_ctrl_pd_d1; // @[Reg.scala 19:20:@3338.4]
  reg [31:0] _RAND_0;
  wire [12:0] _GEN_0; // @[Reg.scala 20:19:@3339.4]
  reg  _T_204; // @[Reg.scala 11:16:@3343.4]
  reg [31:0] _RAND_1;
  reg  _T_206; // @[Reg.scala 11:16:@3347.4]
  reg [31:0] _RAND_2;
  reg  calc_valid; // @[Reg.scala 11:16:@3351.4]
  reg [31:0] _RAND_3;
  wire [5:0] calc_addr; // @[NV_soDLA_CACC_calculator_gate.scala 81:36:@3355.4]
  wire  calc_stripe_end; // @[NV_soDLA_CACC_calculator_gate.scala 83:42:@3357.4]
  wire  calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 84:43:@3358.4]
  wire  calc_layer_end; // @[NV_soDLA_CACC_calculator_gate.scala 85:41:@3359.4]
  wire  calc_in_mask_0; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3365.4]
  wire  calc_in_mask_16; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3367.4]
  wire  calc_in_mask_1; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3371.4]
  wire  calc_in_mask_17; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3373.4]
  wire  calc_in_mask_2; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3377.4]
  wire  calc_in_mask_18; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3379.4]
  wire  calc_in_mask_3; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3383.4]
  wire  calc_in_mask_19; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3385.4]
  wire  calc_in_mask_4; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3389.4]
  wire  calc_in_mask_20; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3391.4]
  wire  calc_in_mask_5; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3395.4]
  wire  calc_in_mask_21; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3397.4]
  wire  calc_in_mask_6; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3401.4]
  wire  calc_in_mask_22; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3403.4]
  wire  calc_in_mask_7; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3407.4]
  wire  calc_in_mask_23; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3409.4]
  wire  calc_in_mask_8; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3413.4]
  wire  calc_in_mask_24; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3415.4]
  wire  calc_in_mask_9; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3419.4]
  wire  calc_in_mask_25; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3421.4]
  wire  calc_in_mask_10; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3425.4]
  wire  calc_in_mask_26; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3427.4]
  wire  calc_in_mask_11; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3431.4]
  wire  calc_in_mask_27; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3433.4]
  wire  calc_in_mask_12; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3437.4]
  wire  calc_in_mask_28; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3439.4]
  wire  calc_in_mask_13; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3443.4]
  wire  calc_in_mask_29; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3445.4]
  wire  calc_in_mask_14; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3449.4]
  wire  calc_in_mask_30; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3451.4]
  wire  calc_in_mask_15; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3455.4]
  wire  calc_in_mask_31; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3457.4]
  wire  calc_dlv_valid; // @[NV_soDLA_CACC_calculator_gate.scala 99:37:@3557.4]
  wire  _T_420; // @[NV_soDLA_CACC_calculator_gate.scala 100:36:@3558.4]
  wire  calc_wr_en; // @[NV_soDLA_CACC_calculator_gate.scala 100:33:@3559.4]
  reg  _T_610; // @[NV_soDLA_CACC_calculator_gate.scala 133:72:@4046.4]
  reg [31:0] _RAND_4;
  reg  _T_617; // @[NV_soDLA_CACC_calculator_gate.scala 135:72:@4049.4]
  reg [31:0] _RAND_5;
  reg  calc_wr_en_out; // @[NV_soDLA_CACC_calculator_gate.scala 135:72:@4050.4]
  reg [31:0] _RAND_6;
  reg [5:0] _T_624; // @[NV_soDLA_CACC_calculator_gate.scala 137:71:@4052.4]
  reg [31:0] _RAND_7;
  reg [5:0] calc_addr_out; // @[NV_soDLA_CACC_calculator_gate.scala 137:71:@4053.4]
  reg [31:0] _RAND_8;
  wire [5:0] _GEN_4; // @[NV_soDLA_CACC_calculator_gate.scala 146:30:@4059.4]
  wire [5:0] _GEN_5; // @[NV_soDLA_CACC_calculator_gate.scala 146:30:@4064.4]
  reg  _T_631; // @[NV_soDLA_CACC_calculator_gate.scala 156:74:@4068.4]
  reg [31:0] _RAND_9;
  reg  calc_dlv_valid_out; // @[NV_soDLA_CACC_calculator_gate.scala 156:74:@4069.4]
  reg [31:0] _RAND_10;
  reg  _T_638; // @[NV_soDLA_CACC_calculator_gate.scala 158:75:@4071.4]
  reg [31:0] _RAND_11;
  reg  calc_stripe_end_out; // @[NV_soDLA_CACC_calculator_gate.scala 158:75:@4072.4]
  reg [31:0] _RAND_12;
  reg  _T_645; // @[NV_soDLA_CACC_calculator_gate.scala 160:74:@4074.4]
  reg [31:0] _RAND_13;
  reg  calc_layer_end_out; // @[NV_soDLA_CACC_calculator_gate.scala 160:74:@4075.4]
  reg [31:0] _RAND_14;
  wire  _GEN_6; // @[NV_soDLA_CACC_calculator_gate.scala 168:34:@4080.4]
  wire  _GEN_7; // @[NV_soDLA_CACC_calculator_gate.scala 168:34:@4080.4]
  wire  _GEN_8; // @[NV_soDLA_CACC_calculator_gate.scala 168:34:@4085.4]
  wire  _GEN_9; // @[NV_soDLA_CACC_calculator_gate.scala 168:34:@4085.4]
  wire  calc_pout_vld_0; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3672.4]
  wire [33:0] _T_688; // @[Bitwise.scala 72:12:@4091.4]
  wire [33:0] calc_pout_sum_0; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3671.4]
  wire [33:0] calc_pout_0; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4092.4]
  wire  calc_pout_vld_1; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3684.4]
  wire [33:0] _T_693; // @[Bitwise.scala 72:12:@4095.4]
  wire [33:0] calc_pout_sum_1; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3683.4]
  wire [33:0] calc_pout_1; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4096.4]
  wire  calc_pout_vld_2; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3696.4]
  wire [33:0] _T_698; // @[Bitwise.scala 72:12:@4099.4]
  wire [33:0] calc_pout_sum_2; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3695.4]
  wire [33:0] calc_pout_2; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4100.4]
  wire  calc_pout_vld_3; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3708.4]
  wire [33:0] _T_703; // @[Bitwise.scala 72:12:@4103.4]
  wire [33:0] calc_pout_sum_3; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3707.4]
  wire [33:0] calc_pout_3; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4104.4]
  wire  calc_pout_vld_4; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3720.4]
  wire [33:0] _T_708; // @[Bitwise.scala 72:12:@4107.4]
  wire [33:0] calc_pout_sum_4; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3719.4]
  wire [33:0] calc_pout_4; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4108.4]
  wire  calc_pout_vld_5; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3732.4]
  wire [33:0] _T_713; // @[Bitwise.scala 72:12:@4111.4]
  wire [33:0] calc_pout_sum_5; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3731.4]
  wire [33:0] calc_pout_5; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4112.4]
  wire  calc_pout_vld_6; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3744.4]
  wire [33:0] _T_718; // @[Bitwise.scala 72:12:@4115.4]
  wire [33:0] calc_pout_sum_6; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3743.4]
  wire [33:0] calc_pout_6; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4116.4]
  wire  calc_pout_vld_7; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3756.4]
  wire [33:0] _T_723; // @[Bitwise.scala 72:12:@4119.4]
  wire [33:0] calc_pout_sum_7; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3755.4]
  wire [33:0] calc_pout_7; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4120.4]
  wire  calc_pout_vld_8; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3768.4]
  wire [33:0] _T_728; // @[Bitwise.scala 72:12:@4123.4]
  wire [33:0] calc_pout_sum_8; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3767.4]
  wire [33:0] calc_pout_8; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4124.4]
  wire  calc_pout_vld_9; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3780.4]
  wire [33:0] _T_733; // @[Bitwise.scala 72:12:@4127.4]
  wire [33:0] calc_pout_sum_9; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3779.4]
  wire [33:0] calc_pout_9; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4128.4]
  wire  calc_pout_vld_10; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3792.4]
  wire [33:0] _T_738; // @[Bitwise.scala 72:12:@4131.4]
  wire [33:0] calc_pout_sum_10; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3791.4]
  wire [33:0] calc_pout_10; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4132.4]
  wire  calc_pout_vld_11; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3804.4]
  wire [33:0] _T_743; // @[Bitwise.scala 72:12:@4135.4]
  wire [33:0] calc_pout_sum_11; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3803.4]
  wire [33:0] calc_pout_11; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4136.4]
  wire  calc_pout_vld_12; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3816.4]
  wire [33:0] _T_748; // @[Bitwise.scala 72:12:@4139.4]
  wire [33:0] calc_pout_sum_12; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3815.4]
  wire [33:0] calc_pout_12; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4140.4]
  wire  calc_pout_vld_13; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3828.4]
  wire [33:0] _T_753; // @[Bitwise.scala 72:12:@4143.4]
  wire [33:0] calc_pout_sum_13; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3827.4]
  wire [33:0] calc_pout_13; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4144.4]
  wire  calc_pout_vld_14; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3840.4]
  wire [33:0] _T_758; // @[Bitwise.scala 72:12:@4147.4]
  wire [33:0] calc_pout_sum_14; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3839.4]
  wire [33:0] calc_pout_14; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4148.4]
  wire  calc_pout_vld_15; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3852.4]
  wire [33:0] _T_763; // @[Bitwise.scala 72:12:@4151.4]
  wire [33:0] calc_pout_sum_15; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3851.4]
  wire [33:0] calc_pout_15; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4152.4]
  wire  calc_pout_vld_16; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3864.4]
  wire [33:0] _T_768; // @[Bitwise.scala 72:12:@4155.4]
  wire [33:0] calc_pout_sum_16; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3863.4]
  wire [33:0] calc_pout_16; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4156.4]
  wire  calc_pout_vld_17; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3876.4]
  wire [33:0] _T_773; // @[Bitwise.scala 72:12:@4159.4]
  wire [33:0] calc_pout_sum_17; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3875.4]
  wire [33:0] calc_pout_17; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4160.4]
  wire  calc_pout_vld_18; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3888.4]
  wire [33:0] _T_778; // @[Bitwise.scala 72:12:@4163.4]
  wire [33:0] calc_pout_sum_18; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3887.4]
  wire [33:0] calc_pout_18; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4164.4]
  wire  calc_pout_vld_19; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3900.4]
  wire [33:0] _T_783; // @[Bitwise.scala 72:12:@4167.4]
  wire [33:0] calc_pout_sum_19; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3899.4]
  wire [33:0] calc_pout_19; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4168.4]
  wire  calc_pout_vld_20; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3912.4]
  wire [33:0] _T_788; // @[Bitwise.scala 72:12:@4171.4]
  wire [33:0] calc_pout_sum_20; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3911.4]
  wire [33:0] calc_pout_20; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4172.4]
  wire  calc_pout_vld_21; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3924.4]
  wire [33:0] _T_793; // @[Bitwise.scala 72:12:@4175.4]
  wire [33:0] calc_pout_sum_21; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3923.4]
  wire [33:0] calc_pout_21; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4176.4]
  wire  calc_pout_vld_22; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3936.4]
  wire [33:0] _T_798; // @[Bitwise.scala 72:12:@4179.4]
  wire [33:0] calc_pout_sum_22; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3935.4]
  wire [33:0] calc_pout_22; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4180.4]
  wire  calc_pout_vld_23; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3948.4]
  wire [33:0] _T_803; // @[Bitwise.scala 72:12:@4183.4]
  wire [33:0] calc_pout_sum_23; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3947.4]
  wire [33:0] calc_pout_23; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4184.4]
  wire  calc_pout_vld_24; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3960.4]
  wire [33:0] _T_808; // @[Bitwise.scala 72:12:@4187.4]
  wire [33:0] calc_pout_sum_24; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3959.4]
  wire [33:0] calc_pout_24; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4188.4]
  wire  calc_pout_vld_25; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3972.4]
  wire [33:0] _T_813; // @[Bitwise.scala 72:12:@4191.4]
  wire [33:0] calc_pout_sum_25; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3971.4]
  wire [33:0] calc_pout_25; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4192.4]
  wire  calc_pout_vld_26; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3984.4]
  wire [33:0] _T_818; // @[Bitwise.scala 72:12:@4195.4]
  wire [33:0] calc_pout_sum_26; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3983.4]
  wire [33:0] calc_pout_26; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4196.4]
  wire  calc_pout_vld_27; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3996.4]
  wire [33:0] _T_823; // @[Bitwise.scala 72:12:@4199.4]
  wire [33:0] calc_pout_sum_27; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3995.4]
  wire [33:0] calc_pout_27; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4200.4]
  wire  calc_pout_vld_28; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4008.4]
  wire [33:0] _T_828; // @[Bitwise.scala 72:12:@4203.4]
  wire [33:0] calc_pout_sum_28; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4007.4]
  wire [33:0] calc_pout_28; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4204.4]
  wire  calc_pout_vld_29; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4020.4]
  wire [33:0] _T_833; // @[Bitwise.scala 72:12:@4207.4]
  wire [33:0] calc_pout_sum_29; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4019.4]
  wire [33:0] calc_pout_29; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4208.4]
  wire  calc_pout_vld_30; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4032.4]
  wire [33:0] _T_838; // @[Bitwise.scala 72:12:@4211.4]
  wire [33:0] calc_pout_sum_30; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4031.4]
  wire [33:0] calc_pout_30; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4212.4]
  wire  calc_pout_vld_31; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4044.4]
  wire [33:0] _T_843; // @[Bitwise.scala 72:12:@4215.4]
  wire [33:0] calc_pout_sum_31; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4043.4]
  wire [33:0] calc_pout_31; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4216.4]
  wire  calc_fout_vld_0; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3670.4]
  wire [31:0] _T_885; // @[Bitwise.scala 72:12:@4220.4]
  wire [31:0] calc_fout_sum_0; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3668.4]
  wire [31:0] calc_fout_0; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4221.4]
  wire  calc_fout_vld_1; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3682.4]
  wire [31:0] _T_890; // @[Bitwise.scala 72:12:@4224.4]
  wire [31:0] calc_fout_sum_1; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3680.4]
  wire [31:0] calc_fout_1; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4225.4]
  wire  calc_fout_vld_2; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3694.4]
  wire [31:0] _T_895; // @[Bitwise.scala 72:12:@4228.4]
  wire [31:0] calc_fout_sum_2; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3692.4]
  wire [31:0] calc_fout_2; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4229.4]
  wire  calc_fout_vld_3; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3706.4]
  wire [31:0] _T_900; // @[Bitwise.scala 72:12:@4232.4]
  wire [31:0] calc_fout_sum_3; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3704.4]
  wire [31:0] calc_fout_3; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4233.4]
  wire  calc_fout_vld_4; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3718.4]
  wire [31:0] _T_905; // @[Bitwise.scala 72:12:@4236.4]
  wire [31:0] calc_fout_sum_4; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3716.4]
  wire [31:0] calc_fout_4; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4237.4]
  wire  calc_fout_vld_5; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3730.4]
  wire [31:0] _T_910; // @[Bitwise.scala 72:12:@4240.4]
  wire [31:0] calc_fout_sum_5; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3728.4]
  wire [31:0] calc_fout_5; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4241.4]
  wire  calc_fout_vld_6; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3742.4]
  wire [31:0] _T_915; // @[Bitwise.scala 72:12:@4244.4]
  wire [31:0] calc_fout_sum_6; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3740.4]
  wire [31:0] calc_fout_6; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4245.4]
  wire  calc_fout_vld_7; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3754.4]
  wire [31:0] _T_920; // @[Bitwise.scala 72:12:@4248.4]
  wire [31:0] calc_fout_sum_7; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3752.4]
  wire [31:0] calc_fout_7; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4249.4]
  wire  calc_fout_vld_8; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3766.4]
  wire [31:0] _T_925; // @[Bitwise.scala 72:12:@4252.4]
  wire [31:0] calc_fout_sum_8; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3764.4]
  wire [31:0] calc_fout_8; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4253.4]
  wire  calc_fout_vld_9; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3778.4]
  wire [31:0] _T_930; // @[Bitwise.scala 72:12:@4256.4]
  wire [31:0] calc_fout_sum_9; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3776.4]
  wire [31:0] calc_fout_9; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4257.4]
  wire  calc_fout_vld_10; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3790.4]
  wire [31:0] _T_935; // @[Bitwise.scala 72:12:@4260.4]
  wire [31:0] calc_fout_sum_10; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3788.4]
  wire [31:0] calc_fout_10; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4261.4]
  wire  calc_fout_vld_11; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3802.4]
  wire [31:0] _T_940; // @[Bitwise.scala 72:12:@4264.4]
  wire [31:0] calc_fout_sum_11; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3800.4]
  wire [31:0] calc_fout_11; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4265.4]
  wire  calc_fout_vld_12; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3814.4]
  wire [31:0] _T_945; // @[Bitwise.scala 72:12:@4268.4]
  wire [31:0] calc_fout_sum_12; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3812.4]
  wire [31:0] calc_fout_12; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4269.4]
  wire  calc_fout_vld_13; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3826.4]
  wire [31:0] _T_950; // @[Bitwise.scala 72:12:@4272.4]
  wire [31:0] calc_fout_sum_13; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3824.4]
  wire [31:0] calc_fout_13; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4273.4]
  wire  calc_fout_vld_14; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3838.4]
  wire [31:0] _T_955; // @[Bitwise.scala 72:12:@4276.4]
  wire [31:0] calc_fout_sum_14; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3836.4]
  wire [31:0] calc_fout_14; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4277.4]
  wire  calc_fout_vld_15; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3850.4]
  wire [31:0] _T_960; // @[Bitwise.scala 72:12:@4280.4]
  wire [31:0] calc_fout_sum_15; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3848.4]
  wire [31:0] calc_fout_15; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4281.4]
  wire  calc_fout_vld_16; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3862.4]
  wire [31:0] _T_965; // @[Bitwise.scala 72:12:@4284.4]
  wire [31:0] calc_fout_sum_16; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3860.4]
  wire [31:0] calc_fout_16; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4285.4]
  wire  calc_fout_vld_17; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3874.4]
  wire [31:0] _T_970; // @[Bitwise.scala 72:12:@4288.4]
  wire [31:0] calc_fout_sum_17; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3872.4]
  wire [31:0] calc_fout_17; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4289.4]
  wire  calc_fout_vld_18; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3886.4]
  wire [31:0] _T_975; // @[Bitwise.scala 72:12:@4292.4]
  wire [31:0] calc_fout_sum_18; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3884.4]
  wire [31:0] calc_fout_18; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4293.4]
  wire  calc_fout_vld_19; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3898.4]
  wire [31:0] _T_980; // @[Bitwise.scala 72:12:@4296.4]
  wire [31:0] calc_fout_sum_19; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3896.4]
  wire [31:0] calc_fout_19; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4297.4]
  wire  calc_fout_vld_20; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3910.4]
  wire [31:0] _T_985; // @[Bitwise.scala 72:12:@4300.4]
  wire [31:0] calc_fout_sum_20; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3908.4]
  wire [31:0] calc_fout_20; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4301.4]
  wire  calc_fout_vld_21; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3922.4]
  wire [31:0] _T_990; // @[Bitwise.scala 72:12:@4304.4]
  wire [31:0] calc_fout_sum_21; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3920.4]
  wire [31:0] calc_fout_21; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4305.4]
  wire  calc_fout_vld_22; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3934.4]
  wire [31:0] _T_995; // @[Bitwise.scala 72:12:@4308.4]
  wire [31:0] calc_fout_sum_22; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3932.4]
  wire [31:0] calc_fout_22; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4309.4]
  wire  calc_fout_vld_23; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3946.4]
  wire [31:0] _T_1000; // @[Bitwise.scala 72:12:@4312.4]
  wire [31:0] calc_fout_sum_23; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3944.4]
  wire [31:0] calc_fout_23; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4313.4]
  wire  calc_fout_vld_24; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3958.4]
  wire [31:0] _T_1005; // @[Bitwise.scala 72:12:@4316.4]
  wire [31:0] calc_fout_sum_24; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3956.4]
  wire [31:0] calc_fout_24; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4317.4]
  wire  calc_fout_vld_25; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3970.4]
  wire [31:0] _T_1010; // @[Bitwise.scala 72:12:@4320.4]
  wire [31:0] calc_fout_sum_25; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3968.4]
  wire [31:0] calc_fout_25; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4321.4]
  wire  calc_fout_vld_26; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3982.4]
  wire [31:0] _T_1015; // @[Bitwise.scala 72:12:@4324.4]
  wire [31:0] calc_fout_sum_26; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3980.4]
  wire [31:0] calc_fout_26; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4325.4]
  wire  calc_fout_vld_27; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3994.4]
  wire [31:0] _T_1020; // @[Bitwise.scala 72:12:@4328.4]
  wire [31:0] calc_fout_sum_27; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3992.4]
  wire [31:0] calc_fout_27; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4329.4]
  wire  calc_fout_vld_28; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4006.4]
  wire [31:0] _T_1025; // @[Bitwise.scala 72:12:@4332.4]
  wire [31:0] calc_fout_sum_28; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@4004.4]
  wire [31:0] calc_fout_28; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4333.4]
  wire  calc_fout_vld_29; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4018.4]
  wire [31:0] _T_1030; // @[Bitwise.scala 72:12:@4336.4]
  wire [31:0] calc_fout_sum_29; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@4016.4]
  wire [31:0] calc_fout_29; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4337.4]
  wire  calc_fout_vld_30; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4030.4]
  wire [31:0] _T_1035; // @[Bitwise.scala 72:12:@4340.4]
  wire [31:0] calc_fout_sum_30; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@4028.4]
  wire [31:0] calc_fout_30; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4341.4]
  wire  calc_fout_vld_31; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4042.4]
  wire [31:0] _T_1040; // @[Bitwise.scala 72:12:@4344.4]
  wire [31:0] calc_fout_sum_31; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@4040.4]
  wire [31:0] calc_fout_31; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4345.4]
  reg  _T_1044; // @[NV_soDLA_CACC_calculator_gate.scala 190:37:@4347.4]
  reg [31:0] _RAND_15;
  reg [5:0] _T_1047; // @[Reg.scala 19:20:@4350.4]
  reg [31:0] _RAND_16;
  wire [5:0] _GEN_10; // @[Reg.scala 20:19:@4351.4]
  wire [271:0] _T_1054; // @[NV_soDLA_CACC_calculator_gate.scala 192:44:@4361.4]
  wire [543:0] _T_1062; // @[NV_soDLA_CACC_calculator_gate.scala 192:44:@4369.4]
  wire [271:0] _T_1069; // @[NV_soDLA_CACC_calculator_gate.scala 192:44:@4376.4]
  wire [1087:0] _T_1078; // @[NV_soDLA_CACC_calculator_gate.scala 192:44:@4385.4]
  reg [1087:0] _T_1080; // @[Reg.scala 11:16:@4386.4]
  reg [1087:0] _RAND_17;
  wire [255:0] _T_1087; // @[NV_soDLA_CACC_calculator_gate.scala 195:40:@4397.4]
  wire [511:0] _T_1095; // @[NV_soDLA_CACC_calculator_gate.scala 195:40:@4405.4]
  wire [255:0] _T_1102; // @[NV_soDLA_CACC_calculator_gate.scala 195:40:@4412.4]
  wire [1023:0] _T_1111; // @[NV_soDLA_CACC_calculator_gate.scala 195:40:@4421.4]
  reg [1023:0] _T_1113; // @[Reg.scala 11:16:@4422.4]
  reg [1023:0] _RAND_18;
  reg  _T_1116; // @[NV_soDLA_CACC_calculator_gate.scala 196:28:@4427.4]
  reg [31:0] _RAND_19;
  reg  _T_1119; // @[NV_soDLA_CACC_calculator_gate.scala 197:27:@4430.4]
  reg [31:0] _RAND_20;
  reg  dlv_stripe_end; // @[Reg.scala 19:20:@4433.4]
  reg [31:0] _RAND_21;
  wire  _GEN_13; // @[Reg.scala 20:19:@4434.4]
  reg  dlv_layer_end; // @[Reg.scala 19:20:@4437.4]
  reg [31:0] _RAND_22;
  wire  _GEN_14; // @[Reg.scala 20:19:@4438.4]
  reg  dlv_sat_vld_d1; // @[NV_soDLA_CACC_calculator_gate.scala 203:33:@4443.4]
  reg [31:0] _RAND_23;
  reg  dlv_sat_end_d1; // @[NV_soDLA_CACC_calculator_gate.scala 204:33:@4444.4]
  reg [31:0] _RAND_24;
  reg  dlv_sat_bit_d1_0; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_25;
  reg  dlv_sat_bit_d1_1; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_26;
  reg  dlv_sat_bit_d1_2; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_27;
  reg  dlv_sat_bit_d1_3; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_28;
  reg  dlv_sat_bit_d1_4; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_29;
  reg  dlv_sat_bit_d1_5; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_30;
  reg  dlv_sat_bit_d1_6; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_31;
  reg  dlv_sat_bit_d1_7; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_32;
  reg  dlv_sat_bit_d1_8; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_33;
  reg  dlv_sat_bit_d1_9; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_34;
  reg  dlv_sat_bit_d1_10; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_35;
  reg  dlv_sat_bit_d1_11; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_36;
  reg  dlv_sat_bit_d1_12; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_37;
  reg  dlv_sat_bit_d1_13; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_38;
  reg  dlv_sat_bit_d1_14; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_39;
  reg  dlv_sat_bit_d1_15; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_40;
  reg  dlv_sat_bit_d1_16; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_41;
  reg  dlv_sat_bit_d1_17; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_42;
  reg  dlv_sat_bit_d1_18; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_43;
  reg  dlv_sat_bit_d1_19; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_44;
  reg  dlv_sat_bit_d1_20; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_45;
  reg  dlv_sat_bit_d1_21; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_46;
  reg  dlv_sat_bit_d1_22; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_47;
  reg  dlv_sat_bit_d1_23; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_48;
  reg  dlv_sat_bit_d1_24; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_49;
  reg  dlv_sat_bit_d1_25; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_50;
  reg  dlv_sat_bit_d1_26; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_51;
  reg  dlv_sat_bit_d1_27; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_52;
  reg  dlv_sat_bit_d1_28; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_53;
  reg  dlv_sat_bit_d1_29; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_54;
  reg  dlv_sat_bit_d1_30; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_55;
  reg  dlv_sat_bit_d1_31; // @[NV_soDLA_CACC_calculator_gate.scala 205:33:@4478.4]
  reg [31:0] _RAND_56;
  reg  dlv_sat_clr_d1; // @[NV_soDLA_CACC_calculator_gate.scala 206:33:@4479.4]
  reg [31:0] _RAND_57;
  wire  dlv_sat_end; // @[NV_soDLA_CACC_calculator_gate.scala 209:42:@4480.4]
  wire  _T_1369; // @[NV_soDLA_CACC_calculator_gate.scala 210:44:@4481.4]
  wire  _T_1370; // @[NV_soDLA_CACC_calculator_gate.scala 210:42:@4482.4]
  wire  dlv_sat_clr; // @[NV_soDLA_CACC_calculator_gate.scala 210:57:@4483.4]
  wire  _GEN_15; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_0; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3669.4]
  wire  _GEN_16; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_1; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3681.4]
  wire  _GEN_17; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_2; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3693.4]
  wire  _GEN_18; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_3; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3705.4]
  wire  _GEN_19; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_4; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3717.4]
  wire  _GEN_20; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_5; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3729.4]
  wire  _GEN_21; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_6; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3741.4]
  wire  _GEN_22; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_7; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3753.4]
  wire  _GEN_23; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_8; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3765.4]
  wire  _GEN_24; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_9; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3777.4]
  wire  _GEN_25; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_10; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3789.4]
  wire  _GEN_26; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_11; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3801.4]
  wire  _GEN_27; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_12; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3813.4]
  wire  _GEN_28; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_13; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3825.4]
  wire  _GEN_29; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_14; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3837.4]
  wire  _GEN_30; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_15; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3849.4]
  wire  _GEN_31; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_16; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3861.4]
  wire  _GEN_32; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_17; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3873.4]
  wire  _GEN_33; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_18; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3885.4]
  wire  _GEN_34; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_19; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3897.4]
  wire  _GEN_35; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_20; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3909.4]
  wire  _GEN_36; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_21; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3921.4]
  wire  _GEN_37; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_22; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3933.4]
  wire  _GEN_38; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_23; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3945.4]
  wire  _GEN_39; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_24; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3957.4]
  wire  _GEN_40; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_25; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3969.4]
  wire  _GEN_41; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_26; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3981.4]
  wire  _GEN_42; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_27; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3993.4]
  wire  _GEN_43; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_28; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4005.4]
  wire  _GEN_44; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_29; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4017.4]
  wire  _GEN_45; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_30; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4029.4]
  wire  _GEN_46; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire  calc_fout_sat_31; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4041.4]
  wire  _GEN_47; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  wire [1:0] _T_1409; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4554.4]
  wire [1:0] _GEN_49; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4555.4]
  wire [2:0] _T_1410; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4555.4]
  wire [2:0] _GEN_50; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4556.4]
  wire [3:0] _T_1411; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4556.4]
  wire [3:0] _GEN_51; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4557.4]
  wire [4:0] _T_1412; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4557.4]
  wire [4:0] _GEN_52; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4558.4]
  wire [5:0] _T_1413; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4558.4]
  wire [5:0] _GEN_53; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4559.4]
  wire [6:0] _T_1414; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4559.4]
  wire [6:0] _GEN_54; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4560.4]
  wire [7:0] _T_1415; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4560.4]
  wire [7:0] _GEN_55; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4561.4]
  wire [8:0] _T_1416; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4561.4]
  wire [8:0] _GEN_56; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4562.4]
  wire [9:0] _T_1417; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4562.4]
  wire [9:0] _GEN_57; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4563.4]
  wire [10:0] _T_1418; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4563.4]
  wire [10:0] _GEN_58; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4564.4]
  wire [11:0] _T_1419; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4564.4]
  wire [11:0] _GEN_59; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4565.4]
  wire [12:0] _T_1420; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4565.4]
  wire [12:0] _GEN_60; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4566.4]
  wire [13:0] _T_1421; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4566.4]
  wire [13:0] _GEN_61; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4567.4]
  wire [14:0] _T_1422; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4567.4]
  wire [14:0] _GEN_62; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4568.4]
  wire [15:0] _T_1423; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4568.4]
  wire [15:0] _GEN_63; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4569.4]
  wire [16:0] _T_1424; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4569.4]
  wire [16:0] _GEN_64; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4570.4]
  wire [17:0] _T_1425; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4570.4]
  wire [17:0] _GEN_65; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4571.4]
  wire [18:0] _T_1426; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4571.4]
  wire [18:0] _GEN_66; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4572.4]
  wire [19:0] _T_1427; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4572.4]
  wire [19:0] _GEN_67; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4573.4]
  wire [20:0] _T_1428; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4573.4]
  wire [20:0] _GEN_68; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4574.4]
  wire [21:0] _T_1429; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4574.4]
  wire [21:0] _GEN_69; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4575.4]
  wire [22:0] _T_1430; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4575.4]
  wire [22:0] _GEN_70; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4576.4]
  wire [23:0] _T_1431; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4576.4]
  wire [23:0] _GEN_71; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4577.4]
  wire [24:0] _T_1432; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4577.4]
  wire [24:0] _GEN_72; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4578.4]
  wire [25:0] _T_1433; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4578.4]
  wire [25:0] _GEN_73; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4579.4]
  wire [26:0] _T_1434; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4579.4]
  wire [26:0] _GEN_74; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4580.4]
  wire [27:0] _T_1435; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4580.4]
  wire [27:0] _GEN_75; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4581.4]
  wire [28:0] _T_1436; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4581.4]
  wire [28:0] _GEN_76; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4582.4]
  wire [29:0] _T_1437; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4582.4]
  wire [29:0] _GEN_77; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4583.4]
  wire [30:0] _T_1438; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4583.4]
  wire [30:0] _GEN_78; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4584.4]
  wire [31:0] sat_sum; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4584.4]
  reg [31:0] sat_count; // @[NV_soDLA_CACC_calculator_gate.scala 220:28:@4585.4]
  reg [31:0] _RAND_58;
  wire [32:0] _T_1441; // @[NV_soDLA_CACC_calculator_gate.scala 221:36:@4586.4]
  wire [31:0] sat_count_inc; // @[NV_soDLA_CACC_calculator_gate.scala 221:47:@4587.4]
  wire  sat_carry; // @[NV_soDLA_CACC_calculator_gate.scala 222:43:@4589.4]
  wire [31:0] _T_1448; // @[NV_soDLA_CACC_calculator_gate.scala 224:26:@4591.4]
  wire [31:0] sat_count_w; // @[NV_soDLA_CACC_calculator_gate.scala 223:26:@4592.4]
  wire  _T_1450; // @[NV_soDLA_CACC_calculator_gate.scala 225:49:@4593.4]
  wire  _T_1451; // @[NV_soDLA_CACC_calculator_gate.scala 225:54:@4594.4]
  wire  sat_reg_en; // @[NV_soDLA_CACC_calculator_gate.scala 225:37:@4595.4]
  wire [31:0] _GEN_48; // @[NV_soDLA_CACC_calculator_gate.scala 226:21:@4596.4]
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3565.4]
    .reset(NV_NVDLA_CACC_CALC_int8_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_1 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3568.4]
    .reset(NV_NVDLA_CACC_CALC_int8_1_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_1_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_1_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_1_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_1_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_1_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_1_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_1_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_1_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_1_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_1_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_1_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_1_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_2 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3571.4]
    .reset(NV_NVDLA_CACC_CALC_int8_2_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_2_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_2_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_2_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_2_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_2_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_2_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_2_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_2_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_2_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_2_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_2_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_2_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_3 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3574.4]
    .reset(NV_NVDLA_CACC_CALC_int8_3_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_3_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_3_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_3_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_3_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_3_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_3_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_3_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_3_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_3_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_3_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_3_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_3_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_4 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3577.4]
    .reset(NV_NVDLA_CACC_CALC_int8_4_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_4_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_4_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_4_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_4_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_4_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_4_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_4_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_4_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_4_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_4_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_4_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_4_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_5 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3580.4]
    .reset(NV_NVDLA_CACC_CALC_int8_5_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_5_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_5_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_5_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_5_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_5_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_5_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_5_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_5_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_5_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_5_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_5_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_5_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_6 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3583.4]
    .reset(NV_NVDLA_CACC_CALC_int8_6_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_6_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_6_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_6_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_6_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_6_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_6_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_6_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_6_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_6_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_6_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_6_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_6_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_7 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3586.4]
    .reset(NV_NVDLA_CACC_CALC_int8_7_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_7_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_7_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_7_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_7_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_7_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_7_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_7_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_7_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_7_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_7_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_7_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_7_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_8 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3589.4]
    .reset(NV_NVDLA_CACC_CALC_int8_8_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_8_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_8_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_8_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_8_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_8_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_8_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_8_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_8_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_8_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_8_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_8_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_8_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_9 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3592.4]
    .reset(NV_NVDLA_CACC_CALC_int8_9_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_9_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_9_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_9_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_9_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_9_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_9_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_9_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_9_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_9_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_9_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_9_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_9_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_10 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3595.4]
    .reset(NV_NVDLA_CACC_CALC_int8_10_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_10_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_10_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_10_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_10_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_10_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_10_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_10_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_10_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_10_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_10_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_10_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_10_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_11 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3598.4]
    .reset(NV_NVDLA_CACC_CALC_int8_11_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_11_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_11_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_11_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_11_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_11_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_11_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_11_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_11_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_11_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_11_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_11_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_11_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_12 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3601.4]
    .reset(NV_NVDLA_CACC_CALC_int8_12_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_12_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_12_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_12_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_12_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_12_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_12_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_12_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_12_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_12_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_12_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_12_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_12_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_13 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3604.4]
    .reset(NV_NVDLA_CACC_CALC_int8_13_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_13_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_13_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_13_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_13_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_13_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_13_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_13_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_13_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_13_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_13_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_13_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_13_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_14 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3607.4]
    .reset(NV_NVDLA_CACC_CALC_int8_14_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_14_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_14_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_14_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_14_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_14_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_14_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_14_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_14_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_14_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_14_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_14_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_14_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_15 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3610.4]
    .reset(NV_NVDLA_CACC_CALC_int8_15_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_15_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_15_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_15_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_15_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_15_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_15_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_15_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_15_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_15_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_15_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_15_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_15_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_16 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3613.4]
    .reset(NV_NVDLA_CACC_CALC_int8_16_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_16_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_16_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_16_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_16_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_16_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_16_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_16_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_16_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_16_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_16_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_16_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_16_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_17 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3616.4]
    .reset(NV_NVDLA_CACC_CALC_int8_17_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_17_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_17_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_17_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_17_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_17_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_17_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_17_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_17_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_17_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_17_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_17_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_17_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_18 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3619.4]
    .reset(NV_NVDLA_CACC_CALC_int8_18_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_18_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_18_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_18_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_18_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_18_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_18_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_18_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_18_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_18_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_18_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_18_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_18_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_19 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3622.4]
    .reset(NV_NVDLA_CACC_CALC_int8_19_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_19_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_19_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_19_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_19_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_19_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_19_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_19_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_19_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_19_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_19_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_19_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_19_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_20 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3625.4]
    .reset(NV_NVDLA_CACC_CALC_int8_20_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_20_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_20_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_20_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_20_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_20_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_20_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_20_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_20_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_20_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_20_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_20_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_20_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_21 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3628.4]
    .reset(NV_NVDLA_CACC_CALC_int8_21_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_21_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_21_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_21_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_21_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_21_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_21_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_21_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_21_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_21_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_21_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_21_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_21_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_22 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3631.4]
    .reset(NV_NVDLA_CACC_CALC_int8_22_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_22_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_22_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_22_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_22_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_22_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_22_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_22_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_22_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_22_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_22_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_22_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_22_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_23 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3634.4]
    .reset(NV_NVDLA_CACC_CALC_int8_23_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_23_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_23_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_23_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_23_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_23_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_23_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_23_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_23_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_23_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_23_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_23_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_23_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_24 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3637.4]
    .reset(NV_NVDLA_CACC_CALC_int8_24_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_24_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_24_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_24_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_24_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_24_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_24_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_24_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_24_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_24_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_24_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_24_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_24_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_25 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3640.4]
    .reset(NV_NVDLA_CACC_CALC_int8_25_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_25_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_25_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_25_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_25_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_25_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_25_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_25_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_25_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_25_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_25_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_25_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_25_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_26 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3643.4]
    .reset(NV_NVDLA_CACC_CALC_int8_26_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_26_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_26_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_26_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_26_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_26_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_26_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_26_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_26_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_26_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_26_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_26_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_26_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_27 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3646.4]
    .reset(NV_NVDLA_CACC_CALC_int8_27_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_27_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_27_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_27_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_27_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_27_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_27_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_27_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_27_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_27_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_27_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_27_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_27_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_28 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3649.4]
    .reset(NV_NVDLA_CACC_CALC_int8_28_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_28_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_28_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_28_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_28_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_28_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_28_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_28_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_28_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_28_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_28_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_28_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_28_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_29 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3652.4]
    .reset(NV_NVDLA_CACC_CALC_int8_29_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_29_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_29_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_29_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_29_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_29_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_29_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_29_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_29_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_29_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_29_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_29_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_29_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_30 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3655.4]
    .reset(NV_NVDLA_CACC_CALC_int8_30_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_30_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_30_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_30_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_30_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_30_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_30_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_30_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_30_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_30_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_30_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_30_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_30_io_out_partial_valid)
  );
  NV_NVDLA_CACC_CALC_int8 NV_NVDLA_CACC_CALC_int8_31 ( // @[NV_soDLA_CACC_calculator_gate.scala 113:57:@3658.4]
    .reset(NV_NVDLA_CACC_CALC_int8_31_reset),
    .io_nvdla_core_clk(NV_NVDLA_CACC_CALC_int8_31_io_nvdla_core_clk),
    .io_cfg_truncate(NV_NVDLA_CACC_CALC_int8_31_io_cfg_truncate),
    .io_in_data(NV_NVDLA_CACC_CALC_int8_31_io_in_data),
    .io_in_op(NV_NVDLA_CACC_CALC_int8_31_io_in_op),
    .io_in_op_valid(NV_NVDLA_CACC_CALC_int8_31_io_in_op_valid),
    .io_in_sel(NV_NVDLA_CACC_CALC_int8_31_io_in_sel),
    .io_in_valid(NV_NVDLA_CACC_CALC_int8_31_io_in_valid),
    .io_out_final_data(NV_NVDLA_CACC_CALC_int8_31_io_out_final_data),
    .io_out_final_sat(NV_NVDLA_CACC_CALC_int8_31_io_out_final_sat),
    .io_out_final_valid(NV_NVDLA_CACC_CALC_int8_31_io_out_final_valid),
    .io_out_partial_data(NV_NVDLA_CACC_CALC_int8_31_io_out_partial_data),
    .io_out_partial_valid(NV_NVDLA_CACC_CALC_int8_31_io_out_partial_valid)
  );
  assign _T_130 = io_nvdla_core_rstn == 1'h0; // @[NV_soDLA_CACC_calculator_gate.scala 70:38:@3272.4]
  assign _GEN_0 = io_accu_ctrl_valid ? io_accu_ctrl_pd : accu_ctrl_pd_d1; // @[Reg.scala 20:19:@3339.4]
  assign calc_addr = accu_ctrl_pd_d1[5:0]; // @[NV_soDLA_CACC_calculator_gate.scala 81:36:@3355.4]
  assign calc_stripe_end = accu_ctrl_pd_d1[9]; // @[NV_soDLA_CACC_calculator_gate.scala 83:42:@3357.4]
  assign calc_channel_end = accu_ctrl_pd_d1[10]; // @[NV_soDLA_CACC_calculator_gate.scala 84:43:@3358.4]
  assign calc_layer_end = accu_ctrl_pd_d1[11]; // @[NV_soDLA_CACC_calculator_gate.scala 85:41:@3359.4]
  assign calc_in_mask_0 = io_mac_a2accu_mask[0]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3365.4]
  assign calc_in_mask_16 = io_mac_b2accu_mask[0]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3367.4]
  assign calc_in_mask_1 = io_mac_a2accu_mask[1]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3371.4]
  assign calc_in_mask_17 = io_mac_b2accu_mask[1]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3373.4]
  assign calc_in_mask_2 = io_mac_a2accu_mask[2]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3377.4]
  assign calc_in_mask_18 = io_mac_b2accu_mask[2]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3379.4]
  assign calc_in_mask_3 = io_mac_a2accu_mask[3]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3383.4]
  assign calc_in_mask_19 = io_mac_b2accu_mask[3]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3385.4]
  assign calc_in_mask_4 = io_mac_a2accu_mask[4]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3389.4]
  assign calc_in_mask_20 = io_mac_b2accu_mask[4]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3391.4]
  assign calc_in_mask_5 = io_mac_a2accu_mask[5]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3395.4]
  assign calc_in_mask_21 = io_mac_b2accu_mask[5]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3397.4]
  assign calc_in_mask_6 = io_mac_a2accu_mask[6]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3401.4]
  assign calc_in_mask_22 = io_mac_b2accu_mask[6]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3403.4]
  assign calc_in_mask_7 = io_mac_a2accu_mask[7]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3407.4]
  assign calc_in_mask_23 = io_mac_b2accu_mask[7]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3409.4]
  assign calc_in_mask_8 = io_mac_a2accu_mask[8]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3413.4]
  assign calc_in_mask_24 = io_mac_b2accu_mask[8]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3415.4]
  assign calc_in_mask_9 = io_mac_a2accu_mask[9]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3419.4]
  assign calc_in_mask_25 = io_mac_b2accu_mask[9]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3421.4]
  assign calc_in_mask_10 = io_mac_a2accu_mask[10]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3425.4]
  assign calc_in_mask_26 = io_mac_b2accu_mask[10]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3427.4]
  assign calc_in_mask_11 = io_mac_a2accu_mask[11]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3431.4]
  assign calc_in_mask_27 = io_mac_b2accu_mask[11]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3433.4]
  assign calc_in_mask_12 = io_mac_a2accu_mask[12]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3437.4]
  assign calc_in_mask_28 = io_mac_b2accu_mask[12]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3439.4]
  assign calc_in_mask_13 = io_mac_a2accu_mask[13]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3443.4]
  assign calc_in_mask_29 = io_mac_b2accu_mask[13]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3445.4]
  assign calc_in_mask_14 = io_mac_a2accu_mask[14]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3449.4]
  assign calc_in_mask_30 = io_mac_b2accu_mask[14]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3451.4]
  assign calc_in_mask_15 = io_mac_a2accu_mask[15]; // @[NV_soDLA_CACC_calculator_gate.scala 93:46:@3455.4]
  assign calc_in_mask_31 = io_mac_b2accu_mask[15]; // @[NV_soDLA_CACC_calculator_gate.scala 94:66:@3457.4]
  assign calc_dlv_valid = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 99:37:@3557.4]
  assign _T_420 = ~ calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 100:36:@3558.4]
  assign calc_wr_en = calc_valid & _T_420; // @[NV_soDLA_CACC_calculator_gate.scala 100:33:@3559.4]
  assign _GEN_4 = calc_valid ? calc_addr : _T_624; // @[NV_soDLA_CACC_calculator_gate.scala 146:30:@4059.4]
  assign _GEN_5 = _T_610 ? _T_624 : calc_addr_out; // @[NV_soDLA_CACC_calculator_gate.scala 146:30:@4064.4]
  assign _GEN_6 = calc_dlv_valid ? calc_stripe_end : _T_638; // @[NV_soDLA_CACC_calculator_gate.scala 168:34:@4080.4]
  assign _GEN_7 = calc_dlv_valid ? calc_layer_end : _T_645; // @[NV_soDLA_CACC_calculator_gate.scala 168:34:@4080.4]
  assign _GEN_8 = _T_631 ? _T_638 : calc_stripe_end_out; // @[NV_soDLA_CACC_calculator_gate.scala 168:34:@4085.4]
  assign _GEN_9 = _T_631 ? _T_645 : calc_layer_end_out; // @[NV_soDLA_CACC_calculator_gate.scala 168:34:@4085.4]
  assign calc_pout_vld_0 = NV_NVDLA_CACC_CALC_int8_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3672.4]
  assign _T_688 = calc_pout_vld_0 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4091.4]
  assign calc_pout_sum_0 = NV_NVDLA_CACC_CALC_int8_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3671.4]
  assign calc_pout_0 = _T_688 & calc_pout_sum_0; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4092.4]
  assign calc_pout_vld_1 = NV_NVDLA_CACC_CALC_int8_1_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3684.4]
  assign _T_693 = calc_pout_vld_1 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4095.4]
  assign calc_pout_sum_1 = NV_NVDLA_CACC_CALC_int8_1_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3683.4]
  assign calc_pout_1 = _T_693 & calc_pout_sum_1; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4096.4]
  assign calc_pout_vld_2 = NV_NVDLA_CACC_CALC_int8_2_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3696.4]
  assign _T_698 = calc_pout_vld_2 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4099.4]
  assign calc_pout_sum_2 = NV_NVDLA_CACC_CALC_int8_2_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3695.4]
  assign calc_pout_2 = _T_698 & calc_pout_sum_2; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4100.4]
  assign calc_pout_vld_3 = NV_NVDLA_CACC_CALC_int8_3_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3708.4]
  assign _T_703 = calc_pout_vld_3 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4103.4]
  assign calc_pout_sum_3 = NV_NVDLA_CACC_CALC_int8_3_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3707.4]
  assign calc_pout_3 = _T_703 & calc_pout_sum_3; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4104.4]
  assign calc_pout_vld_4 = NV_NVDLA_CACC_CALC_int8_4_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3720.4]
  assign _T_708 = calc_pout_vld_4 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4107.4]
  assign calc_pout_sum_4 = NV_NVDLA_CACC_CALC_int8_4_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3719.4]
  assign calc_pout_4 = _T_708 & calc_pout_sum_4; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4108.4]
  assign calc_pout_vld_5 = NV_NVDLA_CACC_CALC_int8_5_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3732.4]
  assign _T_713 = calc_pout_vld_5 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4111.4]
  assign calc_pout_sum_5 = NV_NVDLA_CACC_CALC_int8_5_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3731.4]
  assign calc_pout_5 = _T_713 & calc_pout_sum_5; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4112.4]
  assign calc_pout_vld_6 = NV_NVDLA_CACC_CALC_int8_6_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3744.4]
  assign _T_718 = calc_pout_vld_6 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4115.4]
  assign calc_pout_sum_6 = NV_NVDLA_CACC_CALC_int8_6_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3743.4]
  assign calc_pout_6 = _T_718 & calc_pout_sum_6; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4116.4]
  assign calc_pout_vld_7 = NV_NVDLA_CACC_CALC_int8_7_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3756.4]
  assign _T_723 = calc_pout_vld_7 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4119.4]
  assign calc_pout_sum_7 = NV_NVDLA_CACC_CALC_int8_7_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3755.4]
  assign calc_pout_7 = _T_723 & calc_pout_sum_7; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4120.4]
  assign calc_pout_vld_8 = NV_NVDLA_CACC_CALC_int8_8_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3768.4]
  assign _T_728 = calc_pout_vld_8 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4123.4]
  assign calc_pout_sum_8 = NV_NVDLA_CACC_CALC_int8_8_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3767.4]
  assign calc_pout_8 = _T_728 & calc_pout_sum_8; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4124.4]
  assign calc_pout_vld_9 = NV_NVDLA_CACC_CALC_int8_9_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3780.4]
  assign _T_733 = calc_pout_vld_9 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4127.4]
  assign calc_pout_sum_9 = NV_NVDLA_CACC_CALC_int8_9_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3779.4]
  assign calc_pout_9 = _T_733 & calc_pout_sum_9; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4128.4]
  assign calc_pout_vld_10 = NV_NVDLA_CACC_CALC_int8_10_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3792.4]
  assign _T_738 = calc_pout_vld_10 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4131.4]
  assign calc_pout_sum_10 = NV_NVDLA_CACC_CALC_int8_10_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3791.4]
  assign calc_pout_10 = _T_738 & calc_pout_sum_10; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4132.4]
  assign calc_pout_vld_11 = NV_NVDLA_CACC_CALC_int8_11_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3804.4]
  assign _T_743 = calc_pout_vld_11 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4135.4]
  assign calc_pout_sum_11 = NV_NVDLA_CACC_CALC_int8_11_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3803.4]
  assign calc_pout_11 = _T_743 & calc_pout_sum_11; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4136.4]
  assign calc_pout_vld_12 = NV_NVDLA_CACC_CALC_int8_12_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3816.4]
  assign _T_748 = calc_pout_vld_12 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4139.4]
  assign calc_pout_sum_12 = NV_NVDLA_CACC_CALC_int8_12_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3815.4]
  assign calc_pout_12 = _T_748 & calc_pout_sum_12; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4140.4]
  assign calc_pout_vld_13 = NV_NVDLA_CACC_CALC_int8_13_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3828.4]
  assign _T_753 = calc_pout_vld_13 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4143.4]
  assign calc_pout_sum_13 = NV_NVDLA_CACC_CALC_int8_13_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3827.4]
  assign calc_pout_13 = _T_753 & calc_pout_sum_13; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4144.4]
  assign calc_pout_vld_14 = NV_NVDLA_CACC_CALC_int8_14_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3840.4]
  assign _T_758 = calc_pout_vld_14 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4147.4]
  assign calc_pout_sum_14 = NV_NVDLA_CACC_CALC_int8_14_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3839.4]
  assign calc_pout_14 = _T_758 & calc_pout_sum_14; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4148.4]
  assign calc_pout_vld_15 = NV_NVDLA_CACC_CALC_int8_15_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3852.4]
  assign _T_763 = calc_pout_vld_15 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4151.4]
  assign calc_pout_sum_15 = NV_NVDLA_CACC_CALC_int8_15_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3851.4]
  assign calc_pout_15 = _T_763 & calc_pout_sum_15; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4152.4]
  assign calc_pout_vld_16 = NV_NVDLA_CACC_CALC_int8_16_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3864.4]
  assign _T_768 = calc_pout_vld_16 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4155.4]
  assign calc_pout_sum_16 = NV_NVDLA_CACC_CALC_int8_16_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3863.4]
  assign calc_pout_16 = _T_768 & calc_pout_sum_16; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4156.4]
  assign calc_pout_vld_17 = NV_NVDLA_CACC_CALC_int8_17_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3876.4]
  assign _T_773 = calc_pout_vld_17 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4159.4]
  assign calc_pout_sum_17 = NV_NVDLA_CACC_CALC_int8_17_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3875.4]
  assign calc_pout_17 = _T_773 & calc_pout_sum_17; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4160.4]
  assign calc_pout_vld_18 = NV_NVDLA_CACC_CALC_int8_18_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3888.4]
  assign _T_778 = calc_pout_vld_18 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4163.4]
  assign calc_pout_sum_18 = NV_NVDLA_CACC_CALC_int8_18_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3887.4]
  assign calc_pout_18 = _T_778 & calc_pout_sum_18; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4164.4]
  assign calc_pout_vld_19 = NV_NVDLA_CACC_CALC_int8_19_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3900.4]
  assign _T_783 = calc_pout_vld_19 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4167.4]
  assign calc_pout_sum_19 = NV_NVDLA_CACC_CALC_int8_19_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3899.4]
  assign calc_pout_19 = _T_783 & calc_pout_sum_19; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4168.4]
  assign calc_pout_vld_20 = NV_NVDLA_CACC_CALC_int8_20_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3912.4]
  assign _T_788 = calc_pout_vld_20 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4171.4]
  assign calc_pout_sum_20 = NV_NVDLA_CACC_CALC_int8_20_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3911.4]
  assign calc_pout_20 = _T_788 & calc_pout_sum_20; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4172.4]
  assign calc_pout_vld_21 = NV_NVDLA_CACC_CALC_int8_21_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3924.4]
  assign _T_793 = calc_pout_vld_21 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4175.4]
  assign calc_pout_sum_21 = NV_NVDLA_CACC_CALC_int8_21_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3923.4]
  assign calc_pout_21 = _T_793 & calc_pout_sum_21; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4176.4]
  assign calc_pout_vld_22 = NV_NVDLA_CACC_CALC_int8_22_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3936.4]
  assign _T_798 = calc_pout_vld_22 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4179.4]
  assign calc_pout_sum_22 = NV_NVDLA_CACC_CALC_int8_22_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3935.4]
  assign calc_pout_22 = _T_798 & calc_pout_sum_22; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4180.4]
  assign calc_pout_vld_23 = NV_NVDLA_CACC_CALC_int8_23_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3948.4]
  assign _T_803 = calc_pout_vld_23 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4183.4]
  assign calc_pout_sum_23 = NV_NVDLA_CACC_CALC_int8_23_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3947.4]
  assign calc_pout_23 = _T_803 & calc_pout_sum_23; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4184.4]
  assign calc_pout_vld_24 = NV_NVDLA_CACC_CALC_int8_24_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3960.4]
  assign _T_808 = calc_pout_vld_24 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4187.4]
  assign calc_pout_sum_24 = NV_NVDLA_CACC_CALC_int8_24_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3959.4]
  assign calc_pout_24 = _T_808 & calc_pout_sum_24; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4188.4]
  assign calc_pout_vld_25 = NV_NVDLA_CACC_CALC_int8_25_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3972.4]
  assign _T_813 = calc_pout_vld_25 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4191.4]
  assign calc_pout_sum_25 = NV_NVDLA_CACC_CALC_int8_25_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3971.4]
  assign calc_pout_25 = _T_813 & calc_pout_sum_25; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4192.4]
  assign calc_pout_vld_26 = NV_NVDLA_CACC_CALC_int8_26_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3984.4]
  assign _T_818 = calc_pout_vld_26 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4195.4]
  assign calc_pout_sum_26 = NV_NVDLA_CACC_CALC_int8_26_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3983.4]
  assign calc_pout_26 = _T_818 & calc_pout_sum_26; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4196.4]
  assign calc_pout_vld_27 = NV_NVDLA_CACC_CALC_int8_27_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@3996.4]
  assign _T_823 = calc_pout_vld_27 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4199.4]
  assign calc_pout_sum_27 = NV_NVDLA_CACC_CALC_int8_27_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@3995.4]
  assign calc_pout_27 = _T_823 & calc_pout_sum_27; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4200.4]
  assign calc_pout_vld_28 = NV_NVDLA_CACC_CALC_int8_28_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4008.4]
  assign _T_828 = calc_pout_vld_28 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4203.4]
  assign calc_pout_sum_28 = NV_NVDLA_CACC_CALC_int8_28_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4007.4]
  assign calc_pout_28 = _T_828 & calc_pout_sum_28; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4204.4]
  assign calc_pout_vld_29 = NV_NVDLA_CACC_CALC_int8_29_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4020.4]
  assign _T_833 = calc_pout_vld_29 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4207.4]
  assign calc_pout_sum_29 = NV_NVDLA_CACC_CALC_int8_29_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4019.4]
  assign calc_pout_29 = _T_833 & calc_pout_sum_29; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4208.4]
  assign calc_pout_vld_30 = NV_NVDLA_CACC_CALC_int8_30_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4032.4]
  assign _T_838 = calc_pout_vld_30 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4211.4]
  assign calc_pout_sum_30 = NV_NVDLA_CACC_CALC_int8_30_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4031.4]
  assign calc_pout_30 = _T_838 & calc_pout_sum_30; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4212.4]
  assign calc_pout_vld_31 = NV_NVDLA_CACC_CALC_int8_31_io_out_partial_valid; // @[NV_soDLA_CACC_calculator_gate.scala 108:29:@3561.4 NV_soDLA_CACC_calculator_gate.scala 127:26:@4044.4]
  assign _T_843 = calc_pout_vld_31 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@4215.4]
  assign calc_pout_sum_31 = NV_NVDLA_CACC_CALC_int8_31_io_out_partial_data; // @[NV_soDLA_CACC_calculator_gate.scala 110:29:@3563.4 NV_soDLA_CACC_calculator_gate.scala 126:26:@4043.4]
  assign calc_pout_31 = _T_843 & calc_pout_sum_31; // @[NV_soDLA_CACC_calculator_gate.scala 181:72:@4216.4]
  assign calc_fout_vld_0 = NV_NVDLA_CACC_CALC_int8_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3670.4]
  assign _T_885 = calc_fout_vld_0 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4220.4]
  assign calc_fout_sum_0 = NV_NVDLA_CACC_CALC_int8_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3668.4]
  assign calc_fout_0 = _T_885 & calc_fout_sum_0; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4221.4]
  assign calc_fout_vld_1 = NV_NVDLA_CACC_CALC_int8_1_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3682.4]
  assign _T_890 = calc_fout_vld_1 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4224.4]
  assign calc_fout_sum_1 = NV_NVDLA_CACC_CALC_int8_1_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3680.4]
  assign calc_fout_1 = _T_890 & calc_fout_sum_1; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4225.4]
  assign calc_fout_vld_2 = NV_NVDLA_CACC_CALC_int8_2_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3694.4]
  assign _T_895 = calc_fout_vld_2 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4228.4]
  assign calc_fout_sum_2 = NV_NVDLA_CACC_CALC_int8_2_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3692.4]
  assign calc_fout_2 = _T_895 & calc_fout_sum_2; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4229.4]
  assign calc_fout_vld_3 = NV_NVDLA_CACC_CALC_int8_3_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3706.4]
  assign _T_900 = calc_fout_vld_3 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4232.4]
  assign calc_fout_sum_3 = NV_NVDLA_CACC_CALC_int8_3_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3704.4]
  assign calc_fout_3 = _T_900 & calc_fout_sum_3; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4233.4]
  assign calc_fout_vld_4 = NV_NVDLA_CACC_CALC_int8_4_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3718.4]
  assign _T_905 = calc_fout_vld_4 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4236.4]
  assign calc_fout_sum_4 = NV_NVDLA_CACC_CALC_int8_4_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3716.4]
  assign calc_fout_4 = _T_905 & calc_fout_sum_4; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4237.4]
  assign calc_fout_vld_5 = NV_NVDLA_CACC_CALC_int8_5_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3730.4]
  assign _T_910 = calc_fout_vld_5 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4240.4]
  assign calc_fout_sum_5 = NV_NVDLA_CACC_CALC_int8_5_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3728.4]
  assign calc_fout_5 = _T_910 & calc_fout_sum_5; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4241.4]
  assign calc_fout_vld_6 = NV_NVDLA_CACC_CALC_int8_6_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3742.4]
  assign _T_915 = calc_fout_vld_6 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4244.4]
  assign calc_fout_sum_6 = NV_NVDLA_CACC_CALC_int8_6_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3740.4]
  assign calc_fout_6 = _T_915 & calc_fout_sum_6; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4245.4]
  assign calc_fout_vld_7 = NV_NVDLA_CACC_CALC_int8_7_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3754.4]
  assign _T_920 = calc_fout_vld_7 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4248.4]
  assign calc_fout_sum_7 = NV_NVDLA_CACC_CALC_int8_7_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3752.4]
  assign calc_fout_7 = _T_920 & calc_fout_sum_7; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4249.4]
  assign calc_fout_vld_8 = NV_NVDLA_CACC_CALC_int8_8_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3766.4]
  assign _T_925 = calc_fout_vld_8 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4252.4]
  assign calc_fout_sum_8 = NV_NVDLA_CACC_CALC_int8_8_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3764.4]
  assign calc_fout_8 = _T_925 & calc_fout_sum_8; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4253.4]
  assign calc_fout_vld_9 = NV_NVDLA_CACC_CALC_int8_9_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3778.4]
  assign _T_930 = calc_fout_vld_9 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4256.4]
  assign calc_fout_sum_9 = NV_NVDLA_CACC_CALC_int8_9_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3776.4]
  assign calc_fout_9 = _T_930 & calc_fout_sum_9; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4257.4]
  assign calc_fout_vld_10 = NV_NVDLA_CACC_CALC_int8_10_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3790.4]
  assign _T_935 = calc_fout_vld_10 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4260.4]
  assign calc_fout_sum_10 = NV_NVDLA_CACC_CALC_int8_10_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3788.4]
  assign calc_fout_10 = _T_935 & calc_fout_sum_10; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4261.4]
  assign calc_fout_vld_11 = NV_NVDLA_CACC_CALC_int8_11_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3802.4]
  assign _T_940 = calc_fout_vld_11 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4264.4]
  assign calc_fout_sum_11 = NV_NVDLA_CACC_CALC_int8_11_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3800.4]
  assign calc_fout_11 = _T_940 & calc_fout_sum_11; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4265.4]
  assign calc_fout_vld_12 = NV_NVDLA_CACC_CALC_int8_12_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3814.4]
  assign _T_945 = calc_fout_vld_12 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4268.4]
  assign calc_fout_sum_12 = NV_NVDLA_CACC_CALC_int8_12_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3812.4]
  assign calc_fout_12 = _T_945 & calc_fout_sum_12; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4269.4]
  assign calc_fout_vld_13 = NV_NVDLA_CACC_CALC_int8_13_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3826.4]
  assign _T_950 = calc_fout_vld_13 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4272.4]
  assign calc_fout_sum_13 = NV_NVDLA_CACC_CALC_int8_13_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3824.4]
  assign calc_fout_13 = _T_950 & calc_fout_sum_13; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4273.4]
  assign calc_fout_vld_14 = NV_NVDLA_CACC_CALC_int8_14_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3838.4]
  assign _T_955 = calc_fout_vld_14 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4276.4]
  assign calc_fout_sum_14 = NV_NVDLA_CACC_CALC_int8_14_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3836.4]
  assign calc_fout_14 = _T_955 & calc_fout_sum_14; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4277.4]
  assign calc_fout_vld_15 = NV_NVDLA_CACC_CALC_int8_15_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3850.4]
  assign _T_960 = calc_fout_vld_15 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4280.4]
  assign calc_fout_sum_15 = NV_NVDLA_CACC_CALC_int8_15_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3848.4]
  assign calc_fout_15 = _T_960 & calc_fout_sum_15; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4281.4]
  assign calc_fout_vld_16 = NV_NVDLA_CACC_CALC_int8_16_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3862.4]
  assign _T_965 = calc_fout_vld_16 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4284.4]
  assign calc_fout_sum_16 = NV_NVDLA_CACC_CALC_int8_16_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3860.4]
  assign calc_fout_16 = _T_965 & calc_fout_sum_16; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4285.4]
  assign calc_fout_vld_17 = NV_NVDLA_CACC_CALC_int8_17_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3874.4]
  assign _T_970 = calc_fout_vld_17 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4288.4]
  assign calc_fout_sum_17 = NV_NVDLA_CACC_CALC_int8_17_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3872.4]
  assign calc_fout_17 = _T_970 & calc_fout_sum_17; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4289.4]
  assign calc_fout_vld_18 = NV_NVDLA_CACC_CALC_int8_18_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3886.4]
  assign _T_975 = calc_fout_vld_18 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4292.4]
  assign calc_fout_sum_18 = NV_NVDLA_CACC_CALC_int8_18_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3884.4]
  assign calc_fout_18 = _T_975 & calc_fout_sum_18; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4293.4]
  assign calc_fout_vld_19 = NV_NVDLA_CACC_CALC_int8_19_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3898.4]
  assign _T_980 = calc_fout_vld_19 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4296.4]
  assign calc_fout_sum_19 = NV_NVDLA_CACC_CALC_int8_19_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3896.4]
  assign calc_fout_19 = _T_980 & calc_fout_sum_19; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4297.4]
  assign calc_fout_vld_20 = NV_NVDLA_CACC_CALC_int8_20_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3910.4]
  assign _T_985 = calc_fout_vld_20 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4300.4]
  assign calc_fout_sum_20 = NV_NVDLA_CACC_CALC_int8_20_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3908.4]
  assign calc_fout_20 = _T_985 & calc_fout_sum_20; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4301.4]
  assign calc_fout_vld_21 = NV_NVDLA_CACC_CALC_int8_21_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3922.4]
  assign _T_990 = calc_fout_vld_21 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4304.4]
  assign calc_fout_sum_21 = NV_NVDLA_CACC_CALC_int8_21_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3920.4]
  assign calc_fout_21 = _T_990 & calc_fout_sum_21; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4305.4]
  assign calc_fout_vld_22 = NV_NVDLA_CACC_CALC_int8_22_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3934.4]
  assign _T_995 = calc_fout_vld_22 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4308.4]
  assign calc_fout_sum_22 = NV_NVDLA_CACC_CALC_int8_22_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3932.4]
  assign calc_fout_22 = _T_995 & calc_fout_sum_22; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4309.4]
  assign calc_fout_vld_23 = NV_NVDLA_CACC_CALC_int8_23_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3946.4]
  assign _T_1000 = calc_fout_vld_23 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4312.4]
  assign calc_fout_sum_23 = NV_NVDLA_CACC_CALC_int8_23_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3944.4]
  assign calc_fout_23 = _T_1000 & calc_fout_sum_23; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4313.4]
  assign calc_fout_vld_24 = NV_NVDLA_CACC_CALC_int8_24_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3958.4]
  assign _T_1005 = calc_fout_vld_24 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4316.4]
  assign calc_fout_sum_24 = NV_NVDLA_CACC_CALC_int8_24_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3956.4]
  assign calc_fout_24 = _T_1005 & calc_fout_sum_24; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4317.4]
  assign calc_fout_vld_25 = NV_NVDLA_CACC_CALC_int8_25_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3970.4]
  assign _T_1010 = calc_fout_vld_25 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4320.4]
  assign calc_fout_sum_25 = NV_NVDLA_CACC_CALC_int8_25_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3968.4]
  assign calc_fout_25 = _T_1010 & calc_fout_sum_25; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4321.4]
  assign calc_fout_vld_26 = NV_NVDLA_CACC_CALC_int8_26_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3982.4]
  assign _T_1015 = calc_fout_vld_26 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4324.4]
  assign calc_fout_sum_26 = NV_NVDLA_CACC_CALC_int8_26_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3980.4]
  assign calc_fout_26 = _T_1015 & calc_fout_sum_26; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4325.4]
  assign calc_fout_vld_27 = NV_NVDLA_CACC_CALC_int8_27_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@3994.4]
  assign _T_1020 = calc_fout_vld_27 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4328.4]
  assign calc_fout_sum_27 = NV_NVDLA_CACC_CALC_int8_27_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@3992.4]
  assign calc_fout_27 = _T_1020 & calc_fout_sum_27; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4329.4]
  assign calc_fout_vld_28 = NV_NVDLA_CACC_CALC_int8_28_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4006.4]
  assign _T_1025 = calc_fout_vld_28 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4332.4]
  assign calc_fout_sum_28 = NV_NVDLA_CACC_CALC_int8_28_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@4004.4]
  assign calc_fout_28 = _T_1025 & calc_fout_sum_28; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4333.4]
  assign calc_fout_vld_29 = NV_NVDLA_CACC_CALC_int8_29_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4018.4]
  assign _T_1030 = calc_fout_vld_29 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4336.4]
  assign calc_fout_sum_29 = NV_NVDLA_CACC_CALC_int8_29_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@4016.4]
  assign calc_fout_29 = _T_1030 & calc_fout_sum_29; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4337.4]
  assign calc_fout_vld_30 = NV_NVDLA_CACC_CALC_int8_30_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4030.4]
  assign _T_1035 = calc_fout_vld_30 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4340.4]
  assign calc_fout_sum_30 = NV_NVDLA_CACC_CALC_int8_30_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@4028.4]
  assign calc_fout_30 = _T_1035 & calc_fout_sum_30; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4341.4]
  assign calc_fout_vld_31 = NV_NVDLA_CACC_CALC_int8_31_io_out_final_valid; // @[NV_soDLA_CACC_calculator_gate.scala 109:29:@3562.4 NV_soDLA_CACC_calculator_gate.scala 125:26:@4042.4]
  assign _T_1040 = calc_fout_vld_31 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@4344.4]
  assign calc_fout_sum_31 = NV_NVDLA_CACC_CALC_int8_31_io_out_final_data; // @[NV_soDLA_CACC_calculator_gate.scala 111:29:@3564.4 NV_soDLA_CACC_calculator_gate.scala 123:26:@4040.4]
  assign calc_fout_31 = _T_1040 & calc_fout_sum_31; // @[NV_soDLA_CACC_calculator_gate.scala 185:71:@4345.4]
  assign _GEN_10 = calc_wr_en_out ? calc_addr_out : _T_1047; // @[Reg.scala 20:19:@4351.4]
  assign _T_1054 = {calc_pout_7,calc_pout_6,calc_pout_5,calc_pout_4,calc_pout_3,calc_pout_2,calc_pout_1,calc_pout_0}; // @[NV_soDLA_CACC_calculator_gate.scala 192:44:@4361.4]
  assign _T_1062 = {calc_pout_15,calc_pout_14,calc_pout_13,calc_pout_12,calc_pout_11,calc_pout_10,calc_pout_9,calc_pout_8,_T_1054}; // @[NV_soDLA_CACC_calculator_gate.scala 192:44:@4369.4]
  assign _T_1069 = {calc_pout_23,calc_pout_22,calc_pout_21,calc_pout_20,calc_pout_19,calc_pout_18,calc_pout_17,calc_pout_16}; // @[NV_soDLA_CACC_calculator_gate.scala 192:44:@4376.4]
  assign _T_1078 = {calc_pout_31,calc_pout_30,calc_pout_29,calc_pout_28,calc_pout_27,calc_pout_26,calc_pout_25,calc_pout_24,_T_1069,_T_1062}; // @[NV_soDLA_CACC_calculator_gate.scala 192:44:@4385.4]
  assign _T_1087 = {calc_fout_7,calc_fout_6,calc_fout_5,calc_fout_4,calc_fout_3,calc_fout_2,calc_fout_1,calc_fout_0}; // @[NV_soDLA_CACC_calculator_gate.scala 195:40:@4397.4]
  assign _T_1095 = {calc_fout_15,calc_fout_14,calc_fout_13,calc_fout_12,calc_fout_11,calc_fout_10,calc_fout_9,calc_fout_8,_T_1087}; // @[NV_soDLA_CACC_calculator_gate.scala 195:40:@4405.4]
  assign _T_1102 = {calc_fout_23,calc_fout_22,calc_fout_21,calc_fout_20,calc_fout_19,calc_fout_18,calc_fout_17,calc_fout_16}; // @[NV_soDLA_CACC_calculator_gate.scala 195:40:@4412.4]
  assign _T_1111 = {calc_fout_31,calc_fout_30,calc_fout_29,calc_fout_28,calc_fout_27,calc_fout_26,calc_fout_25,calc_fout_24,_T_1102,_T_1095}; // @[NV_soDLA_CACC_calculator_gate.scala 195:40:@4421.4]
  assign _GEN_13 = calc_dlv_valid_out ? calc_stripe_end_out : dlv_stripe_end; // @[Reg.scala 20:19:@4434.4]
  assign _GEN_14 = calc_dlv_valid_out ? calc_layer_end_out : dlv_layer_end; // @[Reg.scala 20:19:@4438.4]
  assign dlv_sat_end = calc_layer_end_out & calc_stripe_end_out; // @[NV_soDLA_CACC_calculator_gate.scala 209:42:@4480.4]
  assign _T_1369 = ~ dlv_sat_end; // @[NV_soDLA_CACC_calculator_gate.scala 210:44:@4481.4]
  assign _T_1370 = calc_dlv_valid_out & _T_1369; // @[NV_soDLA_CACC_calculator_gate.scala 210:42:@4482.4]
  assign dlv_sat_clr = _T_1370 & dlv_sat_end_d1; // @[NV_soDLA_CACC_calculator_gate.scala 210:57:@4483.4]
  assign _GEN_15 = calc_dlv_valid_out ? dlv_sat_end : dlv_sat_end_d1; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_0 = NV_NVDLA_CACC_CALC_int8_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3669.4]
  assign _GEN_16 = calc_dlv_valid_out ? calc_fout_sat_0 : dlv_sat_bit_d1_0; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_1 = NV_NVDLA_CACC_CALC_int8_1_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3681.4]
  assign _GEN_17 = calc_dlv_valid_out ? calc_fout_sat_1 : dlv_sat_bit_d1_1; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_2 = NV_NVDLA_CACC_CALC_int8_2_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3693.4]
  assign _GEN_18 = calc_dlv_valid_out ? calc_fout_sat_2 : dlv_sat_bit_d1_2; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_3 = NV_NVDLA_CACC_CALC_int8_3_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3705.4]
  assign _GEN_19 = calc_dlv_valid_out ? calc_fout_sat_3 : dlv_sat_bit_d1_3; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_4 = NV_NVDLA_CACC_CALC_int8_4_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3717.4]
  assign _GEN_20 = calc_dlv_valid_out ? calc_fout_sat_4 : dlv_sat_bit_d1_4; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_5 = NV_NVDLA_CACC_CALC_int8_5_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3729.4]
  assign _GEN_21 = calc_dlv_valid_out ? calc_fout_sat_5 : dlv_sat_bit_d1_5; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_6 = NV_NVDLA_CACC_CALC_int8_6_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3741.4]
  assign _GEN_22 = calc_dlv_valid_out ? calc_fout_sat_6 : dlv_sat_bit_d1_6; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_7 = NV_NVDLA_CACC_CALC_int8_7_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3753.4]
  assign _GEN_23 = calc_dlv_valid_out ? calc_fout_sat_7 : dlv_sat_bit_d1_7; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_8 = NV_NVDLA_CACC_CALC_int8_8_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3765.4]
  assign _GEN_24 = calc_dlv_valid_out ? calc_fout_sat_8 : dlv_sat_bit_d1_8; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_9 = NV_NVDLA_CACC_CALC_int8_9_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3777.4]
  assign _GEN_25 = calc_dlv_valid_out ? calc_fout_sat_9 : dlv_sat_bit_d1_9; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_10 = NV_NVDLA_CACC_CALC_int8_10_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3789.4]
  assign _GEN_26 = calc_dlv_valid_out ? calc_fout_sat_10 : dlv_sat_bit_d1_10; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_11 = NV_NVDLA_CACC_CALC_int8_11_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3801.4]
  assign _GEN_27 = calc_dlv_valid_out ? calc_fout_sat_11 : dlv_sat_bit_d1_11; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_12 = NV_NVDLA_CACC_CALC_int8_12_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3813.4]
  assign _GEN_28 = calc_dlv_valid_out ? calc_fout_sat_12 : dlv_sat_bit_d1_12; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_13 = NV_NVDLA_CACC_CALC_int8_13_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3825.4]
  assign _GEN_29 = calc_dlv_valid_out ? calc_fout_sat_13 : dlv_sat_bit_d1_13; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_14 = NV_NVDLA_CACC_CALC_int8_14_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3837.4]
  assign _GEN_30 = calc_dlv_valid_out ? calc_fout_sat_14 : dlv_sat_bit_d1_14; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_15 = NV_NVDLA_CACC_CALC_int8_15_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3849.4]
  assign _GEN_31 = calc_dlv_valid_out ? calc_fout_sat_15 : dlv_sat_bit_d1_15; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_16 = NV_NVDLA_CACC_CALC_int8_16_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3861.4]
  assign _GEN_32 = calc_dlv_valid_out ? calc_fout_sat_16 : dlv_sat_bit_d1_16; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_17 = NV_NVDLA_CACC_CALC_int8_17_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3873.4]
  assign _GEN_33 = calc_dlv_valid_out ? calc_fout_sat_17 : dlv_sat_bit_d1_17; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_18 = NV_NVDLA_CACC_CALC_int8_18_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3885.4]
  assign _GEN_34 = calc_dlv_valid_out ? calc_fout_sat_18 : dlv_sat_bit_d1_18; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_19 = NV_NVDLA_CACC_CALC_int8_19_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3897.4]
  assign _GEN_35 = calc_dlv_valid_out ? calc_fout_sat_19 : dlv_sat_bit_d1_19; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_20 = NV_NVDLA_CACC_CALC_int8_20_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3909.4]
  assign _GEN_36 = calc_dlv_valid_out ? calc_fout_sat_20 : dlv_sat_bit_d1_20; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_21 = NV_NVDLA_CACC_CALC_int8_21_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3921.4]
  assign _GEN_37 = calc_dlv_valid_out ? calc_fout_sat_21 : dlv_sat_bit_d1_21; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_22 = NV_NVDLA_CACC_CALC_int8_22_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3933.4]
  assign _GEN_38 = calc_dlv_valid_out ? calc_fout_sat_22 : dlv_sat_bit_d1_22; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_23 = NV_NVDLA_CACC_CALC_int8_23_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3945.4]
  assign _GEN_39 = calc_dlv_valid_out ? calc_fout_sat_23 : dlv_sat_bit_d1_23; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_24 = NV_NVDLA_CACC_CALC_int8_24_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3957.4]
  assign _GEN_40 = calc_dlv_valid_out ? calc_fout_sat_24 : dlv_sat_bit_d1_24; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_25 = NV_NVDLA_CACC_CALC_int8_25_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3969.4]
  assign _GEN_41 = calc_dlv_valid_out ? calc_fout_sat_25 : dlv_sat_bit_d1_25; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_26 = NV_NVDLA_CACC_CALC_int8_26_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3981.4]
  assign _GEN_42 = calc_dlv_valid_out ? calc_fout_sat_26 : dlv_sat_bit_d1_26; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_27 = NV_NVDLA_CACC_CALC_int8_27_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@3993.4]
  assign _GEN_43 = calc_dlv_valid_out ? calc_fout_sat_27 : dlv_sat_bit_d1_27; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_28 = NV_NVDLA_CACC_CALC_int8_28_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4005.4]
  assign _GEN_44 = calc_dlv_valid_out ? calc_fout_sat_28 : dlv_sat_bit_d1_28; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_29 = NV_NVDLA_CACC_CALC_int8_29_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4017.4]
  assign _GEN_45 = calc_dlv_valid_out ? calc_fout_sat_29 : dlv_sat_bit_d1_29; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_30 = NV_NVDLA_CACC_CALC_int8_30_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4029.4]
  assign _GEN_46 = calc_dlv_valid_out ? calc_fout_sat_30 : dlv_sat_bit_d1_30; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign calc_fout_sat_31 = NV_NVDLA_CACC_CALC_int8_31_io_out_final_sat; // @[NV_soDLA_CACC_calculator_gate.scala 107:29:@3560.4 NV_soDLA_CACC_calculator_gate.scala 124:26:@4041.4]
  assign _GEN_47 = calc_dlv_valid_out ? calc_fout_sat_31 : dlv_sat_bit_d1_31; // @[NV_soDLA_CACC_calculator_gate.scala 213:29:@4485.4]
  assign _T_1409 = dlv_sat_bit_d1_0 + dlv_sat_bit_d1_1; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4554.4]
  assign _GEN_49 = {{1'd0}, dlv_sat_bit_d1_2}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4555.4]
  assign _T_1410 = _T_1409 + _GEN_49; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4555.4]
  assign _GEN_50 = {{2'd0}, dlv_sat_bit_d1_3}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4556.4]
  assign _T_1411 = _T_1410 + _GEN_50; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4556.4]
  assign _GEN_51 = {{3'd0}, dlv_sat_bit_d1_4}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4557.4]
  assign _T_1412 = _T_1411 + _GEN_51; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4557.4]
  assign _GEN_52 = {{4'd0}, dlv_sat_bit_d1_5}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4558.4]
  assign _T_1413 = _T_1412 + _GEN_52; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4558.4]
  assign _GEN_53 = {{5'd0}, dlv_sat_bit_d1_6}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4559.4]
  assign _T_1414 = _T_1413 + _GEN_53; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4559.4]
  assign _GEN_54 = {{6'd0}, dlv_sat_bit_d1_7}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4560.4]
  assign _T_1415 = _T_1414 + _GEN_54; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4560.4]
  assign _GEN_55 = {{7'd0}, dlv_sat_bit_d1_8}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4561.4]
  assign _T_1416 = _T_1415 + _GEN_55; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4561.4]
  assign _GEN_56 = {{8'd0}, dlv_sat_bit_d1_9}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4562.4]
  assign _T_1417 = _T_1416 + _GEN_56; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4562.4]
  assign _GEN_57 = {{9'd0}, dlv_sat_bit_d1_10}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4563.4]
  assign _T_1418 = _T_1417 + _GEN_57; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4563.4]
  assign _GEN_58 = {{10'd0}, dlv_sat_bit_d1_11}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4564.4]
  assign _T_1419 = _T_1418 + _GEN_58; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4564.4]
  assign _GEN_59 = {{11'd0}, dlv_sat_bit_d1_12}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4565.4]
  assign _T_1420 = _T_1419 + _GEN_59; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4565.4]
  assign _GEN_60 = {{12'd0}, dlv_sat_bit_d1_13}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4566.4]
  assign _T_1421 = _T_1420 + _GEN_60; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4566.4]
  assign _GEN_61 = {{13'd0}, dlv_sat_bit_d1_14}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4567.4]
  assign _T_1422 = _T_1421 + _GEN_61; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4567.4]
  assign _GEN_62 = {{14'd0}, dlv_sat_bit_d1_15}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4568.4]
  assign _T_1423 = _T_1422 + _GEN_62; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4568.4]
  assign _GEN_63 = {{15'd0}, dlv_sat_bit_d1_16}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4569.4]
  assign _T_1424 = _T_1423 + _GEN_63; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4569.4]
  assign _GEN_64 = {{16'd0}, dlv_sat_bit_d1_17}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4570.4]
  assign _T_1425 = _T_1424 + _GEN_64; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4570.4]
  assign _GEN_65 = {{17'd0}, dlv_sat_bit_d1_18}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4571.4]
  assign _T_1426 = _T_1425 + _GEN_65; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4571.4]
  assign _GEN_66 = {{18'd0}, dlv_sat_bit_d1_19}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4572.4]
  assign _T_1427 = _T_1426 + _GEN_66; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4572.4]
  assign _GEN_67 = {{19'd0}, dlv_sat_bit_d1_20}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4573.4]
  assign _T_1428 = _T_1427 + _GEN_67; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4573.4]
  assign _GEN_68 = {{20'd0}, dlv_sat_bit_d1_21}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4574.4]
  assign _T_1429 = _T_1428 + _GEN_68; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4574.4]
  assign _GEN_69 = {{21'd0}, dlv_sat_bit_d1_22}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4575.4]
  assign _T_1430 = _T_1429 + _GEN_69; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4575.4]
  assign _GEN_70 = {{22'd0}, dlv_sat_bit_d1_23}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4576.4]
  assign _T_1431 = _T_1430 + _GEN_70; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4576.4]
  assign _GEN_71 = {{23'd0}, dlv_sat_bit_d1_24}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4577.4]
  assign _T_1432 = _T_1431 + _GEN_71; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4577.4]
  assign _GEN_72 = {{24'd0}, dlv_sat_bit_d1_25}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4578.4]
  assign _T_1433 = _T_1432 + _GEN_72; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4578.4]
  assign _GEN_73 = {{25'd0}, dlv_sat_bit_d1_26}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4579.4]
  assign _T_1434 = _T_1433 + _GEN_73; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4579.4]
  assign _GEN_74 = {{26'd0}, dlv_sat_bit_d1_27}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4580.4]
  assign _T_1435 = _T_1434 + _GEN_74; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4580.4]
  assign _GEN_75 = {{27'd0}, dlv_sat_bit_d1_28}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4581.4]
  assign _T_1436 = _T_1435 + _GEN_75; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4581.4]
  assign _GEN_76 = {{28'd0}, dlv_sat_bit_d1_29}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4582.4]
  assign _T_1437 = _T_1436 + _GEN_76; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4582.4]
  assign _GEN_77 = {{29'd0}, dlv_sat_bit_d1_30}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4583.4]
  assign _T_1438 = _T_1437 + _GEN_77; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4583.4]
  assign _GEN_78 = {{30'd0}, dlv_sat_bit_d1_31}; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4584.4]
  assign sat_sum = _T_1438 + _GEN_78; // @[NV_soDLA_CACC_calculator_gate.scala 218:98:@4584.4]
  assign _T_1441 = sat_count + sat_sum; // @[NV_soDLA_CACC_calculator_gate.scala 221:36:@4586.4]
  assign sat_count_inc = _T_1441[31:0]; // @[NV_soDLA_CACC_calculator_gate.scala 221:47:@4587.4]
  assign sat_carry = _T_1441[32]; // @[NV_soDLA_CACC_calculator_gate.scala 222:43:@4589.4]
  assign _T_1448 = sat_carry ? 32'hffffffff : sat_count_inc; // @[NV_soDLA_CACC_calculator_gate.scala 224:26:@4591.4]
  assign sat_count_w = dlv_sat_clr_d1 ? sat_sum : _T_1448; // @[NV_soDLA_CACC_calculator_gate.scala 223:26:@4592.4]
  assign _T_1450 = sat_sum != 32'h0; // @[NV_soDLA_CACC_calculator_gate.scala 225:49:@4593.4]
  assign _T_1451 = _T_1450 | dlv_sat_clr_d1; // @[NV_soDLA_CACC_calculator_gate.scala 225:54:@4594.4]
  assign sat_reg_en = dlv_sat_vld_d1 & _T_1451; // @[NV_soDLA_CACC_calculator_gate.scala 225:37:@4595.4]
  assign _GEN_48 = sat_reg_en ? sat_count_w : sat_count; // @[NV_soDLA_CACC_calculator_gate.scala 226:21:@4596.4]
  assign io_abuf_wr_addr_valid = _T_1044; // @[NV_soDLA_CACC_calculator_gate.scala 190:27:@4349.4]
  assign io_abuf_wr_addr_bits = _T_1047; // @[NV_soDLA_CACC_calculator_gate.scala 191:26:@4354.4]
  assign io_abuf_wr_data = _T_1080; // @[NV_soDLA_CACC_calculator_gate.scala 192:21:@4390.4]
  assign io_dlv_valid = _T_1116; // @[NV_soDLA_CACC_calculator_gate.scala 196:18:@4429.4]
  assign io_dlv_mask = _T_1119; // @[NV_soDLA_CACC_calculator_gate.scala 197:17:@4432.4]
  assign io_dlv_data = _T_1113; // @[NV_soDLA_CACC_calculator_gate.scala 195:17:@4426.4]
  assign io_dlv_pd = {dlv_layer_end,dlv_stripe_end}; // @[NV_soDLA_CACC_calculator_gate.scala 200:15:@4442.4]
  assign io_dp2reg_sat_count = sat_count; // @[NV_soDLA_CACC_calculator_gate.scala 230:25:@4599.4]
  assign NV_NVDLA_CACC_CALC_int8_reset = io_nvdla_core_rstn == 1'h0; // @[:@3567.4]
  assign NV_NVDLA_CACC_CALC_int8_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3661.4]
  assign NV_NVDLA_CACC_CALC_int8_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3662.4]
  assign NV_NVDLA_CACC_CALC_int8_io_in_data = io_mac_a2accu_data_0; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3663.4]
  assign NV_NVDLA_CACC_CALC_int8_io_in_op = io_abuf_rd_data[33:0]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3664.4]
  assign NV_NVDLA_CACC_CALC_int8_io_in_op_valid = calc_in_mask_0 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3665.4]
  assign NV_NVDLA_CACC_CALC_int8_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3666.4]
  assign NV_NVDLA_CACC_CALC_int8_io_in_valid = io_mac_a2accu_mask[0]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3667.4]
  assign NV_NVDLA_CACC_CALC_int8_1_reset = io_nvdla_core_rstn == 1'h0; // @[:@3570.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3673.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3674.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_in_data = io_mac_a2accu_data_1; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3675.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_in_op = io_abuf_rd_data[67:34]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3676.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_in_op_valid = calc_in_mask_1 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3677.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3678.4]
  assign NV_NVDLA_CACC_CALC_int8_1_io_in_valid = io_mac_a2accu_mask[1]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3679.4]
  assign NV_NVDLA_CACC_CALC_int8_2_reset = io_nvdla_core_rstn == 1'h0; // @[:@3573.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3685.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3686.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_in_data = io_mac_a2accu_data_2; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3687.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_in_op = io_abuf_rd_data[101:68]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3688.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_in_op_valid = calc_in_mask_2 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3689.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3690.4]
  assign NV_NVDLA_CACC_CALC_int8_2_io_in_valid = io_mac_a2accu_mask[2]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3691.4]
  assign NV_NVDLA_CACC_CALC_int8_3_reset = io_nvdla_core_rstn == 1'h0; // @[:@3576.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3697.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3698.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_in_data = io_mac_a2accu_data_3; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3699.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_in_op = io_abuf_rd_data[135:102]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3700.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_in_op_valid = calc_in_mask_3 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3701.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3702.4]
  assign NV_NVDLA_CACC_CALC_int8_3_io_in_valid = io_mac_a2accu_mask[3]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3703.4]
  assign NV_NVDLA_CACC_CALC_int8_4_reset = io_nvdla_core_rstn == 1'h0; // @[:@3579.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3709.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3710.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_in_data = io_mac_a2accu_data_4; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3711.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_in_op = io_abuf_rd_data[169:136]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3712.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_in_op_valid = calc_in_mask_4 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3713.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3714.4]
  assign NV_NVDLA_CACC_CALC_int8_4_io_in_valid = io_mac_a2accu_mask[4]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3715.4]
  assign NV_NVDLA_CACC_CALC_int8_5_reset = io_nvdla_core_rstn == 1'h0; // @[:@3582.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3721.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3722.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_in_data = io_mac_a2accu_data_5; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3723.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_in_op = io_abuf_rd_data[203:170]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3724.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_in_op_valid = calc_in_mask_5 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3725.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3726.4]
  assign NV_NVDLA_CACC_CALC_int8_5_io_in_valid = io_mac_a2accu_mask[5]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3727.4]
  assign NV_NVDLA_CACC_CALC_int8_6_reset = io_nvdla_core_rstn == 1'h0; // @[:@3585.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3733.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3734.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_in_data = io_mac_a2accu_data_6; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3735.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_in_op = io_abuf_rd_data[237:204]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3736.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_in_op_valid = calc_in_mask_6 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3737.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3738.4]
  assign NV_NVDLA_CACC_CALC_int8_6_io_in_valid = io_mac_a2accu_mask[6]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3739.4]
  assign NV_NVDLA_CACC_CALC_int8_7_reset = io_nvdla_core_rstn == 1'h0; // @[:@3588.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3745.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3746.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_in_data = io_mac_a2accu_data_7; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3747.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_in_op = io_abuf_rd_data[271:238]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3748.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_in_op_valid = calc_in_mask_7 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3749.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3750.4]
  assign NV_NVDLA_CACC_CALC_int8_7_io_in_valid = io_mac_a2accu_mask[7]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3751.4]
  assign NV_NVDLA_CACC_CALC_int8_8_reset = io_nvdla_core_rstn == 1'h0; // @[:@3591.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3757.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3758.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_in_data = io_mac_a2accu_data_8; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3759.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_in_op = io_abuf_rd_data[305:272]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3760.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_in_op_valid = calc_in_mask_8 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3761.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3762.4]
  assign NV_NVDLA_CACC_CALC_int8_8_io_in_valid = io_mac_a2accu_mask[8]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3763.4]
  assign NV_NVDLA_CACC_CALC_int8_9_reset = io_nvdla_core_rstn == 1'h0; // @[:@3594.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3769.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3770.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_in_data = io_mac_a2accu_data_9; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3771.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_in_op = io_abuf_rd_data[339:306]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3772.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_in_op_valid = calc_in_mask_9 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3773.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3774.4]
  assign NV_NVDLA_CACC_CALC_int8_9_io_in_valid = io_mac_a2accu_mask[9]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3775.4]
  assign NV_NVDLA_CACC_CALC_int8_10_reset = io_nvdla_core_rstn == 1'h0; // @[:@3597.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3781.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3782.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_in_data = io_mac_a2accu_data_10; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3783.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_in_op = io_abuf_rd_data[373:340]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3784.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_in_op_valid = calc_in_mask_10 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3785.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3786.4]
  assign NV_NVDLA_CACC_CALC_int8_10_io_in_valid = io_mac_a2accu_mask[10]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3787.4]
  assign NV_NVDLA_CACC_CALC_int8_11_reset = io_nvdla_core_rstn == 1'h0; // @[:@3600.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3793.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3794.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_in_data = io_mac_a2accu_data_11; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3795.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_in_op = io_abuf_rd_data[407:374]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3796.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_in_op_valid = calc_in_mask_11 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3797.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3798.4]
  assign NV_NVDLA_CACC_CALC_int8_11_io_in_valid = io_mac_a2accu_mask[11]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3799.4]
  assign NV_NVDLA_CACC_CALC_int8_12_reset = io_nvdla_core_rstn == 1'h0; // @[:@3603.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3805.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3806.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_in_data = io_mac_a2accu_data_12; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3807.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_in_op = io_abuf_rd_data[441:408]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3808.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_in_op_valid = calc_in_mask_12 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3809.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3810.4]
  assign NV_NVDLA_CACC_CALC_int8_12_io_in_valid = io_mac_a2accu_mask[12]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3811.4]
  assign NV_NVDLA_CACC_CALC_int8_13_reset = io_nvdla_core_rstn == 1'h0; // @[:@3606.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3817.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3818.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_in_data = io_mac_a2accu_data_13; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3819.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_in_op = io_abuf_rd_data[475:442]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3820.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_in_op_valid = calc_in_mask_13 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3821.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3822.4]
  assign NV_NVDLA_CACC_CALC_int8_13_io_in_valid = io_mac_a2accu_mask[13]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3823.4]
  assign NV_NVDLA_CACC_CALC_int8_14_reset = io_nvdla_core_rstn == 1'h0; // @[:@3609.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3829.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3830.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_in_data = io_mac_a2accu_data_14; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3831.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_in_op = io_abuf_rd_data[509:476]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3832.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_in_op_valid = calc_in_mask_14 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3833.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3834.4]
  assign NV_NVDLA_CACC_CALC_int8_14_io_in_valid = io_mac_a2accu_mask[14]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3835.4]
  assign NV_NVDLA_CACC_CALC_int8_15_reset = io_nvdla_core_rstn == 1'h0; // @[:@3612.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3841.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3842.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_in_data = io_mac_a2accu_data_15; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3843.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_in_op = io_abuf_rd_data[543:510]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3844.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_in_op_valid = calc_in_mask_15 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3845.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3846.4]
  assign NV_NVDLA_CACC_CALC_int8_15_io_in_valid = io_mac_a2accu_mask[15]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3847.4]
  assign NV_NVDLA_CACC_CALC_int8_16_reset = io_nvdla_core_rstn == 1'h0; // @[:@3615.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3853.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3854.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_in_data = io_mac_b2accu_data_0; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3855.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_in_op = io_abuf_rd_data[577:544]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3856.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_in_op_valid = calc_in_mask_16 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3857.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3858.4]
  assign NV_NVDLA_CACC_CALC_int8_16_io_in_valid = io_mac_b2accu_mask[0]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3859.4]
  assign NV_NVDLA_CACC_CALC_int8_17_reset = io_nvdla_core_rstn == 1'h0; // @[:@3618.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3865.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3866.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_in_data = io_mac_b2accu_data_1; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3867.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_in_op = io_abuf_rd_data[611:578]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3868.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_in_op_valid = calc_in_mask_17 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3869.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3870.4]
  assign NV_NVDLA_CACC_CALC_int8_17_io_in_valid = io_mac_b2accu_mask[1]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3871.4]
  assign NV_NVDLA_CACC_CALC_int8_18_reset = io_nvdla_core_rstn == 1'h0; // @[:@3621.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3877.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3878.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_in_data = io_mac_b2accu_data_2; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3879.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_in_op = io_abuf_rd_data[645:612]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3880.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_in_op_valid = calc_in_mask_18 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3881.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3882.4]
  assign NV_NVDLA_CACC_CALC_int8_18_io_in_valid = io_mac_b2accu_mask[2]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3883.4]
  assign NV_NVDLA_CACC_CALC_int8_19_reset = io_nvdla_core_rstn == 1'h0; // @[:@3624.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3889.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3890.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_in_data = io_mac_b2accu_data_3; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3891.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_in_op = io_abuf_rd_data[679:646]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3892.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_in_op_valid = calc_in_mask_19 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3893.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3894.4]
  assign NV_NVDLA_CACC_CALC_int8_19_io_in_valid = io_mac_b2accu_mask[3]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3895.4]
  assign NV_NVDLA_CACC_CALC_int8_20_reset = io_nvdla_core_rstn == 1'h0; // @[:@3627.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3901.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3902.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_in_data = io_mac_b2accu_data_4; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3903.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_in_op = io_abuf_rd_data[713:680]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3904.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_in_op_valid = calc_in_mask_20 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3905.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3906.4]
  assign NV_NVDLA_CACC_CALC_int8_20_io_in_valid = io_mac_b2accu_mask[4]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3907.4]
  assign NV_NVDLA_CACC_CALC_int8_21_reset = io_nvdla_core_rstn == 1'h0; // @[:@3630.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3913.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3914.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_in_data = io_mac_b2accu_data_5; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3915.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_in_op = io_abuf_rd_data[747:714]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3916.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_in_op_valid = calc_in_mask_21 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3917.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3918.4]
  assign NV_NVDLA_CACC_CALC_int8_21_io_in_valid = io_mac_b2accu_mask[5]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3919.4]
  assign NV_NVDLA_CACC_CALC_int8_22_reset = io_nvdla_core_rstn == 1'h0; // @[:@3633.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3925.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3926.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_in_data = io_mac_b2accu_data_6; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3927.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_in_op = io_abuf_rd_data[781:748]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3928.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_in_op_valid = calc_in_mask_22 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3929.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3930.4]
  assign NV_NVDLA_CACC_CALC_int8_22_io_in_valid = io_mac_b2accu_mask[6]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3931.4]
  assign NV_NVDLA_CACC_CALC_int8_23_reset = io_nvdla_core_rstn == 1'h0; // @[:@3636.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3937.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3938.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_in_data = io_mac_b2accu_data_7; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3939.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_in_op = io_abuf_rd_data[815:782]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3940.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_in_op_valid = calc_in_mask_23 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3941.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3942.4]
  assign NV_NVDLA_CACC_CALC_int8_23_io_in_valid = io_mac_b2accu_mask[7]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3943.4]
  assign NV_NVDLA_CACC_CALC_int8_24_reset = io_nvdla_core_rstn == 1'h0; // @[:@3639.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3949.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3950.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_in_data = io_mac_b2accu_data_8; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3951.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_in_op = io_abuf_rd_data[849:816]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3952.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_in_op_valid = calc_in_mask_24 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3953.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3954.4]
  assign NV_NVDLA_CACC_CALC_int8_24_io_in_valid = io_mac_b2accu_mask[8]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3955.4]
  assign NV_NVDLA_CACC_CALC_int8_25_reset = io_nvdla_core_rstn == 1'h0; // @[:@3642.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3961.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3962.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_in_data = io_mac_b2accu_data_9; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3963.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_in_op = io_abuf_rd_data[883:850]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3964.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_in_op_valid = calc_in_mask_25 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3965.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3966.4]
  assign NV_NVDLA_CACC_CALC_int8_25_io_in_valid = io_mac_b2accu_mask[9]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3967.4]
  assign NV_NVDLA_CACC_CALC_int8_26_reset = io_nvdla_core_rstn == 1'h0; // @[:@3645.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3973.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3974.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_in_data = io_mac_b2accu_data_10; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3975.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_in_op = io_abuf_rd_data[917:884]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3976.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_in_op_valid = calc_in_mask_26 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3977.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3978.4]
  assign NV_NVDLA_CACC_CALC_int8_26_io_in_valid = io_mac_b2accu_mask[10]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3979.4]
  assign NV_NVDLA_CACC_CALC_int8_27_reset = io_nvdla_core_rstn == 1'h0; // @[:@3648.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3985.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3986.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_in_data = io_mac_b2accu_data_11; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3987.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_in_op = io_abuf_rd_data[951:918]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@3988.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_in_op_valid = calc_in_mask_27 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@3989.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@3990.4]
  assign NV_NVDLA_CACC_CALC_int8_27_io_in_valid = io_mac_b2accu_mask[11]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@3991.4]
  assign NV_NVDLA_CACC_CALC_int8_28_reset = io_nvdla_core_rstn == 1'h0; // @[:@3651.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@3997.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@3998.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_in_data = io_mac_b2accu_data_12; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@3999.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_in_op = io_abuf_rd_data[985:952]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@4000.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_in_op_valid = calc_in_mask_28 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@4001.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@4002.4]
  assign NV_NVDLA_CACC_CALC_int8_28_io_in_valid = io_mac_b2accu_mask[12]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@4003.4]
  assign NV_NVDLA_CACC_CALC_int8_29_reset = io_nvdla_core_rstn == 1'h0; // @[:@3654.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@4009.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@4010.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_in_data = io_mac_b2accu_data_13; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@4011.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_in_op = io_abuf_rd_data[1019:986]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@4012.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_in_op_valid = calc_in_mask_29 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@4013.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@4014.4]
  assign NV_NVDLA_CACC_CALC_int8_29_io_in_valid = io_mac_b2accu_mask[13]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@4015.4]
  assign NV_NVDLA_CACC_CALC_int8_30_reset = io_nvdla_core_rstn == 1'h0; // @[:@3657.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@4021.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@4022.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_in_data = io_mac_b2accu_data_14; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@4023.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_in_op = io_abuf_rd_data[1053:1020]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@4024.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_in_op_valid = calc_in_mask_30 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@4025.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@4026.4]
  assign NV_NVDLA_CACC_CALC_int8_30_io_in_valid = io_mac_b2accu_mask[14]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@4027.4]
  assign NV_NVDLA_CACC_CALC_int8_31_reset = io_nvdla_core_rstn == 1'h0; // @[:@3660.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_nvdla_core_clk = io_nvdla_cell_clk; // @[NV_soDLA_CACC_calculator_gate.scala 116:42:@4033.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_cfg_truncate = io_cfg_truncate; // @[NV_soDLA_CACC_calculator_gate.scala 117:40:@4034.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_in_data = io_mac_b2accu_data_15; // @[NV_soDLA_CACC_calculator_gate.scala 118:35:@4035.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_in_op = io_abuf_rd_data[1087:1054]; // @[NV_soDLA_CACC_calculator_gate.scala 119:33:@4036.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_in_op_valid = calc_in_mask_31 & io_accu_ctrl_ram_valid; // @[NV_soDLA_CACC_calculator_gate.scala 120:39:@4037.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_in_sel = calc_valid & calc_channel_end; // @[NV_soDLA_CACC_calculator_gate.scala 121:34:@4038.4]
  assign NV_NVDLA_CACC_CALC_int8_31_io_in_valid = io_mac_b2accu_mask[15]; // @[NV_soDLA_CACC_calculator_gate.scala 122:36:@4039.4]
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
