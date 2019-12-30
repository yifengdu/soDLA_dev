module NV_soDLA_CSC_DL_CBUF_updt_gate( // @[:@3.2]
  input         nvdla_core_clk, // @[:@6.4]
  input         nvdla_core_rstn, // @[:@6.4]
  output        sc2cdma_dat_updt, // @[:@6.4]
  output [13:0] sc2cdma_dat_slices, // @[:@6.4]
  output [14:0] sc2cdma_dat_entries, // @[:@6.4]
  input         sg2dl_reuse_rls, // @[:@6.4]
  input         dat_rsp_pvld, // @[:@6.4]
  input         dat_rsp_rls, // @[:@6.4]
  input  [13:0] last_slices, // @[:@6.4]
  input  [13:0] rls_slices, // @[:@6.4]
  input  [14:0] last_entries, // @[:@6.4]
  input  [14:0] rls_entries, // @[:@6.4]
  output [13:0] sc2cdma_dat_slices_w, // @[:@6.4]
  output [14:0] sc2cdma_dat_entries_w, // @[:@6.4]
  output        dat_rls // @[:@6.4]
);
  wire  _T_36; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 161:38:@8.4]
  wire  sub_rls; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 165:32:@9.4]
  wire  _T_38; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 168:43:@10.4]
  wire  _T_39; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 168:26:@11.4]
  wire  _T_41; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 168:75:@12.4]
  wire  _T_42; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 168:59:@13.4]
  reg  _T_48; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 172:31:@20.4]
  reg [31:0] _RAND_0;
  reg [13:0] _T_51; // @[Reg.scala 19:20:@23.4]
  reg [31:0] _RAND_1;
  wire [13:0] _GEN_0; // @[Reg.scala 20:19:@24.4]
  reg [14:0] _T_54; // @[Reg.scala 19:20:@28.4]
  reg [31:0] _RAND_2;
  wire [14:0] _GEN_1; // @[Reg.scala 20:19:@29.4]
  assign _T_36 = nvdla_core_rstn == 1'h0; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 161:38:@8.4]
  assign sub_rls = dat_rsp_pvld & dat_rsp_rls; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 165:32:@9.4]
  assign _T_38 = last_slices != 14'h0; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 168:43:@10.4]
  assign _T_39 = sg2dl_reuse_rls & _T_38; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 168:26:@11.4]
  assign _T_41 = rls_slices != 14'h0; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 168:75:@12.4]
  assign _T_42 = sub_rls & _T_41; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 168:59:@13.4]
  assign _GEN_0 = dat_rls ? sc2cdma_dat_slices_w : _T_51; // @[Reg.scala 20:19:@24.4]
  assign _GEN_1 = dat_rls ? sc2cdma_dat_entries_w : _T_54; // @[Reg.scala 20:19:@29.4]
  assign sc2cdma_dat_updt = _T_48; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 172:21:@22.4]
  assign sc2cdma_dat_slices = _T_51; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 173:23:@27.4]
  assign sc2cdma_dat_entries = _T_54; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 174:24:@32.4]
  assign sc2cdma_dat_slices_w = sub_rls ? rls_slices : last_slices; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 169:25:@17.4]
  assign sc2cdma_dat_entries_w = sub_rls ? rls_entries : last_entries; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 170:26:@19.4]
  assign dat_rls = _T_39 | _T_42; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 168:12:@15.4]
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
  _T_48 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_51 = _RAND_1[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_54 = _RAND_2[14:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge nvdla_core_clk) begin
    if (_T_36) begin
      _T_48 <= 1'h0;
    end else begin
      _T_48 <= dat_rls;
    end
    if (_T_36) begin
      _T_51 <= 14'h0;
    end else begin
      if (dat_rls) begin
        _T_51 <= sc2cdma_dat_slices_w;
      end
    end
    if (_T_36) begin
      _T_54 <= 15'h0;
    end else begin
      if (dat_rls) begin
        _T_54 <= sc2cdma_dat_entries_w;
      end
    end
  end
endmodule
