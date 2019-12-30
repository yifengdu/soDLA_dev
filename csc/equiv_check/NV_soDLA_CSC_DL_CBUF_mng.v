module NV_soDLA_CSC_DL_CBUF_mng_gate( // @[:@3.2]
  input         nvdla_core_ng_clk, // @[:@6.4]
  input         nvdla_core_rstn, // @[:@6.4]
  input         cdma2sc_dat_updt, // @[:@6.4]
  input  [13:0] cdma2sc_dat_slices, // @[:@6.4]
  input  [14:0] cdma2sc_dat_entries, // @[:@6.4]
  input         sc2cdma_dat_pending_req, // @[:@6.4]
  input  [13:0] sc2cdma_dat_slices_w, // @[:@6.4]
  input  [14:0] sc2cdma_dat_entries_w, // @[:@6.4]
  input         dat_rls, // @[:@6.4]
  input         sg2dl_reuse_rls, // @[:@6.4]
  input         is_sg_running, // @[:@6.4]
  input         is_sg_running_d1, // @[:@6.4]
  input  [4:0]  data_bank, // @[:@6.4]
  output [13:0] dat_slice_av1, // @[:@6.4]
  output [14:0] dat_entry_avl, // @[:@6.4]
  output [14:0] dat_entry_st, // @[:@6.4]
  output [14:0] dat_entry_end // @[:@6.4]
);
  wire  _T_40; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 58:41:@8.4]
  reg [13:0] dat_slice_avl_reg; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 66:36:@11.4]
  reg [31:0] _RAND_0;
  reg [14:0] dat_entry_avl_reg; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 67:36:@12.4]
  reg [31:0] _RAND_1;
  reg [14:0] dat_entry_st_reg; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 68:35:@13.4]
  reg [31:0] _RAND_2;
  reg [14:0] dat_entry_end_reg; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 69:36:@14.4]
  reg [31:0] _RAND_3;
  wire [13:0] dat_slice_avl_add; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 72:32:@15.4]
  wire [13:0] dat_slice_avl_sub; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 73:32:@16.4]
  wire [14:0] _T_53; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 74:80:@17.4]
  wire [14:0] _GEN_4; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 74:101:@18.4]
  wire [15:0] _T_54; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 74:101:@18.4]
  wire [15:0] _T_55; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 74:101:@19.4]
  wire [15:0] _T_56; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 74:30:@20.4]
  wire [13:0] dat_slice_avl_w; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 74:122:@21.4]
  wire [14:0] dat_entry_avl_add; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 77:32:@22.4]
  wire [14:0] dat_entry_avl_sub; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 78:32:@23.4]
  wire [15:0] _T_60; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 79:103:@24.4]
  wire [15:0] _GEN_5; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 79:124:@25.4]
  wire [16:0] _T_61; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 79:124:@25.4]
  wire [16:0] _T_62; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 79:124:@26.4]
  wire [16:0] _T_63; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 79:30:@27.4]
  wire [14:0] dat_entry_avl_w; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 79:145:@28.4]
  wire [15:0] _T_64; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 83:45:@29.4]
  wire [14:0] dat_entry_st_inc; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 83:45:@30.4]
  wire [13:0] _T_70; // @[Cat.scala 30:58:@32.4]
  wire [14:0] _GEN_6; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 84:50:@33.4]
  wire [15:0] _T_71; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 84:50:@33.4]
  wire [15:0] _T_72; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 84:50:@34.4]
  wire [14:0] dat_entry_st_inc_wrap; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 84:50:@35.4]
  wire  is_dat_entry_st_wrap; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 85:49:@38.4]
  wire [14:0] _T_80; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 86:87:@39.4]
  wire [14:0] dat_entry_st_w; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 86:29:@40.4]
  wire [15:0] _T_81; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 89:47:@41.4]
  wire [14:0] dat_entry_end_inc; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 89:47:@42.4]
  wire [15:0] _T_88; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 90:52:@45.4]
  wire [15:0] _T_89; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 90:52:@46.4]
  wire [14:0] dat_entry_end_inc_wrap; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 90:52:@47.4]
  wire  is_dat_entry_end_wrap; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 91:51:@50.4]
  wire [14:0] _T_97; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 92:89:@51.4]
  wire [14:0] dat_entry_end_w; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 92:30:@52.4]
  wire  _T_98; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 95:29:@53.4]
  wire  _T_99; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 95:40:@54.4]
  wire [13:0] _GEN_0; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 95:52:@55.4]
  wire [14:0] _GEN_1; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 96:52:@60.4]
  wire  _T_102; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 97:20:@63.4]
  wire [14:0] _GEN_2; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 97:32:@64.4]
  wire  _T_103; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 98:29:@67.4]
  wire [14:0] _GEN_3; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 98:41:@68.4]
  assign _T_40 = nvdla_core_rstn == 1'h0; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 58:41:@8.4]
  assign dat_slice_avl_add = cdma2sc_dat_updt ? cdma2sc_dat_slices : 14'h0; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 72:32:@15.4]
  assign dat_slice_avl_sub = dat_rls ? sc2cdma_dat_slices_w : 14'h0; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 73:32:@16.4]
  assign _T_53 = dat_slice_avl_reg + dat_slice_avl_add; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 74:80:@17.4]
  assign _GEN_4 = {{1'd0}, dat_slice_avl_sub}; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 74:101:@18.4]
  assign _T_54 = _T_53 - _GEN_4; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 74:101:@18.4]
  assign _T_55 = $unsigned(_T_54); // @[NV_soDLA_CSC_DL_cbuf_gate.scala 74:101:@19.4]
  assign _T_56 = sc2cdma_dat_pending_req ? 16'h0 : _T_55; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 74:30:@20.4]
  assign dat_slice_avl_w = _T_56[13:0]; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 74:122:@21.4]
  assign dat_entry_avl_add = cdma2sc_dat_updt ? cdma2sc_dat_entries : 15'h0; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 77:32:@22.4]
  assign dat_entry_avl_sub = dat_rls ? sc2cdma_dat_entries_w : 15'h0; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 78:32:@23.4]
  assign _T_60 = dat_entry_avl_reg + dat_entry_avl_add; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 79:103:@24.4]
  assign _GEN_5 = {{1'd0}, dat_entry_avl_sub}; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 79:124:@25.4]
  assign _T_61 = _T_60 - _GEN_5; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 79:124:@25.4]
  assign _T_62 = $unsigned(_T_61); // @[NV_soDLA_CSC_DL_cbuf_gate.scala 79:124:@26.4]
  assign _T_63 = sc2cdma_dat_pending_req ? 17'h0 : _T_62; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 79:30:@27.4]
  assign dat_entry_avl_w = _T_63[14:0]; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 79:145:@28.4]
  assign _T_64 = dat_entry_st_reg + dat_entry_avl_sub; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 83:45:@29.4]
  assign dat_entry_st_inc = dat_entry_st_reg + dat_entry_avl_sub; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 83:45:@30.4]
  assign _T_70 = {data_bank,9'h0}; // @[Cat.scala 30:58:@32.4]
  assign _GEN_6 = {{1'd0}, _T_70}; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 84:50:@33.4]
  assign _T_71 = dat_entry_st_inc - _GEN_6; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 84:50:@33.4]
  assign _T_72 = $unsigned(_T_71); // @[NV_soDLA_CSC_DL_cbuf_gate.scala 84:50:@34.4]
  assign dat_entry_st_inc_wrap = _T_72[14:0]; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 84:50:@35.4]
  assign is_dat_entry_st_wrap = dat_entry_st_inc >= _GEN_6; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 85:49:@38.4]
  assign _T_80 = is_dat_entry_st_wrap ? dat_entry_st_inc_wrap : dat_entry_st_inc; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 86:87:@39.4]
  assign dat_entry_st_w = sc2cdma_dat_pending_req ? 15'h0 : _T_80; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 86:29:@40.4]
  assign _T_81 = dat_entry_end_reg + dat_entry_avl_add; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 89:47:@41.4]
  assign dat_entry_end_inc = dat_entry_end_reg + dat_entry_avl_add; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 89:47:@42.4]
  assign _T_88 = dat_entry_end_inc - _GEN_6; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 90:52:@45.4]
  assign _T_89 = $unsigned(_T_88); // @[NV_soDLA_CSC_DL_cbuf_gate.scala 90:52:@46.4]
  assign dat_entry_end_inc_wrap = _T_89[14:0]; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 90:52:@47.4]
  assign is_dat_entry_end_wrap = dat_entry_end_inc >= _GEN_6; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 91:51:@50.4]
  assign _T_97 = is_dat_entry_end_wrap ? dat_entry_end_inc_wrap : dat_entry_end_inc; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 92:89:@51.4]
  assign dat_entry_end_w = sc2cdma_dat_pending_req ? 15'h0 : _T_97; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 92:30:@52.4]
  assign _T_98 = cdma2sc_dat_updt | dat_rls; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 95:29:@53.4]
  assign _T_99 = _T_98 | sc2cdma_dat_pending_req; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 95:40:@54.4]
  assign _GEN_0 = _T_99 ? dat_slice_avl_w : dat_slice_avl_reg; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 95:52:@55.4]
  assign _GEN_1 = _T_99 ? dat_entry_avl_w : dat_entry_avl_reg; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 96:52:@60.4]
  assign _T_102 = dat_rls | sc2cdma_dat_pending_req; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 97:20:@63.4]
  assign _GEN_2 = _T_102 ? dat_entry_st_w : dat_entry_st_reg; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 97:32:@64.4]
  assign _T_103 = cdma2sc_dat_updt | sc2cdma_dat_pending_req; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 98:29:@67.4]
  assign _GEN_3 = _T_103 ? dat_entry_end_w : dat_entry_end_reg; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 98:41:@68.4]
  assign dat_slice_av1 = dat_slice_avl_reg; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 101:22:@71.4]
  assign dat_entry_avl = dat_entry_avl_reg; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 102:22:@72.4]
  assign dat_entry_st = dat_entry_st_reg; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 103:21:@73.4]
  assign dat_entry_end = dat_entry_end_reg; // @[NV_soDLA_CSC_DL_cbuf_gate.scala 104:22:@74.4]
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
  dat_slice_avl_reg = _RAND_0[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  dat_entry_avl_reg = _RAND_1[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  dat_entry_st_reg = _RAND_2[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  dat_entry_end_reg = _RAND_3[14:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge nvdla_core_ng_clk) begin
    if (_T_40) begin
      dat_slice_avl_reg <= 14'h0;
    end else begin
      if (_T_99) begin
        dat_slice_avl_reg <= dat_slice_avl_w;
      end
    end
    if (_T_40) begin
      dat_entry_avl_reg <= 15'h0;
    end else begin
      if (_T_99) begin
        dat_entry_avl_reg <= dat_entry_avl_w;
      end
    end
    if (_T_40) begin
      dat_entry_st_reg <= 15'h0;
    end else begin
      if (_T_102) begin
        if (sc2cdma_dat_pending_req) begin
          dat_entry_st_reg <= 15'h0;
        end else begin
          if (is_dat_entry_st_wrap) begin
            dat_entry_st_reg <= dat_entry_st_inc_wrap;
          end else begin
            dat_entry_st_reg <= dat_entry_st_inc;
          end
        end
      end
    end
    if (_T_40) begin
      dat_entry_end_reg <= 15'h0;
    end else begin
      if (_T_103) begin
        if (sc2cdma_dat_pending_req) begin
          dat_entry_end_reg <= 15'h0;
        end else begin
          if (is_dat_entry_end_wrap) begin
            dat_entry_end_reg <= dat_entry_end_inc_wrap;
          end else begin
            dat_entry_end_reg <= dat_entry_end_inc;
          end
        end
      end
    end
  end
endmodule



module NV_NVDLA_CSC_DL_CBUF_mng(
  input         nvdla_core_ng_clk, // @[:@6.4]
  input         nvdla_core_rstn, // @[:@6.4]
  input         cdma2sc_dat_updt, // @[:@6.4]
  input  [13:0] cdma2sc_dat_slices, // @[:@6.4]
  input  [14:0] cdma2sc_dat_entries, // @[:@6.4]
  input         sc2cdma_dat_pending_req, // @[:@6.4]
  input  [13:0] sc2cdma_dat_slices_w, // @[:@6.4]
  input  [14:0] sc2cdma_dat_entries_w, // @[:@6.4]
  input         dat_rls, // @[:@6.4]
  input         sg2dl_reuse_rls, // @[:@6.4]
  input         is_sg_running, // @[:@6.4]
  input         is_sg_running_d1, // @[:@6.4]
  input  [4:0]  data_bank, // @[:@6.4]
  output [13:0] dat_slice_av1, // @[:@6.4]
  output [14:0] dat_entry_avl, // @[:@6.4]
  output [14:0] dat_entry_st, // @[:@6.4]
  output [14:0] dat_entry_end // @[:@6.4]
);

//////////////////////////////////////////////////////////////
///// cbuf status management                             /////
//////////////////////////////////////////////////////////////
//================ Non-SLCG clock domain ================//
assign cbuf_reset = sc2cdma_dat_pending_req;
assign is_running_first = is_sg_running & ~is_sg_running_d1;
//////////////////////////////////// calculate how many avaliable dat slices in cbuf////////////////////////////////////
assign dat_slice_avl_add = cdma2sc_dat_updt ? cdma2sc_dat_slices : 14'b0;
assign dat_slice_avl_sub = dat_rls ? sc2cdma_dat_slices_w : 14'b0;
assign {mon_dat_slice_avl_w, dat_slice_avl_w} = (cbuf_reset) ? 14'b0 : dat_slice_avl + dat_slice_avl_add - dat_slice_avl_sub;
//////////////////////////////////// calculate how many avaliable dat entries in cbuf////////////////////////////////////
assign dat_entry_avl_add = cdma2sc_dat_updt ? cdma2sc_dat_entries :{15{1'b0}};
assign dat_entry_avl_sub = dat_rls ? sc2cdma_dat_entries_w : {15{1'b0}};
assign {mon_dat_entry_avl_w,dat_entry_avl_w} = (cbuf_reset) ? {15{1'b0}} : dat_entry_avl + dat_entry_avl_add - dat_entry_avl_sub;
//////////////////////////////////// calculate avilable data entries start offset in cbuf banks ////////////////////////////////////
// data_bank is the highest bank for storing data
assign {mon_dat_entry_st_inc,dat_entry_st_inc} = dat_entry_st + dat_entry_avl_sub;
assign {mon_dat_entry_st_inc_wrap, dat_entry_st_inc_wrap} = dat_entry_st_inc - {data_bank, {9{1'b0}} };
assign is_dat_entry_st_wrap = (dat_entry_st_inc >= {1'b0, data_bank, {9{1'b0}} });
assign dat_entry_st_w = (cbuf_reset) ? {15{1'b0}} : is_dat_entry_st_wrap ? dat_entry_st_inc_wrap : dat_entry_st_inc[15 -1:0];
//////////////////////////////////// calculate avilable data entries end offset in cbuf banks////////////////////////////////////
assign {mon_dat_entry_end_inc,dat_entry_end_inc} = dat_entry_end + dat_entry_avl_add;
assign {mon_dat_entry_end_inc_wrap,dat_entry_end_inc_wrap} = dat_entry_end_inc - {data_bank, {9{1'b0}} };
assign is_dat_entry_end_wrap = (dat_entry_end_inc >= {1'b0, data_bank, {9{1'b0}} });
assign dat_entry_end_w = (cbuf_reset) ? {15{1'b0}} : is_dat_entry_end_wrap ? dat_entry_end_inc_wrap : dat_entry_end_inc[15 -1:0];
//////////////////////////////////// registers and assertions ////////////////////////////////////
//: my $kk= 15;
//: &eperl::flop("-nodeclare -clk nvdla_core_ng_clk  -rval \"{14{1'b0}}\"  -en \"cdma2sc_dat_updt | dat_rls | cbuf_reset\" -d \"dat_slice_avl_w\" -q dat_slice_avl");
//: &eperl::flop("-nodeclare -clk nvdla_core_ng_clk  -rval \"{${kk}{1'b0}}\"  -en \"cdma2sc_dat_updt | dat_rls | cbuf_reset\" -d \"dat_entry_avl_w\" -q dat_entry_avl");
//: &eperl::flop("-nodeclare -clk nvdla_core_ng_clk  -rval \"{${kk}{1'b0}}\"  -en \"cbuf_reset | dat_rls\" -d \"dat_entry_st_w\" -q dat_entry_st");
//: &eperl::flop("-nodeclare -clk nvdla_core_ng_clk  -rval \"{${kk}{1'b0}}\"  -en \"cbuf_reset | cdma2sc_dat_updt\" -d \"dat_entry_end_w\" -q dat_entry_end");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_ng_clk ) begin
   if (!nvdla_core_rstn) begin
       dat_slice_avl <= {14{1'b0}};
   end else begin
       if ((cdma2sc_dat_updt | dat_rls | cbuf_reset) == 1'b1) begin
           dat_slice_avl <= dat_slice_avl_w;
       // VCS coverage off
       end else if ((cdma2sc_dat_updt | dat_rls | cbuf_reset) == 1'b0) begin
       end else begin
           dat_slice_avl <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_ng_clk ) begin
   if (!nvdla_core_rstn) begin
       dat_entry_avl <= {15{1'b0}};
   end else begin
       if ((cdma2sc_dat_updt | dat_rls | cbuf_reset) == 1'b1) begin
           dat_entry_avl <= dat_entry_avl_w;
       // VCS coverage off
       end else if ((cdma2sc_dat_updt | dat_rls | cbuf_reset) == 1'b0) begin
       end else begin
           dat_entry_avl <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_ng_clk ) begin
   if (!nvdla_core_rstn) begin
       dat_entry_st <= {15{1'b0}};
   end else begin
       if ((cbuf_reset | dat_rls) == 1'b1) begin
           dat_entry_st <= dat_entry_st_w;
       // VCS coverage off
       end else if ((cbuf_reset | dat_rls) == 1'b0) begin
       end else begin
           dat_entry_st <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_ng_clk ) begin
   if (!nvdla_core_rstn) begin
       dat_entry_end <= {15{1'b0}};
   end else begin
       if ((cbuf_reset | cdma2sc_dat_updt) == 1'b1) begin
           dat_entry_end <= dat_entry_end_w;
       // VCS coverage off
       end else if ((cbuf_reset | cdma2sc_dat_updt) == 1'b0) begin
       end else begin
           dat_entry_end <= 'bx;
       // VCS coverage on
       end
   end
end

endmodule