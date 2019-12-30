package nvdla

import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class NV_FIFO_zeroTests(c: NV_NVDLA_fifo) extends PeekPokeTester(c) {
  for(t <- 0 to 9){
    
    val wdata = rnd.nextInt(1<<32)
    poke(c.io.vi, 1)
    poke(c.io.di, wdata)
    poke(c.io.ri, 1)

    step(2)

    expect(c.io.vo, 1)
    expect(c.io.ro, 1)
    expect(c.io.dout, wdata)



  }
}


class NV_NVDLA_BC_OS_pipeTester extends ChiselFlatSpec {
  behavior of "NV_NVDLA_BC_IS_pipe"
  backends foreach {backend =>
    it should s"... $backend" in {
      Driver(() => new NV_NVDLA_fifo_gate(depth = 0, width = 1))(c => new NV_FIFO_zeroTests(c)) should be (true)
    }
  }
}