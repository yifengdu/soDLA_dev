package nvdla

import chisel3._
import chisel3.experimental._
import chisel3.util._

//gather data from dbuff and abuff(buffer collection) ,deliver to corresponding buffer
class NV_NVDLA_CACC_calculator_bc(useRealClock:Boolean = false)(implicit val conf: nvdlaConfig) extends Module {

    val io = IO(new Bundle {
        //clk
        val nvdla_core_clk = Input(Clock())

        val calc_wr_en = Input(Bool())
        val calc_addr = Input(UInt(conf.CACC_ABUF_AWIDTH.W))
        val calc_pout_vld = Input(Vec(conf.CACC_ATOMK, Bool()))
        val calc_fout_vld = Input(Vec(conf.CACC_ATOMK, Bool()))
        val calc_pout_sum = Input(Vec(conf.CACC_ATOMK, UInt(conf.CACC_PARSUM_WIDTH.W)))
        val calc_fout_sum = Input(Vec(conf.CACC_ATOMK, UInt(conf.CACC_FINAL_WIDTH.W)))

        val abuf_wr = new nvdla_wr_if(conf.CACC_ABUF_AWIDTH, conf.CACC_ABUF_WIDTH)

        val calc_dlv_valid = Input(Bool())
        val calc_stripe_end = Input(Bool())
        val calc_layer_end = Input(Bool())

        val dlv_valid = Output(Bool())
        val dlv_mask = Output(Bool()) 
        val dlv_data = Output(UInt((conf.CACC_ATOMK*conf.CACC_FINAL_WIDTH).W))
        val dlv_pd = Output(UInt(2.W))  
    })
//     
//          ┌─┐       ┌─┐
//       ┌──┘ ┴───────┘ ┴──┐
//       │                 │
//       │       ───       │
//       │  ─┬┘       └┬─  │
//       │                 │
//       │       ─┴─       │
//       │                 │
//       └───┐         ┌───┘
//           │         │
//           │         │
//           │         │
//           │         └──────────────┐
//           │                        │
//           │                        ├─┐
//           │                        ┌─┘    
//           │                        │
//           └─┐  ┐  ┌───────┬──┐  ┌──┘         
//             │ ─┤ ─┤       │ ─┤ ─┤         
//             └──┴──┘       └──┴──┘ 

val internal_clock = if(useRealClock) io.nvdla_core_clk else clock  

            
class bcImpl{       
    val calc_pout = Wire(Vec(conf.CACC_ATOMK, UInt(conf.CACC_PARSUM_WIDTH.W)))
    for (i <- 0 to conf.CACC_ATOMK-1){
        calc_pout(i) := Fill(conf.CACC_PARSUM_WIDTH, io.calc_pout_vld(i)) & io.calc_pout_sum(i)
    }
    val calc_fout = Wire(Vec(conf.CACC_ATOMK, UInt(conf.CACC_FINAL_WIDTH.W)))
    for (i <- 0 to conf.CACC_ATOMK-1){
        calc_fout(i) := Fill(conf.CACC_FINAL_WIDTH, io.calc_fout_vld(i)) & io.calc_fout_sum(i)
    }  

    // to abuffer, 1 pipe

    io.abuf_wr.addr.valid := RegNext(io.calc_wr_en, false.B)
    io.abuf_wr.addr.bits := RegEnable(io.calc_addr, "b0".asUInt(conf.CACC_ABUF_AWIDTH.W), io.calc_wr_en)
    io.abuf_wr.data := RegEnable(calc_pout.asUInt, io.calc_wr_en)

    // to dbuffer, 1 pipe.
    io.dlv_data := RegEnable(calc_fout.asUInt, io.calc_dlv_valid)
    io.dlv_valid := RegNext(io.calc_dlv_valid, false.B)
    io.dlv_mask := RegNext(io.calc_dlv_valid, false.B)
    val dlv_stripe_end = RegEnable(io.calc_stripe_end, false.B, io.calc_dlv_valid)
    val dlv_layer_end = RegEnable(io.calc_layer_end, false.B, io.calc_dlv_valid)
    io.dlv_pd := Cat(dlv_layer_end, dlv_stripe_end)

}

val bc = withClock(internal_clock){new bcImpl} 

}


object NV_NVDLA_CACC_calculator_bcDriver extends App {
  implicit val conf: nvdlaConfig = new nvdlaConfig
  chisel3.Driver.execute(args, () => new NV_NVDLA_CACC_calculator_bc())
}

