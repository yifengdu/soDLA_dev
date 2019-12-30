package nvdla

import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class NV_FIFO_csc_sgTests(c: NV_NVDLA_fifo) extends PeekPokeTester(c) {
  for(t <- 0 to 9){

    val wdata0 = rnd.nextInt(1<<8)
    poke(c.io.wr_pvld, 1)
    poke(c.io.rd_prdy, 1)
    poke(c.io.wr_pd, wdata0)

    step(1)

    val wdata1 = rnd.nextInt(1<<8)
    poke(c.io.wr_pvld, 1)
    poke(c.io.rd_prdy, 1)
    poke(c.io.wr_pd, wdata1)

    step(1)

    val wdata2= rnd.nextInt(1<<8)
    poke(c.io.wr_pvld, 1)
    poke(c.io.rd_prdy, 1)
    poke(c.io.wr_pd, wdata2)

    step(1)

    val wdata3 = rnd.nextInt(1<<8)
    poke(c.io.wr_pvld, 1)
    poke(c.io.rd_prdy, 1)
    poke(c.io.wr_pd, wdata3)

    step(1)

    expect(c.io.rd_pvld, 1)
    expect(c.io.wr_prdy, 1)
    expect(c.io.rd_pd, wdata3)



  }
}


class NV_FIFO_csc_sgTester extends ChiselFlatSpec {
  behavior of "NV_FIFO_csc_sg"
  backends foreach {backend =>
    it should s"... $backend" in {
      Driver(() => new NV_NVDLA_fifo(depth = 4, width = 8, ram_type = 0, distant_wr_req = false, io_wr_empty = true))(c => new NV_FIFO_csc_sgTests(c)) should be (true)
    }
  }
}