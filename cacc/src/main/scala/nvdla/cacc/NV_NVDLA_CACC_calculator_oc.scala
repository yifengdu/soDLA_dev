package nvdla

import chisel3._
import chisel3.experimental._
import chisel3.util._

//calculate overflow
//need 2d
class NV_NVDLA_CACC_calculator_oc(useRealClock:Boolean = false)(implicit val conf: nvdlaConfig) extends Module {
    val io = IO(new Bundle {
        //clock
        val nvdla_core_clk = Input(Clock())

        val calc_fout_sat = Input(Vec(conf.CACC_ATOMK, Bool()))
        val calc_layer_end_out = Input(Bool())
        val calc_stripe_end_out = Input(Bool())
        val calc_dlv_valid_out = Input(Bool())

        val dp2reg_sat_count = Output(UInt(32.W))
 
    })
val internal_clock = if(useRealClock) io.nvdla_core_clk else clock  

            
class ocImpl{

    val dlv_sat_vld_d1 = RegInit(false.B)
    val dlv_sat_end_d1 = RegInit(true.B)
    val dlv_sat_bit_d1 = RegInit(VecInit(Seq.fill(conf.CACC_ATOMK)(false.B)))
    val dlv_sat_clr_d1 = RegInit(false.B)
    
    val dlv_sat_bit = io.calc_fout_sat
    val dlv_sat_end = io.calc_layer_end_out & io.calc_stripe_end_out
    val dlv_sat_clr = io.calc_dlv_valid_out & ~dlv_sat_end & dlv_sat_end_d1

    dlv_sat_vld_d1 := io.calc_dlv_valid_out
    when(io.calc_dlv_valid_out){
        dlv_sat_end_d1 := dlv_sat_end
        dlv_sat_bit_d1 := dlv_sat_bit
    }
    dlv_sat_clr_d1 := dlv_sat_clr
    val sat_sum = VecInit((0 to conf.CACC_ATOMK-1) map { i => dlv_sat_bit_d1(i).asUInt}).reduce(_+&_)

    val sat_count = RegInit("b0".asUInt(32.W))
    val sat_count_inc = (sat_count +& sat_sum)(31, 0)
    val sat_carry = (sat_count +& sat_sum)(32)
    val sat_count_w = Wire(UInt(32.W))
    sat_count_w := Mux(dlv_sat_clr_d1, sat_sum,
                   Mux(sat_carry, Fill(32, true.B), sat_count_inc))
    val sat_reg_en = dlv_sat_vld_d1 & ((sat_sum.orR) | dlv_sat_clr_d1);
    when(sat_reg_en){
        sat_count := sat_count_w
    }

    io.dp2reg_sat_count := sat_count

}

val oc = withClock(internal_clock){new ocImpl} 

}


object NV_NVDLA_CACC_calculator_ocDriver extends App {
  implicit val conf: nvdlaConfig = new nvdlaConfig
  chisel3.Driver.execute(args, () => new NV_NVDLA_CACC_calculator_oc())
}

