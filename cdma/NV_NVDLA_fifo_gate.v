module CKLNQD12( // @[:@3.2]
  input   io_CP, // @[:@6.4]
  input   io_E, // @[:@6.4]
  output  io_Q // @[:@6.4]
);
  wire  _T_13; // @[CKLNQD12.scala 16:21:@8.4]
  wire  _T_16; // @[CKLNQD12.scala 16:14:@10.4]
  wire  _T_17; // @[CKLNQD12.scala 16:36:@11.4]
  reg  _T_20; // @[CKLNQD12.scala 17:21:@13.4]
  reg [31:0] _RAND_0;
  wire  _T_23; // @[CKLNQD12.scala 18:34:@17.4]
  assign _T_13 = $unsigned(io_CP); // @[CKLNQD12.scala 16:21:@8.4]
  assign _T_16 = _T_13 == 1'h0; // @[CKLNQD12.scala 16:14:@10.4]
  assign _T_17 = _T_16; // @[CKLNQD12.scala 16:36:@11.4]
  assign _T_23 = _T_13 & _T_20; // @[CKLNQD12.scala 18:34:@17.4]
  assign io_Q = _T_23; // @[CKLNQD12.scala 18:10:@19.4]
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
  _T_20 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge _T_17) begin
    _T_20 <= io_E;
  end
endmodule
module NV_CLK_gate_power( // @[:@21.2]
  input   io_clk, // @[:@24.4]
  input   io_clk_en, // @[:@24.4]
  output  io_clk_gated // @[:@24.4]
);
  wire  p_clkgate_io_CP; // @[NV_CLK_gate_power.scala 18:27:@26.4]
  wire  p_clkgate_io_E; // @[NV_CLK_gate_power.scala 18:27:@26.4]
  wire  p_clkgate_io_Q; // @[NV_CLK_gate_power.scala 18:27:@26.4]
  CKLNQD12 p_clkgate ( // @[NV_CLK_gate_power.scala 18:27:@26.4]
    .io_CP(p_clkgate_io_CP),
    .io_E(p_clkgate_io_E),
    .io_Q(p_clkgate_io_Q)
  );
  assign io_clk_gated = p_clkgate_io_Q; // @[NV_CLK_gate_power.scala 22:18:@32.4]
  assign p_clkgate_io_CP = io_clk; // @[NV_CLK_gate_power.scala 20:21:@30.4]
  assign p_clkgate_io_E = io_clk_en; // @[NV_CLK_gate_power.scala 21:20:@31.4]
endmodule
module NV_NVDLA_fifo_gate( // @[:@34.2]
  input         clock, // @[:@35.4]
  input         reset, // @[:@36.4]
  input         io_clk, // @[:@37.4]
  input         io_reset_, // @[:@37.4]
  input         io_wr_pvld, // @[:@37.4]
  output        io_wr_prdy, // @[:@37.4]
  input         io_wr_pd, // @[:@37.4]
  output        io_rd_pvld, // @[:@37.4]
  input         io_rd_prdy, // @[:@37.4]
  output        io_rd_pd, // @[:@37.4]
  input  [31:0] io_pwrbus_ram_pd // @[:@37.4]
);
  wire  NV_CLK_gate_power_io_clk; // @[FIFO_gate.scala 70:27:@41.4]
  wire  NV_CLK_gate_power_io_clk_en; // @[FIFO_gate.scala 70:27:@41.4]
  wire  NV_CLK_gate_power_io_clk_gated; // @[FIFO_gate.scala 70:27:@41.4]
  wire  _T_24; // @[FIFO_gate.scala 57:27:@39.4]
  reg  _T_29; // @[FIFO_gate.scala 99:32:@46.4]
  reg [31:0] _RAND_0;
  reg  _T_34; // @[FIFO_gate.scala 105:34:@49.4]
  reg [31:0] _RAND_1;
  reg  _T_37; // @[FIFO_gate.scala 108:58:@51.4]
  reg [31:0] _RAND_2;
  reg  _T_55; // @[FIFO_gate.scala 125:36:@63.4]
  reg [31:0] _RAND_3;
  wire  _T_56; // @[FIFO_gate.scala 126:37:@64.4]
  wire  _T_58; // @[FIFO_gate.scala 126:57:@65.4]
  wire  _T_59; // @[FIFO_gate.scala 126:54:@66.4]
  wire  _T_61; // @[FIFO_gate.scala 126:24:@67.4]
  wire  _T_39; // @[FIFO_gate.scala 110:58:@52.4]
  wire  _T_40; // @[FIFO_gate.scala 110:55:@53.4]
  wire  _T_49; // @[FIFO_gate.scala 116:41:@59.4]
  reg  _T_52; // @[FIFO_gate.scala 124:28:@62.4]
  reg [31:0] _RAND_4;
  wire  _T_64; // @[FIFO_gate.scala 127:31:@70.4]
  wire  _T_66; // @[FIFO_gate.scala 129:14:@71.4]
  wire  _T_67; // @[FIFO_gate.scala 129:27:@72.4]
  wire  _GEN_0; // @[FIFO_gate.scala 129:42:@73.4]
  wire  _T_71; // @[FIFO_gate.scala 134:27:@79.4]
  wire  _T_79; // @[Mux.scala 46:19:@84.6]
  wire  _T_80; // @[Mux.scala 46:16:@85.6]
  wire  _T_82; // @[FIFO_gate.scala 143:42:@89.4]
  wire  _T_83; // @[FIFO_gate.scala 142:54:@90.4]
  wire  _T_84; // @[FIFO_gate.scala 144:44:@91.4]
  NV_CLK_gate_power NV_CLK_gate_power ( // @[FIFO_gate.scala 70:27:@41.4]
    .io_clk(NV_CLK_gate_power_io_clk),
    .io_clk_en(NV_CLK_gate_power_io_clk_en),
    .io_clk_gated(NV_CLK_gate_power_io_clk_gated)
  );
  assign _T_24 = io_reset_ == 1'h0; // @[FIFO_gate.scala 57:27:@39.4]
  assign _T_56 = _T_37 & _T_55; // @[FIFO_gate.scala 126:37:@64.4]
  assign _T_58 = _T_29 == 1'h0; // @[FIFO_gate.scala 126:57:@65.4]
  assign _T_59 = _T_56 & _T_58; // @[FIFO_gate.scala 126:54:@66.4]
  assign _T_61 = _T_59 == 1'h0; // @[FIFO_gate.scala 126:24:@67.4]
  assign _T_39 = _T_61 == 1'h0; // @[FIFO_gate.scala 110:58:@52.4]
  assign _T_40 = _T_37 & _T_39; // @[FIFO_gate.scala 110:55:@53.4]
  assign _T_49 = io_wr_pvld | _T_40; // @[FIFO_gate.scala 116:41:@59.4]
  assign _T_64 = _T_39 ? _T_37 : io_wr_pvld; // @[FIFO_gate.scala 127:31:@70.4]
  assign _T_66 = _T_34 == 1'h0; // @[FIFO_gate.scala 129:14:@71.4]
  assign _T_67 = _T_66 | io_rd_prdy; // @[FIFO_gate.scala 129:27:@72.4]
  assign _GEN_0 = _T_67 ? _T_64 : _T_34; // @[FIFO_gate.scala 129:42:@73.4]
  assign _T_71 = _T_64 & _T_67; // @[FIFO_gate.scala 134:27:@79.4]
  assign _T_79 = 1'h0 == _T_39; // @[Mux.scala 46:19:@84.6]
  assign _T_80 = _T_79 ? io_wr_pd : 1'h0; // @[Mux.scala 46:16:@85.6]
  assign _T_82 = _T_34 & _T_29; // @[FIFO_gate.scala 143:42:@89.4]
  assign _T_83 = io_wr_pvld | _T_82; // @[FIFO_gate.scala 142:54:@90.4]
  assign _T_84 = _T_37 & _T_61; // @[FIFO_gate.scala 144:44:@91.4]
  assign io_wr_prdy = 1'h0; // @[FIFO_gate.scala 145:20:@95.4]
  assign io_rd_pvld = _T_34; // @[FIFO_gate.scala 106:20:@50.4]
  assign io_rd_pd = _T_52; // @[FIFO_gate.scala 141:18:@88.4]
  assign NV_CLK_gate_power_io_clk = io_clk; // @[FIFO_gate.scala 71:22:@44.4]
  assign NV_CLK_gate_power_io_clk_en = _T_83 | _T_84; // @[FIFO_gate.scala 72:25:@45.4]
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
  _T_29 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_34 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_37 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_55 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_52 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_clk) begin
    if (_T_24) begin
      _T_29 <= 1'h1;
    end else begin
      _T_29 <= io_rd_prdy;
    end
    if (_T_24) begin
      _T_34 <= 1'h0;
    end else begin
      if (_T_67) begin
        if (_T_39) begin
          _T_34 <= _T_37;
        end else begin
          _T_34 <= io_wr_pvld;
        end
      end
    end
    if (_T_24) begin
      _T_55 <= 1'h0;
    end else begin
      _T_55 <= _T_34;
    end
    if (_T_71) begin
      if (_T_79) begin
        _T_52 <= io_wr_pd;
      end else begin
        _T_52 <= 1'h0;
      end
    end
  end
  always @(posedge NV_CLK_gate_power_io_clk_gated) begin
    if (_T_24) begin
      _T_37 <= 1'h0;
    end else begin
      _T_37 <= _T_49;
    end
  end
endmodule
