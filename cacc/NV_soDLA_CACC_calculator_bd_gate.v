module NV_soDLA_CACC_calculator_bd_gate( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  input        io_nvdla_core_clk, // @[:@6.4]
  input        io_nvdla_core_rstn, // @[:@6.4]
  input        io_calc_valid, // @[:@6.4]
  input  [5:0] io_calc_addr, // @[:@6.4]
  input  [2:0] io_calc_mode, // @[:@6.4]
  input        io_calc_stripe_end, // @[:@6.4]
  input        io_calc_channel_end, // @[:@6.4]
  input        io_calc_layer_end, // @[:@6.4]
  input        io_calc_dlv_elem_mask, // @[:@6.4]
  output       io_calc_valid_out, // @[:@6.4]
  output       io_calc_wr_en_out, // @[:@6.4]
  output [5:0] io_calc_addr_out, // @[:@6.4]
  output       io_calc_dlv_valid_out, // @[:@6.4]
  output       io_calc_stripe_end_out, // @[:@6.4]
  output       io_calc_layer_end_out // @[:@6.4]
);
  wire  _T_36; // @[NV_soDLA_CACC_calculator_bd_gate.scala 55:38:@8.4]
  wire  calc_dlv_valid; // @[NV_soDLA_CACC_calculator_bd_gate.scala 57:40:@9.4]
  wire  _T_37; // @[NV_soDLA_CACC_calculator_bd_gate.scala 58:39:@10.4]
  wire  calc_wr_en; // @[NV_soDLA_CACC_calculator_bd_gate.scala 58:36:@11.4]
  reg  _T_42; // @[NV_soDLA_CACC_calculator_bd_gate.scala 63:72:@13.4]
  reg [31:0] _RAND_0;
  reg  _T_45; // @[NV_soDLA_CACC_calculator_bd_gate.scala 63:72:@14.4]
  reg [31:0] _RAND_1;
  reg  _T_50; // @[NV_soDLA_CACC_calculator_bd_gate.scala 65:72:@16.4]
  reg [31:0] _RAND_2;
  reg  _T_53; // @[NV_soDLA_CACC_calculator_bd_gate.scala 65:72:@17.4]
  reg [31:0] _RAND_3;
  reg [5:0] _T_58; // @[NV_soDLA_CACC_calculator_bd_gate.scala 67:71:@19.4]
  reg [31:0] _RAND_4;
  reg [5:0] _T_61; // @[NV_soDLA_CACC_calculator_bd_gate.scala 67:71:@20.4]
  reg [31:0] _RAND_5;
  wire [5:0] _GEN_0; // @[NV_soDLA_CACC_calculator_bd_gate.scala 76:30:@26.4]
  wire [5:0] _GEN_1; // @[NV_soDLA_CACC_calculator_bd_gate.scala 76:30:@31.4]
  reg  _T_66; // @[NV_soDLA_CACC_calculator_bd_gate.scala 87:74:@38.4]
  reg [31:0] _RAND_6;
  reg  _T_69; // @[NV_soDLA_CACC_calculator_bd_gate.scala 87:74:@39.4]
  reg [31:0] _RAND_7;
  reg  _T_74; // @[NV_soDLA_CACC_calculator_bd_gate.scala 89:75:@41.4]
  reg [31:0] _RAND_8;
  reg  _T_77; // @[NV_soDLA_CACC_calculator_bd_gate.scala 89:75:@42.4]
  reg [31:0] _RAND_9;
  reg  _T_82; // @[NV_soDLA_CACC_calculator_bd_gate.scala 91:74:@44.4]
  reg [31:0] _RAND_10;
  reg  _T_85; // @[NV_soDLA_CACC_calculator_bd_gate.scala 91:74:@45.4]
  reg [31:0] _RAND_11;
  wire  _GEN_2; // @[NV_soDLA_CACC_calculator_bd_gate.scala 99:34:@50.4]
  wire  _GEN_3; // @[NV_soDLA_CACC_calculator_bd_gate.scala 99:34:@50.4]
  wire  _GEN_4; // @[NV_soDLA_CACC_calculator_bd_gate.scala 99:34:@55.4]
  wire  _GEN_5; // @[NV_soDLA_CACC_calculator_bd_gate.scala 99:34:@55.4]
  assign _T_36 = io_nvdla_core_rstn == 1'h0; // @[NV_soDLA_CACC_calculator_bd_gate.scala 55:38:@8.4]
  assign calc_dlv_valid = io_calc_valid & io_calc_channel_end; // @[NV_soDLA_CACC_calculator_bd_gate.scala 57:40:@9.4]
  assign _T_37 = ~ io_calc_channel_end; // @[NV_soDLA_CACC_calculator_bd_gate.scala 58:39:@10.4]
  assign calc_wr_en = io_calc_valid & _T_37; // @[NV_soDLA_CACC_calculator_bd_gate.scala 58:36:@11.4]
  assign _GEN_0 = io_calc_valid ? io_calc_addr : _T_58; // @[NV_soDLA_CACC_calculator_bd_gate.scala 76:30:@26.4]
  assign _GEN_1 = _T_42 ? _T_58 : _T_61; // @[NV_soDLA_CACC_calculator_bd_gate.scala 76:30:@31.4]
  assign _GEN_2 = calc_dlv_valid ? io_calc_stripe_end : _T_74; // @[NV_soDLA_CACC_calculator_bd_gate.scala 99:34:@50.4]
  assign _GEN_3 = calc_dlv_valid ? io_calc_layer_end : _T_82; // @[NV_soDLA_CACC_calculator_bd_gate.scala 99:34:@50.4]
  assign _GEN_4 = _T_66 ? _T_74 : _T_77; // @[NV_soDLA_CACC_calculator_bd_gate.scala 99:34:@55.4]
  assign _GEN_5 = _T_66 ? _T_82 : _T_85; // @[NV_soDLA_CACC_calculator_bd_gate.scala 99:34:@55.4]
  assign io_calc_valid_out = _T_45; // @[NV_soDLA_CACC_calculator_bd_gate.scala 81:23:@34.4]
  assign io_calc_wr_en_out = _T_53; // @[NV_soDLA_CACC_calculator_bd_gate.scala 82:23:@35.4]
  assign io_calc_addr_out = _T_61; // @[NV_soDLA_CACC_calculator_bd_gate.scala 83:22:@36.4]
  assign io_calc_dlv_valid_out = _T_69; // @[NV_soDLA_CACC_calculator_bd_gate.scala 105:27:@59.4]
  assign io_calc_stripe_end_out = _T_77; // @[NV_soDLA_CACC_calculator_bd_gate.scala 106:28:@60.4]
  assign io_calc_layer_end_out = _T_85; // @[NV_soDLA_CACC_calculator_bd_gate.scala 107:27:@61.4]
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
  _T_42 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_45 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_50 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_53 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_58 = _RAND_4[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_61 = _RAND_5[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_66 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_69 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_74 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_77 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_82 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_85 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (_T_36) begin
      _T_42 <= 1'h0;
    end else begin
      _T_42 <= io_calc_valid;
    end
    if (_T_36) begin
      _T_45 <= 1'h0;
    end else begin
      _T_45 <= _T_42;
    end
    if (_T_36) begin
      _T_50 <= 1'h0;
    end else begin
      _T_50 <= calc_wr_en;
    end
    if (_T_36) begin
      _T_53 <= 1'h0;
    end else begin
      _T_53 <= _T_50;
    end
    if (_T_36) begin
      _T_58 <= 6'h0;
    end else begin
      if (io_calc_valid) begin
        _T_58 <= io_calc_addr;
      end
    end
    if (_T_36) begin
      _T_61 <= 6'h0;
    end else begin
      if (_T_42) begin
        _T_61 <= _T_58;
      end
    end
    if (_T_36) begin
      _T_66 <= 1'h0;
    end else begin
      _T_66 <= calc_dlv_valid;
    end
    if (_T_36) begin
      _T_69 <= 1'h0;
    end else begin
      _T_69 <= _T_66;
    end
    if (_T_36) begin
      _T_74 <= 1'h0;
    end else begin
      if (calc_dlv_valid) begin
        _T_74 <= io_calc_stripe_end;
      end
    end
    if (_T_36) begin
      _T_77 <= 1'h0;
    end else begin
      if (_T_66) begin
        _T_77 <= _T_74;
      end
    end
    if (_T_36) begin
      _T_82 <= 1'h0;
    end else begin
      if (calc_dlv_valid) begin
        _T_82 <= io_calc_layer_end;
      end
    end
    if (_T_36) begin
      _T_85 <= 1'h0;
    end else begin
      if (_T_66) begin
        _T_85 <= _T_82;
      end
    end
  end
endmodule
