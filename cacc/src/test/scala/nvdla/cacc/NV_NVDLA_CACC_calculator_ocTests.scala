package nvdla

import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}


class NV_NVDLA_CACC_calculator_ocTests(c: NV_NVDLA_CACC_calculator_oc) extends PeekPokeTester(c) {
 
  implicit val conf: nvdlaConfig = new nvdlaConfig

  //case dlv_sat_clr is true
  for (t <- 0 until 100) {

    val calc_fout_sat = Array.fill(conf.CACC_ATOMK){0}
    for(i <- 0 to conf.CACC_ATOMK-1){
      calc_fout_sat(i) = rnd.nextInt(2)
    }
    sat_sum = calc_fout_sat.reduce(_+_)

    // set up 
    poke(c.io.calc_fout_sat(0), 1)
    poke(c.io.calc_layer_end_out, false)
    poke(c.io.calc_stripe_end_out, false)
    poke(c.io.calc_dlv_valid_out, true)

    step(1)
    // after one delay, strip end is true
    //trigger dlv_sat_clr is true
    poke(c.io.calc_stripe_end_out, true)

    step(1)

    expect(c.io.dp2reg_sat_count, sat_sum)


}}

class NV_NVDLA_CACC_calculator_ocTester extends ChiselFlatSpec {

  behavior of "NV_NVDLA_CACC_calculator_oc"
  backends foreach {backend =>
    it should s"correctly make counter $backend" in {
      implicit val conf: nvdlaConfig = new nvdlaConfig
      Driver(() => new NV_NVDLA_CACC_calculator_oc())(c => new NV_NVDLA_CACC_calculator_ocTests(c)) should be (true)
    }
  }
}