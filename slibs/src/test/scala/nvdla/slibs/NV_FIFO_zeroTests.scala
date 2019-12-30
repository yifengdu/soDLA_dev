package nvdla

import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class NV_FIFO_zeroTests(c: NV_NVDLA_fifo) extends PeekPokeTester(c) {
  for(t <- 0 to 9){
    
    val wdata = rnd.nextInt(1<<32)
    poke(c.io.wr_pvld, 1)
    poke(c.io.rd_prdy, 1)
    poke(c.io.wr_pd, wdata)

    step(2)

    expect(c.io.rd_pvld, 1)
    expect(c.io.wr_prdy, 0)
    expect(c.io.rd_pd, wdata)
  }
}


class NV_FIFO_zeroTester extends ChiselFlatSpec {
  behavior of "NV_FIFO_zero"
  backends foreach {backend =>
    it should s"... $backend" in {
      Driver(() => new NV_NVDLA_fifo(depth = 0, width = 32))(c => new NV_FIFO_zeroTests(c)) should be (true)
    }
  }
}