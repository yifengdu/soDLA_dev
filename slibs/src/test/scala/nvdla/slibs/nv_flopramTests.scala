package nvdla

import chisel3.util._
import chisel3.testers.BasicTester
import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}


class nv_flopramTests(c: nv_flopram) extends PeekPokeTester(c) {

for(t <- 0 until 10){ 
    //write a data
    val in_data = rnd.nextInt(1<<33)
    val in_address = rnd.nextInt(1<<2)

    poke(c.io.we, true)
    poke(c.io.iwe.get, true)
    poke(c.io.wa.get, in_address)
    poke(c.io.di, in_data)

    step(1)

    //read the data
    poke(c.io.ra, in_address)

    step(1)

    expect(c.io.dout, in_data)
  
}}

class nv_flopramTester extends ChiselFlatSpec {

  behavior of "nv_flopram"
  backends foreach {backend =>
    it should s"read and write$backend" in {
      Driver(() => new nv_flopram(dep = 4, wid = 33, wr_reg = true))(c => new nv_flopramTests(c)) should be (true)
    }
  }
}