package nvdla

import chisel3._
import chisel3.experimental._
import chisel3.util._


@chiselName
class NV_soDLA_CSC_DL_CBUF_mng_gate(implicit val conf: nvdlaConfig) extends Module {
    val io = IO(new Bundle {
        //clock
        val nvdla_core_ng_clk = Input(Clock())
        val nvdla_core_rstn = Input(Bool())

        //cdma
        val cdma2sc_dat_updt = Input(Bool())
        val cdma2sc_dat_slices = Input(UInt(14.W))
        val cdma2sc_dat_entries = Input(UInt(conf.CSC_ENTRIES_NUM_WIDTH.W))

        val sc2cdma_dat_pending_req = Input(Bool())
        val sc2cdma_dat_slices_w = Input(UInt(14.W))
        val sc2cdma_dat_entries_w = Input(UInt(conf.CSC_ENTRIES_NUM_WIDTH.W))

        val dat_rls = Input(Bool())

        // from sg2dl
        val sg2dl_reuse_rls = Input(Bool())

        //from ip
        val is_sg_running = Input(Bool())
        val is_sg_running_d1 = Input(Bool())
        val data_bank = Input(UInt(5.W))

        val dat_slice_av1 = Output(UInt(14.W))
        val dat_entry_avl = Output(UInt(conf.CSC_ENTRIES_NUM_WIDTH.W))
        val dat_entry_st = Output(UInt(conf.CSC_ENTRIES_NUM_WIDTH.W))
        val dat_entry_end = Output(UInt(conf.CSC_ENTRIES_NUM_WIDTH.W))

    })
/////////////////////////////////////////////////////////////////////////////////////////////
// Pipeline of Weight loader, for both compressed weight and uncompressed weight
//
//                      input_package 
//                           |                     
//                      data request               
//                           |                     
//                      conv_buffer <= you are here //need 2d               
//                           |                     
//                      feature data---> data relase
//                        |     |                  
//                      REG    PRA                 
//                        |     |                  
//                        REGISTER                 
//                           |                     
//                          MAC                    
//
/////////////////////////////////////////////////////////////////////////////////////////////
withClockAndReset(io.nvdla_core_ng_clk, !io.nvdla_core_rstn){
    /////////////////////////////////////////////////////////////
    ///// cbuf status management                             /////
    //////////////////////////////////////////////////////////////
    val cbuf_reset = io.sc2cdma_dat_pending_req
    val is_running_first = io.is_sg_running & ~io.is_sg_running_d1

    //================  Non-SLCG clock domain ================//
    val dat_slice_avl_reg = RegInit("b0".asUInt(14.W))
    val dat_entry_avl_reg = RegInit("b0".asUInt(conf.CSC_ENTRIES_NUM_WIDTH.W))
    val dat_entry_st_reg = RegInit("b0".asUInt(conf.CSC_ENTRIES_NUM_WIDTH.W))
    val dat_entry_end_reg = RegInit("b0".asUInt(conf.CSC_ENTRIES_NUM_WIDTH.W))

    //////////////////////////////////// calculate how many avaliable dat slices in cbuf////////////////////////////////////
    val dat_slice_avl_add = Mux(io.cdma2sc_dat_updt, io.cdma2sc_dat_slices, "b0".asUInt(14.W))
    val dat_slice_avl_sub = Mux(io.dat_rls, io.sc2cdma_dat_slices_w, "b0".asUInt(14.W))
    val dat_slice_avl_w = Mux(cbuf_reset, "b0".asUInt(14.W), dat_slice_avl_reg +& dat_slice_avl_add -& dat_slice_avl_sub)(13, 0)

    //////////////////////////////////// calculate how many avaliable dat entries in cbuf////////////////////////////////////
    val dat_entry_avl_add = Mux(io.cdma2sc_dat_updt, io.cdma2sc_dat_entries, "b0".asUInt(conf.CSC_ENTRIES_NUM_WIDTH.W))
    val dat_entry_avl_sub = Mux(io.dat_rls, io.sc2cdma_dat_entries_w, "b0".asUInt(conf.CSC_ENTRIES_NUM_WIDTH.W))
    val dat_entry_avl_w = Mux(cbuf_reset,"b0".asUInt(conf.CSC_ENTRIES_NUM_WIDTH.W), dat_entry_avl_reg +& dat_entry_avl_add -& dat_entry_avl_sub)(conf.CSC_ENTRIES_NUM_WIDTH-1, 0)

    //////////////////////////////////// calculate avilable data entries start offset in cbuf banks ////////////////////////////////////
    // data_bank is the highest bank for storing data
    val dat_entry_st_inc = dat_entry_st_reg + dat_entry_avl_sub
    val dat_entry_st_inc_wrap = dat_entry_st_inc - Cat(io.data_bank, Fill(conf.LOG2_CBUF_BANK_DEPTH, false.B))
    val is_dat_entry_st_wrap = dat_entry_st_inc >= Cat(io.data_bank, Fill(conf.LOG2_CBUF_BANK_DEPTH, false.B))
    val dat_entry_st_w = Mux(cbuf_reset,"b0".asUInt(conf.CSC_ENTRIES_NUM_WIDTH.W), Mux(is_dat_entry_st_wrap,  dat_entry_st_inc_wrap,  dat_entry_st_inc))

    //////////////////////////////////// calculate avilable data entries end offset in cbuf banks////////////////////////////////////
    val dat_entry_end_inc = dat_entry_end_reg + dat_entry_avl_add
    val dat_entry_end_inc_wrap = dat_entry_end_inc - Cat(io.data_bank, Fill(conf.LOG2_CBUF_BANK_DEPTH, false.B))
    val is_dat_entry_end_wrap = dat_entry_end_inc >= Cat(io.data_bank, Fill(conf.LOG2_CBUF_BANK_DEPTH, false.B))
    val dat_entry_end_w = Mux(cbuf_reset, "b0".asUInt(conf.CSC_ENTRIES_NUM_WIDTH.W), Mux(is_dat_entry_end_wrap,  dat_entry_end_inc_wrap, dat_entry_end_inc))

    //////////////////////////////////// registers and assertions ////////////////////////////////////
    when(io.cdma2sc_dat_updt|io.dat_rls|cbuf_reset){ dat_slice_avl_reg := dat_slice_avl_w }
    when(io.cdma2sc_dat_updt|io.dat_rls|cbuf_reset){ dat_entry_avl_reg := dat_entry_avl_w }
    when(io.dat_rls|cbuf_reset){ dat_entry_st_reg := dat_entry_st_w }
    when(io.cdma2sc_dat_updt|cbuf_reset){ dat_entry_end_reg := dat_entry_end_w }
    //================  Non-SLCG clock domain end ================//

    io.dat_slice_av1 := dat_slice_avl_reg
    io.dat_entry_avl := dat_entry_avl_reg
    io.dat_entry_st := dat_entry_st_reg
    io.dat_entry_end := dat_entry_end_reg


}

}


@chiselName
class NV_soDLA_CSC_DL_CBUF_updt_gate(implicit val conf: nvdlaConfig) extends Module {
    val io = IO(new Bundle {
        //clock
        val nvdla_core_clk = Input(Clock())
        val nvdla_core_rstn = Input(Bool())

        //cdma 
        val sc2cdma_dat_updt = Output(Bool())
        val sc2cdma_dat_slices = Output(UInt(14.W))
        val sc2cdma_dat_entries = Output(UInt(conf.CSC_ENTRIES_NUM_WIDTH.W))

        // from sg2dl
        val sg2dl_reuse_rls = Input(Bool())
        
        //from response control
        val dat_rsp_pvld = Input(Bool())
        val dat_rsp_rls = Input(Bool())

        //from ip
        val last_slices = Input(UInt(14.W))
        val rls_slices = Input(UInt(14.W))
        val last_entries = Input(UInt(conf.CSC_ENTRIES_NUM_WIDTH.W))
        val rls_entries = Input(UInt(conf.CSC_ENTRIES_NUM_WIDTH.W))

        //interact with mng
        val sc2cdma_dat_slices_w = Output(UInt(14.W))
        val sc2cdma_dat_entries_w = Output(UInt(conf.CSC_ENTRIES_NUM_WIDTH.W))
        val dat_rls = Output(Bool())
    
    })
/////////////////////////////////////////////////////////////////////////////////////////////
// Pipeline of Weight loader, for both compressed weight and uncompressed weight
//
//                      input_package 
//                           |                     
//                      data request               
//                           |                     
//                      conv_buffer <= you are here //need 2d               
//                           |                     
//                      feature data---> data relase
//                        |     |                  
//                      REG    PRA                 
//                        |     |                  
//                        REGISTER                 
//                           |                     
//                          MAC                    
//
///////////////////////////////////////////////////////////////////////////////////////////// 
withClockAndReset(io.nvdla_core_clk, !io.nvdla_core_rstn){
//////////////////////////////////////////////////////////////
///// cbuf status update                                 /////
//////////////////////////////////////////////////////////////
val sub_rls = (io.dat_rsp_pvld & io.dat_rsp_rls)
val reuse_rls = io.sg2dl_reuse_rls

io.dat_rls := (reuse_rls & io.last_slices.orR) | (sub_rls & io.rls_slices.orR)
io.sc2cdma_dat_slices_w := Mux(sub_rls, io.rls_slices, io.last_slices)
io.sc2cdma_dat_entries_w := Mux(sub_rls, io.rls_entries, io.last_entries)

io.sc2cdma_dat_updt := RegNext(io.dat_rls, false.B)
io.sc2cdma_dat_slices := RegEnable(io.sc2cdma_dat_slices_w, "b0".asUInt(14.W), io.dat_rls)
io.sc2cdma_dat_entries := RegEnable(io.sc2cdma_dat_entries_w, "b0".asUInt(conf.CSC_ENTRIES_NUM_WIDTH.W), io.dat_rls)

}}





object NV_soDLA_CSC_DL_CBUF_mng_gateDriver extends App {
  implicit val conf: nvdlaConfig = new nvdlaConfig
  chisel3.Driver.execute(args, () => new NV_soDLA_CSC_DL_CBUF_mng_gate)
}


object NV_soDLA_CSC_DL_CBUF_updt_gateDriver extends App {
  implicit val conf: nvdlaConfig = new nvdlaConfig
  chisel3.Driver.execute(args, () => new NV_soDLA_CSC_DL_CBUF_updt_gate)
}


    



