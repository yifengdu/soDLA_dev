module NV_soDLA_CACC_calculator_bc_gate( // @[:@3.2]
  input           clock, // @[:@4.4]
  input           reset, // @[:@5.4]
  input           io_nvdla_core_clk, // @[:@6.4]
  input           io_nvdla_core_rstn, // @[:@6.4]
  input           io_calc_wr_en, // @[:@6.4]
  input  [5:0]    io_calc_addr, // @[:@6.4]
  input           io_calc_pout_vld_0, // @[:@6.4]
  input           io_calc_pout_vld_1, // @[:@6.4]
  input           io_calc_pout_vld_2, // @[:@6.4]
  input           io_calc_pout_vld_3, // @[:@6.4]
  input           io_calc_pout_vld_4, // @[:@6.4]
  input           io_calc_pout_vld_5, // @[:@6.4]
  input           io_calc_pout_vld_6, // @[:@6.4]
  input           io_calc_pout_vld_7, // @[:@6.4]
  input           io_calc_pout_vld_8, // @[:@6.4]
  input           io_calc_pout_vld_9, // @[:@6.4]
  input           io_calc_pout_vld_10, // @[:@6.4]
  input           io_calc_pout_vld_11, // @[:@6.4]
  input           io_calc_pout_vld_12, // @[:@6.4]
  input           io_calc_pout_vld_13, // @[:@6.4]
  input           io_calc_pout_vld_14, // @[:@6.4]
  input           io_calc_pout_vld_15, // @[:@6.4]
  input           io_calc_pout_vld_16, // @[:@6.4]
  input           io_calc_pout_vld_17, // @[:@6.4]
  input           io_calc_pout_vld_18, // @[:@6.4]
  input           io_calc_pout_vld_19, // @[:@6.4]
  input           io_calc_pout_vld_20, // @[:@6.4]
  input           io_calc_pout_vld_21, // @[:@6.4]
  input           io_calc_pout_vld_22, // @[:@6.4]
  input           io_calc_pout_vld_23, // @[:@6.4]
  input           io_calc_pout_vld_24, // @[:@6.4]
  input           io_calc_pout_vld_25, // @[:@6.4]
  input           io_calc_pout_vld_26, // @[:@6.4]
  input           io_calc_pout_vld_27, // @[:@6.4]
  input           io_calc_pout_vld_28, // @[:@6.4]
  input           io_calc_pout_vld_29, // @[:@6.4]
  input           io_calc_pout_vld_30, // @[:@6.4]
  input           io_calc_pout_vld_31, // @[:@6.4]
  input           io_calc_fout_vld_0, // @[:@6.4]
  input           io_calc_fout_vld_1, // @[:@6.4]
  input           io_calc_fout_vld_2, // @[:@6.4]
  input           io_calc_fout_vld_3, // @[:@6.4]
  input           io_calc_fout_vld_4, // @[:@6.4]
  input           io_calc_fout_vld_5, // @[:@6.4]
  input           io_calc_fout_vld_6, // @[:@6.4]
  input           io_calc_fout_vld_7, // @[:@6.4]
  input           io_calc_fout_vld_8, // @[:@6.4]
  input           io_calc_fout_vld_9, // @[:@6.4]
  input           io_calc_fout_vld_10, // @[:@6.4]
  input           io_calc_fout_vld_11, // @[:@6.4]
  input           io_calc_fout_vld_12, // @[:@6.4]
  input           io_calc_fout_vld_13, // @[:@6.4]
  input           io_calc_fout_vld_14, // @[:@6.4]
  input           io_calc_fout_vld_15, // @[:@6.4]
  input           io_calc_fout_vld_16, // @[:@6.4]
  input           io_calc_fout_vld_17, // @[:@6.4]
  input           io_calc_fout_vld_18, // @[:@6.4]
  input           io_calc_fout_vld_19, // @[:@6.4]
  input           io_calc_fout_vld_20, // @[:@6.4]
  input           io_calc_fout_vld_21, // @[:@6.4]
  input           io_calc_fout_vld_22, // @[:@6.4]
  input           io_calc_fout_vld_23, // @[:@6.4]
  input           io_calc_fout_vld_24, // @[:@6.4]
  input           io_calc_fout_vld_25, // @[:@6.4]
  input           io_calc_fout_vld_26, // @[:@6.4]
  input           io_calc_fout_vld_27, // @[:@6.4]
  input           io_calc_fout_vld_28, // @[:@6.4]
  input           io_calc_fout_vld_29, // @[:@6.4]
  input           io_calc_fout_vld_30, // @[:@6.4]
  input           io_calc_fout_vld_31, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_0, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_1, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_2, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_3, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_4, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_5, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_6, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_7, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_8, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_9, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_10, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_11, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_12, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_13, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_14, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_15, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_16, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_17, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_18, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_19, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_20, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_21, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_22, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_23, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_24, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_25, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_26, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_27, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_28, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_29, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_30, // @[:@6.4]
  input  [33:0]   io_calc_pout_sum_31, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_0, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_1, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_2, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_3, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_4, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_5, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_6, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_7, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_8, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_9, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_10, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_11, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_12, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_13, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_14, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_15, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_16, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_17, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_18, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_19, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_20, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_21, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_22, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_23, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_24, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_25, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_26, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_27, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_28, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_29, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_30, // @[:@6.4]
  input  [31:0]   io_calc_fout_sum_31, // @[:@6.4]
  output          io_abuf_wr_addr_valid, // @[:@6.4]
  output [5:0]    io_abuf_wr_addr_bits, // @[:@6.4]
  output [1087:0] io_abuf_wr_data, // @[:@6.4]
  input           io_calc_dlv_valid, // @[:@6.4]
  input           io_calc_stripe_end, // @[:@6.4]
  input           io_calc_layer_end, // @[:@6.4]
  output          io_dlv_valid, // @[:@6.4]
  output          io_dlv_mask, // @[:@6.4]
  output [1023:0] io_dlv_data, // @[:@6.4]
  output [1:0]    io_dlv_pd // @[:@6.4]
);
  wire  _T_330; // @[NV_soDLA_CACC_calculator_bc_gate.scala 55:38:@8.4]
  wire [33:0] _T_372; // @[Bitwise.scala 72:12:@11.4]
  wire [33:0] _T_373; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@12.4]
  wire [33:0] _T_377; // @[Bitwise.scala 72:12:@15.4]
  wire [33:0] _T_378; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@16.4]
  wire [33:0] _T_382; // @[Bitwise.scala 72:12:@19.4]
  wire [33:0] _T_383; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@20.4]
  wire [33:0] _T_387; // @[Bitwise.scala 72:12:@23.4]
  wire [33:0] _T_388; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@24.4]
  wire [33:0] _T_392; // @[Bitwise.scala 72:12:@27.4]
  wire [33:0] _T_393; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@28.4]
  wire [33:0] _T_397; // @[Bitwise.scala 72:12:@31.4]
  wire [33:0] _T_398; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@32.4]
  wire [33:0] _T_402; // @[Bitwise.scala 72:12:@35.4]
  wire [33:0] _T_403; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@36.4]
  wire [33:0] _T_407; // @[Bitwise.scala 72:12:@39.4]
  wire [33:0] _T_408; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@40.4]
  wire [33:0] _T_412; // @[Bitwise.scala 72:12:@43.4]
  wire [33:0] _T_413; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@44.4]
  wire [33:0] _T_417; // @[Bitwise.scala 72:12:@47.4]
  wire [33:0] _T_418; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@48.4]
  wire [33:0] _T_422; // @[Bitwise.scala 72:12:@51.4]
  wire [33:0] _T_423; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@52.4]
  wire [33:0] _T_427; // @[Bitwise.scala 72:12:@55.4]
  wire [33:0] _T_428; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@56.4]
  wire [33:0] _T_432; // @[Bitwise.scala 72:12:@59.4]
  wire [33:0] _T_433; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@60.4]
  wire [33:0] _T_437; // @[Bitwise.scala 72:12:@63.4]
  wire [33:0] _T_438; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@64.4]
  wire [33:0] _T_442; // @[Bitwise.scala 72:12:@67.4]
  wire [33:0] _T_443; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@68.4]
  wire [33:0] _T_447; // @[Bitwise.scala 72:12:@71.4]
  wire [33:0] _T_448; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@72.4]
  wire [33:0] _T_452; // @[Bitwise.scala 72:12:@75.4]
  wire [33:0] _T_453; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@76.4]
  wire [33:0] _T_457; // @[Bitwise.scala 72:12:@79.4]
  wire [33:0] _T_458; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@80.4]
  wire [33:0] _T_462; // @[Bitwise.scala 72:12:@83.4]
  wire [33:0] _T_463; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@84.4]
  wire [33:0] _T_467; // @[Bitwise.scala 72:12:@87.4]
  wire [33:0] _T_468; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@88.4]
  wire [33:0] _T_472; // @[Bitwise.scala 72:12:@91.4]
  wire [33:0] _T_473; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@92.4]
  wire [33:0] _T_477; // @[Bitwise.scala 72:12:@95.4]
  wire [33:0] _T_478; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@96.4]
  wire [33:0] _T_482; // @[Bitwise.scala 72:12:@99.4]
  wire [33:0] _T_483; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@100.4]
  wire [33:0] _T_487; // @[Bitwise.scala 72:12:@103.4]
  wire [33:0] _T_488; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@104.4]
  wire [33:0] _T_492; // @[Bitwise.scala 72:12:@107.4]
  wire [33:0] _T_493; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@108.4]
  wire [33:0] _T_497; // @[Bitwise.scala 72:12:@111.4]
  wire [33:0] _T_498; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@112.4]
  wire [33:0] _T_502; // @[Bitwise.scala 72:12:@115.4]
  wire [33:0] _T_503; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@116.4]
  wire [33:0] _T_507; // @[Bitwise.scala 72:12:@119.4]
  wire [33:0] _T_508; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@120.4]
  wire [33:0] _T_512; // @[Bitwise.scala 72:12:@123.4]
  wire [33:0] _T_513; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@124.4]
  wire [33:0] _T_517; // @[Bitwise.scala 72:12:@127.4]
  wire [33:0] _T_518; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@128.4]
  wire [33:0] _T_522; // @[Bitwise.scala 72:12:@131.4]
  wire [33:0] _T_523; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@132.4]
  wire [33:0] _T_527; // @[Bitwise.scala 72:12:@135.4]
  wire [33:0] _T_528; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@136.4]
  wire [31:0] _T_570; // @[Bitwise.scala 72:12:@140.4]
  wire [31:0] _T_571; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@141.4]
  wire [31:0] _T_575; // @[Bitwise.scala 72:12:@144.4]
  wire [31:0] _T_576; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@145.4]
  wire [31:0] _T_580; // @[Bitwise.scala 72:12:@148.4]
  wire [31:0] _T_581; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@149.4]
  wire [31:0] _T_585; // @[Bitwise.scala 72:12:@152.4]
  wire [31:0] _T_586; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@153.4]
  wire [31:0] _T_590; // @[Bitwise.scala 72:12:@156.4]
  wire [31:0] _T_591; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@157.4]
  wire [31:0] _T_595; // @[Bitwise.scala 72:12:@160.4]
  wire [31:0] _T_596; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@161.4]
  wire [31:0] _T_600; // @[Bitwise.scala 72:12:@164.4]
  wire [31:0] _T_601; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@165.4]
  wire [31:0] _T_605; // @[Bitwise.scala 72:12:@168.4]
  wire [31:0] _T_606; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@169.4]
  wire [31:0] _T_610; // @[Bitwise.scala 72:12:@172.4]
  wire [31:0] _T_611; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@173.4]
  wire [31:0] _T_615; // @[Bitwise.scala 72:12:@176.4]
  wire [31:0] _T_616; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@177.4]
  wire [31:0] _T_620; // @[Bitwise.scala 72:12:@180.4]
  wire [31:0] _T_621; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@181.4]
  wire [31:0] _T_625; // @[Bitwise.scala 72:12:@184.4]
  wire [31:0] _T_626; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@185.4]
  wire [31:0] _T_630; // @[Bitwise.scala 72:12:@188.4]
  wire [31:0] _T_631; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@189.4]
  wire [31:0] _T_635; // @[Bitwise.scala 72:12:@192.4]
  wire [31:0] _T_636; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@193.4]
  wire [31:0] _T_640; // @[Bitwise.scala 72:12:@196.4]
  wire [31:0] _T_641; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@197.4]
  wire [31:0] _T_645; // @[Bitwise.scala 72:12:@200.4]
  wire [31:0] _T_646; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@201.4]
  wire [31:0] _T_650; // @[Bitwise.scala 72:12:@204.4]
  wire [31:0] _T_651; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@205.4]
  wire [31:0] _T_655; // @[Bitwise.scala 72:12:@208.4]
  wire [31:0] _T_656; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@209.4]
  wire [31:0] _T_660; // @[Bitwise.scala 72:12:@212.4]
  wire [31:0] _T_661; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@213.4]
  wire [31:0] _T_665; // @[Bitwise.scala 72:12:@216.4]
  wire [31:0] _T_666; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@217.4]
  wire [31:0] _T_670; // @[Bitwise.scala 72:12:@220.4]
  wire [31:0] _T_671; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@221.4]
  wire [31:0] _T_675; // @[Bitwise.scala 72:12:@224.4]
  wire [31:0] _T_676; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@225.4]
  wire [31:0] _T_680; // @[Bitwise.scala 72:12:@228.4]
  wire [31:0] _T_681; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@229.4]
  wire [31:0] _T_685; // @[Bitwise.scala 72:12:@232.4]
  wire [31:0] _T_686; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@233.4]
  wire [31:0] _T_690; // @[Bitwise.scala 72:12:@236.4]
  wire [31:0] _T_691; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@237.4]
  wire [31:0] _T_695; // @[Bitwise.scala 72:12:@240.4]
  wire [31:0] _T_696; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@241.4]
  wire [31:0] _T_700; // @[Bitwise.scala 72:12:@244.4]
  wire [31:0] _T_701; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@245.4]
  wire [31:0] _T_705; // @[Bitwise.scala 72:12:@248.4]
  wire [31:0] _T_706; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@249.4]
  wire [31:0] _T_710; // @[Bitwise.scala 72:12:@252.4]
  wire [31:0] _T_711; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@253.4]
  wire [31:0] _T_715; // @[Bitwise.scala 72:12:@256.4]
  wire [31:0] _T_716; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@257.4]
  wire [31:0] _T_720; // @[Bitwise.scala 72:12:@260.4]
  wire [31:0] _T_721; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@261.4]
  wire [31:0] _T_725; // @[Bitwise.scala 72:12:@264.4]
  wire [31:0] _T_726; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@265.4]
  reg  _T_729; // @[NV_soDLA_CACC_calculator_bc_gate.scala 67:37:@267.4]
  reg [31:0] _RAND_0;
  reg [5:0] _T_732; // @[Reg.scala 19:20:@270.4]
  reg [31:0] _RAND_1;
  wire [5:0] _GEN_0; // @[Reg.scala 20:19:@271.4]
  wire [271:0] _T_739; // @[NV_soDLA_CACC_calculator_bc_gate.scala 69:44:@281.4]
  wire [543:0] _T_747; // @[NV_soDLA_CACC_calculator_bc_gate.scala 69:44:@289.4]
  wire [271:0] _T_754; // @[NV_soDLA_CACC_calculator_bc_gate.scala 69:44:@296.4]
  wire [1087:0] _T_763; // @[NV_soDLA_CACC_calculator_bc_gate.scala 69:44:@305.4]
  reg [1087:0] _T_765; // @[Reg.scala 11:16:@306.4]
  reg [1087:0] _RAND_2;
  wire [255:0] _T_772; // @[NV_soDLA_CACC_calculator_bc_gate.scala 72:40:@317.4]
  wire [511:0] _T_780; // @[NV_soDLA_CACC_calculator_bc_gate.scala 72:40:@325.4]
  wire [255:0] _T_787; // @[NV_soDLA_CACC_calculator_bc_gate.scala 72:40:@332.4]
  wire [1023:0] _T_796; // @[NV_soDLA_CACC_calculator_bc_gate.scala 72:40:@341.4]
  reg [1023:0] _T_798; // @[Reg.scala 11:16:@342.4]
  reg [1023:0] _RAND_3;
  reg  _T_801; // @[NV_soDLA_CACC_calculator_bc_gate.scala 73:28:@347.4]
  reg [31:0] _RAND_4;
  reg  _T_804; // @[NV_soDLA_CACC_calculator_bc_gate.scala 74:27:@350.4]
  reg [31:0] _RAND_5;
  reg  _T_807; // @[Reg.scala 19:20:@353.4]
  reg [31:0] _RAND_6;
  wire  _GEN_3; // @[Reg.scala 20:19:@354.4]
  reg  _T_810; // @[Reg.scala 19:20:@357.4]
  reg [31:0] _RAND_7;
  wire  _GEN_4; // @[Reg.scala 20:19:@358.4]
  assign _T_330 = io_nvdla_core_rstn == 1'h0; // @[NV_soDLA_CACC_calculator_bc_gate.scala 55:38:@8.4]
  assign _T_372 = io_calc_pout_vld_0 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@11.4]
  assign _T_373 = _T_372 & io_calc_pout_sum_0; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@12.4]
  assign _T_377 = io_calc_pout_vld_1 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@15.4]
  assign _T_378 = _T_377 & io_calc_pout_sum_1; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@16.4]
  assign _T_382 = io_calc_pout_vld_2 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@19.4]
  assign _T_383 = _T_382 & io_calc_pout_sum_2; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@20.4]
  assign _T_387 = io_calc_pout_vld_3 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@23.4]
  assign _T_388 = _T_387 & io_calc_pout_sum_3; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@24.4]
  assign _T_392 = io_calc_pout_vld_4 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@27.4]
  assign _T_393 = _T_392 & io_calc_pout_sum_4; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@28.4]
  assign _T_397 = io_calc_pout_vld_5 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@31.4]
  assign _T_398 = _T_397 & io_calc_pout_sum_5; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@32.4]
  assign _T_402 = io_calc_pout_vld_6 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@35.4]
  assign _T_403 = _T_402 & io_calc_pout_sum_6; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@36.4]
  assign _T_407 = io_calc_pout_vld_7 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@39.4]
  assign _T_408 = _T_407 & io_calc_pout_sum_7; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@40.4]
  assign _T_412 = io_calc_pout_vld_8 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@43.4]
  assign _T_413 = _T_412 & io_calc_pout_sum_8; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@44.4]
  assign _T_417 = io_calc_pout_vld_9 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@47.4]
  assign _T_418 = _T_417 & io_calc_pout_sum_9; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@48.4]
  assign _T_422 = io_calc_pout_vld_10 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@51.4]
  assign _T_423 = _T_422 & io_calc_pout_sum_10; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@52.4]
  assign _T_427 = io_calc_pout_vld_11 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@55.4]
  assign _T_428 = _T_427 & io_calc_pout_sum_11; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@56.4]
  assign _T_432 = io_calc_pout_vld_12 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@59.4]
  assign _T_433 = _T_432 & io_calc_pout_sum_12; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@60.4]
  assign _T_437 = io_calc_pout_vld_13 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@63.4]
  assign _T_438 = _T_437 & io_calc_pout_sum_13; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@64.4]
  assign _T_442 = io_calc_pout_vld_14 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@67.4]
  assign _T_443 = _T_442 & io_calc_pout_sum_14; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@68.4]
  assign _T_447 = io_calc_pout_vld_15 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@71.4]
  assign _T_448 = _T_447 & io_calc_pout_sum_15; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@72.4]
  assign _T_452 = io_calc_pout_vld_16 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@75.4]
  assign _T_453 = _T_452 & io_calc_pout_sum_16; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@76.4]
  assign _T_457 = io_calc_pout_vld_17 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@79.4]
  assign _T_458 = _T_457 & io_calc_pout_sum_17; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@80.4]
  assign _T_462 = io_calc_pout_vld_18 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@83.4]
  assign _T_463 = _T_462 & io_calc_pout_sum_18; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@84.4]
  assign _T_467 = io_calc_pout_vld_19 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@87.4]
  assign _T_468 = _T_467 & io_calc_pout_sum_19; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@88.4]
  assign _T_472 = io_calc_pout_vld_20 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@91.4]
  assign _T_473 = _T_472 & io_calc_pout_sum_20; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@92.4]
  assign _T_477 = io_calc_pout_vld_21 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@95.4]
  assign _T_478 = _T_477 & io_calc_pout_sum_21; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@96.4]
  assign _T_482 = io_calc_pout_vld_22 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@99.4]
  assign _T_483 = _T_482 & io_calc_pout_sum_22; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@100.4]
  assign _T_487 = io_calc_pout_vld_23 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@103.4]
  assign _T_488 = _T_487 & io_calc_pout_sum_23; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@104.4]
  assign _T_492 = io_calc_pout_vld_24 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@107.4]
  assign _T_493 = _T_492 & io_calc_pout_sum_24; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@108.4]
  assign _T_497 = io_calc_pout_vld_25 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@111.4]
  assign _T_498 = _T_497 & io_calc_pout_sum_25; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@112.4]
  assign _T_502 = io_calc_pout_vld_26 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@115.4]
  assign _T_503 = _T_502 & io_calc_pout_sum_26; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@116.4]
  assign _T_507 = io_calc_pout_vld_27 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@119.4]
  assign _T_508 = _T_507 & io_calc_pout_sum_27; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@120.4]
  assign _T_512 = io_calc_pout_vld_28 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@123.4]
  assign _T_513 = _T_512 & io_calc_pout_sum_28; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@124.4]
  assign _T_517 = io_calc_pout_vld_29 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@127.4]
  assign _T_518 = _T_517 & io_calc_pout_sum_29; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@128.4]
  assign _T_522 = io_calc_pout_vld_30 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@131.4]
  assign _T_523 = _T_522 & io_calc_pout_sum_30; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@132.4]
  assign _T_527 = io_calc_pout_vld_31 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@135.4]
  assign _T_528 = _T_527 & io_calc_pout_sum_31; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@136.4]
  assign _T_570 = io_calc_fout_vld_0 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@140.4]
  assign _T_571 = _T_570 & io_calc_fout_sum_0; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@141.4]
  assign _T_575 = io_calc_fout_vld_1 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@144.4]
  assign _T_576 = _T_575 & io_calc_fout_sum_1; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@145.4]
  assign _T_580 = io_calc_fout_vld_2 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@148.4]
  assign _T_581 = _T_580 & io_calc_fout_sum_2; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@149.4]
  assign _T_585 = io_calc_fout_vld_3 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@152.4]
  assign _T_586 = _T_585 & io_calc_fout_sum_3; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@153.4]
  assign _T_590 = io_calc_fout_vld_4 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@156.4]
  assign _T_591 = _T_590 & io_calc_fout_sum_4; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@157.4]
  assign _T_595 = io_calc_fout_vld_5 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@160.4]
  assign _T_596 = _T_595 & io_calc_fout_sum_5; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@161.4]
  assign _T_600 = io_calc_fout_vld_6 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@164.4]
  assign _T_601 = _T_600 & io_calc_fout_sum_6; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@165.4]
  assign _T_605 = io_calc_fout_vld_7 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@168.4]
  assign _T_606 = _T_605 & io_calc_fout_sum_7; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@169.4]
  assign _T_610 = io_calc_fout_vld_8 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@172.4]
  assign _T_611 = _T_610 & io_calc_fout_sum_8; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@173.4]
  assign _T_615 = io_calc_fout_vld_9 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@176.4]
  assign _T_616 = _T_615 & io_calc_fout_sum_9; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@177.4]
  assign _T_620 = io_calc_fout_vld_10 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@180.4]
  assign _T_621 = _T_620 & io_calc_fout_sum_10; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@181.4]
  assign _T_625 = io_calc_fout_vld_11 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@184.4]
  assign _T_626 = _T_625 & io_calc_fout_sum_11; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@185.4]
  assign _T_630 = io_calc_fout_vld_12 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@188.4]
  assign _T_631 = _T_630 & io_calc_fout_sum_12; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@189.4]
  assign _T_635 = io_calc_fout_vld_13 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@192.4]
  assign _T_636 = _T_635 & io_calc_fout_sum_13; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@193.4]
  assign _T_640 = io_calc_fout_vld_14 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@196.4]
  assign _T_641 = _T_640 & io_calc_fout_sum_14; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@197.4]
  assign _T_645 = io_calc_fout_vld_15 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@200.4]
  assign _T_646 = _T_645 & io_calc_fout_sum_15; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@201.4]
  assign _T_650 = io_calc_fout_vld_16 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@204.4]
  assign _T_651 = _T_650 & io_calc_fout_sum_16; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@205.4]
  assign _T_655 = io_calc_fout_vld_17 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@208.4]
  assign _T_656 = _T_655 & io_calc_fout_sum_17; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@209.4]
  assign _T_660 = io_calc_fout_vld_18 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@212.4]
  assign _T_661 = _T_660 & io_calc_fout_sum_18; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@213.4]
  assign _T_665 = io_calc_fout_vld_19 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@216.4]
  assign _T_666 = _T_665 & io_calc_fout_sum_19; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@217.4]
  assign _T_670 = io_calc_fout_vld_20 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@220.4]
  assign _T_671 = _T_670 & io_calc_fout_sum_20; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@221.4]
  assign _T_675 = io_calc_fout_vld_21 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@224.4]
  assign _T_676 = _T_675 & io_calc_fout_sum_21; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@225.4]
  assign _T_680 = io_calc_fout_vld_22 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@228.4]
  assign _T_681 = _T_680 & io_calc_fout_sum_22; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@229.4]
  assign _T_685 = io_calc_fout_vld_23 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@232.4]
  assign _T_686 = _T_685 & io_calc_fout_sum_23; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@233.4]
  assign _T_690 = io_calc_fout_vld_24 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@236.4]
  assign _T_691 = _T_690 & io_calc_fout_sum_24; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@237.4]
  assign _T_695 = io_calc_fout_vld_25 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@240.4]
  assign _T_696 = _T_695 & io_calc_fout_sum_25; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@241.4]
  assign _T_700 = io_calc_fout_vld_26 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@244.4]
  assign _T_701 = _T_700 & io_calc_fout_sum_26; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@245.4]
  assign _T_705 = io_calc_fout_vld_27 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@248.4]
  assign _T_706 = _T_705 & io_calc_fout_sum_27; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@249.4]
  assign _T_710 = io_calc_fout_vld_28 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@252.4]
  assign _T_711 = _T_710 & io_calc_fout_sum_28; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@253.4]
  assign _T_715 = io_calc_fout_vld_29 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@256.4]
  assign _T_716 = _T_715 & io_calc_fout_sum_29; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@257.4]
  assign _T_720 = io_calc_fout_vld_30 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@260.4]
  assign _T_721 = _T_720 & io_calc_fout_sum_30; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@261.4]
  assign _T_725 = io_calc_fout_vld_31 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@264.4]
  assign _T_726 = _T_725 & io_calc_fout_sum_31; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@265.4]
  assign _GEN_0 = io_calc_wr_en ? io_calc_addr : _T_732; // @[Reg.scala 20:19:@271.4]
  assign _T_739 = {_T_408,_T_403,_T_398,_T_393,_T_388,_T_383,_T_378,_T_373}; // @[NV_soDLA_CACC_calculator_bc_gate.scala 69:44:@281.4]
  assign _T_747 = {_T_448,_T_443,_T_438,_T_433,_T_428,_T_423,_T_418,_T_413,_T_739}; // @[NV_soDLA_CACC_calculator_bc_gate.scala 69:44:@289.4]
  assign _T_754 = {_T_488,_T_483,_T_478,_T_473,_T_468,_T_463,_T_458,_T_453}; // @[NV_soDLA_CACC_calculator_bc_gate.scala 69:44:@296.4]
  assign _T_763 = {_T_528,_T_523,_T_518,_T_513,_T_508,_T_503,_T_498,_T_493,_T_754,_T_747}; // @[NV_soDLA_CACC_calculator_bc_gate.scala 69:44:@305.4]
  assign _T_772 = {_T_606,_T_601,_T_596,_T_591,_T_586,_T_581,_T_576,_T_571}; // @[NV_soDLA_CACC_calculator_bc_gate.scala 72:40:@317.4]
  assign _T_780 = {_T_646,_T_641,_T_636,_T_631,_T_626,_T_621,_T_616,_T_611,_T_772}; // @[NV_soDLA_CACC_calculator_bc_gate.scala 72:40:@325.4]
  assign _T_787 = {_T_686,_T_681,_T_676,_T_671,_T_666,_T_661,_T_656,_T_651}; // @[NV_soDLA_CACC_calculator_bc_gate.scala 72:40:@332.4]
  assign _T_796 = {_T_726,_T_721,_T_716,_T_711,_T_706,_T_701,_T_696,_T_691,_T_787,_T_780}; // @[NV_soDLA_CACC_calculator_bc_gate.scala 72:40:@341.4]
  assign _GEN_3 = io_calc_dlv_valid ? io_calc_stripe_end : _T_807; // @[Reg.scala 20:19:@354.4]
  assign _GEN_4 = io_calc_dlv_valid ? io_calc_layer_end : _T_810; // @[Reg.scala 20:19:@358.4]
  assign io_abuf_wr_addr_valid = _T_729; // @[NV_soDLA_CACC_calculator_bc_gate.scala 67:27:@269.4]
  assign io_abuf_wr_addr_bits = _T_732; // @[NV_soDLA_CACC_calculator_bc_gate.scala 68:26:@274.4]
  assign io_abuf_wr_data = _T_765; // @[NV_soDLA_CACC_calculator_bc_gate.scala 69:21:@310.4]
  assign io_dlv_valid = _T_801; // @[NV_soDLA_CACC_calculator_bc_gate.scala 73:18:@349.4]
  assign io_dlv_mask = _T_804; // @[NV_soDLA_CACC_calculator_bc_gate.scala 74:17:@352.4]
  assign io_dlv_data = _T_798; // @[NV_soDLA_CACC_calculator_bc_gate.scala 72:17:@346.4]
  assign io_dlv_pd = {_T_810,_T_807}; // @[NV_soDLA_CACC_calculator_bc_gate.scala 77:15:@362.4]
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
  _T_729 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_732 = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {34{`RANDOM}};
  _T_765 = _RAND_2[1087:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {32{`RANDOM}};
  _T_798 = _RAND_3[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_801 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_804 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_807 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_810 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge io_nvdla_core_clk) begin
    if (_T_330) begin
      _T_729 <= 1'h0;
    end else begin
      _T_729 <= io_calc_wr_en;
    end
    if (_T_330) begin
      _T_732 <= 6'h0;
    end else begin
      if (io_calc_wr_en) begin
        _T_732 <= io_calc_addr;
      end
    end
    if (io_calc_wr_en) begin
      _T_765 <= _T_763;
    end
    if (io_calc_dlv_valid) begin
      _T_798 <= _T_796;
    end
    if (_T_330) begin
      _T_801 <= 1'h0;
    end else begin
      _T_801 <= io_calc_dlv_valid;
    end
    if (_T_330) begin
      _T_804 <= 1'h0;
    end else begin
      _T_804 <= io_calc_dlv_valid;
    end
    if (_T_330) begin
      _T_807 <= 1'h0;
    end else begin
      if (io_calc_dlv_valid) begin
        _T_807 <= io_calc_stripe_end;
      end
    end
    if (_T_330) begin
      _T_810 <= 1'h0;
    end else begin
      if (io_calc_dlv_valid) begin
        _T_810 <= io_calc_layer_end;
      end
    end
  end
endmodule
