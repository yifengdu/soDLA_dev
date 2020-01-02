package nvdla

import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}



class NV_soDLA_CSC_DL_CBUF_mng_gateTests(c: NV_soDLA_CSC_DL_CBUF_mng_gate) extends PeekPokeTester(c) {
 
  implicit val conf: nvdlaConfig = new nvdlaConfig

  for (t <- 0 until 100) {

    //from ip
    val is_sg_running = rnd.nextBoolean()
    val is_sg_running_d1 = rnd.nextBoolean()
    val data_bank = rnd.nextInt(1<<5)

    //cdma
    val cdma2sc_dat_updt = rnd.nextBoolean()
    val cdma2sc_dat_slices = rnd.nextInt(1<<14)
    val cdma2sc_dat_entries = rnd.nextInt(1<<conf.CSC_ENTRIES_NUM_WIDTH)

    val sc2cdma_dat_pending_req = rnd.nextBoolean()
    val sc2cdma_dat_slices_w = rnd.nextInt(1<<14)
    val sc2cdma_dat_entries_w = rnd.nextInt(1<<conf.CSC_ENTRIES_NUM_WIDTH)

    //dat_rls
    val dat_rls = rnd.nextBoolean()

    // from sg2dl
    val sg2dl_reuse_rls = rnd.nextBoolean()

    //register
    var dat_slice_avl = 0
    var dat_entry_avl = 0
    var dat_entry_st = 0
    var dat_entry_end = 0

    //poke
    poke(c.io.is_sg_running, is_sg_running)
    poke(c.io.is_sg_running_d1, is_sg_running_d1)
    poke(c.io.data_bank, data_bank)

    poke(c.io.cdma2sc_dat_updt, cdma2sc_dat_updt)
    poke(c.io.cdma2sc_dat_slices, cdma2sc_dat_slices)
    poke(c.io.cdma2sc_dat_entries, cdma2sc_dat_entries)

    poke(c.io.sc2cdma_dat_pending_req, sc2cdma_dat_pending_req)
    poke(c.io.sc2cdma_dat_slices_w, sc2cdma_dat_slices_w)
    poke(c.io.sc2cdma_dat_entries_w, sc2cdma_dat_entries_w)

    poke(c.io.dat_rls, dat_rls)
    poke(c.io.sg2dl_reuse_rls, sg2dl_reuse_rls)


    //
    val cbuf_reset = sc2cdma_dat_pending_req
    val is_running_first = is_sg_running & ~is_sg_running_d1

    //////////////////////////////////// calculate how many avaliable dat slices in cbuf////////////////////////////////////
    val dat_slice_avl_add = if(cdma2sc_dat_updt) cdma2sc_dat_slices else 0
    val dat_slice_avl_sub = if(dat_rls) sc2cdma_dat_slices_w  else 0
    val dat_slice_avl_w = if(cbuf_reset) 0 else dat_slice_avl + dat_slice_avl_add - dat_slice_avl_sub

    //////////////////////////////////// calculate how many avaliable dat entries in cbuf////////////////////////////////////
    val dat_entry_avl_add = if(cdma2sc_dat_updt) cdma2sc_dat_entries else 0
    val dat_entry_avl_sub = if(dat_rls) sc2cdma_dat_entries_w else 0
    val dat_entry_avl_w = if(cbuf_reset) 0 else dat_entry_avl + dat_entry_avl_add - dat_entry_avl_sub


    //////////////////////////////////// calculate avilable data entries start offset in cbuf banks ////////////////////////////////////
    // data_bank is the highest bank for storing data
    val dat_entry_st_inc = dat_entry_st + dat_entry_avl_sub
    val dat_entry_st_inc_wrap = dat_entry_st_inc - data_bank << conf.LOG2_CBUF_BANK_DEPTH
    val is_dat_entry_st_wrap = dat_entry_st_inc >= (data_bank << conf.LOG2_CBUF_BANK_DEPTH)
    val dat_entry_st_w = if(cbuf_reset) 0 else if(is_dat_entry_st_wrap) dat_entry_st_inc_wrap else dat_entry_st_inc

    //////////////////////////////////// calculate avilable data entries end offset in cbuf banks////////////////////////////////////
    val dat_entry_end_inc = dat_entry_end + dat_entry_avl_add
    val dat_entry_end_inc_wrap = dat_entry_end_inc - data_bank << conf.LOG2_CBUF_BANK_DEPTH
    val is_dat_entry_end_wrap = dat_entry_end_inc >= (data_bank << conf.LOG2_CBUF_BANK_DEPTH)
    val dat_entry_end_w = if(cbuf_reset) 0 else if(is_dat_entry_end_wrap) dat_entry_end_inc_wrap else dat_entry_end_inc

    //////////////////////////////////// registers and assertions ////////////////////////////////////
    if(cdma2sc_dat_updt | dat_rls | cbuf_reset){
      dat_slice_avl = dat_slice_avl_w 
    }
    if(cdma2sc_dat_updt | dat_rls | cbuf_reset){
      dat_entry_avl = dat_entry_avl_w
    }
    if(cbuf_reset | dat_rls){
      dat_entry_st = dat_entry_st_w
    }
    if(cbuf_reset | cdma2sc_dat_updt){
      dat_entry_end = dat_entry_end_w
    }

    step(1)

    expect(c.io.dat_slice_avl, dat_slice_avl)
    expect(c.io.dat_entry_avl, dat_entry_avl)
    expect(c.io.dat_entry_st, dat_entry_st)
    expect(c.io.dat_entry_end, dat_entry_end)




}}

class NV_soDLA_CSC_DL_CBUF_mng_gateTester extends ChiselFlatSpec {

  behavior of "NV_soDLA_CSC_DL_CBUF_mng_gate"
  backends foreach {backend =>
    it should s"correctly make cbug mng $backend" in {
      implicit val conf: nvdlaConfig = new nvdlaConfig
      Driver(() => new NV_soDLA_CSC_DL_CBUF_mng_gate())(c => new NV_soDLA_CSC_DL_CBUF_mng_gateTests(c)) should be (true)
    }
  }
}