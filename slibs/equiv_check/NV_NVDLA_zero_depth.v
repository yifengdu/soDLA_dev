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
module NV_NVDLA_fifo_gate( // @[:@34.2]
  input         clk, // @[:@37.4]
  input         reset_, // @[:@37.4]
  input         wr_pvld, // @[:@37.4]
  output        wr_prdy, // @[:@37.4]
  input         wr_pd, // @[:@37.4]
  output        rd_pvld, // @[:@37.4]
  input         rd_prdy, // @[:@37.4]
  output        rd_pd, // @[:@37.4]
  input  [31:0] pwrbus_ram_pd // @[:@37.4]
);
  wire  NV_CLK_gate_power_clk; // @[FIFO_gate.scala 70:27:@41.4]
  wire  NV_CLK_gate_power_clk_en; // @[FIFO_gate.scala 70:27:@41.4]
  wire  NV_CLK_gate_power_clk_gated; // @[FIFO_gate.scala 70:27:@41.4]
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
    .clk(NV_CLK_gate_power_clk),
    .clk_en(NV_CLK_gate_power_clk_en),
    .clk_gated(NV_CLK_gate_power_clk_gated)
  );
  assign _T_24 = reset_ == 1'h0; // @[FIFO_gate.scala 57:27:@39.4]
  assign _T_56 = _T_37 & _T_55; // @[FIFO_gate.scala 126:37:@64.4]
  assign _T_58 = _T_29 == 1'h0; // @[FIFO_gate.scala 126:57:@65.4]
  assign _T_59 = _T_56 & _T_58; // @[FIFO_gate.scala 126:54:@66.4]
  assign _T_61 = _T_59 == 1'h0; // @[FIFO_gate.scala 126:24:@67.4]
  assign _T_39 = _T_61 == 1'h0; // @[FIFO_gate.scala 110:58:@52.4]
  assign _T_40 = _T_37 & _T_39; // @[FIFO_gate.scala 110:55:@53.4]
  assign _T_49 = wr_pvld | _T_40; // @[FIFO_gate.scala 116:41:@59.4]
  assign _T_64 = _T_39 ? _T_37 : wr_pvld; // @[FIFO_gate.scala 127:31:@70.4]
  assign _T_66 = _T_34 == 1'h0; // @[FIFO_gate.scala 129:14:@71.4]
  assign _T_67 = _T_66 | rd_prdy; // @[FIFO_gate.scala 129:27:@72.4]
  assign _GEN_0 = _T_67 ? _T_64 : _T_34; // @[FIFO_gate.scala 129:42:@73.4]
  assign _T_71 = _T_64 & _T_67; // @[FIFO_gate.scala 134:27:@79.4]
  assign _T_79 = 1'h0 == _T_39; // @[Mux.scala 46:19:@84.6]
  assign _T_80 = _T_79 ? wr_pd : 1'h0; // @[Mux.scala 46:16:@85.6]
  assign _T_82 = _T_34 & _T_29; // @[FIFO_gate.scala 143:42:@89.4]
  assign _T_83 = wr_pvld | _T_82; // @[FIFO_gate.scala 142:54:@90.4]
  assign _T_84 = _T_37 & _T_61; // @[FIFO_gate.scala 144:44:@91.4]
  assign wr_prdy = 1'h0; // @[FIFO_gate.scala 145:20:@95.4]
  assign rd_pvld = _T_34; // @[FIFO_gate.scala 106:20:@50.4]
  assign rd_pd = _T_52; // @[FIFO_gate.scala 141:18:@88.4]
  assign NV_CLK_gate_power_clk = clk; // @[FIFO_gate.scala 71:22:@44.4]
  assign NV_CLK_gate_power_clk_en = _T_83 | _T_84; // @[FIFO_gate.scala 72:25:@45.4]
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
  always @(posedge clk) begin
    if (_T_24) begin
      _T_29 <= 1'h1;
    end else begin
      _T_29 <= rd_prdy;
    end
    if (_T_24) begin
      _T_34 <= 1'h0;
    end else begin
      if (_T_67) begin
        if (_T_39) begin
          _T_34 <= _T_37;
        end else begin
          _T_34 <= wr_pvld;
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
        _T_52 <= wr_pd;
      end else begin
        _T_52 <= 1'h0;
      end
    end
  end
  always @(posedge NV_CLK_gate_power_clk_gated) begin
    if (_T_24) begin
      _T_37 <= 1'h0;
    end else begin
      _T_37 <= _T_49;
    end
  end
endmodule




module NV_NVDLA_CDP_WDMA_intr_fifo (
      nvdla_core_clk
    , nvdla_core_rstn
    , intr_fifo_wr_pvld
    , intr_fifo_wr_pd
    , intr_fifo_rd_prdy
    , intr_fifo_rd_pvld
    , intr_fifo_rd_pd
    , pwrbus_ram_pd
    );

// spyglass disable_block W401 -- clock is not input to module
input         nvdla_core_clk;
input         nvdla_core_rstn;
input         intr_fifo_wr_pvld;
input         intr_fifo_wr_pd;
input         intr_fifo_rd_prdy;
output        intr_fifo_rd_pvld;
output        intr_fifo_rd_pd;
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
wire nvdla_core_clk_mgated_enable;   // assigned by code at end of this module
wire nvdla_core_clk_mgated;               // used only in synchronous fifos
NV_CLK_gate_power nvdla_core_clk_mgate( .clk(nvdla_core_clk), .reset_(nvdla_core_rstn), .clk_en(nvdla_core_clk_mgated_enable), .clk_gated(nvdla_core_clk_mgated) );

// 
// WRITE SIDE
//
        
//          
// NOTE: 0-depth fifo has no write side
//          


//
// RAM
//

//
// NOTE: 0-depth fifo has no ram.
//
wire [0:0] intr_fifo_rd_pd_p = intr_fifo_wr_pd;

//
// SYNCHRONOUS BOUNDARY
//

//
// NOTE: 0-depth fifo has no real boundary between write and read sides
//


//
// READ SIDE
//

reg        intr_fifo_rd_prdy_d;				// intr_fifo_rd_prdy registered in cleanly

always @( posedge nvdla_core_clk or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        intr_fifo_rd_prdy_d <=  1'b1;
    end else begin
        intr_fifo_rd_prdy_d <=  intr_fifo_rd_prdy;
    end
end

wire       intr_fifo_rd_prdy_d_o;			// combinatorial rd_busy

reg        intr_fifo_rd_pvld_int;			// internal copy of intr_fifo_rd_pvld

assign     intr_fifo_rd_pvld = intr_fifo_rd_pvld_int;
wire       intr_fifo_rd_pvld_p = intr_fifo_wr_pvld ; 		// no real fifo, take from write-side input
reg        intr_fifo_rd_pvld_int_o;	// internal copy of intr_fifo_rd_pvld_o
wire       intr_fifo_rd_pvld_o = intr_fifo_rd_pvld_int_o;
wire       rd_popping = intr_fifo_rd_pvld_p && !(intr_fifo_rd_pvld_int_o && !intr_fifo_rd_prdy_d_o);


// 
// SKID for -rd_busy_reg
//
reg  intr_fifo_rd_pd_o;         // output data register
wire        rd_req_next_o = (intr_fifo_rd_pvld_p || (intr_fifo_rd_pvld_int_o && !intr_fifo_rd_prdy_d_o)) ;

always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        intr_fifo_rd_pvld_int_o <=  1'b0;
    end else begin
        intr_fifo_rd_pvld_int_o <=  rd_req_next_o;
    end
end
always @( posedge nvdla_core_clk_mgated ) begin
    if ( (intr_fifo_rd_pvld_int && rd_req_next_o && rd_popping) ) begin
        intr_fifo_rd_pd_o <=  intr_fifo_rd_pd_p;
    end 
    //synopsys translate_off
        else if ( !((intr_fifo_rd_pvld_int && rd_req_next_o && rd_popping)) ) begin
    end else begin
        intr_fifo_rd_pd_o <=  {1{`x_or_0}};
    end
    //synopsys translate_on

end

//
// FINAL OUTPUT
//
reg  intr_fifo_rd_pd;				// output data register
reg        intr_fifo_rd_pvld_int_d;			// so we can bubble-collapse intr_fifo_rd_prdy_d
assign     intr_fifo_rd_prdy_d_o = !((intr_fifo_rd_pvld_o && intr_fifo_rd_pvld_int_d && !intr_fifo_rd_prdy_d ) );
wire       rd_req_next = (!intr_fifo_rd_prdy_d_o ? intr_fifo_rd_pvld_o : intr_fifo_rd_pvld_p) ;  

always @( posedge nvdla_core_clk or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        intr_fifo_rd_pvld_int <=  1'b0;
        intr_fifo_rd_pvld_int_d <=  1'b0;
    end else begin
        if ( !intr_fifo_rd_pvld_int || intr_fifo_rd_prdy ) begin
	    intr_fifo_rd_pvld_int <=  rd_req_next;
        end
        //synopsys translate_off
            else if ( !(!intr_fifo_rd_pvld_int || intr_fifo_rd_prdy) ) begin
        end else begin
            intr_fifo_rd_pvld_int <=  `x_or_0;
        end
        //synopsys translate_on


        intr_fifo_rd_pvld_int_d <=  intr_fifo_rd_pvld_int;
    end
end

always @( posedge nvdla_core_clk ) begin
    if ( rd_req_next && (!intr_fifo_rd_pvld_int || intr_fifo_rd_prdy ) ) begin
        case (!intr_fifo_rd_prdy_d_o) 
            1'b0:    intr_fifo_rd_pd <=  intr_fifo_rd_pd_p;
            1'b1:    intr_fifo_rd_pd <=  intr_fifo_rd_pd_o;
            //VCS coverage off
            default: intr_fifo_rd_pd <=  {1{`x_or_0}};
            //VCS coverage on
        endcase
    end
    //synopsys translate_off
        else if ( !(rd_req_next && (!intr_fifo_rd_pvld_int || intr_fifo_rd_prdy)) ) begin
    end else begin
        intr_fifo_rd_pd <=  {1{`x_or_0}};
    end
    //synopsys translate_on

end


// Tie-offs for pwrbus_ram_pd

NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_0 (.A(pwrbus_ram_pd[0]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_1 (.A(pwrbus_ram_pd[1]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_2 (.A(pwrbus_ram_pd[2]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_3 (.A(pwrbus_ram_pd[3]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_4 (.A(pwrbus_ram_pd[4]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_5 (.A(pwrbus_ram_pd[5]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_6 (.A(pwrbus_ram_pd[6]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_7 (.A(pwrbus_ram_pd[7]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_8 (.A(pwrbus_ram_pd[8]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_9 (.A(pwrbus_ram_pd[9]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_10 (.A(pwrbus_ram_pd[10]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_11 (.A(pwrbus_ram_pd[11]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_12 (.A(pwrbus_ram_pd[12]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_13 (.A(pwrbus_ram_pd[13]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_14 (.A(pwrbus_ram_pd[14]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_15 (.A(pwrbus_ram_pd[15]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_16 (.A(pwrbus_ram_pd[16]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_17 (.A(pwrbus_ram_pd[17]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_18 (.A(pwrbus_ram_pd[18]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_19 (.A(pwrbus_ram_pd[19]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_20 (.A(pwrbus_ram_pd[20]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_21 (.A(pwrbus_ram_pd[21]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_22 (.A(pwrbus_ram_pd[22]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_23 (.A(pwrbus_ram_pd[23]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_24 (.A(pwrbus_ram_pd[24]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_25 (.A(pwrbus_ram_pd[25]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_26 (.A(pwrbus_ram_pd[26]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_27 (.A(pwrbus_ram_pd[27]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_28 (.A(pwrbus_ram_pd[28]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_29 (.A(pwrbus_ram_pd[29]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_30 (.A(pwrbus_ram_pd[30]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_31 (.A(pwrbus_ram_pd[31]));

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
assign nvdla_core_clk_mgated_enable = ((1'b0) || (intr_fifo_wr_pvld || (intr_fifo_rd_pvld_int && intr_fifo_rd_prdy_d) || (intr_fifo_rd_pvld_int_o && intr_fifo_rd_prdy_d_o)))
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
//   set_boundary_optimization find(design, "NV_NVDLA_CDP_WDMA_intr_fifo") true
// synopsys dc_script_end


endmodule // NV_NVDLA_CDP_WDMA_intr_fifo
