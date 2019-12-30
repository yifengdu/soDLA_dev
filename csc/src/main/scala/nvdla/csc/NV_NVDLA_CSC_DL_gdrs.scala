// package nvdla

// import chisel3._
// import chisel3.experimental._
// import chisel3.util._

// //generate date read sequence
// class NV_NVDLA_CSC_DL_GDRS(implicit val conf: nvdlaConfig) extends Module {
//     val io = IO(new Bundle {
//         //clock
//         val nvdla_core_clk = Input(Clock())

//         val sg2dl_pd = Flipped(ValidIO(UInt(31.W)))
//         val layer_st = Input(Bool())
//         val 
        
//         //subfield
//         val subfield_d1 = Flipped(new NV_NVDLA_CSC_dl_subfield_d1_if)
//         val subfield_d2 = Flipped(new NV_NVDLA_CSC_dl_subfield_d2_if)
//         val subfield_sg_done = Flipped(new NV_NVDLA_CSC_dl_subfield_sg_done_if)

//     })
// /////////////////////////////////////////////////////////////////////////////////////////////
// // 
// //
// //                      input_package 
// //                           |                     
// //                      data request         
// //                           |                     
// //                      conv_buffer               
// //                           |                     
// //                      feature data---> data relase <= you are here    
// //                        |     |                  
// //                      REG    PRA                 
// //                        |     |                  
// //                        REGISTER                 
// //                           |                     
// //                          MAC                    
// //
// /////////////////////////////////////////////////////////////////////////////////////////////
// withClock(io.nvdla_core_clk){
//     //////////////////////////////////////////////////////////////
//     ///// generate data read sequence                        /////
//     //////////////////////////////////////////////////////////////
//     val total_depth = conf.CSC_DL_PIPELINE_ADDITION + conf.CSC_DL_PRA_LATENCY
//     val wg_depth = conf.CSC_DL_PIPELINE_ADDITION
//     val pipe_depth = 4

//     val dl_in_pvld_d =  Wire(Bool()) +: 
//                         Seq.fill(total_depth)(RegInit(false.B))
//     val dl_in_pd_d = Wire(UInt(31.W)) +: 
//                     Seq.fill(total_depth)(RegInit("b0".asUInt(31.W)))

//     dl_in_pvld_d(0) := io.sg2dl_pd.valid
//     dl_in_pd_d(0) := io.sg2dl_pd.bits

//     for(t <- 0 to total_depth-1){
//         dl_in_pvld_d(t+1) := dl_in_pvld_d(t)
//         when(dl_in_pvld_d(t)){
//             dl_in_pd_d(t+1) := dl_in_pd_d(t)
//         }
//     }

//     val dl_in_pvld = Mux(io.is_winograd, dl_in_pvld_d(wg_depth), dl_in_pvld_d(total_depth))
//     val dl_in_pd = Mux(io.is_winograd, dl_in_pd_d(wg_depth), dl_in_pd_d(total_depth))

//     val dl_pvld_d = Wire(Bool()) +: 
//                     Seq.fill(pipe_depth)(RegInit(false.B))
//     val dl_pd_d = Wire(UInt(31.W)) +: 
//                 Seq.fill(pipe_depth)(RegInit("b0".asUInt(31.W)))

//     dl_pvld_d(0) := dl_in_pvld
//     dl_pd_d(0) := dl_in_pd

//     for(t <- 0 to pipe_depth-1){
//         dl_pvld_d(t+1) := dl_pvld_d(t)
//         when(dl_pvld_d(t)){
//             dl_pd_d(t+1) := dl_pd_d(t)
//         }
//     }

//     val dl_pvld = (sub_h_total_g0(2) & dl_pvld_d(1)) |
//                 (sub_h_total_g0(1) & dl_pvld_d(3)) |
//                 (sub_h_total_g0(0) & dl_pvld_d(4));
    
//     val dl_pd = (Fill(31, sub_h_total_g1(2)) & dl_pd_d(1)) |
//                 (Fill(31, sub_h_total_g1(1)) & dl_pd_d(3)) |
//                 (Fill(31, sub_h_total_g1(0)) & dl_pd_d(4));

//     // PKT_UNPACK_WIRE( csc_dat_pkg ,  dl_ ,  dl_pd )
//     val dl_w_offset = dl_pd(4, 0)   //this is weight offset
//     val dl_h_offset = dl_pd(9, 5)   //weight offset
//     val dl_channel_size = dl_pd(16, 10)
//     val dl_stripe_length = dl_pd(23, 17)
//     val dl_cur_sub_h = dl_pd(25, 24)
//     val dl_block_end = dl_pd(26)
//     val dl_channel_end = dl_pd(27)
//     val dl_group_end = dl_pd(28)
//     val dl_layer_end = dl_pd(29)
//     val dl_dat_release = dl_pd(30)


//     ////////////////////////// batch up counter //////////////////////////
//     val is_batch_end = Wire(Bool())
//     val dat_exec_valid = Wire(Bool())
//     val batch_cnt = RegInit("b0".asUInt(5.W))

//     when(io.layer_st | dat_exec_valid){
//         batch_cnt := Mux(io.layer_st, "b0".asUInt(5.W), 
//                      Mux(is_batch_end, "b0".asUInt(5.W),
//                       batch_cnt + 1.U))
//     }

//     is_batch_end := batch_cnt === io.subfield_d1.batch_cmp

//     ////////////////////////// sub height up counter //////////////////////////
//     val sub_h_cnt = RegInit("b0".asUInt(2.W))
//     val is_sub_h_end = Wire(Bool())

//     val sub_h_cnt_inc = sub_h_cnt + 1.U
//     is_sub_h_end := (sub_h_cnt_inc === sub_h_cmp_g0)
//     val sub_h_cnt_reg_en = layer_st | ((io.subfield.is_winograd_d1(2) | ((io.reg2dp_y_extension).orR)) & dat_exec_valid)
//     when(sub_h_cnt_reg_en){
//         sub_h_cnt := Mux(layer_st | is_sub_h_end, "b0".asUInt(2.W), sub_h_cnt_inc)
//     }

//     ////////////////////////// stripe up counter //////////////////////////
//     val stripe_cnt = RegInit("b0".asUInt(7.W))
//     val is_stripe_equal = Wire(Bool())
//     val is_stripe_end = Wire(Bool())

//     val stripe_cnt_inc = (stripe_cnt +& 1.U)(6, 0)
//     is_stripe_equal := is_batch_end & (stripe_cnt_inc === dl_stripe_length)
//     is_stripe_end := is_stripe_equal & is_sub_h_end
//     val stripe_cnt_reg_en = layer_st | (dat_exec_valid & is_batch_end)

//     when(stripe_cnt_reg_en){
//         stripe_cnt := Mux(layer_st, "b0".asUInt(7.W),
//                     Mux(is_stripe_equal & ~is_sub_h_end, stripe_cnt,
//                     Mux(is_stripe_end, "b0".asUInt(7.W),
//                     stripe_cnt_inc)))
//     }

//     ////////////////////////// pipe valid generator //////////////////////////
//     val dat_pipe_local_valid = RegInit(false.B)
//     val dat_pipe_valid_d1 = RegInit(false.B)
//     val dat_exec_valid_d1 = RegInit(false.B)

//     val dat_pipe_valid = Wire(Bool())
//     val dat_pipe_local_valid_w = Mux(dat_pipe_valid & is_stripe_equal, false.B,
//                                 Mux(dl_pvld, true.B,
//                                 dat_pipe_local_valid))
//     dat_pipe_valid := dl_pvld | dat_pipe_local_valid
//     dat_exec_valid := Mux(dl_pvld, true.B, 
//                     Mux((~(stripe_cnt.orR) & ~(sub_h_cnt.orR) & ~(batch_cnt.orR)),
//                     false.B, dat_exec_valid_d1))

//     dat_pipe_local_valid := dat_pipe_local_valid_w
//     dat_pipe_valid_d1 := dat_pipe_valid
//     dat_exec_valid_d1 := dat_exec_valid

//     ////////////////////////// request bytes //////////////////////////
//     val dat_req_bytes_d1 = RegInit("b0".asUInt(8.W))
//     val dat_req_bytes = Cat("b0".asUInt(1.W), dl_channel_size)
//     when(dat_exec_valid){
//         dat_req_bytes_d1 := dat_req_bytes
//     }

//     ////////////////////////// output width coordinate counter //////////////////////////
//     // sub_h T, output will compute sub_h point in w direction
//     val dataout_w_cnt = RegInit("b0".asUInt(13.W))
//     val dataout_w_ori = RegInit("b0".asUInt(13.W))

//     val dataout_w_add = sub_h_cmp_g1
//     val dataout_w_cnt_inc = dataout_w_cnt + dataout_w_add 
//     val is_w_end = is_batch_end & is_sub_h_end & (dataout_w_cnt >= dataout_width_cmp)
//     val is_w_end_ahead = is_batch_end & (dataout_w_cnt >= dataout_width_cmp)
//     val dataout_w_cnt_w = Mux(layer_st, dataout_w_init,
//                         Mux(is_stripe_end & ~dl_channel_end, dataout_w_ori,
//                         Mux(is_w_end, dataout_w_init, dataout_w_cnt_inc)))
//     val dataout_w_cnt_reg_en = layer_st | (dat_exec_valid & is_batch_end & is_sub_h_end)
//     val dataout_w_ori_reg_en = layer_st | (dat_exec_valid & is_stripe_end & dl_channel_end)

//     when(dataout_w_cnt_reg_en){
//         dataout_w_cnt := dataout_w_cnt_w
//     }
//     when(dataout_w_ori_reg_en){
//         dataout_w_ori := dataout_w_cnt_w
//     }

//     ////////////////////////// input channel coordinate counter, only feature  //////////////////////////
//     val datain_c_cnt = RegInit("b0".asUInt(11.W))

//     val is_last_channel = (datain_c_cnt === datain_channel_cmp)
//     val datain_c_cnt_reg_en = layer_st | (dat_exec_valid & is_stripe_end & dl_block_end)

//     when(datain_c_cnt_reg_en){
//         datain_c_cnt := Mux(layer_st, "b0".asUInt(11.W), 
//                         Mux(dl_channel_end, "b0".asUInt(11.W),
//                         datain_c_cnt + 1.U))
//     }

//     ////////////////////////// input width coordinate counter, feature/image dedicated counter //////////////////////////
//     val datain_w_cnt = RegInit("b0".asUInt(14.W))
//     val datain_w_ori = RegInit("b0".asUInt(14.W))
//     val pixel_w_cnt = RegInit("b0".asUInt(16.W))
//     val pixel_w_ori = RegInit("b0".asUInt(16.W)) 
//     val pixel_w_ch_ori = RegInit("b0".asUInt(16.W))
//     val channel_op_cnt = RegInit("h2".asUInt(13.W))
//     val dat_req_stripe_st = Wire(Bool())
//     val pixel_force_clr_d1 = RegInit(false.B)
//     val pixel_force_fetch_d1 = RegInit(false.B)

//     val datain_w_cnt_st = Mux(is_img, "b0".asUInt(14.W),
//                         Mux(is_winograd, "h2".asUInt(14.W), 
//                         "b0".asUInt(13.W) -& io.reg2dp_pad_left))
//     val datain_w_cnt_inc = Mux(is_winograd_d1(3), datain_w_cnt +& 2.U, datain_w_cnt +& conv_x_stride)

//     //full data cube w counter,start form negtive, only for feature data. non-image, by element
//     val datain_w_cnt_w = Mux(layer_st, datain_w_cnt_st, 
//                         Mux(is_stripe_end & ~dl_channel_end, datain_w_ori,
//                         Mux(is_w_end, datain_w_cnt_st, datain_w_cnt_inc)))

//     val dl_w_offset_ext = dl_w_offset * x_dilate
//     val datain_w_cur = (datain_w_cnt +& dl_w_offset_ext)(13, 0)
//     val datain_w_cnt_reg_en = layer_st | (dat_exec_valid & is_batch_end & is_sub_h_end & ~is_img_d1(0))
//     val datain_w_ori_reg_en = layer_st | (dat_exec_valid & is_stripe_end & dl_channel_end & ~is_img_d1(1))

//     //notice:after sub_h T, pixel_x_add elements in W direction is used by CMAC
//     val pixel_x_cnt_add = Mux(is_sub_h_end, pixel_x_add, "b0".asUInt(6.W))
//     //channel count.
//     val total_channel_op = Mux(io.reg2dp_weight_channel_ext(conf.LOG2_ATOMC-1, 0) === 0.U, io.reg2dp_weight_channel_ext(12, conf.LOG2_ATOMC),
//                             io.reg2dp_weight_channel_ext(12, conf.LOG2_ATOMC) +& 1.U)
//     channel_op_cnt := Mux(dl_channel_end&is_stripe_end, 2.U,
//                     Mux(dl_block_end&is_stripe_end, channel_op_cnt +& 1.U,
//                     channel_op_cnt))
//     val next_is_last_channel = (channel_op_cnt >= total_channel_op)

//     //notice, after pre-extention, image weight w_total <=128
//     val pixel_w_cnt_w = Mux(layer_st_d1, pixel_x_init,
//                         Mux(is_stripe_end & dl_block_end & dl_channel_end & is_w_end, pixel_x_init,
//                         Mux(is_stripe_end & dl_block_end & dl_channel_end & ~is_w_end, pixel_w_ch_ori +& pixel_ch_stride,
//                         Mux(is_stripe_end & dl_block_end & next_is_last_channel, pixel_w_ori +& pixel_x_init_offset,
//                         Mux(is_stripe_end & dl_block_end & ~next_is_last_channel, pixel_w_ori +& conf.CSC_ENTRY_HEX.U,
//                         Mux(is_stripe_end & ~dl_block_end, pixel_w_ori, pixel_w_cnt +& pixel_x_cnt_add))))))

//     val pixel_w_cur = Cat(Fill(conf.LOG2_ATOMC-1, false.B), pixel_w_cnt(15, conf.LOG2_ATOMC)) //by entry
//     val pixel_w_cnt_reg_en = layer_st_d1 | (dat_exec_valid & is_img_d1(2) & (is_sub_h_end | is_w_end))
//     val pixel_w_ori_reg_en = layer_st_d1 | (dat_exec_valid & is_img_d1(3) & is_stripe_end & dl_block_end)
//     val pixel_ch_ori_reg_en = layer_st_d1 | (dat_exec_valid & is_img_d1(4) & is_stripe_end & dl_block_end & dl_channel_end)

//     val pixel_force_fetch = Mux(is_img_d1(0) & dat_req_stripe_st, true.B, Mux(pixel_force_clr_d1, false.B, pixel_force_fetch_d1))
//     val pixel_force_clr = is_img_d1(0) & is_sub_h_end & (pixel_force_fetch | pixel_force_fetch_d1)

//     when(datain_w_cnt_reg_en){
//         datain_w_cnt := datain_w_cnt_w
//         pixel_w_cnt := pixel_w_cnt_w
//     }
//     when(datain_w_ori_reg_en){
//         datain_w_ori := datain_w_cnt_w
//         pixel_w_ori := pixel_w_cnt_w
//     }
//     when(pixel_ch_ori_reg_en){
//         pixel_w_ch_ori := pixel_w_cnt_w
//     }

//     ////////////////////////// input height coordinate counter, feature/image both  //////////////////////////
//     // full data cube h counter, start form negative
//     val datain_h_cnt = RegInit("b0".asUInt(14.W))
//     val datain_h_ori = RegInit("b0".asUInt(14.W))

//     val datain_h_cnt_st = Mux(is_winograd, "b0".asUInt(14.W), "b0".asUInt(14.W) -& io.reg2dp_pad_top)
//     val datain_h_cnt_inc = datain_h_cnt + conv_y_stride
//     val datain_h_cnt_w = Mux(layer_st | (is_stripe_end & dl_group_end), datain_h_cnt_st,
//                         Mux(is_stripe_end & ~dl_channel_end, datain_h_ori,
//                         Mux(is_w_end, datain_h_cnt_inc, datain_h_cnt)))
//     val datain_h_cnt_reg_en = layer_st | (dat_exec_valid & ((is_stripe_end & ~dl_channel_end) | is_w_end))
//     val datain_h_ori_reg_en = layer_st | (dat_exec_valid & is_stripe_end & dl_channel_end)
//     val dl_h_offset_ext = dl_h_offset * y_dilate
//     val datain_h_cur = (datain_h_cnt +& dl_h_offset_ext +& sub_h_cnt)(13, 0)

//     when(datain_h_cnt_reg_en){ datain_h_cnt := datain_h_cnt_w }
//     when(datain_h_ori_reg_en){ datain_h_ori := datain_h_cnt_w }

//     ////////////////////////// fetch valid generate //////////////////////////
//     val dat_conv_req_dummy = (datain_w_cur(13))|(datain_w_cur > datain_width_cmp)|(datain_h_cur(13))|(datain_h_cur > datain_height_cmp)
//     val dat_wg_req_dummy = false.B
//     val dat_wg_req_skip = datain_w_cur(13, 2).orR & datain_w_cur(1) & stripe_cnt(6, 1).orR
//     val dat_img_req_dummy = datain_h_cur(13) | (datain_h_cur > datain_height_cmp)

//     //w address(in entry) is bigger than avilable entrys
//     val w_bias_w = Wire(UInt(14.W))
//     val dat_img_req_skip = w_bias_w(13, 2) > entries_cmp
//     val dat_req_dummy = Mux(is_img_d1(5), dat_img_req_dummy, Mux(is_winograd_d1(4), dat_wg_req_dummy, dat_conv_req_dummy))
//     val dat_req_skip = (is_winograd_d1(5) & dat_wg_req_skip) | (is_img_d1(6) & dat_img_req_skip)
//     val dat_req_valid = (dat_exec_valid & ~dat_req_dummy & ~dat_req_skip)

//     //Add corner case
//     val dat_req_sub_c_w = Mux(~is_img_d1(7), datain_c_cnt(0), dl_block_end)
//     val dat_req_sub_w_w = Mux(is_winograd_d1(6), ~datain_w_cur(1), datain_w_cur(1, 0))
//     val dat_req_sub_w_st_en = dat_exec_valid & (sub_h_cnt === 0.U)
//     val dat_req_batch_index = batch_cnt
//     dat_req_stripe_st := dl_pvld
//     val dat_req_stripe_end = is_stripe_equal & dat_pipe_valid
//     val dat_req_channel_end = dl_channel_end
//     val dat_req_layer_end = dl_layer_end

//     // PKT_PACK_WIRE( nvdla_stripe_info ,  dat_req_ ,  dat_req_flag_w )
//     val dat_req_flag_w = Cat(dat_req_layer_end, dat_req_channel_end, dat_req_stripe_end, dat_req_stripe_st, dat_req_batch_index)

//     val dat_req_valid_d1 = RegInit(false.B)
//     val dat_req_sub_w_d1 = RegInit("b0".asUInt(2.W))
//     val dat_req_sub_h_d1 = RegInit("b0".asUInt(2.W))
//     val dat_req_sub_c_d1 = RegInit(false.B)
//     val dat_req_ch_end_d1 = RegInit(false.B)
//     val dat_req_dummy_d1 = RegInit(false.B)
//     val dat_req_cur_sub_h_d1 = RegInit("b0".asUInt(2.W))
//     val dat_req_sub_w_st_d1 = RegInit(false.B)
//     val dat_req_flag_d1 = RegInit("b0".asUInt(9.W))
//     val dat_req_rls_d1 = RegInit(false.B)

//     dat_req_valid_d1 := dat_req_valid
//     when(dat_exec_valid){
//         dat_req_sub_w_d1 := dat_req_sub_w_w
//         dat_req_sub_h_d1 := sub_h_cnt
//         dat_req_sub_c_d1 := dat_req_sub_c_w
//         dat_req_ch_end_d1 := is_last_channel
//         dat_req_dummy_d1 := dat_req_dummy
//         dat_req_cur_sub_h_d1 := dl_cur_sub_h
//         dat_req_flag_d1 := dat_req_flag_w
//         dat_req_rls_d1 := dl_dat_release & is_stripe_equal & dat_pipe_valid
//         pixel_force_fetch_d1 := pixel_force_fetch
//         pixel_force_clr_d1 := pixel_force_clr
//     }
//     when(dat_req_sub_w_st_en){
//         dat_req_sub_w_st_d1 := dat_req_stripe_st
//     }

// }}




    



