package nvdla

import chisel3._
import chisel3.experimental._
import chisel3.util._

//delay unit for abuff and dbuff
@chiselName
class NV_soDLA_CACC_calculator_bd_gate(useRealClock:Boolean = false)(implicit val conf: nvdlaConfig) extends Module {

    val io = IO(new Bundle {
        //clk
        val nvdla_core_clk = Input(Clock())
        val nvdla_core_rstn = Input(Bool())
        
        val calc_valid = Input(Bool())
        val calc_addr = Input(UInt(6.W))
        val calc_mode = Input(UInt(3.W))
        val calc_stripe_end = Input(Bool())
        val calc_channel_end = Input(Bool())
        val calc_layer_end = Input(Bool())
        val calc_dlv_elem_mask = Input(Bool())

        val calc_valid_out = Output(Bool())
        val calc_wr_en_out = Output(Bool())
        val calc_addr_out = Output(UInt(6.W))

        val calc_dlv_valid_out = Output(Bool())
        val calc_stripe_end_out = Output(Bool())
        val calc_layer_end_out = Output(Bool())
        
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

withClockAndReset(io.nvdla_core_clk, !io.nvdla_core_rstn){   

    val calc_dlv_valid = io.calc_valid & io.calc_channel_end
    val calc_wr_en = io.calc_valid & (~io.calc_channel_end)

    // Latency pipeline to balance with calc cells, signal for both abuffer & dbuffer

    val calc_valid_d = Wire(Bool()) +: 
                       Seq.fill(conf.CACC_CELL_PARTIAL_LATENCY)(RegInit(false.B)) 
    val calc_wr_en_d = Wire(Bool()) +: 
                       Seq.fill(conf.CACC_CELL_PARTIAL_LATENCY)(RegInit(false.B)) 
    val calc_addr_d = Wire(UInt(6.W))+:
                      Seq.fill(conf.CACC_CELL_PARTIAL_LATENCY)(RegInit("b0".asUInt(6.W)))
    
    calc_valid_d(0) := io.calc_valid
    calc_wr_en_d(0) := calc_wr_en
    calc_addr_d(0) := io.calc_addr

    for (t <- 0 to conf.CACC_CELL_PARTIAL_LATENCY-1){
        calc_valid_d(t+1) := calc_valid_d(t)
        calc_wr_en_d(t+1) := calc_wr_en_d(t)
        when(calc_valid_d(t)){
            calc_addr_d(t+1) := calc_addr_d(t)
        }
    }  

    io.calc_valid_out := calc_valid_d(conf.CACC_CELL_PARTIAL_LATENCY) 
    io.calc_wr_en_out := calc_wr_en_d(conf.CACC_CELL_PARTIAL_LATENCY) 
    io.calc_addr_out := calc_addr_d(conf.CACC_CELL_PARTIAL_LATENCY)


    val calc_dlv_valid_d = Wire(Bool()) +: 
                           Seq.fill(conf.CACC_CELL_FINAL_LATENCY)(RegInit(false.B)) 
    val calc_stripe_end_d = Wire(Bool()) +: 
                            Seq.fill(conf.CACC_CELL_FINAL_LATENCY)(RegInit(false.B))
    val calc_layer_end_d = Wire(Bool()) +: 
                           Seq.fill(conf.CACC_CELL_FINAL_LATENCY)(RegInit(false.B))
    
    calc_dlv_valid_d(0) := calc_dlv_valid
    calc_stripe_end_d(0) := io.calc_stripe_end
    calc_layer_end_d(0) := io.calc_layer_end

    for (t <- 0 to conf.CACC_CELL_FINAL_LATENCY-1){
        calc_dlv_valid_d(t+1) := calc_dlv_valid_d(t)
        when(calc_dlv_valid_d(t)){
            calc_stripe_end_d(t+1) := calc_stripe_end_d(t)
            calc_layer_end_d(t+1) := calc_layer_end_d(t)
        }
    } 

    io.calc_dlv_valid_out := calc_dlv_valid_d(conf.CACC_CELL_FINAL_LATENCY)
    io.calc_stripe_end_out := calc_stripe_end_d(conf.CACC_CELL_FINAL_LATENCY)
    io.calc_layer_end_out := calc_layer_end_d(conf.CACC_CELL_FINAL_LATENCY)

}}


object NV_soDLA_CACC_calculator_bd_gateDriver extends App {
  implicit val conf: nvdlaConfig = new nvdlaConfig
  chisel3.Driver.execute(args, () => new NV_soDLA_CACC_calculator_bd_gate())
}

