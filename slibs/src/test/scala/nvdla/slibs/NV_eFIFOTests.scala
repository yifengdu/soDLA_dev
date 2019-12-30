package nvdla

import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}

class NV_NVDLA_CSC_SG_wt_fifoTests(c: NV_NVDLA_CSC_SG_wt_fifo) extends PeekPokeTester(c) {
  for(t <- 0 to 9){
    

    val wdata0 = rnd.nextInt(1<<8)
    poke(c.io.wr_req, 1)
    poke(c.io.rd_ready, 1)
    poke(c.io.wr_data, wdata0)

    poke(c.io.wr_req, 0)
    poke(c.io.rd_ready, 0)

    step(1)

    poke(c.io.wr_req, 0)
    poke(c.io.rd_ready, 0)

    val wdata1 = rnd.nextInt(1<<8)
    poke(c.io.wr_req, 1)
    poke(c.io.rd_ready, 1)
    poke(c.io.wr_data, wdata1)

    step(1)

    poke(c.io.wr_req, 0)
    poke(c.io.rd_ready, 0)

    val wdata2= rnd.nextInt(1<<8)
    poke(c.io.wr_req, 1)
    poke(c.io.rd_ready, 1)
    poke(c.io.wr_data, wdata2)

    step(1)

    poke(c.io.wr_req, 0)
    poke(c.io.rd_ready, 0)

    val wdata3 = rnd.nextInt(1<<8)
    poke(c.io.wr_req, 1)
    poke(c.io.rd_ready, 1)
    poke(c.io.wr_data, wdata3)

    step(1)

    poke(c.io.wr_req, 1)
    poke(c.io.rd_ready, 1)

    expect(c.io.rd_req, 1)
    expect(c.io.wr_ready, 1)
    expect(c.io.rd_data, wdata3)






  }
}


class NV_NVDLA_CSC_SG_wt_fifoTester extends ChiselFlatSpec {
  behavior of "NV_NVDLA_CSC_SG_wt_fifo"
  backends foreach {backend =>
    it should s"... $backend" in {
      Driver(() => new NV_NVDLA_CSC_SG_wt_fifo)(c => new NV_NVDLA_CSC_SG_wt_fifoTests(c)) should be (true)
    }
  }
}