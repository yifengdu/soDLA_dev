module CKLNQD12( // @[:@3.2]
  input   CP, // @[:@6.4]
  input   E, // @[:@6.4]
  output  Q // @[:@6.4]
);
  wire  _T_13; // @[CKLNQD12.scala 16:21:@8.4]
  wire  _T_16; // @[CKLNQD12.scala 16:14:@10.4]
  wire  _T_17; // @[CKLNQD12.scala 16:36:@11.4]
  reg  _T_20; // @[CKLNQD12.scala 17:21:@13.4]
  reg [31:0] _RAND_0;
  wire  _T_23; // @[CKLNQD12.scala 18:34:@17.4]
  assign _T_13 = $unsigned(CP); // @[CKLNQD12.scala 16:21:@8.4]
  assign _T_16 = _T_13 == 1'h0; // @[CKLNQD12.scala 16:14:@10.4]
  assign _T_17 = _T_16; // @[CKLNQD12.scala 16:36:@11.4]
  assign _T_23 = _T_13 & _T_20; // @[CKLNQD12.scala 18:34:@17.4]
  assign Q = _T_23; // @[CKLNQD12.scala 18:10:@19.4]
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
    _T_20 <= E;
  end
endmodule
module NV_CLK_gate_power( // @[:@21.2]
  input   clk, // @[:@24.4]
  input   clk_en, // @[:@24.4]
  output  clk_gated // @[:@24.4]
);
  wire  p_clkgate_CP; // @[NV_CLK_gate_power.scala 18:27:@26.4]
  wire  p_clkgate_E; // @[NV_CLK_gate_power.scala 18:27:@26.4]
  wire  p_clkgate_Q; // @[NV_CLK_gate_power.scala 18:27:@26.4]
  CKLNQD12 p_clkgate ( // @[NV_CLK_gate_power.scala 18:27:@26.4]
    .CP(p_clkgate_CP),
    .E(p_clkgate_E),
    .Q(p_clkgate_Q)
  );
  assign clk_gated = p_clkgate_Q; // @[NV_CLK_gate_power.scala 22:18:@32.4]
  assign p_clkgate_CP = clk; // @[NV_CLK_gate_power.scala 20:21:@30.4]
  assign p_clkgate_E = clk_en; // @[NV_CLK_gate_power.scala 21:20:@31.4]
endmodule
module nv_flopram( // @[:@34.2]
  input         clk, // @[:@37.4]
  input         clk_mgated, // @[:@37.4]
  input  [32:0] di, // @[:@37.4]
  input         iwe, // @[:@37.4]
  input         we, // @[:@37.4]
  input  [1:0]  wa, // @[:@37.4]
  input  [2:0]  ra, // @[:@37.4]
  output [32:0] dout // @[:@37.4]
);
  reg [32:0] di_d; // @[Reg.scala 11:16:@39.4]
  reg [63:0] _RAND_0;
  reg [32:0] _T_26; // @[nv_flopram.scala 67:35:@45.4]
  reg [63:0] _RAND_1;
  reg [32:0] _T_28; // @[nv_flopram.scala 67:35:@46.4]
  reg [63:0] _RAND_2;
  reg [32:0] _T_30; // @[nv_flopram.scala 67:35:@47.4]
  reg [63:0] _RAND_3;
  reg [32:0] _T_32; // @[nv_flopram.scala 67:35:@48.4]
  reg [63:0] _RAND_4;
  wire  _T_36; // @[nv_flopram.scala 71:32:@51.6]
  wire [32:0] _GEN_1; // @[nv_flopram.scala 71:40:@52.6]
  wire  _T_38; // @[nv_flopram.scala 71:32:@55.6]
  wire [32:0] _GEN_2; // @[nv_flopram.scala 71:40:@56.6]
  wire  _T_40; // @[nv_flopram.scala 71:32:@59.6]
  wire [32:0] _GEN_3; // @[nv_flopram.scala 71:40:@60.6]
  wire  _T_42; // @[nv_flopram.scala 71:32:@63.6]
  wire [32:0] _GEN_4; // @[nv_flopram.scala 71:40:@64.6]
  wire  _T_49; // @[Mux.scala 46:19:@69.4]
  wire [32:0] _T_50; // @[Mux.scala 46:16:@70.4]
  wire  _T_51; // @[Mux.scala 46:19:@71.4]
  wire [32:0] _T_52; // @[Mux.scala 46:16:@72.4]
  wire  _T_53; // @[Mux.scala 46:19:@73.4]
  wire [32:0] _T_54; // @[Mux.scala 46:16:@74.4]
  wire  _T_55; // @[Mux.scala 46:19:@75.4]
  wire [32:0] _T_56; // @[Mux.scala 46:16:@76.4]
  wire  _T_57; // @[Mux.scala 46:19:@77.4]
  assign _T_36 = wa == 2'h0; // @[nv_flopram.scala 71:32:@51.6]
  assign _GEN_1 = _T_36 ? di_d : _T_26; // @[nv_flopram.scala 71:40:@52.6]
  assign _T_38 = wa == 2'h1; // @[nv_flopram.scala 71:32:@55.6]
  assign _GEN_2 = _T_38 ? di_d : _T_28; // @[nv_flopram.scala 71:40:@56.6]
  assign _T_40 = wa == 2'h2; // @[nv_flopram.scala 71:32:@59.6]
  assign _GEN_3 = _T_40 ? di_d : _T_30; // @[nv_flopram.scala 71:40:@60.6]
  assign _T_42 = wa == 2'h3; // @[nv_flopram.scala 71:32:@63.6]
  assign _GEN_4 = _T_42 ? di_d : _T_32; // @[nv_flopram.scala 71:40:@64.6]
  assign _T_49 = 3'h4 == ra; // @[Mux.scala 46:19:@69.4]
  assign _T_50 = _T_49 ? di : 33'h0; // @[Mux.scala 46:16:@70.4]
  assign _T_51 = 3'h3 == ra; // @[Mux.scala 46:19:@71.4]
  assign _T_52 = _T_51 ? _T_32 : _T_50; // @[Mux.scala 46:16:@72.4]
  assign _T_53 = 3'h2 == ra; // @[Mux.scala 46:19:@73.4]
  assign _T_54 = _T_53 ? _T_30 : _T_52; // @[Mux.scala 46:16:@74.4]
  assign _T_55 = 3'h1 == ra; // @[Mux.scala 46:19:@75.4]
  assign _T_56 = _T_55 ? _T_28 : _T_54; // @[Mux.scala 46:16:@76.4]
  assign _T_57 = 3'h0 == ra; // @[Mux.scala 46:19:@77.4]
  assign dout = _T_57 ? _T_26 : _T_56; // @[nv_flopram.scala 81:13:@79.4]
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
  _RAND_0 = {2{`RANDOM}};
  di_d = _RAND_0[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  _T_26 = _RAND_1[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_28 = _RAND_2[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{`RANDOM}};
  _T_30 = _RAND_3[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_32 = _RAND_4[32:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clk) begin
    if (iwe) begin
      di_d <= di;
    end
  end
  always @(posedge clk_mgated) begin
    if (we) begin
      if (_T_36) begin
        _T_26 <= di_d;
      end
    end
    if (we) begin
      if (_T_38) begin
        _T_28 <= di_d;
      end
    end
    if (we) begin
      if (_T_40) begin
        _T_30 <= di_d;
      end
    end
    if (we) begin
      if (_T_42) begin
        _T_32 <= di_d;
      end
    end
  end
endmodule
module NV_NVDLA_fifo_gate( // @[:@81.2]
  input         clk, // @[:@84.4]
  input         reset_, // @[:@84.4]
  input         wr_pvld, // @[:@84.4]
  output        wr_prdy, // @[:@84.4]
  input  [32:0] wr_pd, // @[:@84.4]
  output        wr_empty, // @[:@84.4]
  output        rd_pvld, // @[:@84.4]
  input         rd_prdy, // @[:@84.4]
  output [32:0] rd_pd, // @[:@84.4]
  input  [31:0] pwrbus_ram_pd // @[:@84.4]
);
  wire  NV_CLK_gate_power_clk; // @[FIFO_gate.scala 70:27:@88.4]
  wire  NV_CLK_gate_power_clk_en; // @[FIFO_gate.scala 70:27:@88.4]
  wire  NV_CLK_gate_power_clk_gated; // @[FIFO_gate.scala 70:27:@88.4]
  wire  nv_flopram_clk; // @[FIFO_gate.scala 252:29:@164.4]
  wire  nv_flopram_clk_mgated; // @[FIFO_gate.scala 252:29:@164.4]
  wire [32:0] nv_flopram_di; // @[FIFO_gate.scala 252:29:@164.4]
  wire  nv_flopram_iwe; // @[FIFO_gate.scala 252:29:@164.4]
  wire  nv_flopram_we; // @[FIFO_gate.scala 252:29:@164.4]
  wire [1:0] nv_flopram_wa; // @[FIFO_gate.scala 252:29:@164.4]
  wire [2:0] nv_flopram_ra; // @[FIFO_gate.scala 252:29:@164.4]
  wire [32:0] nv_flopram_dout; // @[FIFO_gate.scala 252:29:@164.4]
  wire  _T_26; // @[FIFO_gate.scala 57:27:@86.4]
  reg  _T_33; // @[FIFO_gate.scala 154:56:@94.4]
  reg [31:0] _RAND_0;
  reg  _T_36; // @[FIFO_gate.scala 156:52:@95.4]
  reg [31:0] _RAND_1;
  reg  _T_39; // @[FIFO_gate.scala 158:52:@96.4]
  reg [31:0] _RAND_2;
  wire  _T_141; // @[FIFO_gate.scala 322:38:@196.4]
  wire  _T_56; // @[FIFO_gate.scala 181:39:@112.4]
  wire  _T_57; // @[FIFO_gate.scala 181:36:@113.4]
  reg [2:0] _T_62; // @[FIFO_gate.scala 184:53:@116.4]
  reg [31:0] _RAND_3;
  wire [3:0] _T_69; // @[FIFO_gate.scala 189:69:@121.4]
  wire [2:0] _T_70; // @[FIFO_gate.scala 189:69:@122.4]
  wire [2:0] _T_71; // @[FIFO_gate.scala 189:46:@123.4]
  wire  _T_74; // @[FIFO_gate.scala 192:80:@125.4]
  wire  _T_76; // @[FIFO_gate.scala 193:40:@126.4]
  wire [3:0] _T_64; // @[FIFO_gate.scala 188:76:@117.4]
  wire [3:0] _T_65; // @[FIFO_gate.scala 188:76:@118.4]
  wire [2:0] _T_66; // @[FIFO_gate.scala 188:76:@119.4]
  wire [2:0] _T_67; // @[FIFO_gate.scala 188:43:@120.4]
  wire [2:0] _T_72; // @[FIFO_gate.scala 190:32:@124.4]
  wire  _T_42; // @[FIFO_gate.scala 164:60:@98.4]
  wire  _T_44; // @[FIFO_gate.scala 164:80:@99.4]
  wire  _T_45; // @[FIFO_gate.scala 164:77:@100.4]
  wire  _T_46; // @[FIFO_gate.scala 165:38:@101.4]
  wire  _T_47; // @[FIFO_gate.scala 166:45:@102.4]
  wire  _T_49; // @[FIFO_gate.scala 169:18:@104.4]
  wire  _T_51; // @[FIFO_gate.scala 170:45:@106.6]
  wire  _T_52; // @[FIFO_gate.scala 170:42:@107.6]
  wire  _GEN_0; // @[FIFO_gate.scala 169:34:@105.4]
  wire  _T_84; // @[FIFO_gate.scala 200:27:@134.4]
  wire [2:0] _GEN_1; // @[FIFO_gate.scala 200:40:@135.4]
  wire  _T_86; // @[FIFO_gate.scala 205:54:@138.4]
  wire  _T_88; // @[FIFO_gate.scala 205:65:@139.4]
  wire  _T_89; // @[FIFO_gate.scala 205:62:@140.4]
  reg  _T_92; // @[FIFO_gate.scala 205:39:@141.4]
  reg [31:0] _RAND_4;
  reg [1:0] _T_95; // @[FIFO_gate.scala 213:68:@144.4]
  reg [31:0] _RAND_5;
  wire [2:0] _T_97; // @[FIFO_gate.scala 215:42:@145.4]
  wire [1:0] _T_98; // @[FIFO_gate.scala 215:42:@146.4]
  wire [1:0] _GEN_2; // @[FIFO_gate.scala 216:29:@147.4]
  reg [1:0] _T_103; // @[FIFO_gate.scala 222:63:@151.4]
  reg [31:0] _RAND_6;
  wire [2:0] _T_105; // @[FIFO_gate.scala 223:42:@152.4]
  wire [1:0] _T_106; // @[FIFO_gate.scala 223:42:@153.4]
  wire [1:0] _GEN_3; // @[FIFO_gate.scala 225:29:@154.4]
  wire  _T_113; // @[FIFO_gate.scala 250:50:@160.4]
  wire  _T_115; // @[FIFO_gate.scala 250:59:@161.4]
  wire  _T_116; // @[FIFO_gate.scala 250:56:@162.4]
  wire  _T_119; // @[FIFO_gate.scala 262:39:@174.4]
  reg [2:0] _T_126; // @[FIFO_gate.scala 297:53:@180.4]
  reg [31:0] _RAND_7;
  wire [3:0] _T_128; // @[FIFO_gate.scala 298:74:@181.4]
  wire [3:0] _T_129; // @[FIFO_gate.scala 298:74:@182.4]
  wire [2:0] _T_130; // @[FIFO_gate.scala 298:74:@183.4]
  wire [2:0] _T_131; // @[FIFO_gate.scala 298:43:@184.4]
  wire [3:0] _T_133; // @[FIFO_gate.scala 299:68:@185.4]
  wire [2:0] _T_134; // @[FIFO_gate.scala 299:68:@186.4]
  wire [2:0] _T_135; // @[FIFO_gate.scala 299:46:@187.4]
  wire [2:0] _T_136; // @[FIFO_gate.scala 300:32:@188.4]
  wire  _T_137; // @[FIFO_gate.scala 301:25:@189.4]
  wire [2:0] _GEN_4; // @[FIFO_gate.scala 301:39:@190.4]
  wire  _T_139; // @[FIFO_gate.scala 321:35:@193.4]
  wire  _T_142; // @[FIFO_gate.scala 369:45:@200.4]
  wire  _T_143; // @[FIFO_gate.scala 369:59:@201.4]
  wire  _T_147; // @[FIFO_gate.scala 369:73:@204.4]
  wire  _T_148; // @[FIFO_gate.scala 370:74:@205.4]
  wire  _T_149; // @[FIFO_gate.scala 370:58:@206.4]
  wire  _T_152; // @[FIFO_gate.scala 371:55:@209.4]
  wire  _T_153; // @[FIFO_gate.scala 370:93:@210.4]
  NV_CLK_gate_power NV_CLK_gate_power ( // @[FIFO_gate.scala 70:27:@88.4]
    .clk(NV_CLK_gate_power_clk),
    .clk_en(NV_CLK_gate_power_clk_en),
    .clk_gated(NV_CLK_gate_power_clk_gated)
  );
  nv_flopram nv_flopram ( // @[FIFO_gate.scala 252:29:@164.4]
    .clk(nv_flopram_clk),
    .clk_mgated(nv_flopram_clk_mgated),
    .di(nv_flopram_di),
    .iwe(nv_flopram_iwe),
    .we(nv_flopram_we),
    .wa(nv_flopram_wa),
    .ra(nv_flopram_ra),
    .dout(nv_flopram_dout)
  );
  assign _T_26 = reset_ == 1'h0; // @[FIFO_gate.scala 57:27:@86.4]
  assign _T_141 = rd_pvld & rd_prdy; // @[FIFO_gate.scala 322:38:@196.4]
  assign _T_56 = _T_33 == 1'h0; // @[FIFO_gate.scala 181:39:@112.4]
  assign _T_57 = _T_36 & _T_56; // @[FIFO_gate.scala 181:36:@113.4]
  assign _T_69 = _T_62 + 3'h1; // @[FIFO_gate.scala 189:69:@121.4]
  assign _T_70 = _T_62 + 3'h1; // @[FIFO_gate.scala 189:69:@122.4]
  assign _T_71 = _T_57 ? _T_70 : _T_62; // @[FIFO_gate.scala 189:46:@123.4]
  assign _T_74 = _T_71 == 3'h4; // @[FIFO_gate.scala 192:80:@125.4]
  assign _T_76 = _T_141 ? 1'h0 : _T_74; // @[FIFO_gate.scala 193:40:@126.4]
  assign _T_64 = _T_62 - 3'h1; // @[FIFO_gate.scala 188:76:@117.4]
  assign _T_65 = $unsigned(_T_64); // @[FIFO_gate.scala 188:76:@118.4]
  assign _T_66 = _T_65[2:0]; // @[FIFO_gate.scala 188:76:@119.4]
  assign _T_67 = _T_57 ? _T_62 : _T_66; // @[FIFO_gate.scala 188:43:@120.4]
  assign _T_72 = _T_141 ? _T_67 : _T_71; // @[FIFO_gate.scala 190:32:@124.4]
  assign _T_42 = _T_36 & _T_76; // @[FIFO_gate.scala 164:60:@98.4]
  assign _T_44 = _T_57 == 1'h0; // @[FIFO_gate.scala 164:80:@99.4]
  assign _T_45 = _T_42 & _T_44; // @[FIFO_gate.scala 164:77:@100.4]
  assign _T_46 = wr_pvld ? _T_76 : _T_45; // @[FIFO_gate.scala 165:38:@101.4]
  assign _T_47 = _T_36 & _T_33; // @[FIFO_gate.scala 166:45:@102.4]
  assign _T_49 = _T_47 == 1'h0; // @[FIFO_gate.scala 169:18:@104.4]
  assign _T_51 = _T_39 == 1'h0; // @[FIFO_gate.scala 170:45:@106.6]
  assign _T_52 = wr_pvld & _T_51; // @[FIFO_gate.scala 170:42:@107.6]
  assign _GEN_0 = _T_49 ? _T_52 : _T_36; // @[FIFO_gate.scala 169:34:@105.4]
  assign _T_84 = _T_57 ^ _T_141; // @[FIFO_gate.scala 200:27:@134.4]
  assign _GEN_1 = _T_84 ? _T_72 : _T_62; // @[FIFO_gate.scala 200:40:@135.4]
  assign _T_86 = _T_72 == 3'h0; // @[FIFO_gate.scala 205:54:@138.4]
  assign _T_88 = wr_pvld == 1'h0; // @[FIFO_gate.scala 205:65:@139.4]
  assign _T_89 = _T_86 & _T_88; // @[FIFO_gate.scala 205:62:@140.4]
  assign _T_97 = _T_95 + 2'h1; // @[FIFO_gate.scala 215:42:@145.4]
  assign _T_98 = _T_95 + 2'h1; // @[FIFO_gate.scala 215:42:@146.4]
  assign _GEN_2 = _T_57 ? _T_98 : _T_95; // @[FIFO_gate.scala 216:29:@147.4]
  assign _T_105 = _T_103 + 2'h1; // @[FIFO_gate.scala 223:42:@152.4]
  assign _T_106 = _T_103 + 2'h1; // @[FIFO_gate.scala 223:42:@153.4]
  assign _GEN_3 = _T_141 ? _T_106 : _T_103; // @[FIFO_gate.scala 225:29:@154.4]
  assign _T_113 = _T_62 > 3'h0; // @[FIFO_gate.scala 250:50:@160.4]
  assign _T_115 = _T_141 == 1'h0; // @[FIFO_gate.scala 250:59:@161.4]
  assign _T_116 = _T_113 | _T_115; // @[FIFO_gate.scala 250:56:@162.4]
  assign _T_119 = _T_62 == 3'h0; // @[FIFO_gate.scala 262:39:@174.4]
  assign _T_128 = _T_126 - 3'h1; // @[FIFO_gate.scala 298:74:@181.4]
  assign _T_129 = $unsigned(_T_128); // @[FIFO_gate.scala 298:74:@182.4]
  assign _T_130 = _T_129[2:0]; // @[FIFO_gate.scala 298:74:@183.4]
  assign _T_131 = _T_57 ? _T_126 : _T_130; // @[FIFO_gate.scala 298:43:@184.4]
  assign _T_133 = _T_126 + 3'h1; // @[FIFO_gate.scala 299:68:@185.4]
  assign _T_134 = _T_126 + 3'h1; // @[FIFO_gate.scala 299:68:@186.4]
  assign _T_135 = _T_57 ? _T_134 : _T_126; // @[FIFO_gate.scala 299:46:@187.4]
  assign _T_136 = _T_141 ? _T_131 : _T_135; // @[FIFO_gate.scala 300:32:@188.4]
  assign _T_137 = _T_57 | _T_141; // @[FIFO_gate.scala 301:25:@189.4]
  assign _GEN_4 = _T_137 ? _T_136 : _T_126; // @[FIFO_gate.scala 301:39:@190.4]
  assign _T_139 = _T_126 != 3'h0; // @[FIFO_gate.scala 321:35:@193.4]
  assign _T_142 = _T_57 | _T_57; // @[FIFO_gate.scala 369:45:@200.4]
  assign _T_143 = _T_142 | _T_141; // @[FIFO_gate.scala 369:59:@201.4]
  assign _T_147 = _T_143 | _T_57; // @[FIFO_gate.scala 369:73:@204.4]
  assign _T_148 = _T_33 != _T_76; // @[FIFO_gate.scala 370:74:@205.4]
  assign _T_149 = _T_147 | _T_148; // @[FIFO_gate.scala 370:58:@206.4]
  assign _T_152 = _T_137 | _T_141; // @[FIFO_gate.scala 371:55:@209.4]
  assign _T_153 = _T_149 | _T_152; // @[FIFO_gate.scala 370:93:@210.4]
  assign wr_prdy = _T_39 == 1'h0; // @[FIFO_gate.scala 180:20:@111.4]
  assign wr_empty = _T_92; // @[FIFO_gate.scala 205:29:@143.4]
  assign rd_pvld = _T_139 | _T_57; // @[FIFO_gate.scala 324:24:@198.4]
  assign rd_pd = nv_flopram_dout; // @[FIFO_gate.scala 325:22:@199.4]
  assign NV_CLK_gate_power_clk = clk; // @[FIFO_gate.scala 71:22:@91.4]
  assign NV_CLK_gate_power_clk_en = _T_153 | _T_57; // @[FIFO_gate.scala 72:25:@92.4]
  assign nv_flopram_clk = clk; // @[FIFO_gate.scala 253:24:@167.4]
  assign nv_flopram_clk_mgated = NV_CLK_gate_power_clk_gated; // @[FIFO_gate.scala 254:35:@168.4]
  assign nv_flopram_di = wr_pd; // @[FIFO_gate.scala 256:23:@170.4]
  assign nv_flopram_iwe = _T_51 & wr_pvld; // @[FIFO_gate.scala 257:28:@171.4]
  assign nv_flopram_we = _T_57 & _T_116; // @[FIFO_gate.scala 258:23:@172.4]
  assign nv_flopram_wa = _T_95; // @[FIFO_gate.scala 260:31:@173.4]
  assign nv_flopram_ra = _T_119 ? 3'h4 : {{1'd0}, _T_103}; // @[FIFO_gate.scala 262:23:@176.4]
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
  _T_33 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_36 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_39 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_62 = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_92 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_95 = _RAND_5[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_103 = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_126 = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge NV_CLK_gate_power_clk_gated) begin
    if (_T_26) begin
      _T_33 <= 1'h0;
    end else begin
      if (_T_141) begin
        _T_33 <= 1'h0;
      end else begin
        _T_33 <= _T_74;
      end
    end
    if (_T_26) begin
      _T_62 <= 3'h0;
    end else begin
      if (_T_84) begin
        if (_T_141) begin
          if (!(_T_57)) begin
            _T_62 <= _T_66;
          end
        end else begin
          if (_T_57) begin
            _T_62 <= _T_70;
          end
        end
      end
    end
    if (_T_26) begin
      _T_95 <= 2'h0;
    end else begin
      if (_T_57) begin
        _T_95 <= _T_98;
      end
    end
    if (_T_26) begin
      _T_103 <= 2'h0;
    end else begin
      if (_T_141) begin
        _T_103 <= _T_106;
      end
    end
    if (_T_26) begin
      _T_126 <= 3'h0;
    end else begin
      if (_T_137) begin
        if (_T_141) begin
          if (!(_T_57)) begin
            _T_126 <= _T_130;
          end
        end else begin
          if (_T_57) begin
            _T_126 <= _T_134;
          end
        end
      end
    end
  end
  always @(posedge clk) begin
    if (_T_26) begin
      _T_36 <= 1'h0;
    end else begin
      if (_T_49) begin
        _T_36 <= _T_52;
      end
    end
    if (_T_26) begin
      _T_39 <= 1'h0;
    end else begin
      if (wr_pvld) begin
        if (_T_141) begin
          _T_39 <= 1'h0;
        end else begin
          _T_39 <= _T_74;
        end
      end else begin
        _T_39 <= _T_45;
      end
    end
    if (_T_26) begin
      _T_92 <= 1'h1;
    end else begin
      _T_92 <= _T_89;
    end
  end
endmodule


module NV_NVDLA_CSC_SG_dat_fifo (
      clk
    , reset_
    , wr_ready
    , wr_empty
    , wr_req
    , wr_data
    , rd_ready
    , rd_req
    , rd_data
    , pwrbus_ram_pd
    );

// spyglass disable_block W401 -- clock is not input to module
input         clk;
input         reset_;
output        wr_ready;
output        wr_empty;
input         wr_req;
input  [32:0] wr_data;
input         rd_ready;
output        rd_req;
output [32:0] rd_data;
input  [31:0] pwrbus_ram_pd;

// Master Clock Gating (SLCG)
//
// We gate the clock(s) when idle or stalled.
// This allows us to turn off numerous miscellaneous flops
// that don't get gated during synthesis for one reason or another.
//
// We gate write side and read side separately. 
// If the fifo is synchronous, we also gate the ram separately, but if
// -master_clk_gated_unified or -status_reg/-status_logic_reg is specified, 
// then we use one clk gate for write, ram, and read.
//
wire clk_mgated_enable;   // assigned by code at end of this module
wire clk_mgated;               // used only in synchronous fifos
NV_CLK_gate_power clk_mgate( .clk(clk), .reset_(reset_), .clk_en(clk_mgated_enable), .clk_gated(clk_mgated) );

// 
// WRITE SIDE
//
wire wr_reserving;
reg        wr_req_in;                                // registered wr_req
reg        wr_busy_in;                              // inputs being held this cycle?
assign     wr_ready = !wr_busy_in;
wire       wr_busy_next;                           // fwd: fifo busy next?

// factor for better timing with distant wr_req signal
wire       wr_busy_in_next_wr_req_eq_1 = wr_busy_next;
wire       wr_busy_in_next_wr_req_eq_0 = (wr_req_in && wr_busy_next) && !wr_reserving;
wire       wr_busy_in_next = (wr_req? wr_busy_in_next_wr_req_eq_1 : wr_busy_in_next_wr_req_eq_0)
                               ;
wire       wr_busy_in_int;
always @( posedge clk or negedge reset_ ) begin
    if ( !reset_ ) begin
        wr_req_in <=  1'b0;
        wr_busy_in <=  1'b0;
    end else begin
        wr_busy_in <=  wr_busy_in_next;
        if ( !wr_busy_in_int ) begin
            wr_req_in  <=  wr_req && !wr_busy_in;
        end
        //synopsys translate_off
            else if ( wr_busy_in_int ) begin
        end else begin
            wr_req_in  <=  `x_or_0; 
        end
        //synopsys translate_on

    end
end

reg        wr_busy_int;		        	// copy for internal use
assign       wr_reserving = wr_req_in && !wr_busy_int; // reserving write space?


wire       wr_popping;                          // fwd: write side sees pop?

reg  [2:0] wr_count;			// write-side count

wire [2:0] wr_count_next_wr_popping = wr_reserving ? wr_count : (wr_count - 1'd1); // spyglass disable W164a W484
wire [2:0] wr_count_next_no_wr_popping = wr_reserving ? (wr_count + 1'd1) : wr_count; // spyglass disable W164a W484
wire [2:0] wr_count_next = wr_popping ? wr_count_next_wr_popping : 
                                               wr_count_next_no_wr_popping;

wire wr_count_next_no_wr_popping_is_4 = ( wr_count_next_no_wr_popping == 3'd4 );
wire wr_count_next_is_4 = wr_popping ? 1'b0 :
                                          wr_count_next_no_wr_popping_is_4;
wire [2:0] wr_limit_muxed;  // muxed with simulation/emulation overrides
wire [2:0] wr_limit_reg = wr_limit_muxed;
                          // VCS coverage off
assign     wr_busy_next = wr_count_next_is_4 || // busy next cycle?
                          (wr_limit_reg != 3'd0 &&      // check wr_limit if != 0
                           wr_count_next >= wr_limit_reg)  ;
                          // VCS coverage on
assign     wr_busy_in_int = wr_req_in && wr_busy_int;

reg        wr_empty;				// empty?

always @( posedge clk_mgated or negedge reset_ ) begin
    if ( !reset_ ) begin
        wr_busy_int <=  1'b0;
        wr_count <=  3'd0;
    end else begin
	wr_busy_int <=  wr_busy_next;
	if ( wr_reserving ^ wr_popping ) begin
	    wr_count <=  wr_count_next;
        end 
        //synopsys translate_off
            else if ( !(wr_reserving ^ wr_popping) ) begin
        end else begin
            wr_count <=  {3{`x_or_0}};
        end
        //synopsys translate_on

    end
end
always @( posedge clk or negedge reset_ ) begin
    if ( !reset_ ) begin
        wr_empty <=  1'b1;
    end else begin
        wr_empty <=  wr_count_next == 3'd0 && !wr_req ;
    end     
end 

wire       wr_pushing = wr_reserving;   // data pushed same cycle as wr_req_in

//
// RAM
//

reg  [1:0] wr_adr;			// current write address

// spyglass disable_block W484
// next wr_adr if wr_pushing=1
wire [1:0] wr_adr_next = wr_adr + 1'd1;  // spyglass disable W484
always @( posedge clk_mgated or negedge reset_ ) begin
    if ( !reset_ ) begin
        wr_adr <=  2'd0;
    end else begin
        if ( wr_pushing ) begin
            wr_adr <=  wr_adr_next;
        end
    end
end
// spyglass enable_block W484

wire rd_popping;

reg [1:0] rd_adr;          // read address this cycle
wire ram_we = wr_pushing && (wr_count > 3'd0 || !rd_popping);   // note: write occurs next cycle
wire ram_iwe = !wr_busy_in && wr_req;  
wire [32:0] rd_data;                    // read data out of ram

wire [31 : 0] pwrbus_ram_pd;

// Adding parameter for fifogen to disable wr/rd contention assertion in ramgen.
// Fifogen handles this by ignoring the data on the ram data out for that cycle.


nv_flopram ram (
      .clk( clk )
    , .clk_mgated( clk_mgated )
    , .di        ( wr_data )
    , .iwe        ( ram_iwe )
    , .we        ( ram_we )
    , .wa        ( wr_adr )
    , .ra        ( (wr_count == 0) ? 3'd4 : {1'b0,rd_adr} )
    , .dout        ( rd_data )
    );


wire [1:0] rd_adr_next_popping = rd_adr + 1'd1; // spyglass disable W484
always @( posedge clk_mgated or negedge reset_ ) begin
    if ( !reset_ ) begin
        rd_adr <=  2'd0;
    end else begin
        if ( rd_popping ) begin
	    rd_adr <=  rd_adr_next_popping;
        end 
        //synopsys translate_off
            else if ( !rd_popping ) begin
        end else begin
            rd_adr <=  {2{`x_or_0}};
        end
        //synopsys translate_on

    end
end

//
// SYNCHRONOUS BOUNDARY
//


assign wr_popping = rd_popping;		// let it be seen immediately

wire   rd_pushing = wr_pushing;		// let it be seen immediately

//
// READ SIDE
//

wire       rd_req; 		// data out of fifo is valid

assign     rd_popping = rd_req && rd_ready;

reg  [2:0] rd_count;			// read-side fifo count
// spyglass disable_block W164a W484
wire [2:0] rd_count_next_rd_popping = rd_pushing ? rd_count : 
                                                                (rd_count - 1'd1);
wire [2:0] rd_count_next_no_rd_popping =  rd_pushing ? (rd_count + 1'd1) : 
                                                                    rd_count;
// spyglass enable_block W164a W484
wire [2:0] rd_count_next = rd_popping ? rd_count_next_rd_popping :
                                                     rd_count_next_no_rd_popping; 
assign     rd_req = rd_count != 0 || rd_pushing;
always @( posedge clk_mgated or negedge reset_ ) begin
    if ( !reset_ ) begin
        rd_count <=  3'd0;
    end else begin
        if ( rd_pushing || rd_popping  ) begin
	    rd_count <=  rd_count_next;
        end 
        //synopsys translate_off
            else if ( !(rd_pushing || rd_popping ) ) begin
        end else begin
            rd_count <=  {3{`x_or_0}};
        end
        //synopsys translate_on

    end
end

// Master Clock Gating (SLCG) Enables
//

// plusarg for disabling this stuff:

// synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
reg master_clk_gating_disabled;  initial master_clk_gating_disabled = $test$plusargs( "fifogen_disable_master_clk_gating" ) != 0;
`endif
`endif
// synopsys translate_on
assign clk_mgated_enable = ((wr_reserving || wr_pushing || wr_popping || (wr_req_in && !wr_busy_int) || (wr_busy_int != wr_busy_next)) || (rd_pushing || rd_popping || (rd_req && rd_ready)) || (wr_pushing))
                               `ifdef FIFOGEN_MASTER_CLK_GATING_DISABLED
                               || 1'b1
                               `endif
                               // synopsys translate_off
			       `ifndef SYNTH_LEVEL1_COMPILE
			       `ifndef SYNTHESIS
                               || master_clk_gating_disabled
			       `endif
			       `endif
                               // synopsys translate_on
                               ;


// Simulation and Emulation Overrides of wr_limit(s)
//

`ifdef EMU

`ifdef EMU_FIFO_CFG
// Emulation Global Config Override
//
assign wr_limit_muxed = `EMU_FIFO_CFG.NV_NVDLA_CSC_SG_dat_fifo_wr_limit_override ? `EMU_FIFO_CFG.NV_NVDLA_CSC_SG_dat_fifo_wr_limit : 3'd0;
`else
// No Global Override for Emulation 
//
assign wr_limit_muxed = 3'd0;
`endif // EMU_FIFO_CFG

`else // !EMU
`ifdef SYNTH_LEVEL1_COMPILE

// No Override for GCS Compiles
//
assign wr_limit_muxed = 3'd0;
`else
`ifdef SYNTHESIS

// No Override for RTL Synthesis
//

assign wr_limit_muxed = 3'd0;

`else  

// RTL Simulation Plusarg Override


// VCS coverage off

reg wr_limit_override;
reg [2:0] wr_limit_override_value; 
assign wr_limit_muxed = wr_limit_override ? wr_limit_override_value : 3'd0;
`ifdef NV_ARCHPRO
event reinit;

initial begin
    $display("fifogen reinit initial block %m");
    -> reinit;
end
`endif

`ifdef NV_ARCHPRO
always @( reinit ) begin
`else 
initial begin
`endif
    wr_limit_override = 0;
    wr_limit_override_value = 0;  // to keep viva happy with dangles
    if ( $test$plusargs( "NV_NVDLA_CSC_SG_dat_fifo_wr_limit" ) ) begin
        wr_limit_override = 1;
        $value$plusargs( "NV_NVDLA_CSC_SG_dat_fifo_wr_limit=%d", wr_limit_override_value);
    end
end

// VCS coverage on


`endif 
`endif
`endif

//
// Histogram of fifo depth (from write side's perspective)
//
// NOTE: it will reference `SIMTOP.perfmon_enabled, so that
//       has to at least be defined, though not initialized.
//	 tbgen testbenches have it already and various
//	 ways to turn it on and off.
//
`ifdef PERFMON_HISTOGRAM 
// synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
perfmon_histogram perfmon (
      .clk	( clk ) 
    , .max      ( {29'd0, (wr_limit_reg == 3'd0) ? 3'd4 : wr_limit_reg} )
    , .curr	( {29'd0, wr_count} )
    );
`endif
`endif
// synopsys translate_on
`endif

// spyglass disable_block W164a W164b W116 W484 W504

`ifdef SPYGLASS
`else

`ifdef FV_ASSERT_ON
`else
// synopsys translate_off
`endif

`ifdef ASSERT_ON

`ifdef SPYGLASS
wire disable_assert_plusarg = 1'b0;
`else

`ifdef FV_ASSERT_ON
wire disable_assert_plusarg = 1'b0;
`else
wire disable_assert_plusarg = $test$plusargs("DISABLE_NESS_FLOW_ASSERTIONS");
`endif

`endif
wire assert_enabled = 1'b1 && !disable_assert_plusarg;


`endif

`ifdef FV_ASSERT_ON
`else
// synopsys translate_on
`endif

`ifdef ASSERT_ON

//synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
always @(assert_enabled) begin
    if ( assert_enabled === 1'b0 ) begin
        $display("Asserts are disabled for %m");
    end
end
`endif
`endif
//synopsys translate_on

`endif

`endif

// spyglass enable_block W164a W164b W116 W484 W504


//The NV_BLKBOX_SRC0 module is only present when the FIFOGEN_MODULE_SEARCH
// define is set.  This is to aid fifogen team search for fifogen fifo
// instance and module names in a given design.
`ifdef FIFOGEN_MODULE_SEARCH
NV_BLKBOX_SRC0 dummy_breadcrumb_fifogen_blkbox (.Y());
`endif

// spyglass enable_block W401 -- clock is not input to module

// synopsys dc_script_begin
//   set_boundary_optimization find(design, "NV_NVDLA_CSC_SG_dat_fifo") true
// synopsys dc_script_end


endmodule // NV_NVDLA_CSC_SG_dat_fifo