module NV_soDLA_CACC_calculator_bc_gate( // @[:@3.2]
  input           nvdla_core_clk, // @[:@6.4]
  input           nvdla_core_rstn, // @[:@6.4]
  input           calc_wr_en, // @[:@6.4]
  input  [5:0]    calc_addr, // @[:@6.4]
  input           calc_pout_vld_0, // @[:@6.4]
  input           calc_pout_vld_1, // @[:@6.4]
  input           calc_pout_vld_2, // @[:@6.4]
  input           calc_pout_vld_3, // @[:@6.4]
  input           calc_pout_vld_4, // @[:@6.4]
  input           calc_pout_vld_5, // @[:@6.4]
  input           calc_pout_vld_6, // @[:@6.4]
  input           calc_pout_vld_7, // @[:@6.4]
  input           calc_pout_vld_8, // @[:@6.4]
  input           calc_pout_vld_9, // @[:@6.4]
  input           calc_pout_vld_10, // @[:@6.4]
  input           calc_pout_vld_11, // @[:@6.4]
  input           calc_pout_vld_12, // @[:@6.4]
  input           calc_pout_vld_13, // @[:@6.4]
  input           calc_pout_vld_14, // @[:@6.4]
  input           calc_pout_vld_15, // @[:@6.4]
  input           calc_pout_vld_16, // @[:@6.4]
  input           calc_pout_vld_17, // @[:@6.4]
  input           calc_pout_vld_18, // @[:@6.4]
  input           calc_pout_vld_19, // @[:@6.4]
  input           calc_pout_vld_20, // @[:@6.4]
  input           calc_pout_vld_21, // @[:@6.4]
  input           calc_pout_vld_22, // @[:@6.4]
  input           calc_pout_vld_23, // @[:@6.4]
  input           calc_pout_vld_24, // @[:@6.4]
  input           calc_pout_vld_25, // @[:@6.4]
  input           calc_pout_vld_26, // @[:@6.4]
  input           calc_pout_vld_27, // @[:@6.4]
  input           calc_pout_vld_28, // @[:@6.4]
  input           calc_pout_vld_29, // @[:@6.4]
  input           calc_pout_vld_30, // @[:@6.4]
  input           calc_pout_vld_31, // @[:@6.4]
  input           calc_fout_vld_0, // @[:@6.4]
  input           calc_fout_vld_1, // @[:@6.4]
  input           calc_fout_vld_2, // @[:@6.4]
  input           calc_fout_vld_3, // @[:@6.4]
  input           calc_fout_vld_4, // @[:@6.4]
  input           calc_fout_vld_5, // @[:@6.4]
  input           calc_fout_vld_6, // @[:@6.4]
  input           calc_fout_vld_7, // @[:@6.4]
  input           calc_fout_vld_8, // @[:@6.4]
  input           calc_fout_vld_9, // @[:@6.4]
  input           calc_fout_vld_10, // @[:@6.4]
  input           calc_fout_vld_11, // @[:@6.4]
  input           calc_fout_vld_12, // @[:@6.4]
  input           calc_fout_vld_13, // @[:@6.4]
  input           calc_fout_vld_14, // @[:@6.4]
  input           calc_fout_vld_15, // @[:@6.4]
  input           calc_fout_vld_16, // @[:@6.4]
  input           calc_fout_vld_17, // @[:@6.4]
  input           calc_fout_vld_18, // @[:@6.4]
  input           calc_fout_vld_19, // @[:@6.4]
  input           calc_fout_vld_20, // @[:@6.4]
  input           calc_fout_vld_21, // @[:@6.4]
  input           calc_fout_vld_22, // @[:@6.4]
  input           calc_fout_vld_23, // @[:@6.4]
  input           calc_fout_vld_24, // @[:@6.4]
  input           calc_fout_vld_25, // @[:@6.4]
  input           calc_fout_vld_26, // @[:@6.4]
  input           calc_fout_vld_27, // @[:@6.4]
  input           calc_fout_vld_28, // @[:@6.4]
  input           calc_fout_vld_29, // @[:@6.4]
  input           calc_fout_vld_30, // @[:@6.4]
  input           calc_fout_vld_31, // @[:@6.4]
  input  [33:0]   calc_pout_sum_0, // @[:@6.4]
  input  [33:0]   calc_pout_sum_1, // @[:@6.4]
  input  [33:0]   calc_pout_sum_2, // @[:@6.4]
  input  [33:0]   calc_pout_sum_3, // @[:@6.4]
  input  [33:0]   calc_pout_sum_4, // @[:@6.4]
  input  [33:0]   calc_pout_sum_5, // @[:@6.4]
  input  [33:0]   calc_pout_sum_6, // @[:@6.4]
  input  [33:0]   calc_pout_sum_7, // @[:@6.4]
  input  [33:0]   calc_pout_sum_8, // @[:@6.4]
  input  [33:0]   calc_pout_sum_9, // @[:@6.4]
  input  [33:0]   calc_pout_sum_10, // @[:@6.4]
  input  [33:0]   calc_pout_sum_11, // @[:@6.4]
  input  [33:0]   calc_pout_sum_12, // @[:@6.4]
  input  [33:0]   calc_pout_sum_13, // @[:@6.4]
  input  [33:0]   calc_pout_sum_14, // @[:@6.4]
  input  [33:0]   calc_pout_sum_15, // @[:@6.4]
  input  [33:0]   calc_pout_sum_16, // @[:@6.4]
  input  [33:0]   calc_pout_sum_17, // @[:@6.4]
  input  [33:0]   calc_pout_sum_18, // @[:@6.4]
  input  [33:0]   calc_pout_sum_19, // @[:@6.4]
  input  [33:0]   calc_pout_sum_20, // @[:@6.4]
  input  [33:0]   calc_pout_sum_21, // @[:@6.4]
  input  [33:0]   calc_pout_sum_22, // @[:@6.4]
  input  [33:0]   calc_pout_sum_23, // @[:@6.4]
  input  [33:0]   calc_pout_sum_24, // @[:@6.4]
  input  [33:0]   calc_pout_sum_25, // @[:@6.4]
  input  [33:0]   calc_pout_sum_26, // @[:@6.4]
  input  [33:0]   calc_pout_sum_27, // @[:@6.4]
  input  [33:0]   calc_pout_sum_28, // @[:@6.4]
  input  [33:0]   calc_pout_sum_29, // @[:@6.4]
  input  [33:0]   calc_pout_sum_30, // @[:@6.4]
  input  [33:0]   calc_pout_sum_31, // @[:@6.4]
  input  [31:0]   calc_fout_sum_0, // @[:@6.4]
  input  [31:0]   calc_fout_sum_1, // @[:@6.4]
  input  [31:0]   calc_fout_sum_2, // @[:@6.4]
  input  [31:0]   calc_fout_sum_3, // @[:@6.4]
  input  [31:0]   calc_fout_sum_4, // @[:@6.4]
  input  [31:0]   calc_fout_sum_5, // @[:@6.4]
  input  [31:0]   calc_fout_sum_6, // @[:@6.4]
  input  [31:0]   calc_fout_sum_7, // @[:@6.4]
  input  [31:0]   calc_fout_sum_8, // @[:@6.4]
  input  [31:0]   calc_fout_sum_9, // @[:@6.4]
  input  [31:0]   calc_fout_sum_10, // @[:@6.4]
  input  [31:0]   calc_fout_sum_11, // @[:@6.4]
  input  [31:0]   calc_fout_sum_12, // @[:@6.4]
  input  [31:0]   calc_fout_sum_13, // @[:@6.4]
  input  [31:0]   calc_fout_sum_14, // @[:@6.4]
  input  [31:0]   calc_fout_sum_15, // @[:@6.4]
  input  [31:0]   calc_fout_sum_16, // @[:@6.4]
  input  [31:0]   calc_fout_sum_17, // @[:@6.4]
  input  [31:0]   calc_fout_sum_18, // @[:@6.4]
  input  [31:0]   calc_fout_sum_19, // @[:@6.4]
  input  [31:0]   calc_fout_sum_20, // @[:@6.4]
  input  [31:0]   calc_fout_sum_21, // @[:@6.4]
  input  [31:0]   calc_fout_sum_22, // @[:@6.4]
  input  [31:0]   calc_fout_sum_23, // @[:@6.4]
  input  [31:0]   calc_fout_sum_24, // @[:@6.4]
  input  [31:0]   calc_fout_sum_25, // @[:@6.4]
  input  [31:0]   calc_fout_sum_26, // @[:@6.4]
  input  [31:0]   calc_fout_sum_27, // @[:@6.4]
  input  [31:0]   calc_fout_sum_28, // @[:@6.4]
  input  [31:0]   calc_fout_sum_29, // @[:@6.4]
  input  [31:0]   calc_fout_sum_30, // @[:@6.4]
  input  [31:0]   calc_fout_sum_31, // @[:@6.4]
  output          abuf_wr_en, // @[:@6.4]
  output [5:0]    abuf_wr_addr, // @[:@6.4]
  output [1087:0] abuf_wr_data, // @[:@6.4]
  input           calc_dlv_valid, // @[:@6.4]
  input           calc_stripe_end, // @[:@6.4]
  input           calc_layer_end, // @[:@6.4]
  output          dlv_valid, // @[:@6.4]
  output          dlv_mask, // @[:@6.4]
  output [1023:0] dlv_data, // @[:@6.4]
  output [1:0]    dlv_pd // @[:@6.4]
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
  assign _T_330 = nvdla_core_rstn == 1'h0; // @[NV_soDLA_CACC_calculator_bc_gate.scala 55:38:@8.4]
  assign _T_372 = calc_pout_vld_0 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@11.4]
  assign _T_373 = _T_372 & calc_pout_sum_0; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@12.4]
  assign _T_377 = calc_pout_vld_1 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@15.4]
  assign _T_378 = _T_377 & calc_pout_sum_1; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@16.4]
  assign _T_382 = calc_pout_vld_2 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@19.4]
  assign _T_383 = _T_382 & calc_pout_sum_2; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@20.4]
  assign _T_387 = calc_pout_vld_3 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@23.4]
  assign _T_388 = _T_387 & calc_pout_sum_3; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@24.4]
  assign _T_392 = calc_pout_vld_4 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@27.4]
  assign _T_393 = _T_392 & calc_pout_sum_4; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@28.4]
  assign _T_397 = calc_pout_vld_5 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@31.4]
  assign _T_398 = _T_397 & calc_pout_sum_5; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@32.4]
  assign _T_402 = calc_pout_vld_6 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@35.4]
  assign _T_403 = _T_402 & calc_pout_sum_6; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@36.4]
  assign _T_407 = calc_pout_vld_7 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@39.4]
  assign _T_408 = _T_407 & calc_pout_sum_7; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@40.4]
  assign _T_412 = calc_pout_vld_8 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@43.4]
  assign _T_413 = _T_412 & calc_pout_sum_8; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@44.4]
  assign _T_417 = calc_pout_vld_9 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@47.4]
  assign _T_418 = _T_417 & calc_pout_sum_9; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@48.4]
  assign _T_422 = calc_pout_vld_10 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@51.4]
  assign _T_423 = _T_422 & calc_pout_sum_10; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@52.4]
  assign _T_427 = calc_pout_vld_11 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@55.4]
  assign _T_428 = _T_427 & calc_pout_sum_11; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@56.4]
  assign _T_432 = calc_pout_vld_12 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@59.4]
  assign _T_433 = _T_432 & calc_pout_sum_12; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@60.4]
  assign _T_437 = calc_pout_vld_13 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@63.4]
  assign _T_438 = _T_437 & calc_pout_sum_13; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@64.4]
  assign _T_442 = calc_pout_vld_14 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@67.4]
  assign _T_443 = _T_442 & calc_pout_sum_14; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@68.4]
  assign _T_447 = calc_pout_vld_15 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@71.4]
  assign _T_448 = _T_447 & calc_pout_sum_15; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@72.4]
  assign _T_452 = calc_pout_vld_16 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@75.4]
  assign _T_453 = _T_452 & calc_pout_sum_16; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@76.4]
  assign _T_457 = calc_pout_vld_17 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@79.4]
  assign _T_458 = _T_457 & calc_pout_sum_17; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@80.4]
  assign _T_462 = calc_pout_vld_18 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@83.4]
  assign _T_463 = _T_462 & calc_pout_sum_18; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@84.4]
  assign _T_467 = calc_pout_vld_19 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@87.4]
  assign _T_468 = _T_467 & calc_pout_sum_19; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@88.4]
  assign _T_472 = calc_pout_vld_20 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@91.4]
  assign _T_473 = _T_472 & calc_pout_sum_20; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@92.4]
  assign _T_477 = calc_pout_vld_21 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@95.4]
  assign _T_478 = _T_477 & calc_pout_sum_21; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@96.4]
  assign _T_482 = calc_pout_vld_22 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@99.4]
  assign _T_483 = _T_482 & calc_pout_sum_22; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@100.4]
  assign _T_487 = calc_pout_vld_23 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@103.4]
  assign _T_488 = _T_487 & calc_pout_sum_23; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@104.4]
  assign _T_492 = calc_pout_vld_24 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@107.4]
  assign _T_493 = _T_492 & calc_pout_sum_24; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@108.4]
  assign _T_497 = calc_pout_vld_25 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@111.4]
  assign _T_498 = _T_497 & calc_pout_sum_25; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@112.4]
  assign _T_502 = calc_pout_vld_26 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@115.4]
  assign _T_503 = _T_502 & calc_pout_sum_26; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@116.4]
  assign _T_507 = calc_pout_vld_27 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@119.4]
  assign _T_508 = _T_507 & calc_pout_sum_27; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@120.4]
  assign _T_512 = calc_pout_vld_28 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@123.4]
  assign _T_513 = _T_512 & calc_pout_sum_28; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@124.4]
  assign _T_517 = calc_pout_vld_29 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@127.4]
  assign _T_518 = _T_517 & calc_pout_sum_29; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@128.4]
  assign _T_522 = calc_pout_vld_30 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@131.4]
  assign _T_523 = _T_522 & calc_pout_sum_30; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@132.4]
  assign _T_527 = calc_pout_vld_31 ? 34'h3ffffffff : 34'h0; // @[Bitwise.scala 72:12:@135.4]
  assign _T_528 = _T_527 & calc_pout_sum_31; // @[NV_soDLA_CACC_calculator_bc_gate.scala 58:75:@136.4]
  assign _T_570 = calc_fout_vld_0 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@140.4]
  assign _T_571 = _T_570 & calc_fout_sum_0; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@141.4]
  assign _T_575 = calc_fout_vld_1 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@144.4]
  assign _T_576 = _T_575 & calc_fout_sum_1; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@145.4]
  assign _T_580 = calc_fout_vld_2 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@148.4]
  assign _T_581 = _T_580 & calc_fout_sum_2; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@149.4]
  assign _T_585 = calc_fout_vld_3 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@152.4]
  assign _T_586 = _T_585 & calc_fout_sum_3; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@153.4]
  assign _T_590 = calc_fout_vld_4 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@156.4]
  assign _T_591 = _T_590 & calc_fout_sum_4; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@157.4]
  assign _T_595 = calc_fout_vld_5 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@160.4]
  assign _T_596 = _T_595 & calc_fout_sum_5; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@161.4]
  assign _T_600 = calc_fout_vld_6 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@164.4]
  assign _T_601 = _T_600 & calc_fout_sum_6; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@165.4]
  assign _T_605 = calc_fout_vld_7 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@168.4]
  assign _T_606 = _T_605 & calc_fout_sum_7; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@169.4]
  assign _T_610 = calc_fout_vld_8 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@172.4]
  assign _T_611 = _T_610 & calc_fout_sum_8; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@173.4]
  assign _T_615 = calc_fout_vld_9 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@176.4]
  assign _T_616 = _T_615 & calc_fout_sum_9; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@177.4]
  assign _T_620 = calc_fout_vld_10 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@180.4]
  assign _T_621 = _T_620 & calc_fout_sum_10; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@181.4]
  assign _T_625 = calc_fout_vld_11 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@184.4]
  assign _T_626 = _T_625 & calc_fout_sum_11; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@185.4]
  assign _T_630 = calc_fout_vld_12 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@188.4]
  assign _T_631 = _T_630 & calc_fout_sum_12; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@189.4]
  assign _T_635 = calc_fout_vld_13 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@192.4]
  assign _T_636 = _T_635 & calc_fout_sum_13; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@193.4]
  assign _T_640 = calc_fout_vld_14 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@196.4]
  assign _T_641 = _T_640 & calc_fout_sum_14; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@197.4]
  assign _T_645 = calc_fout_vld_15 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@200.4]
  assign _T_646 = _T_645 & calc_fout_sum_15; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@201.4]
  assign _T_650 = calc_fout_vld_16 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@204.4]
  assign _T_651 = _T_650 & calc_fout_sum_16; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@205.4]
  assign _T_655 = calc_fout_vld_17 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@208.4]
  assign _T_656 = _T_655 & calc_fout_sum_17; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@209.4]
  assign _T_660 = calc_fout_vld_18 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@212.4]
  assign _T_661 = _T_660 & calc_fout_sum_18; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@213.4]
  assign _T_665 = calc_fout_vld_19 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@216.4]
  assign _T_666 = _T_665 & calc_fout_sum_19; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@217.4]
  assign _T_670 = calc_fout_vld_20 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@220.4]
  assign _T_671 = _T_670 & calc_fout_sum_20; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@221.4]
  assign _T_675 = calc_fout_vld_21 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@224.4]
  assign _T_676 = _T_675 & calc_fout_sum_21; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@225.4]
  assign _T_680 = calc_fout_vld_22 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@228.4]
  assign _T_681 = _T_680 & calc_fout_sum_22; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@229.4]
  assign _T_685 = calc_fout_vld_23 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@232.4]
  assign _T_686 = _T_685 & calc_fout_sum_23; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@233.4]
  assign _T_690 = calc_fout_vld_24 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@236.4]
  assign _T_691 = _T_690 & calc_fout_sum_24; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@237.4]
  assign _T_695 = calc_fout_vld_25 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@240.4]
  assign _T_696 = _T_695 & calc_fout_sum_25; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@241.4]
  assign _T_700 = calc_fout_vld_26 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@244.4]
  assign _T_701 = _T_700 & calc_fout_sum_26; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@245.4]
  assign _T_705 = calc_fout_vld_27 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@248.4]
  assign _T_706 = _T_705 & calc_fout_sum_27; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@249.4]
  assign _T_710 = calc_fout_vld_28 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@252.4]
  assign _T_711 = _T_710 & calc_fout_sum_28; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@253.4]
  assign _T_715 = calc_fout_vld_29 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@256.4]
  assign _T_716 = _T_715 & calc_fout_sum_29; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@257.4]
  assign _T_720 = calc_fout_vld_30 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@260.4]
  assign _T_721 = _T_720 & calc_fout_sum_30; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@261.4]
  assign _T_725 = calc_fout_vld_31 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:@264.4]
  assign _T_726 = _T_725 & calc_fout_sum_31; // @[NV_soDLA_CACC_calculator_bc_gate.scala 62:74:@265.4]
  assign _GEN_0 = calc_wr_en ? calc_addr : _T_732; // @[Reg.scala 20:19:@271.4]
  assign _T_739 = {_T_408,_T_403,_T_398,_T_393,_T_388,_T_383,_T_378,_T_373}; // @[NV_soDLA_CACC_calculator_bc_gate.scala 69:44:@281.4]
  assign _T_747 = {_T_448,_T_443,_T_438,_T_433,_T_428,_T_423,_T_418,_T_413,_T_739}; // @[NV_soDLA_CACC_calculator_bc_gate.scala 69:44:@289.4]
  assign _T_754 = {_T_488,_T_483,_T_478,_T_473,_T_468,_T_463,_T_458,_T_453}; // @[NV_soDLA_CACC_calculator_bc_gate.scala 69:44:@296.4]
  assign _T_763 = {_T_528,_T_523,_T_518,_T_513,_T_508,_T_503,_T_498,_T_493,_T_754,_T_747}; // @[NV_soDLA_CACC_calculator_bc_gate.scala 69:44:@305.4]
  assign _T_772 = {_T_606,_T_601,_T_596,_T_591,_T_586,_T_581,_T_576,_T_571}; // @[NV_soDLA_CACC_calculator_bc_gate.scala 72:40:@317.4]
  assign _T_780 = {_T_646,_T_641,_T_636,_T_631,_T_626,_T_621,_T_616,_T_611,_T_772}; // @[NV_soDLA_CACC_calculator_bc_gate.scala 72:40:@325.4]
  assign _T_787 = {_T_686,_T_681,_T_676,_T_671,_T_666,_T_661,_T_656,_T_651}; // @[NV_soDLA_CACC_calculator_bc_gate.scala 72:40:@332.4]
  assign _T_796 = {_T_726,_T_721,_T_716,_T_711,_T_706,_T_701,_T_696,_T_691,_T_787,_T_780}; // @[NV_soDLA_CACC_calculator_bc_gate.scala 72:40:@341.4]
  assign _GEN_3 = calc_dlv_valid ? calc_stripe_end : _T_807; // @[Reg.scala 20:19:@354.4]
  assign _GEN_4 = calc_dlv_valid ? calc_layer_end : _T_810; // @[Reg.scala 20:19:@358.4]
  assign abuf_wr_en = _T_729; // @[NV_soDLA_CACC_calculator_bc_gate.scala 67:27:@269.4]
  assign abuf_wr_addr = _T_732; // @[NV_soDLA_CACC_calculator_bc_gate.scala 68:26:@274.4]
  assign abuf_wr_data = _T_765; // @[NV_soDLA_CACC_calculator_bc_gate.scala 69:21:@310.4]
  assign dlv_valid = _T_801; // @[NV_soDLA_CACC_calculator_bc_gate.scala 73:18:@349.4]
  assign dlv_mask = _T_804; // @[NV_soDLA_CACC_calculator_bc_gate.scala 74:17:@352.4]
  assign dlv_data = _T_798; // @[NV_soDLA_CACC_calculator_bc_gate.scala 72:17:@346.4]
  assign dlv_pd = {_T_810,_T_807}; // @[NV_soDLA_CACC_calculator_bc_gate.scala 77:15:@362.4]
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
  always @(posedge nvdla_core_clk) begin
    if (_T_330) begin
      _T_729 <= 1'h0;
    end else begin
      _T_729 <= calc_wr_en;
    end
    if (_T_330) begin
      _T_732 <= 6'h0;
    end else begin
      if (calc_wr_en) begin
        _T_732 <= calc_addr;
      end
    end
    if (calc_wr_en) begin
      _T_765 <= _T_763;
    end
    if (calc_dlv_valid) begin
      _T_798 <= _T_796;
    end
    if (_T_330) begin
      _T_801 <= 1'h0;
    end else begin
      _T_801 <= calc_dlv_valid;
    end
    if (_T_330) begin
      _T_804 <= 1'h0;
    end else begin
      _T_804 <= calc_dlv_valid;
    end
    if (_T_330) begin
      _T_807 <= 1'h0;
    end else begin
      if (calc_dlv_valid) begin
        _T_807 <= calc_stripe_end;
      end
    end
    if (_T_330) begin
      _T_810 <= 1'h0;
    end else begin
      if (calc_dlv_valid) begin
        _T_810 <= calc_layer_end;
      end
    end
  end
endmodule



module NV_NVDLA_CACC_calculator_bc( // @[:@3.2]
  input           nvdla_core_clk, // @[:@6.4]
  input           nvdla_core_rstn, // @[:@6.4]
  input           calc_wr_en, // @[:@6.4]
  input  [5:0]    calc_addr, // @[:@6.4]
  input           calc_pout_vld_0, // @[:@6.4]
  input           calc_pout_vld_1, // @[:@6.4]
  input           calc_pout_vld_2, // @[:@6.4]
  input           calc_pout_vld_3, // @[:@6.4]
  input           calc_pout_vld_4, // @[:@6.4]
  input           calc_pout_vld_5, // @[:@6.4]
  input           calc_pout_vld_6, // @[:@6.4]
  input           calc_pout_vld_7, // @[:@6.4]
  input           calc_pout_vld_8, // @[:@6.4]
  input           calc_pout_vld_9, // @[:@6.4]
  input           calc_pout_vld_10, // @[:@6.4]
  input           calc_pout_vld_11, // @[:@6.4]
  input           calc_pout_vld_12, // @[:@6.4]
  input           calc_pout_vld_13, // @[:@6.4]
  input           calc_pout_vld_14, // @[:@6.4]
  input           calc_pout_vld_15, // @[:@6.4]
  input           calc_pout_vld_16, // @[:@6.4]
  input           calc_pout_vld_17, // @[:@6.4]
  input           calc_pout_vld_18, // @[:@6.4]
  input           calc_pout_vld_19, // @[:@6.4]
  input           calc_pout_vld_20, // @[:@6.4]
  input           calc_pout_vld_21, // @[:@6.4]
  input           calc_pout_vld_22, // @[:@6.4]
  input           calc_pout_vld_23, // @[:@6.4]
  input           calc_pout_vld_24, // @[:@6.4]
  input           calc_pout_vld_25, // @[:@6.4]
  input           calc_pout_vld_26, // @[:@6.4]
  input           calc_pout_vld_27, // @[:@6.4]
  input           calc_pout_vld_28, // @[:@6.4]
  input           calc_pout_vld_29, // @[:@6.4]
  input           calc_pout_vld_30, // @[:@6.4]
  input           calc_pout_vld_31, // @[:@6.4]
  input           calc_fout_vld_0, // @[:@6.4]
  input           calc_fout_vld_1, // @[:@6.4]
  input           calc_fout_vld_2, // @[:@6.4]
  input           calc_fout_vld_3, // @[:@6.4]
  input           calc_fout_vld_4, // @[:@6.4]
  input           calc_fout_vld_5, // @[:@6.4]
  input           calc_fout_vld_6, // @[:@6.4]
  input           calc_fout_vld_7, // @[:@6.4]
  input           calc_fout_vld_8, // @[:@6.4]
  input           calc_fout_vld_9, // @[:@6.4]
  input           calc_fout_vld_10, // @[:@6.4]
  input           calc_fout_vld_11, // @[:@6.4]
  input           calc_fout_vld_12, // @[:@6.4]
  input           calc_fout_vld_13, // @[:@6.4]
  input           calc_fout_vld_14, // @[:@6.4]
  input           calc_fout_vld_15, // @[:@6.4]
  input           calc_fout_vld_16, // @[:@6.4]
  input           calc_fout_vld_17, // @[:@6.4]
  input           calc_fout_vld_18, // @[:@6.4]
  input           calc_fout_vld_19, // @[:@6.4]
  input           calc_fout_vld_20, // @[:@6.4]
  input           calc_fout_vld_21, // @[:@6.4]
  input           calc_fout_vld_22, // @[:@6.4]
  input           calc_fout_vld_23, // @[:@6.4]
  input           calc_fout_vld_24, // @[:@6.4]
  input           calc_fout_vld_25, // @[:@6.4]
  input           calc_fout_vld_26, // @[:@6.4]
  input           calc_fout_vld_27, // @[:@6.4]
  input           calc_fout_vld_28, // @[:@6.4]
  input           calc_fout_vld_29, // @[:@6.4]
  input           calc_fout_vld_30, // @[:@6.4]
  input           calc_fout_vld_31, // @[:@6.4]
  input  [33:0]   calc_pout_sum_0, // @[:@6.4]
  input  [33:0]   calc_pout_sum_1, // @[:@6.4]
  input  [33:0]   calc_pout_sum_2, // @[:@6.4]
  input  [33:0]   calc_pout_sum_3, // @[:@6.4]
  input  [33:0]   calc_pout_sum_4, // @[:@6.4]
  input  [33:0]   calc_pout_sum_5, // @[:@6.4]
  input  [33:0]   calc_pout_sum_6, // @[:@6.4]
  input  [33:0]   calc_pout_sum_7, // @[:@6.4]
  input  [33:0]   calc_pout_sum_8, // @[:@6.4]
  input  [33:0]   calc_pout_sum_9, // @[:@6.4]
  input  [33:0]   calc_pout_sum_10, // @[:@6.4]
  input  [33:0]   calc_pout_sum_11, // @[:@6.4]
  input  [33:0]   calc_pout_sum_12, // @[:@6.4]
  input  [33:0]   calc_pout_sum_13, // @[:@6.4]
  input  [33:0]   calc_pout_sum_14, // @[:@6.4]
  input  [33:0]   calc_pout_sum_15, // @[:@6.4]
  input  [33:0]   calc_pout_sum_16, // @[:@6.4]
  input  [33:0]   calc_pout_sum_17, // @[:@6.4]
  input  [33:0]   calc_pout_sum_18, // @[:@6.4]
  input  [33:0]   calc_pout_sum_19, // @[:@6.4]
  input  [33:0]   calc_pout_sum_20, // @[:@6.4]
  input  [33:0]   calc_pout_sum_21, // @[:@6.4]
  input  [33:0]   calc_pout_sum_22, // @[:@6.4]
  input  [33:0]   calc_pout_sum_23, // @[:@6.4]
  input  [33:0]   calc_pout_sum_24, // @[:@6.4]
  input  [33:0]   calc_pout_sum_25, // @[:@6.4]
  input  [33:0]   calc_pout_sum_26, // @[:@6.4]
  input  [33:0]   calc_pout_sum_27, // @[:@6.4]
  input  [33:0]   calc_pout_sum_28, // @[:@6.4]
  input  [33:0]   calc_pout_sum_29, // @[:@6.4]
  input  [33:0]   calc_pout_sum_30, // @[:@6.4]
  input  [33:0]   calc_pout_sum_31, // @[:@6.4]
  input  [31:0]   calc_fout_sum_0, // @[:@6.4]
  input  [31:0]   calc_fout_sum_1, // @[:@6.4]
  input  [31:0]   calc_fout_sum_2, // @[:@6.4]
  input  [31:0]   calc_fout_sum_3, // @[:@6.4]
  input  [31:0]   calc_fout_sum_4, // @[:@6.4]
  input  [31:0]   calc_fout_sum_5, // @[:@6.4]
  input  [31:0]   calc_fout_sum_6, // @[:@6.4]
  input  [31:0]   calc_fout_sum_7, // @[:@6.4]
  input  [31:0]   calc_fout_sum_8, // @[:@6.4]
  input  [31:0]   calc_fout_sum_9, // @[:@6.4]
  input  [31:0]   calc_fout_sum_10, // @[:@6.4]
  input  [31:0]   calc_fout_sum_11, // @[:@6.4]
  input  [31:0]   calc_fout_sum_12, // @[:@6.4]
  input  [31:0]   calc_fout_sum_13, // @[:@6.4]
  input  [31:0]   calc_fout_sum_14, // @[:@6.4]
  input  [31:0]   calc_fout_sum_15, // @[:@6.4]
  input  [31:0]   calc_fout_sum_16, // @[:@6.4]
  input  [31:0]   calc_fout_sum_17, // @[:@6.4]
  input  [31:0]   calc_fout_sum_18, // @[:@6.4]
  input  [31:0]   calc_fout_sum_19, // @[:@6.4]
  input  [31:0]   calc_fout_sum_20, // @[:@6.4]
  input  [31:0]   calc_fout_sum_21, // @[:@6.4]
  input  [31:0]   calc_fout_sum_22, // @[:@6.4]
  input  [31:0]   calc_fout_sum_23, // @[:@6.4]
  input  [31:0]   calc_fout_sum_24, // @[:@6.4]
  input  [31:0]   calc_fout_sum_25, // @[:@6.4]
  input  [31:0]   calc_fout_sum_26, // @[:@6.4]
  input  [31:0]   calc_fout_sum_27, // @[:@6.4]
  input  [31:0]   calc_fout_sum_28, // @[:@6.4]
  input  [31:0]   calc_fout_sum_29, // @[:@6.4]
  input  [31:0]   calc_fout_sum_30, // @[:@6.4]
  input  [31:0]   calc_fout_sum_31, // @[:@6.4]
  output          abuf_wr_en, // @[:@6.4]
  output [5:0]    abuf_wr_addr, // @[:@6.4]
  output [1087:0] abuf_wr_data, // @[:@6.4]
  input           calc_dlv_valid, // @[:@6.4]
  input           calc_stripe_end, // @[:@6.4]
  input           calc_layer_end, // @[:@6.4]
  output          dlv_valid, // @[:@6.4]
  output          dlv_mask, // @[:@6.4]
  output [1023:0] dlv_data, // @[:@6.4]
  output [1:0]    dlv_pd // @[:@6.4]
);

wire [34-1:0] calc_pout_0 = ({34{calc_pout_vld_0}} & calc_pout_sum_0);
wire [34-1:0] calc_pout_1 = ({34{calc_pout_vld_1}} & calc_pout_sum_1);
wire [34-1:0] calc_pout_2 = ({34{calc_pout_vld_2}} & calc_pout_sum_2);
wire [34-1:0] calc_pout_3 = ({34{calc_pout_vld_3}} & calc_pout_sum_3);
wire [34-1:0] calc_pout_4 = ({34{calc_pout_vld_4}} & calc_pout_sum_4);
wire [34-1:0] calc_pout_5 = ({34{calc_pout_vld_5}} & calc_pout_sum_5);
wire [34-1:0] calc_pout_6 = ({34{calc_pout_vld_6}} & calc_pout_sum_6);
wire [34-1:0] calc_pout_7 = ({34{calc_pout_vld_7}} & calc_pout_sum_7);
wire [34-1:0] calc_pout_8 = ({34{calc_pout_vld_8}} & calc_pout_sum_8);
wire [34-1:0] calc_pout_9 = ({34{calc_pout_vld_9}} & calc_pout_sum_9);
wire [34-1:0] calc_pout_10 = ({34{calc_pout_vld_10}} & calc_pout_sum_10);
wire [34-1:0] calc_pout_11 = ({34{calc_pout_vld_11}} & calc_pout_sum_11);
wire [34-1:0] calc_pout_12 = ({34{calc_pout_vld_12}} & calc_pout_sum_12);
wire [34-1:0] calc_pout_13 = ({34{calc_pout_vld_13}} & calc_pout_sum_13);
wire [34-1:0] calc_pout_14 = ({34{calc_pout_vld_14}} & calc_pout_sum_14);
wire [34-1:0] calc_pout_15 = ({34{calc_pout_vld_15}} & calc_pout_sum_15);
wire [34-1:0] calc_pout_16 = ({34{calc_pout_vld_16}} & calc_pout_sum_16);
wire [34-1:0] calc_pout_17 = ({34{calc_pout_vld_17}} & calc_pout_sum_17);
wire [34-1:0] calc_pout_18 = ({34{calc_pout_vld_18}} & calc_pout_sum_18);
wire [34-1:0] calc_pout_19 = ({34{calc_pout_vld_19}} & calc_pout_sum_19);
wire [34-1:0] calc_pout_20 = ({34{calc_pout_vld_20}} & calc_pout_sum_20);
wire [34-1:0] calc_pout_21 = ({34{calc_pout_vld_21}} & calc_pout_sum_21);
wire [34-1:0] calc_pout_22 = ({34{calc_pout_vld_22}} & calc_pout_sum_22);
wire [34-1:0] calc_pout_23 = ({34{calc_pout_vld_23}} & calc_pout_sum_23);
wire [34-1:0] calc_pout_24 = ({34{calc_pout_vld_24}} & calc_pout_sum_24);
wire [34-1:0] calc_pout_25 = ({34{calc_pout_vld_25}} & calc_pout_sum_25);
wire [34-1:0] calc_pout_26 = ({34{calc_pout_vld_26}} & calc_pout_sum_26);
wire [34-1:0] calc_pout_27 = ({34{calc_pout_vld_27}} & calc_pout_sum_27);
wire [34-1:0] calc_pout_28 = ({34{calc_pout_vld_28}} & calc_pout_sum_28);
wire [34-1:0] calc_pout_29 = ({34{calc_pout_vld_29}} & calc_pout_sum_29);
wire [34-1:0] calc_pout_30 = ({34{calc_pout_vld_30}} & calc_pout_sum_30);
wire [34-1:0] calc_pout_31 = ({34{calc_pout_vld_31}} & calc_pout_sum_31);
wire [32-1:0] calc_fout_0 = ({32{calc_fout_vld_0}} & calc_fout_sum_0);
wire [32-1:0] calc_fout_1 = ({32{calc_fout_vld_1}} & calc_fout_sum_1);
wire [32-1:0] calc_fout_2 = ({32{calc_fout_vld_2}} & calc_fout_sum_2);
wire [32-1:0] calc_fout_3 = ({32{calc_fout_vld_3}} & calc_fout_sum_3);
wire [32-1:0] calc_fout_4 = ({32{calc_fout_vld_4}} & calc_fout_sum_4);
wire [32-1:0] calc_fout_5 = ({32{calc_fout_vld_5}} & calc_fout_sum_5);
wire [32-1:0] calc_fout_6 = ({32{calc_fout_vld_6}} & calc_fout_sum_6);
wire [32-1:0] calc_fout_7 = ({32{calc_fout_vld_7}} & calc_fout_sum_7);
wire [32-1:0] calc_fout_8 = ({32{calc_fout_vld_8}} & calc_fout_sum_8);
wire [32-1:0] calc_fout_9 = ({32{calc_fout_vld_9}} & calc_fout_sum_9);
wire [32-1:0] calc_fout_10 = ({32{calc_fout_vld_10}} & calc_fout_sum_10);
wire [32-1:0] calc_fout_11 = ({32{calc_fout_vld_11}} & calc_fout_sum_11);
wire [32-1:0] calc_fout_12 = ({32{calc_fout_vld_12}} & calc_fout_sum_12);
wire [32-1:0] calc_fout_13 = ({32{calc_fout_vld_13}} & calc_fout_sum_13);
wire [32-1:0] calc_fout_14 = ({32{calc_fout_vld_14}} & calc_fout_sum_14);
wire [32-1:0] calc_fout_15 = ({32{calc_fout_vld_15}} & calc_fout_sum_15);
wire [32-1:0] calc_fout_16 = ({32{calc_fout_vld_16}} & calc_fout_sum_16);
wire [32-1:0] calc_fout_17 = ({32{calc_fout_vld_17}} & calc_fout_sum_17);
wire [32-1:0] calc_fout_18 = ({32{calc_fout_vld_18}} & calc_fout_sum_18);
wire [32-1:0] calc_fout_19 = ({32{calc_fout_vld_19}} & calc_fout_sum_19);
wire [32-1:0] calc_fout_20 = ({32{calc_fout_vld_20}} & calc_fout_sum_20);
wire [32-1:0] calc_fout_21 = ({32{calc_fout_vld_21}} & calc_fout_sum_21);
wire [32-1:0] calc_fout_22 = ({32{calc_fout_vld_22}} & calc_fout_sum_22);
wire [32-1:0] calc_fout_23 = ({32{calc_fout_vld_23}} & calc_fout_sum_23);
wire [32-1:0] calc_fout_24 = ({32{calc_fout_vld_24}} & calc_fout_sum_24);
wire [32-1:0] calc_fout_25 = ({32{calc_fout_vld_25}} & calc_fout_sum_25);
wire [32-1:0] calc_fout_26 = ({32{calc_fout_vld_26}} & calc_fout_sum_26);
wire [32-1:0] calc_fout_27 = ({32{calc_fout_vld_27}} & calc_fout_sum_27);
wire [32-1:0] calc_fout_28 = ({32{calc_fout_vld_28}} & calc_fout_sum_28);
wire [32-1:0] calc_fout_29 = ({32{calc_fout_vld_29}} & calc_fout_sum_29);
wire [32-1:0] calc_fout_30 = ({32{calc_fout_vld_30}} & calc_fout_sum_30);
wire [32-1:0] calc_fout_31 = ({32{calc_fout_vld_31}} & calc_fout_sum_31);
//| eperl: generated_end (DO NOT EDIT ABOVE)
// to abuffer, 1 pipe
wire [34*32 -1:0] abuf_wr_data_w;
// spyglass disable_block STARC05-3.3.1.4b
//: my $kk=34*32;
//: my $jj=5 +1;
//: for(my $i = 0; $i < 32; $i ++) {
//: print qq (
//: assign abuf_wr_data_w[34*($i+1)-1:34*$i] = calc_pout_${i}; );
//: }
//: &eperl::flop(" -q  abuf_wr_en  -d \"calc_wr_en\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-wid ${jj} -q  abuf_wr_addr  -en \"calc_wr_en\" -d  \"calc_addr[${jj}-1:0]\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop("-wid ${kk} -q  abuf_wr_data  -en \"calc_wr_en\" -d  \"abuf_wr_data_w\" -clk nvdla_core_clk -norst");
//| eperl: generated_beg (DO NOT EDIT BELOW)

assign abuf_wr_data_w[34*(0+1)-1:34*0] = calc_pout_0; 
assign abuf_wr_data_w[34*(1+1)-1:34*1] = calc_pout_1; 
assign abuf_wr_data_w[34*(2+1)-1:34*2] = calc_pout_2; 
assign abuf_wr_data_w[34*(3+1)-1:34*3] = calc_pout_3; 
assign abuf_wr_data_w[34*(4+1)-1:34*4] = calc_pout_4; 
assign abuf_wr_data_w[34*(5+1)-1:34*5] = calc_pout_5; 
assign abuf_wr_data_w[34*(6+1)-1:34*6] = calc_pout_6; 
assign abuf_wr_data_w[34*(7+1)-1:34*7] = calc_pout_7; 
assign abuf_wr_data_w[34*(8+1)-1:34*8] = calc_pout_8; 
assign abuf_wr_data_w[34*(9+1)-1:34*9] = calc_pout_9; 
assign abuf_wr_data_w[34*(10+1)-1:34*10] = calc_pout_10; 
assign abuf_wr_data_w[34*(11+1)-1:34*11] = calc_pout_11; 
assign abuf_wr_data_w[34*(12+1)-1:34*12] = calc_pout_12; 
assign abuf_wr_data_w[34*(13+1)-1:34*13] = calc_pout_13; 
assign abuf_wr_data_w[34*(14+1)-1:34*14] = calc_pout_14; 
assign abuf_wr_data_w[34*(15+1)-1:34*15] = calc_pout_15; 
assign abuf_wr_data_w[34*(16+1)-1:34*16] = calc_pout_16; 
assign abuf_wr_data_w[34*(17+1)-1:34*17] = calc_pout_17; 
assign abuf_wr_data_w[34*(18+1)-1:34*18] = calc_pout_18; 
assign abuf_wr_data_w[34*(19+1)-1:34*19] = calc_pout_19; 
assign abuf_wr_data_w[34*(20+1)-1:34*20] = calc_pout_20; 
assign abuf_wr_data_w[34*(21+1)-1:34*21] = calc_pout_21; 
assign abuf_wr_data_w[34*(22+1)-1:34*22] = calc_pout_22; 
assign abuf_wr_data_w[34*(23+1)-1:34*23] = calc_pout_23; 
assign abuf_wr_data_w[34*(24+1)-1:34*24] = calc_pout_24; 
assign abuf_wr_data_w[34*(25+1)-1:34*25] = calc_pout_25; 
assign abuf_wr_data_w[34*(26+1)-1:34*26] = calc_pout_26; 
assign abuf_wr_data_w[34*(27+1)-1:34*27] = calc_pout_27; 
assign abuf_wr_data_w[34*(28+1)-1:34*28] = calc_pout_28; 
assign abuf_wr_data_w[34*(29+1)-1:34*29] = calc_pout_29; 
assign abuf_wr_data_w[34*(30+1)-1:34*30] = calc_pout_30; 
assign abuf_wr_data_w[34*(31+1)-1:34*31] = calc_pout_31; reg  abuf_wr_en;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       abuf_wr_en <= 'b0;
   end else begin
       abuf_wr_en <= calc_wr_en;
   end
end
reg [5:0] abuf_wr_addr;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       abuf_wr_addr <= 'b0;
   end else begin
       if ((calc_wr_en) == 1'b1) begin
           abuf_wr_addr <= calc_addr[6-1:0];
       // VCS coverage off
       end else if ((calc_wr_en) == 1'b0) begin
       end else begin
           abuf_wr_addr <= 'bx;
       // VCS coverage on
       end
   end
end
reg [1087:0] abuf_wr_data;
always @(posedge nvdla_core_clk) begin
       if ((calc_wr_en) == 1'b1) begin
           abuf_wr_data <= abuf_wr_data_w;
       // VCS coverage off
       end else if ((calc_wr_en) == 1'b0) begin
       end else begin
           abuf_wr_data <= 'bx;
       // VCS coverage on
       end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
// spyglass enable_block STARC05-3.3.1.4b
// to dbuffer, 1 pipe.
wire [32*32 -1:0] dlv_data_w;
// spyglass disable_block STARC05-3.3.1.4b
//: my $kk=32*32;
//: for(my $i = 0; $i < 32; $i ++) {
//: print qq(
//: assign dlv_data_w[32*($i+1)-1:32*$i] = calc_fout_${i};);
//: }
//:
//: &eperl::flop("-wid ${kk} -q  dlv_data  -en \"calc_dlv_valid\" -d  \"dlv_data_w\" -clk nvdla_core_clk -norst");
//: &eperl::flop(" -q  dlv_valid  -d \"calc_dlv_valid\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  dlv_mask   -d  \"calc_dlv_valid\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  dlv_stripe_end  -en \"calc_dlv_valid\" -d  \"calc_stripe_end\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//: &eperl::flop(" -q  dlv_layer_end  -en \"calc_dlv_valid\" -d  \"calc_layer_end\" -clk nvdla_core_clk -rst nvdla_core_rstn -rval 0");
//| eperl: generated_beg (DO NOT EDIT BELOW)

assign dlv_data_w[32*(0+1)-1:32*0] = calc_fout_0;
assign dlv_data_w[32*(1+1)-1:32*1] = calc_fout_1;
assign dlv_data_w[32*(2+1)-1:32*2] = calc_fout_2;
assign dlv_data_w[32*(3+1)-1:32*3] = calc_fout_3;
assign dlv_data_w[32*(4+1)-1:32*4] = calc_fout_4;
assign dlv_data_w[32*(5+1)-1:32*5] = calc_fout_5;
assign dlv_data_w[32*(6+1)-1:32*6] = calc_fout_6;
assign dlv_data_w[32*(7+1)-1:32*7] = calc_fout_7;
assign dlv_data_w[32*(8+1)-1:32*8] = calc_fout_8;
assign dlv_data_w[32*(9+1)-1:32*9] = calc_fout_9;
assign dlv_data_w[32*(10+1)-1:32*10] = calc_fout_10;
assign dlv_data_w[32*(11+1)-1:32*11] = calc_fout_11;
assign dlv_data_w[32*(12+1)-1:32*12] = calc_fout_12;
assign dlv_data_w[32*(13+1)-1:32*13] = calc_fout_13;
assign dlv_data_w[32*(14+1)-1:32*14] = calc_fout_14;
assign dlv_data_w[32*(15+1)-1:32*15] = calc_fout_15;
assign dlv_data_w[32*(16+1)-1:32*16] = calc_fout_16;
assign dlv_data_w[32*(17+1)-1:32*17] = calc_fout_17;
assign dlv_data_w[32*(18+1)-1:32*18] = calc_fout_18;
assign dlv_data_w[32*(19+1)-1:32*19] = calc_fout_19;
assign dlv_data_w[32*(20+1)-1:32*20] = calc_fout_20;
assign dlv_data_w[32*(21+1)-1:32*21] = calc_fout_21;
assign dlv_data_w[32*(22+1)-1:32*22] = calc_fout_22;
assign dlv_data_w[32*(23+1)-1:32*23] = calc_fout_23;
assign dlv_data_w[32*(24+1)-1:32*24] = calc_fout_24;
assign dlv_data_w[32*(25+1)-1:32*25] = calc_fout_25;
assign dlv_data_w[32*(26+1)-1:32*26] = calc_fout_26;
assign dlv_data_w[32*(27+1)-1:32*27] = calc_fout_27;
assign dlv_data_w[32*(28+1)-1:32*28] = calc_fout_28;
assign dlv_data_w[32*(29+1)-1:32*29] = calc_fout_29;
assign dlv_data_w[32*(30+1)-1:32*30] = calc_fout_30;
assign dlv_data_w[32*(31+1)-1:32*31] = calc_fout_31;reg [1023:0] dlv_data;
always @(posedge nvdla_core_clk) begin
       if ((calc_dlv_valid) == 1'b1) begin
           dlv_data <= dlv_data_w;
       // VCS coverage off
       end else if ((calc_dlv_valid) == 1'b0) begin
       end else begin
           dlv_data <= 'bx;
       // VCS coverage on
       end
end
reg  dlv_valid;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_valid <= 'b0;
   end else begin
       dlv_valid <= calc_dlv_valid;
   end
end
reg  dlv_mask;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_mask <= 'b0;
   end else begin
       dlv_mask <= calc_dlv_valid;
   end
end
reg  dlv_stripe_end;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_stripe_end <= 'b0;
   end else begin
       if ((calc_dlv_valid) == 1'b1) begin
           dlv_stripe_end <= calc_stripe_end;
       // VCS coverage off
       end else if ((calc_dlv_valid) == 1'b0) begin
       end else begin
           dlv_stripe_end <= 'bx;
       // VCS coverage on
       end
   end
end
reg  dlv_layer_end;
always @(posedge nvdla_core_clk) begin
   if (!nvdla_core_rstn) begin
       dlv_layer_end <= 'b0;
   end else begin
       if ((calc_dlv_valid) == 1'b1) begin
           dlv_layer_end <= calc_layer_end;
       // VCS coverage off
       end else if ((calc_dlv_valid) == 1'b0) begin
       end else begin
           dlv_layer_end <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
// spyglass enable_block STARC05-3.3.1.4b
assign dlv_pd[0] = dlv_stripe_end ;
assign dlv_pd[1] = dlv_layer_end ;
endmodule