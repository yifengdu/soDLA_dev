package nvdla

import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}


class NV_NVDLA_CSC_DL_IP_cfgTests(c: NV_NVDLA_CSC_DL_IP_cfg) extends PeekPokeTester(c) {
 
  implicit val conf: nvdlaConfig = new nvdlaConfig

  for (t <- 0 until 100) {
    // set up status from sequential generator
    val is_sg_idle = rnd.nextBoolean()
    val is_sg_running = rnd.nextBoolean()
    val is_sg_done = rnd.nextBoolean()

    // set up reg2dp
    val op_en = rnd.nextBoolean()
    val conv_mode = rnd.nextBoolean()
    val batches = rnd.nextInt(1<<5)
    val proc_precision = rnd.nextInt(1<<2)
    val datain_format = rnd.nextBoolean()
    val skip_data_rls = rnd.nextBoolean()
    val datain_channel_ext = rnd.nextInt(1<<13)
    val datain_height_ext = rnd.nextInt(1<<13)
    val datain_width_ext = rnd.nextInt(1<<13)
    val y_extension = rnd.nextInt(1<<2)
    val weight_channel_ext = rnd.nextInt(1<<13)
    val entries = rnd.nextInt(1<<14)
    val dataout_width = rnd.nextInt(1<<13)
    val rls_slices = rnd.nextInt(1<<12)
    val conv_x_stride_ext = rnd.nextInt(1<<3)
    val conv_y_stride_ext = rnd.nextInt(1<<3)
    val x_dilation_ext = rnd.nextInt(1<<5)
    val y_dilation_ext = rnd.nextInt(1<<5)
    val pad_left = rnd.nextInt(1<<5)
    val pad_top = rnd.nextInt(1<<5)
    val pad_value = rnd.nextInt(1<<16)
    val data_bank = rnd.nextInt(1<<5)
    val pra_truncate = rnd.nextInt(1<<2)

    //poke
    poke(c.io.is_sg_idle, is_sg_idle)
    poke(c.io.is_sg_running, is_sg_running)
    poke(c.io.is_sg_done, is_sg_done)

    poke(c.io.reg2dp.op_en, op_en)
    poke(c.io.reg2dp.conv_mode, conv_mode)
    poke(c.io.reg2dp.batches, batches)
    poke(c.io.reg2dp.proc_precision, proc_precision)
    poke(c.io.reg2dp.datain_format, datain_format)
    poke(c.io.reg2dp.skip_data_rls, skip_data_rls)
    poke(c.io.reg2dp.datain_channel_ext, datain_channel_ext)
    poke(c.io.reg2dp.datain_height_ext, datain_height_ext)
    poke(c.io.reg2dp.datain_width_ext, datain_width_ext)
    poke(c.io.reg2dp.y_extension, y_extension)
    poke(c.io.reg2dp.weight_channel_ext, weight_channel_ext)
    poke(c.io.reg2dp.entries, entries)
    poke(c.io.reg2dp.dataout_width, dataout_width)
    poke(c.io.reg2dp.rls_slices, rls_slices)
    poke(c.io.reg2dp.conv_x_stride_ext, conv_x_stride_ext)
    poke(c.io.reg2dp.conv_y_stride_ext, conv_y_stride_ext)
    poke(c.io.reg2dp.x_dilation_ext, x_dilation_ext)
    poke(c.io.reg2dp.y_dilation_ext, y_dilation_ext)
    poke(c.io.reg2dp.pad_left, pad_left)
    poke(c.io.reg2dp.pad_top, pad_top)
    poke(c.io.reg2dp.pad_value, pad_value)
    poke(c.io.reg2dp.data_bank , data_bank)
    poke(c.io.reg2dp.pra_truncate, pra_truncate)


    //////////////////////////////////////////////////////////////
    ///// input signals from registers                       /////
    //////////////////////////////////////////////////////////////
    val layer_st = op_en & is_sg_idle
    val is_pixel = datain_format == true
    val is_conv = conv_mode == false
    val is_img = is_conv & is_pixel
    val data_bank_w = data_bank + 1

    val is_winograd = if(conf.NVDLA_WINOGRAD_ENABLE) conv_mode == true else false
    var data_batch_w = 0
    var batch_cmp_w = 0
    if(conf.NVDLA_BATCH_ENABLE){
        data_batch_w = if(is_winograd||is_img) 1 else batches + 1
        batch_cmp_w = if(is_winograd||is_img) 0 else batches
    }
    else{
        data_batch_w = 1
        batch_cmp_w = 0
    }
    
    val datain_width_w = if(is_winograd) datain_width_ext/4 + 1 else datain_width_ext
    val datain_width_cmp_w = datain_width_ext + 1
    val datain_height_cmp_w = datain_height_ext
    val datain_channel_cmp_w = if(is_winograd) weight_channel_ext/4 else weight_channel_ext/conf.MAC_ATOMIC_C_SIZE
    //y_ex=0,sub_h_total=1;y_ex=1,sub_h_total=2; y_ext=2,sub_h_total=4; non_image, sub_h_total=1;
    //sub_h_total means how many h lines are used in post-extention
    val sub_h_total_w = {
      def sub_h_total_w(x: Int, is_img:Boolean) : Int = (x, is_img) match{
        case (0, true) => 1
        case (1, true) => 2
        case (2, true) => 4
        case (_, false) => 1
        case _ => 1
      }
      sub_h_total_w(y_extension, is_img)
    }

    val sub_h_cmp_w = if(is_img) sub_h_total_w else if(is_winograd) 2 else 1
    val conv_x_stride_w = if(is_winograd) 1 else conv_x_stride_ext + 1
    val pixel_x_stride_w = if(datain_channel_ext == 3) conv_x_stride_w * 4
                           else if(datain_channel_ext == 2) conv_x_stride_w * 3
                           else conv_x_stride_w
    val pixel_x_init_offset_w  = weight_channel_ext + 1
    val pixel_x_add_w = pixel_x_stride_w * y_extension
    val pixel_ch_stride_w = if(conf.NVDLA_CC_ATOMC_DIV_ATOMK==1|conf.NVDLA_CC_ATOMC_DIV_ATOMK==2)
                            pixel_x_stride_w*2 //stick to 2*atomK  no matter which config.
                            else
                            pixel_x_stride_w*4 //stick to 4*atomK  no matter which config.
    val conv_y_stride_w = if(is_winograd) 1 else conv_y_stride_ext + 1
    val x_dilate_w = if(is_winograd|is_img) 1 else x_dilation_ext + 1
    val y_dilate_w = if(is_winograd|is_img) 1 else y_dilation_ext + 1

    //reg2dp_entries means entry per slice
    val entries_single_w = entries + 1
    val entries_batch_w = entries_single_w * data_batch_w
    val entries_w = if(is_winograd) entries*4 + 4 else entries_single_w 
    val h_offset_slice_w = data_batch_w * y_dilate_w
    val rls_slices_w = rls_slices + 1
    val slice_left_w = if(skip_data_rls)  datain_height_ext + 1 else datain_height_ext - rls_slices
    val dataout_width_cmp_w = dataout_width
    val pra_truncate_w = if(pra_truncate == 3) 2 else pra_truncate


    
    //test result
    expect(c.io.dataout_w_init, sub_h_cmp_w-1)

    //after one delay






  


}}

class NV_NVDLA_CSC_DL_IP_cfgTester extends ChiselFlatSpec {

  behavior of "NV_NVDLA_CSC_DL_IP_cfg"
  backends foreach {backend =>
    it should s"correctly make cfg $backend" in {
      implicit val conf: nvdlaConfig = new nvdlaConfig
      Driver(() => new NV_NVDLA_CSC_DL_IP_cfg())(c => new NV_NVDLA_CSC_DL_IP_cfgTests(c)) should be (true)
    }
  }
}