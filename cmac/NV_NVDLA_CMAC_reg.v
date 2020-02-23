module NV_NVDLA_BASIC_REG_single( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  output [31:0] io_reg_rd_data, // @[:@6.4]
  input  [11:0] io_reg_offset, // @[:@6.4]
  input  [31:0] io_reg_wr_data, // @[:@6.4]
  input         io_reg_wr_en, // @[:@6.4]
  output        io_producer, // @[:@6.4]
  input         io_consumer, // @[:@6.4]
  input  [1:0]  io_status_0, // @[:@6.4]
  input  [1:0]  io_status_1 // @[:@6.4]
);
  wire [31:0] _GEN_1; // @[NV_NVDLA_BASIC_REG_single.scala 49:43:@8.4]
  wire  _T_24; // @[NV_NVDLA_BASIC_REG_single.scala 49:43:@8.4]
  wire  _T_25; // @[NV_NVDLA_BASIC_REG_single.scala 49:66:@9.4]
  wire [31:0] _T_35; // @[Cat.scala 30:58:@14.4]
  wire [31:0] _T_41; // @[Cat.scala 30:58:@17.4]
  wire  _T_42; // @[Mux.scala 46:19:@18.4]
  wire [31:0] _T_43; // @[Mux.scala 46:16:@19.4]
  wire  _T_44; // @[Mux.scala 46:19:@20.4]
  wire  _T_46; // @[NV_NVDLA_BASIC_REG_single.scala 62:44:@23.4]
  reg  _T_49; // @[Reg.scala 19:20:@24.4]
  reg [31:0] _RAND_0;
  wire  _GEN_0; // @[Reg.scala 20:19:@25.4]
  assign _GEN_1 = {{20'd0}, io_reg_offset}; // @[NV_NVDLA_BASIC_REG_single.scala 49:43:@8.4]
  assign _T_24 = _GEN_1 == 32'h4; // @[NV_NVDLA_BASIC_REG_single.scala 49:43:@8.4]
  assign _T_25 = _T_24 & io_reg_wr_en; // @[NV_NVDLA_BASIC_REG_single.scala 49:66:@9.4]
  assign _T_35 = {15'h0,io_consumer,15'h0,io_producer}; // @[Cat.scala 30:58:@14.4]
  assign _T_41 = {14'h0,io_status_1,14'h0,io_status_0}; // @[Cat.scala 30:58:@17.4]
  assign _T_42 = 32'h0 == _GEN_1; // @[Mux.scala 46:19:@18.4]
  assign _T_43 = _T_42 ? _T_41 : 32'h0; // @[Mux.scala 46:16:@19.4]
  assign _T_44 = 32'h4 == _GEN_1; // @[Mux.scala 46:19:@20.4]
  assign _T_46 = io_reg_wr_data[0]; // @[NV_NVDLA_BASIC_REG_single.scala 62:44:@23.4]
  assign _GEN_0 = _T_25 ? _T_46 : _T_49; // @[Reg.scala 20:19:@25.4]
  assign io_reg_rd_data = _T_44 ? _T_35 : _T_43; // @[NV_NVDLA_BASIC_REG_single.scala 53:20:@22.4]
  assign io_producer = _T_49; // @[NV_NVDLA_BASIC_REG_single.scala 62:17:@28.4]
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
  _T_49 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_49 <= 1'h0;
    end else begin
      if (_T_25) begin
        _T_49 <= _T_46;
      end
    end
  end
endmodule
module NV_NVDLA_CMAC_REG_dual( // @[:@30.2]
  input         clock, // @[:@31.4]
  input         reset, // @[:@32.4]
  output [31:0] io_reg_rd_data, // @[:@33.4]
  input  [11:0] io_reg_offset, // @[:@33.4]
  input  [31:0] io_reg_wr_data, // @[:@33.4]
  input         io_reg_wr_en, // @[:@33.4]
  output        io_field_conv_mode, // @[:@33.4]
  output [1:0]  io_field_proc_precision, // @[:@33.4]
  output        io_op_en_trigger, // @[:@33.4]
  input         io_op_en // @[:@33.4]
);
  wire [31:0] _GEN_2; // @[NV_NVDLA_CMAC_REG_dual.scala 51:57:@35.4]
  wire  _T_24; // @[NV_NVDLA_CMAC_REG_dual.scala 51:57:@35.4]
  wire  _T_25; // @[NV_NVDLA_CMAC_REG_dual.scala 51:80:@36.4]
  wire  _T_27; // @[NV_NVDLA_CMAC_REG_dual.scala 52:58:@37.4]
  wire [31:0] _T_35; // @[Cat.scala 30:58:@42.4]
  wire [31:0] _T_38; // @[Cat.scala 30:58:@43.4]
  wire  _T_39; // @[Mux.scala 46:19:@44.4]
  wire [31:0] _T_40; // @[Mux.scala 46:16:@45.4]
  wire  _T_41; // @[Mux.scala 46:19:@46.4]
  wire  _T_43; // @[NV_NVDLA_CMAC_REG_dual.scala 68:51:@49.4]
  reg  _T_46; // @[Reg.scala 19:20:@50.4]
  reg [31:0] _RAND_0;
  wire  _GEN_0; // @[Reg.scala 20:19:@51.4]
  wire [1:0] _T_47; // @[NV_NVDLA_CMAC_REG_dual.scala 72:56:@55.4]
  reg [1:0] _T_50; // @[Reg.scala 19:20:@56.4]
  reg [31:0] _RAND_1;
  wire [1:0] _GEN_1; // @[Reg.scala 20:19:@57.4]
  assign _GEN_2 = {{20'd0}, io_reg_offset}; // @[NV_NVDLA_CMAC_REG_dual.scala 51:57:@35.4]
  assign _T_24 = _GEN_2 == 32'hc; // @[NV_NVDLA_CMAC_REG_dual.scala 51:57:@35.4]
  assign _T_25 = _T_24 & io_reg_wr_en; // @[NV_NVDLA_CMAC_REG_dual.scala 51:80:@36.4]
  assign _T_27 = _GEN_2 == 32'h8; // @[NV_NVDLA_CMAC_REG_dual.scala 52:58:@37.4]
  assign _T_35 = {18'h0,io_field_proc_precision,11'h0,io_field_conv_mode}; // @[Cat.scala 30:58:@42.4]
  assign _T_38 = {31'h0,io_op_en}; // @[Cat.scala 30:58:@43.4]
  assign _T_39 = 32'h8 == _GEN_2; // @[Mux.scala 46:19:@44.4]
  assign _T_40 = _T_39 ? _T_38 : 32'h0; // @[Mux.scala 46:16:@45.4]
  assign _T_41 = 32'hc == _GEN_2; // @[Mux.scala 46:19:@46.4]
  assign _T_43 = io_reg_wr_data[0]; // @[NV_NVDLA_CMAC_REG_dual.scala 68:51:@49.4]
  assign _GEN_0 = _T_25 ? _T_43 : _T_46; // @[Reg.scala 20:19:@51.4]
  assign _T_47 = io_reg_wr_data[13:12]; // @[NV_NVDLA_CMAC_REG_dual.scala 72:56:@55.4]
  assign _GEN_1 = _T_25 ? _T_47 : _T_50; // @[Reg.scala 20:19:@57.4]
  assign io_reg_rd_data = _T_41 ? _T_35 : _T_40; // @[NV_NVDLA_CMAC_REG_dual.scala 58:20:@48.4]
  assign io_field_conv_mode = _T_46; // @[NV_NVDLA_CMAC_REG_dual.scala 68:24:@54.4]
  assign io_field_proc_precision = _T_50; // @[NV_NVDLA_CMAC_REG_dual.scala 72:29:@60.4]
  assign io_op_en_trigger = _T_27 & io_reg_wr_en; // @[NV_NVDLA_CMAC_REG_dual.scala 54:22:@39.4]
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
  _T_46 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_50 = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_46 <= 1'h0;
    end else begin
      if (_T_25) begin
        _T_46 <= _T_43;
      end
    end
    if (reset) begin
      _T_50 <= 2'h1;
    end else begin
      if (_T_25) begin
        _T_50 <= _T_47;
      end
    end
  end
endmodule
module NV_NVDLA_CSB_LOGIC( // @[:@94.2]
  input         reset, // @[:@96.4]
  input         io_clk, // @[:@97.4]
  input         io_csb2dp_req_valid, // @[:@97.4]
  input  [62:0] io_csb2dp_req_bits, // @[:@97.4]
  output        io_csb2dp_resp_valid, // @[:@97.4]
  output [33:0] io_csb2dp_resp_bits, // @[:@97.4]
  input  [31:0] io_reg_rd_data, // @[:@97.4]
  output [11:0] io_reg_offset, // @[:@97.4]
  output [31:0] io_reg_wr_data, // @[:@97.4]
  output        io_reg_wr_en // @[:@97.4]
);
  reg  _T_43; // @[NV_NVDLA_CSB_LOGIC.scala 45:27:@99.4]
  reg [31:0] _RAND_0;
  reg [62:0] _T_46; // @[NV_NVDLA_CSB_LOGIC.scala 46:25:@100.4]
  reg [63:0] _RAND_1;
  wire [62:0] _GEN_0; // @[NV_NVDLA_CSB_LOGIC.scala 49:30:@102.4]
  wire [21:0] _T_47; // @[NV_NVDLA_CSB_LOGIC.scala 54:26:@105.4]
  wire  _T_49; // @[NV_NVDLA_CSB_LOGIC.scala 56:27:@107.4]
  wire  _T_50; // @[NV_NVDLA_CSB_LOGIC.scala 57:29:@108.4]
  wire [23:0] _T_56; // @[Cat.scala 30:58:@113.4]
  wire  _T_58; // @[NV_NVDLA_CSB_LOGIC.scala 68:32:@118.4]
  wire  _T_59; // @[NV_NVDLA_CSB_LOGIC.scala 68:30:@119.4]
  wire [33:0] _T_63; // @[Cat.scala 30:58:@121.4]
  reg [33:0] _T_71; // @[NV_NVDLA_CSB_LOGIC.scala 83:37:@124.4]
  reg [63:0] _RAND_2;
  reg  _T_74; // @[NV_NVDLA_CSB_LOGIC.scala 84:40:@125.4]
  reg [31:0] _RAND_3;
  wire  _T_75; // @[NV_NVDLA_CSB_LOGIC.scala 89:28:@130.6]
  wire [33:0] _GEN_1; // @[NV_NVDLA_CSB_LOGIC.scala 89:42:@131.6]
  wire [33:0] _GEN_2; // @[NV_NVDLA_CSB_LOGIC.scala 86:20:@126.4]
  wire  _T_77; // @[NV_NVDLA_CSB_LOGIC.scala 92:59:@135.4]
  assign _GEN_0 = io_csb2dp_req_valid ? io_csb2dp_req_bits : _T_46; // @[NV_NVDLA_CSB_LOGIC.scala 49:30:@102.4]
  assign _T_47 = _T_46[21:0]; // @[NV_NVDLA_CSB_LOGIC.scala 54:26:@105.4]
  assign _T_49 = _T_46[54]; // @[NV_NVDLA_CSB_LOGIC.scala 56:27:@107.4]
  assign _T_50 = _T_46[55]; // @[NV_NVDLA_CSB_LOGIC.scala 57:29:@108.4]
  assign _T_56 = {_T_47,2'h0}; // @[Cat.scala 30:58:@113.4]
  assign _T_58 = ~ _T_49; // @[NV_NVDLA_CSB_LOGIC.scala 68:32:@118.4]
  assign _T_59 = _T_43 & _T_58; // @[NV_NVDLA_CSB_LOGIC.scala 68:30:@119.4]
  assign _T_63 = {2'h0,io_reg_rd_data}; // @[Cat.scala 30:58:@121.4]
  assign _T_75 = io_reg_wr_en & _T_50; // @[NV_NVDLA_CSB_LOGIC.scala 89:28:@130.6]
  assign _GEN_1 = _T_75 ? 34'h200000000 : _T_71; // @[NV_NVDLA_CSB_LOGIC.scala 89:42:@131.6]
  assign _GEN_2 = _T_59 ? _T_63 : _GEN_1; // @[NV_NVDLA_CSB_LOGIC.scala 86:20:@126.4]
  assign _T_77 = _T_75 | _T_59; // @[NV_NVDLA_CSB_LOGIC.scala 92:59:@135.4]
  assign io_csb2dp_resp_valid = _T_74; // @[NV_NVDLA_CSB_LOGIC.scala 95:26:@138.4]
  assign io_csb2dp_resp_bits = _T_71; // @[NV_NVDLA_CSB_LOGIC.scala 94:25:@137.4]
  assign io_reg_offset = _T_56[11:0]; // @[NV_NVDLA_CSB_LOGIC.scala 65:19:@114.4]
  assign io_reg_wr_data = _T_46[53:22]; // @[NV_NVDLA_CSB_LOGIC.scala 66:20:@115.4]
  assign io_reg_wr_en = _T_43 & _T_49; // @[NV_NVDLA_CSB_LOGIC.scala 67:18:@117.4]
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
  _T_43 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  _T_46 = _RAND_1[62:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_71 = _RAND_2[33:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_74 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_clk) begin
    if (reset) begin
      _T_43 <= 1'h0;
    end else begin
      _T_43 <= io_csb2dp_req_valid;
    end
    if (reset) begin
      _T_46 <= 63'h0;
    end else begin
      if (io_csb2dp_req_valid) begin
        _T_46 <= io_csb2dp_req_bits;
      end
    end
    if (reset) begin
      _T_71 <= 34'h0;
    end else begin
      if (_T_59) begin
        _T_71 <= _T_63;
      end else begin
        if (_T_75) begin
          _T_71 <= 34'h200000000;
        end
      end
    end
    if (reset) begin
      _T_74 <= 1'h0;
    end else begin
      _T_74 <= _T_77;
    end
  end
endmodule
module NV_NVDLA_CMAC_reg( // @[:@140.2]
  input         clock, // @[:@141.4]
  input         reset, // @[:@142.4]
  input         io_nvdla_core_clk, // @[:@143.4]
  output        io_csb2cmac_a_req_ready, // @[:@143.4]
  input         io_csb2cmac_a_req_valid, // @[:@143.4]
  input  [62:0] io_csb2cmac_a_req_bits, // @[:@143.4]
  output        io_csb2cmac_a_resp_valid, // @[:@143.4]
  output [33:0] io_csb2cmac_a_resp_bits, // @[:@143.4]
  output        io_reg2dp_op_en, // @[:@143.4]
  output        io_reg2dp_field_conv_mode, // @[:@143.4]
  output [1:0]  io_reg2dp_field_proc_precision, // @[:@143.4]
  input         io_dp2reg_done, // @[:@143.4]
  output [18:0] io_slcg_op_en // @[:@143.4]
);
  wire  NV_NVDLA_BASIC_REG_single_clock; // @[NV_NVDLA_CMAC_reg.scala 60:30:@151.4]
  wire  NV_NVDLA_BASIC_REG_single_reset; // @[NV_NVDLA_CMAC_reg.scala 60:30:@151.4]
  wire [31:0] NV_NVDLA_BASIC_REG_single_io_reg_rd_data; // @[NV_NVDLA_CMAC_reg.scala 60:30:@151.4]
  wire [11:0] NV_NVDLA_BASIC_REG_single_io_reg_offset; // @[NV_NVDLA_CMAC_reg.scala 60:30:@151.4]
  wire [31:0] NV_NVDLA_BASIC_REG_single_io_reg_wr_data; // @[NV_NVDLA_CMAC_reg.scala 60:30:@151.4]
  wire  NV_NVDLA_BASIC_REG_single_io_reg_wr_en; // @[NV_NVDLA_CMAC_reg.scala 60:30:@151.4]
  wire  NV_NVDLA_BASIC_REG_single_io_producer; // @[NV_NVDLA_CMAC_reg.scala 60:30:@151.4]
  wire  NV_NVDLA_BASIC_REG_single_io_consumer; // @[NV_NVDLA_CMAC_reg.scala 60:30:@151.4]
  wire [1:0] NV_NVDLA_BASIC_REG_single_io_status_0; // @[NV_NVDLA_CMAC_reg.scala 60:30:@151.4]
  wire [1:0] NV_NVDLA_BASIC_REG_single_io_status_1; // @[NV_NVDLA_CMAC_reg.scala 60:30:@151.4]
  wire  NV_NVDLA_CMAC_REG_dual_clock; // @[NV_NVDLA_CMAC_reg.scala 76:31:@163.4]
  wire  NV_NVDLA_CMAC_REG_dual_reset; // @[NV_NVDLA_CMAC_reg.scala 76:31:@163.4]
  wire [31:0] NV_NVDLA_CMAC_REG_dual_io_reg_rd_data; // @[NV_NVDLA_CMAC_reg.scala 76:31:@163.4]
  wire [11:0] NV_NVDLA_CMAC_REG_dual_io_reg_offset; // @[NV_NVDLA_CMAC_reg.scala 76:31:@163.4]
  wire [31:0] NV_NVDLA_CMAC_REG_dual_io_reg_wr_data; // @[NV_NVDLA_CMAC_reg.scala 76:31:@163.4]
  wire  NV_NVDLA_CMAC_REG_dual_io_reg_wr_en; // @[NV_NVDLA_CMAC_reg.scala 76:31:@163.4]
  wire  NV_NVDLA_CMAC_REG_dual_io_field_conv_mode; // @[NV_NVDLA_CMAC_reg.scala 76:31:@163.4]
  wire [1:0] NV_NVDLA_CMAC_REG_dual_io_field_proc_precision; // @[NV_NVDLA_CMAC_reg.scala 76:31:@163.4]
  wire  NV_NVDLA_CMAC_REG_dual_io_op_en_trigger; // @[NV_NVDLA_CMAC_reg.scala 76:31:@163.4]
  wire  NV_NVDLA_CMAC_REG_dual_io_op_en; // @[NV_NVDLA_CMAC_reg.scala 76:31:@163.4]
  wire  NV_NVDLA_CMAC_REG_dual_1_clock; // @[NV_NVDLA_CMAC_reg.scala 89:31:@173.4]
  wire  NV_NVDLA_CMAC_REG_dual_1_reset; // @[NV_NVDLA_CMAC_reg.scala 89:31:@173.4]
  wire [31:0] NV_NVDLA_CMAC_REG_dual_1_io_reg_rd_data; // @[NV_NVDLA_CMAC_reg.scala 89:31:@173.4]
  wire [11:0] NV_NVDLA_CMAC_REG_dual_1_io_reg_offset; // @[NV_NVDLA_CMAC_reg.scala 89:31:@173.4]
  wire [31:0] NV_NVDLA_CMAC_REG_dual_1_io_reg_wr_data; // @[NV_NVDLA_CMAC_reg.scala 89:31:@173.4]
  wire  NV_NVDLA_CMAC_REG_dual_1_io_reg_wr_en; // @[NV_NVDLA_CMAC_reg.scala 89:31:@173.4]
  wire  NV_NVDLA_CMAC_REG_dual_1_io_field_conv_mode; // @[NV_NVDLA_CMAC_reg.scala 89:31:@173.4]
  wire [1:0] NV_NVDLA_CMAC_REG_dual_1_io_field_proc_precision; // @[NV_NVDLA_CMAC_reg.scala 89:31:@173.4]
  wire  NV_NVDLA_CMAC_REG_dual_1_io_op_en_trigger; // @[NV_NVDLA_CMAC_reg.scala 89:31:@173.4]
  wire  NV_NVDLA_CMAC_REG_dual_1_io_op_en; // @[NV_NVDLA_CMAC_reg.scala 89:31:@173.4]
  wire  NV_NVDLA_CSB_LOGIC_reset; // @[NV_NVDLA_CMAC_reg.scala 164:27:@267.4]
  wire  NV_NVDLA_CSB_LOGIC_io_clk; // @[NV_NVDLA_CMAC_reg.scala 164:27:@267.4]
  wire  NV_NVDLA_CSB_LOGIC_io_csb2dp_req_valid; // @[NV_NVDLA_CMAC_reg.scala 164:27:@267.4]
  wire [62:0] NV_NVDLA_CSB_LOGIC_io_csb2dp_req_bits; // @[NV_NVDLA_CMAC_reg.scala 164:27:@267.4]
  wire  NV_NVDLA_CSB_LOGIC_io_csb2dp_resp_valid; // @[NV_NVDLA_CMAC_reg.scala 164:27:@267.4]
  wire [33:0] NV_NVDLA_CSB_LOGIC_io_csb2dp_resp_bits; // @[NV_NVDLA_CMAC_reg.scala 164:27:@267.4]
  wire [31:0] NV_NVDLA_CSB_LOGIC_io_reg_rd_data; // @[NV_NVDLA_CMAC_reg.scala 164:27:@267.4]
  wire [11:0] NV_NVDLA_CSB_LOGIC_io_reg_offset; // @[NV_NVDLA_CMAC_reg.scala 164:27:@267.4]
  wire [31:0] NV_NVDLA_CSB_LOGIC_io_reg_wr_data; // @[NV_NVDLA_CMAC_reg.scala 164:27:@267.4]
  wire  NV_NVDLA_CSB_LOGIC_io_reg_wr_en; // @[NV_NVDLA_CMAC_reg.scala 164:27:@267.4]
  reg  _T_35; // @[NV_NVDLA_CMAC_reg.scala 52:34:@145.4]
  reg [31:0] _RAND_0;
  reg  _T_50; // @[NV_NVDLA_CMAC_reg.scala 74:34:@162.4]
  reg [31:0] _RAND_1;
  reg  _T_55; // @[NV_NVDLA_CMAC_reg.scala 87:34:@172.4]
  reg [31:0] _RAND_2;
  wire  _T_56; // @[NV_NVDLA_CMAC_reg.scala 105:28:@182.6]
  wire  _GEN_0; // @[NV_NVDLA_CMAC_reg.scala 104:25:@181.4]
  wire  _T_58; // @[NV_NVDLA_CMAC_reg.scala 113:44:@185.4]
  wire [1:0] _T_64; // @[NV_NVDLA_CMAC_reg.scala 114:27:@187.4]
  wire  _T_67; // @[NV_NVDLA_CMAC_reg.scala 117:44:@190.4]
  wire  _T_70; // @[NV_NVDLA_CMAC_reg.scala 118:44:@191.4]
  wire [1:0] _T_73; // @[NV_NVDLA_CMAC_reg.scala 118:27:@192.4]
  reg [2:0] _T_77; // @[NV_NVDLA_CMAC_reg.scala 126:35:@195.4]
  reg [31:0] _RAND_3;
  wire  _T_78; // @[NV_NVDLA_CMAC_reg.scala 128:28:@196.4]
  wire  _T_79; // @[NV_NVDLA_CMAC_reg.scala 128:45:@197.4]
  wire [31:0] _T_43; // @[NV_NVDLA_CMAC_reg.scala 57:27:@149.4 NV_NVDLA_CMAC_reg.scala 169:17:@278.4]
  wire  _T_80; // @[NV_NVDLA_CMAC_reg.scala 128:83:@198.4]
  wire  _T_83; // @[NV_NVDLA_CMAC_reg.scala 129:43:@200.4]
  wire  _T_85; // @[NV_NVDLA_CMAC_reg.scala 129:27:@201.4]
  wire  _T_86; // @[NV_NVDLA_CMAC_reg.scala 128:27:@202.4]
  wire  _T_87; // @[NV_NVDLA_CMAC_reg.scala 131:28:@204.4]
  wire  _T_88; // @[NV_NVDLA_CMAC_reg.scala 131:45:@205.4]
  wire  _T_92; // @[NV_NVDLA_CMAC_reg.scala 132:43:@208.4]
  wire  _T_94; // @[NV_NVDLA_CMAC_reg.scala 132:27:@209.4]
  wire  _T_95; // @[NV_NVDLA_CMAC_reg.scala 131:27:@210.4]
  wire  _T_96; // @[NV_NVDLA_CMAC_reg.scala 134:31:@212.4]
  wire [1:0] _T_98; // @[NV_NVDLA_CMAC_reg.scala 136:83:@213.4]
  wire [2:0] _T_99; // @[Cat.scala 30:58:@214.4]
  wire [2:0] _T_100; // @[NV_NVDLA_CMAC_reg.scala 136:28:@215.4]
  wire [10:0] _T_105; // @[Bitwise.scala 72:12:@220.4]
  reg [18:0] _T_109; // @[Reg.scala 19:20:@221.4]
  reg [31:0] _RAND_4;
  wire [18:0] _GEN_1; // @[Reg.scala 20:19:@222.4]
  reg [18:0] _T_111; // @[Reg.scala 19:20:@225.4]
  reg [31:0] _RAND_5;
  reg [18:0] _T_113; // @[Reg.scala 19:20:@229.4]
  reg [31:0] _RAND_6;
  wire [11:0] _T_41; // @[NV_NVDLA_CMAC_reg.scala 56:26:@148.4 NV_NVDLA_CMAC_reg.scala 167:16:@276.4]
  wire [31:0] _GEN_4; // @[NV_NVDLA_CMAC_reg.scala 147:41:@236.4]
  wire  _T_118; // @[NV_NVDLA_CMAC_reg.scala 147:41:@236.4]
  wire  _T_124; // @[NV_NVDLA_CMAC_reg.scala 148:39:@239.4]
  wire  _T_126; // @[NV_NVDLA_CMAC_reg.scala 148:83:@240.4]
  wire  _T_127; // @[NV_NVDLA_CMAC_reg.scala 148:64:@241.4]
  wire  _T_132; // @[NV_NVDLA_CMAC_reg.scala 149:83:@244.4]
  wire  _T_133; // @[NV_NVDLA_CMAC_reg.scala 149:64:@245.4]
  wire  _T_115; // @[NV_NVDLA_CMAC_reg.scala 146:25:@234.4 NV_NVDLA_CMAC_reg.scala 168:15:@277.4]
  wire  _T_135; // @[NV_NVDLA_CMAC_reg.scala 152:31:@248.4]
  wire  _T_139; // @[NV_NVDLA_CMAC_reg.scala 153:31:@252.4]
  wire [31:0] _T_146; // @[Bitwise.scala 72:12:@257.4]
  wire [31:0] _T_147; // @[NV_NVDLA_CMAC_reg.scala 155:43:@258.4]
  wire [31:0] _T_151; // @[Bitwise.scala 72:12:@260.4]
  wire [31:0] _T_152; // @[NV_NVDLA_CMAC_reg.scala 156:44:@261.4]
  wire [31:0] _T_153; // @[NV_NVDLA_CMAC_reg.scala 155:59:@262.4]
  wire [31:0] _T_157; // @[Bitwise.scala 72:12:@264.4]
  wire [31:0] _T_158; // @[NV_NVDLA_CMAC_reg.scala 157:43:@265.4]
  NV_NVDLA_BASIC_REG_single NV_NVDLA_BASIC_REG_single ( // @[NV_NVDLA_CMAC_reg.scala 60:30:@151.4]
    .clock(NV_NVDLA_BASIC_REG_single_clock),
    .reset(NV_NVDLA_BASIC_REG_single_reset),
    .io_reg_rd_data(NV_NVDLA_BASIC_REG_single_io_reg_rd_data),
    .io_reg_offset(NV_NVDLA_BASIC_REG_single_io_reg_offset),
    .io_reg_wr_data(NV_NVDLA_BASIC_REG_single_io_reg_wr_data),
    .io_reg_wr_en(NV_NVDLA_BASIC_REG_single_io_reg_wr_en),
    .io_producer(NV_NVDLA_BASIC_REG_single_io_producer),
    .io_consumer(NV_NVDLA_BASIC_REG_single_io_consumer),
    .io_status_0(NV_NVDLA_BASIC_REG_single_io_status_0),
    .io_status_1(NV_NVDLA_BASIC_REG_single_io_status_1)
  );
  NV_NVDLA_CMAC_REG_dual NV_NVDLA_CMAC_REG_dual ( // @[NV_NVDLA_CMAC_reg.scala 76:31:@163.4]
    .clock(NV_NVDLA_CMAC_REG_dual_clock),
    .reset(NV_NVDLA_CMAC_REG_dual_reset),
    .io_reg_rd_data(NV_NVDLA_CMAC_REG_dual_io_reg_rd_data),
    .io_reg_offset(NV_NVDLA_CMAC_REG_dual_io_reg_offset),
    .io_reg_wr_data(NV_NVDLA_CMAC_REG_dual_io_reg_wr_data),
    .io_reg_wr_en(NV_NVDLA_CMAC_REG_dual_io_reg_wr_en),
    .io_field_conv_mode(NV_NVDLA_CMAC_REG_dual_io_field_conv_mode),
    .io_field_proc_precision(NV_NVDLA_CMAC_REG_dual_io_field_proc_precision),
    .io_op_en_trigger(NV_NVDLA_CMAC_REG_dual_io_op_en_trigger),
    .io_op_en(NV_NVDLA_CMAC_REG_dual_io_op_en)
  );
  NV_NVDLA_CMAC_REG_dual NV_NVDLA_CMAC_REG_dual_1 ( // @[NV_NVDLA_CMAC_reg.scala 89:31:@173.4]
    .clock(NV_NVDLA_CMAC_REG_dual_1_clock),
    .reset(NV_NVDLA_CMAC_REG_dual_1_reset),
    .io_reg_rd_data(NV_NVDLA_CMAC_REG_dual_1_io_reg_rd_data),
    .io_reg_offset(NV_NVDLA_CMAC_REG_dual_1_io_reg_offset),
    .io_reg_wr_data(NV_NVDLA_CMAC_REG_dual_1_io_reg_wr_data),
    .io_reg_wr_en(NV_NVDLA_CMAC_REG_dual_1_io_reg_wr_en),
    .io_field_conv_mode(NV_NVDLA_CMAC_REG_dual_1_io_field_conv_mode),
    .io_field_proc_precision(NV_NVDLA_CMAC_REG_dual_1_io_field_proc_precision),
    .io_op_en_trigger(NV_NVDLA_CMAC_REG_dual_1_io_op_en_trigger),
    .io_op_en(NV_NVDLA_CMAC_REG_dual_1_io_op_en)
  );
  NV_NVDLA_CSB_LOGIC NV_NVDLA_CSB_LOGIC ( // @[NV_NVDLA_CMAC_reg.scala 164:27:@267.4]
    .reset(NV_NVDLA_CSB_LOGIC_reset),
    .io_clk(NV_NVDLA_CSB_LOGIC_io_clk),
    .io_csb2dp_req_valid(NV_NVDLA_CSB_LOGIC_io_csb2dp_req_valid),
    .io_csb2dp_req_bits(NV_NVDLA_CSB_LOGIC_io_csb2dp_req_bits),
    .io_csb2dp_resp_valid(NV_NVDLA_CSB_LOGIC_io_csb2dp_resp_valid),
    .io_csb2dp_resp_bits(NV_NVDLA_CSB_LOGIC_io_csb2dp_resp_bits),
    .io_reg_rd_data(NV_NVDLA_CSB_LOGIC_io_reg_rd_data),
    .io_reg_offset(NV_NVDLA_CSB_LOGIC_io_reg_offset),
    .io_reg_wr_data(NV_NVDLA_CSB_LOGIC_io_reg_wr_data),
    .io_reg_wr_en(NV_NVDLA_CSB_LOGIC_io_reg_wr_en)
  );
  assign _T_56 = ~ _T_35; // @[NV_NVDLA_CMAC_reg.scala 105:28:@182.6]
  assign _GEN_0 = io_dp2reg_done ? _T_56 : _T_35; // @[NV_NVDLA_CMAC_reg.scala 104:25:@181.4]
  assign _T_58 = _T_50 == 1'h0; // @[NV_NVDLA_CMAC_reg.scala 113:44:@185.4]
  assign _T_64 = _T_35 ? 2'h2 : 2'h1; // @[NV_NVDLA_CMAC_reg.scala 114:27:@187.4]
  assign _T_67 = _T_55 == 1'h0; // @[NV_NVDLA_CMAC_reg.scala 117:44:@190.4]
  assign _T_70 = _T_35 == 1'h0; // @[NV_NVDLA_CMAC_reg.scala 118:44:@191.4]
  assign _T_73 = _T_70 ? 2'h2 : 2'h1; // @[NV_NVDLA_CMAC_reg.scala 118:27:@192.4]
  assign _T_78 = ~ _T_50; // @[NV_NVDLA_CMAC_reg.scala 128:28:@196.4]
  assign _T_79 = _T_78 & NV_NVDLA_CMAC_REG_dual_io_op_en_trigger; // @[NV_NVDLA_CMAC_reg.scala 128:45:@197.4]
  assign _T_43 = NV_NVDLA_CSB_LOGIC_io_reg_wr_data; // @[NV_NVDLA_CMAC_reg.scala 57:27:@149.4 NV_NVDLA_CMAC_reg.scala 169:17:@278.4]
  assign _T_80 = _T_43[0]; // @[NV_NVDLA_CMAC_reg.scala 128:83:@198.4]
  assign _T_83 = io_dp2reg_done & _T_70; // @[NV_NVDLA_CMAC_reg.scala 129:43:@200.4]
  assign _T_85 = _T_83 ? 1'h0 : _T_50; // @[NV_NVDLA_CMAC_reg.scala 129:27:@201.4]
  assign _T_86 = _T_79 ? _T_80 : _T_85; // @[NV_NVDLA_CMAC_reg.scala 128:27:@202.4]
  assign _T_87 = ~ _T_55; // @[NV_NVDLA_CMAC_reg.scala 131:28:@204.4]
  assign _T_88 = _T_87 & NV_NVDLA_CMAC_REG_dual_1_io_op_en_trigger; // @[NV_NVDLA_CMAC_reg.scala 131:45:@205.4]
  assign _T_92 = io_dp2reg_done & _T_35; // @[NV_NVDLA_CMAC_reg.scala 132:43:@208.4]
  assign _T_94 = _T_92 ? 1'h0 : _T_55; // @[NV_NVDLA_CMAC_reg.scala 132:27:@209.4]
  assign _T_95 = _T_88 ? _T_80 : _T_94; // @[NV_NVDLA_CMAC_reg.scala 131:27:@210.4]
  assign _T_96 = _T_35 ? _T_55 : _T_50; // @[NV_NVDLA_CMAC_reg.scala 134:31:@212.4]
  assign _T_98 = _T_77[1:0]; // @[NV_NVDLA_CMAC_reg.scala 136:83:@213.4]
  assign _T_99 = {_T_98,_T_96}; // @[Cat.scala 30:58:@214.4]
  assign _T_100 = io_dp2reg_done ? 3'h0 : _T_99; // @[NV_NVDLA_CMAC_reg.scala 136:28:@215.4]
  assign _T_105 = _T_96 ? 11'h7ff : 11'h0; // @[Bitwise.scala 72:12:@220.4]
  assign _GEN_1 = {{8'd0}, _T_105}; // @[Reg.scala 20:19:@222.4]
  assign _T_41 = NV_NVDLA_CSB_LOGIC_io_reg_offset; // @[NV_NVDLA_CMAC_reg.scala 56:26:@148.4 NV_NVDLA_CMAC_reg.scala 167:16:@276.4]
  assign _GEN_4 = {{20'd0}, _T_41}; // @[NV_NVDLA_CMAC_reg.scala 147:41:@236.4]
  assign _T_118 = _GEN_4 < 32'h8; // @[NV_NVDLA_CMAC_reg.scala 147:41:@236.4]
  assign _T_124 = _GEN_4 >= 32'h8; // @[NV_NVDLA_CMAC_reg.scala 148:39:@239.4]
  assign _T_126 = NV_NVDLA_BASIC_REG_single_io_producer == 1'h0; // @[NV_NVDLA_CMAC_reg.scala 148:83:@240.4]
  assign _T_127 = _T_124 & _T_126; // @[NV_NVDLA_CMAC_reg.scala 148:64:@241.4]
  assign _T_132 = NV_NVDLA_BASIC_REG_single_io_producer; // @[NV_NVDLA_CMAC_reg.scala 149:83:@244.4]
  assign _T_133 = _T_124 & _T_132; // @[NV_NVDLA_CMAC_reg.scala 149:64:@245.4]
  assign _T_115 = NV_NVDLA_CSB_LOGIC_io_reg_wr_en; // @[NV_NVDLA_CMAC_reg.scala 146:25:@234.4 NV_NVDLA_CMAC_reg.scala 168:15:@277.4]
  assign _T_135 = _T_115 & _T_127; // @[NV_NVDLA_CMAC_reg.scala 152:31:@248.4]
  assign _T_139 = _T_115 & _T_133; // @[NV_NVDLA_CMAC_reg.scala 153:31:@252.4]
  assign _T_146 = _T_118 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@257.4]
  assign _T_147 = _T_146 & NV_NVDLA_BASIC_REG_single_io_reg_rd_data; // @[NV_NVDLA_CMAC_reg.scala 155:43:@258.4]
  assign _T_151 = _T_127 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@260.4]
  assign _T_152 = _T_151 & NV_NVDLA_CMAC_REG_dual_io_reg_rd_data; // @[NV_NVDLA_CMAC_reg.scala 156:44:@261.4]
  assign _T_153 = _T_147 | _T_152; // @[NV_NVDLA_CMAC_reg.scala 155:59:@262.4]
  assign _T_157 = _T_133 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@264.4]
  assign _T_158 = _T_157 & NV_NVDLA_CMAC_REG_dual_1_io_reg_rd_data; // @[NV_NVDLA_CMAC_reg.scala 157:43:@265.4]
  assign io_csb2cmac_a_req_ready = 1'h1; // @[NV_NVDLA_CMAC_reg.scala 166:25:@275.4]
  assign io_csb2cmac_a_resp_valid = NV_NVDLA_CSB_LOGIC_io_csb2dp_resp_valid; // @[NV_NVDLA_CMAC_reg.scala 166:25:@272.4]
  assign io_csb2cmac_a_resp_bits = NV_NVDLA_CSB_LOGIC_io_csb2dp_resp_bits; // @[NV_NVDLA_CMAC_reg.scala 166:25:@271.4]
  assign io_reg2dp_op_en = _T_77[2]; // @[NV_NVDLA_CMAC_reg.scala 137:21:@218.4]
  assign io_reg2dp_field_conv_mode = _T_35 ? NV_NVDLA_CMAC_REG_dual_1_io_field_conv_mode : NV_NVDLA_CMAC_REG_dual_io_field_conv_mode; // @[NV_NVDLA_CMAC_reg.scala 178:21:@282.4]
  assign io_reg2dp_field_proc_precision = _T_35 ? NV_NVDLA_CMAC_REG_dual_1_io_field_proc_precision : NV_NVDLA_CMAC_REG_dual_io_field_proc_precision; // @[NV_NVDLA_CMAC_reg.scala 178:21:@281.4]
  assign io_slcg_op_en = _T_113; // @[NV_NVDLA_CMAC_reg.scala 139:19:@233.4]
  assign NV_NVDLA_BASIC_REG_single_clock = clock; // @[:@152.4]
  assign NV_NVDLA_BASIC_REG_single_reset = reset; // @[:@153.4]
  assign NV_NVDLA_BASIC_REG_single_io_reg_offset = NV_NVDLA_CSB_LOGIC_io_reg_offset; // @[NV_NVDLA_CMAC_reg.scala 63:32:@155.4]
  assign NV_NVDLA_BASIC_REG_single_io_reg_wr_data = NV_NVDLA_CSB_LOGIC_io_reg_wr_data; // @[NV_NVDLA_CMAC_reg.scala 64:33:@156.4]
  assign NV_NVDLA_BASIC_REG_single_io_reg_wr_en = _T_115 & _T_118; // @[NV_NVDLA_CMAC_reg.scala 65:31:@157.4]
  assign NV_NVDLA_BASIC_REG_single_io_consumer = _T_35; // @[NV_NVDLA_CMAC_reg.scala 67:30:@158.4]
  assign NV_NVDLA_BASIC_REG_single_io_status_0 = _T_58 ? 2'h0 : _T_64; // @[NV_NVDLA_CMAC_reg.scala 68:30:@159.4]
  assign NV_NVDLA_BASIC_REG_single_io_status_1 = _T_67 ? 2'h0 : _T_73; // @[NV_NVDLA_CMAC_reg.scala 69:30:@160.4]
  assign NV_NVDLA_CMAC_REG_dual_clock = clock; // @[:@164.4]
  assign NV_NVDLA_CMAC_REG_dual_reset = reset; // @[:@165.4]
  assign NV_NVDLA_CMAC_REG_dual_io_reg_offset = NV_NVDLA_CSB_LOGIC_io_reg_offset; // @[NV_NVDLA_CMAC_reg.scala 78:33:@167.4]
  assign NV_NVDLA_CMAC_REG_dual_io_reg_wr_data = NV_NVDLA_CSB_LOGIC_io_reg_wr_data; // @[NV_NVDLA_CMAC_reg.scala 79:34:@168.4]
  assign NV_NVDLA_CMAC_REG_dual_io_reg_wr_en = _T_135 & _T_58; // @[NV_NVDLA_CMAC_reg.scala 80:32:@169.4]
  assign NV_NVDLA_CMAC_REG_dual_io_op_en = _T_50; // @[NV_NVDLA_CMAC_reg.scala 82:28:@170.4]
  assign NV_NVDLA_CMAC_REG_dual_1_clock = clock; // @[:@174.4]
  assign NV_NVDLA_CMAC_REG_dual_1_reset = reset; // @[:@175.4]
  assign NV_NVDLA_CMAC_REG_dual_1_io_reg_offset = NV_NVDLA_CSB_LOGIC_io_reg_offset; // @[NV_NVDLA_CMAC_reg.scala 91:33:@177.4]
  assign NV_NVDLA_CMAC_REG_dual_1_io_reg_wr_data = NV_NVDLA_CSB_LOGIC_io_reg_wr_data; // @[NV_NVDLA_CMAC_reg.scala 92:34:@178.4]
  assign NV_NVDLA_CMAC_REG_dual_1_io_reg_wr_en = _T_139 & _T_67; // @[NV_NVDLA_CMAC_reg.scala 93:32:@179.4]
  assign NV_NVDLA_CMAC_REG_dual_1_io_op_en = _T_55; // @[NV_NVDLA_CMAC_reg.scala 95:28:@180.4]
  assign NV_NVDLA_CSB_LOGIC_reset = reset; // @[:@269.4]
  assign NV_NVDLA_CSB_LOGIC_io_clk = io_nvdla_core_clk; // @[NV_NVDLA_CMAC_reg.scala 165:22:@270.4]
  assign NV_NVDLA_CSB_LOGIC_io_csb2dp_req_valid = io_csb2cmac_a_req_valid; // @[NV_NVDLA_CMAC_reg.scala 166:25:@274.4]
  assign NV_NVDLA_CSB_LOGIC_io_csb2dp_req_bits = io_csb2cmac_a_req_bits; // @[NV_NVDLA_CMAC_reg.scala 166:25:@273.4]
  assign NV_NVDLA_CSB_LOGIC_io_reg_rd_data = _T_153 | _T_158; // @[NV_NVDLA_CMAC_reg.scala 170:30:@279.4]
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
  _T_35 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_50 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_55 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_77 = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_109 = _RAND_4[18:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_111 = _RAND_5[18:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_113 = _RAND_6[18:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_35 <= 1'h0;
    end else begin
      if (io_dp2reg_done) begin
        _T_35 <= _T_56;
      end
    end
    if (reset) begin
      _T_50 <= 1'h0;
    end else begin
      if (_T_79) begin
        _T_50 <= _T_80;
      end else begin
        if (_T_83) begin
          _T_50 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_55 <= 1'h0;
    end else begin
      if (_T_88) begin
        _T_55 <= _T_80;
      end else begin
        if (_T_92) begin
          _T_55 <= 1'h0;
        end
      end
    end
    if (reset) begin
      _T_77 <= 3'h0;
    end else begin
      if (io_dp2reg_done) begin
        _T_77 <= 3'h0;
      end else begin
        _T_77 <= _T_99;
      end
    end
    if (reset) begin
      _T_109 <= 19'h0;
    end else begin
      _T_109 <= _GEN_1;
    end
    if (reset) begin
      _T_111 <= 19'h0;
    end else begin
      _T_111 <= _T_109;
    end
    if (reset) begin
      _T_113 <= 19'h0;
    end else begin
      _T_113 <= _T_111;
    end
  end
endmodule
