// package nvdla

// import chisel3._
// import chisel3.experimental._
// import chisel3.util._

// //generate date read sequence
// class NV_NVDLA_CSC_DL_GDR_rt(useRealClock:Boolean = false)(implicit val conf: nvdlaConfig) extends Module {
//     val io = IO(new Bundle {
//         //clock
//         val nvdla_core_clk = Input(Clock())

//         val sg2dl_pd = Flipped(ValidIO(UInt(31.W)))




//         val layer_st = Input(Bool())

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
// val gdrs_clock = if(useRealClock) io.nvdla_core_ng_clk else clock  

// class gdrsImpl{

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

//     val dl_in_pvld = Mux(is_winograd_d1(0), dl_in_pvld_d(wg_depth), dl_in_pvld_d(total_depth))
//     val dl_in_pd = Mux(is_winograd_d1(1), dl_in_pd_d(wg_depth), dl_in_pd_d(total_depth))

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
//     }

// }

//  val cbuf_mng = withClock(manage_clock){new mngImpl} 

// }




    



