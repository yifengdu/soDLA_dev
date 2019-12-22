package nvdla

import chisel3._
import chisel3.experimental._
import chisel3.util._

class NV_soDLA_CSC_DL_IP_cfg_gate(implicit val conf: nvdlaConfig) extends Module {
    val io = IO(new Bundle {
        //clock
        val nvdla_core_clk = Input(Clock())
        val nvdla_core_rstn = Input(Bool())

        //status from sequential generator
        val is_sg_idle = Input(Bool())
        val is_sg_running = Input(Bool())
        val is_sg_done = Input(Bool())

        //reg2dp
        val reg2dp = Flipped(new NV_NVDLA_CSC_dl_reg2dp_if)

        //delayed information of layer_st
        val layer_st_d1 = Output(Bool())  

        //how many h lines are used in post-extension
        val dataout_w_init = Output(UInt(13.W))

        //subfield
        val subfield_d1 = new NV_NVDLA_CSC_dl_subfield_d1_if
        val subfield_d2 = new NV_NVDLA_CSC_dl_subfield_d2_if
        val subfield_sg_done = new NV_NVDLA_CSC_dl_subfield_sg_done_if

    })
/////////////////////////////////////////////////////////////////////////////////////////////
// 
//
//                      input_package <= you are here //need 2d
//                           |                     
//                      data request               
//                           |                     
//                      conv_buffer                
//                           |                     
//                      feature data---> data relase
//                        |     |                  
//                      REG    PRA                 
//                        |     |                  
//                        REGISTER                 
//                           |                     
//                          MAC                    
//
/////////////////////////////////////////////////////////////////////////////////////////////
withClockAndReset(io.nvdla_core_clk, !io.nvdla_core_rstn){

//////////////////////////////////////////////////////////////
///// input signals from registers                       /////
//////////////////////////////////////////////////////////////
val layer_st = io.reg2dp.op_en & io.is_sg_idle
val is_pixel = io.reg2dp.datain_format === 1.U
val is_conv = io.reg2dp.conv_mode === 0.U
val is_img = is_conv & is_pixel

val data_bank_w = io.reg2dp.data_bank +& 1.U

val is_winograd = if(conf.NVDLA_WINOGRAD_ENABLE) io.reg2dp.conv_mode === 1.U else false.B
val data_batch_w = if(conf.NVDLA_BATCH_ENABLE) Mux(is_winograd | is_img, 1.U(6.W), io.reg2dp.batches +& 1.U) else 1.U(6.W)
val batch_cmp_w = if(conf.NVDLA_BATCH_ENABLE) Mux(is_winograd | is_img, 0.U(5.W), io.reg2dp.batches) else 0.U(5.W)

//assign is_int8 = (reg2dp_proc_precision == 2'h0 );
//assign is_fp16 = (reg2dp_proc_precision == 2'h2 );
val datain_width_w = Mux(is_winograd, io.reg2dp.datain_width_ext(12, 2) +& 1.U, io.reg2dp.datain_width_ext +& 1.U)
val datain_width_cmp_w = io.reg2dp.datain_width_ext
val datain_height_cmp_w = io.reg2dp.datain_height_ext
val datain_channel_cmp_w = Mux(is_winograd, io.reg2dp.weight_channel_ext(12, 2), io.reg2dp.weight_channel_ext(12, conf.LOG2_ATOMC))

//y_ex=0,sub_h_total=1;y_ex=1,sub_h_total=2; y_ext=2,sub_h_total=4; non_image, sub_h_total=1;
//sub_h_total means how many h lines are used in post-extention
val sub_h_total_w = Mux(is_img, "b1001".asUInt(6.W) << io.reg2dp.y_extension, "b01000".asUInt(6.W))(5,3)  
val sub_h_cmp_w = Mux(is_img, sub_h_total_w, Mux(is_winograd, 2.U, 1.U))
io.dataout_w_init := sub_h_cmp_w -& 1.U

val conv_x_stride_w = Mux(is_winograd, 1.U, io.reg2dp.conv_x_stride_ext +& 1.U)
val pixel_x_stride_w = MuxLookup(io.reg2dp.datain_channel_ext(1,0), conv_x_stride_w, 
                       Array(3.U -> Cat(conv_x_stride_w, "b0".asUInt(2.W)), //*4, after pre_extension
                             2.U -> (Cat(conv_x_stride_w, "b0".asUInt(1.W)) +& conv_x_stride_w)))//*3

val pixel_x_init_w = MuxLookup(io.reg2dp.y_extension, Mux(io.reg2dp.weight_channel_ext >= conf.CSC_ATOMC_HEX.U, Fill(conf.LOG2_ATOMC, true.B), io.reg2dp.weight_channel_ext(conf.LOG2_ATOMC-1, 0)),
                         Array(2.U -> (Cat(pixel_x_stride_w, "b0".asUInt(1.W)) +& pixel_x_stride_w +& io.reg2dp.weight_channel_ext(5, 0)), 
                               1.U -> (pixel_x_stride_w +& io.reg2dp.weight_channel_ext(5, 0))))

val pixel_x_init_offset_w = io.reg2dp.weight_channel_ext(conf.LOG2_ATOMC-1, 0) +& 1.U

val pixel_x_add_w = MuxLookup(io.reg2dp.y_extension, pixel_x_stride_w,
                        Array(2.U -> Cat(pixel_x_stride_w, "b0".asUInt(2.W)), //*4, after post_extension
                              1.U -> Cat(pixel_x_stride_w, "b0".asUInt(1.W))))//*2

val pixel_ch_stride_w = if(conf.NVDLA_CC_ATOMC_DIV_ATOMK==1|conf.NVDLA_CC_ATOMC_DIV_ATOMK==2)
                        Cat(pixel_x_stride_w, "b0".asUInt((conf.LOG2_ATOMK+1).W)) //stick to 2*atomK  no matter which config.
                        else
                        Cat(pixel_x_stride_w, "b0".asUInt((conf.LOG2_ATOMK+2).W)) //stick to 4*atomK  no matter which config.

val conv_y_stride_w =  Mux(is_winograd, 1.U, io.reg2dp.conv_y_stride_ext +& 1.U)
val x_dilate_w = Mux(is_winograd | is_img, 1.U, io.reg2dp.x_dilation_ext +& 1.U) 
val y_dilate_w = Mux(is_winograd | is_img, 1.U, io.reg2dp.y_dilation_ext +& 1.U) 

//reg2dp_entries means entry per slice
val entries_single_w = (io.reg2dp.entries +& 1.U)(conf.CSC_ENTRIES_NUM_WIDTH-1, 0)
val entries_batch_w = (entries_single_w * data_batch_w)(conf.CSC_ENTRIES_NUM_WIDTH-1, 0)
val entries_w = Mux(is_winograd, Cat(io.reg2dp.entries, 0.U(2.W)) + "h4".asUInt(3.W), entries_single_w)
val h_offset_slice_w = data_batch_w * y_dilate_w   //6.w*6*w
val rls_slices_w = io.reg2dp.rls_slices + 1.U
val slice_left_w = Mux(io.reg2dp.skip_data_rls, io.reg2dp.datain_height_ext +& 1.U, io.reg2dp.datain_height_ext -& io.reg2dp.rls_slices)
val dataout_width_cmp_w = io.reg2dp.dataout_width
val pra_truncate_w = Mux(io.reg2dp.pra_truncate === 3.U, 2.U, io.reg2dp.pra_truncate)

//first delay
io.layer_st_d1 := RegNext(layer_st, false.B)
io.subfield_d1.is_winograd_d1 := RegEnable(Fill(22, is_winograd), "b0".asUInt(22.W), layer_st)
io.subfield_d1.is_img_d1 := RegEnable(Fill(34, is_img), "b0".asUInt(34.W), layer_st)
io.subfield_d1.data_bank := RegEnable(data_bank_w, "b0".asUInt(5.W), layer_st)
io.subfield_d1.datain_width := RegEnable(datain_width_w, "b0".asUInt(14.W), layer_st)
io.subfield_d1.datain_width_cmp := RegEnable(datain_width_cmp_w, "b0".asUInt(13.W), layer_st)
io.subfield_d1.datain_height_cmp := RegEnable(datain_height_cmp_w, "b0".asUInt(13.W), layer_st)
io.subfield_d1.datain_channel_cmp := RegEnable(datain_channel_cmp_w, "b0".asUInt(11.W), layer_st)
io.subfield_d1.sub_h_total_g0 := RegEnable(sub_h_total_w, "h1".asUInt(3.W), layer_st)
io.subfield_d1.sub_h_total_g1 := RegEnable(sub_h_total_w, "h1".asUInt(3.W), layer_st)
io.subfield_d1.sub_h_total_g2 := RegEnable(sub_h_total_w(2,1), "h1".asUInt(2.W), layer_st)
io.subfield_d1.sub_h_total_g3 := RegEnable(sub_h_total_w, "h1".asUInt(3.W), layer_st)
io.subfield_d1.sub_h_total_g4 := RegEnable(sub_h_total_w, "h1".asUInt(3.W), layer_st)
io.subfield_d1.sub_h_total_g5 := RegEnable(sub_h_total_w, "h1".asUInt(3.W), layer_st)
io.subfield_d1.sub_h_total_g6 := RegEnable(sub_h_total_w, "h1".asUInt(3.W), layer_st)
io.subfield_d1.sub_h_total_g7 := RegEnable(sub_h_total_w, "h1".asUInt(3.W), layer_st)
io.subfield_d1.sub_h_total_g8 := RegEnable(sub_h_total_w, "h1".asUInt(3.W), layer_st)
io.subfield_d1.sub_h_total_g9 := RegEnable(sub_h_total_w, "h1".asUInt(3.W), layer_st)
io.subfield_d1.sub_h_total_g10 := RegEnable(sub_h_total_w, "h1".asUInt(3.W), layer_st)
io.subfield_d1.sub_h_total_g11 := RegEnable(sub_h_total_w, "h1".asUInt(3.W), layer_st)
io.subfield_d1.sub_h_cmp_g0 := RegEnable(sub_h_cmp_w, "h1".asUInt(3.W), layer_st)
io.subfield_d1.sub_h_cmp_g1 := RegEnable(sub_h_cmp_w, "h1".asUInt(3.W), layer_st)
io.subfield_d1.conv_x_stride := RegEnable(conv_x_stride_w, "b0".asUInt(4.W), layer_st)
io.subfield_d1.conv_y_stride := RegEnable(conv_y_stride_w, "b0".asUInt(4.W), layer_st)
io.subfield_d1.pixel_x_stride_odd := RegEnable(pixel_x_stride_w(0), false.B, layer_st)
io.subfield_d1.data_batch := RegEnable(data_batch_w, "b0".asUInt(6.W), layer_st)
io.subfield_d1.batch_cmp := RegEnable(batch_cmp_w, "b0".asUInt(5.W), layer_st)
io.subfield_d1.pixel_x_init := RegEnable(pixel_x_init_w, "b0".asUInt(6.W), layer_st)
io.subfield_d1.pixel_x_init_offset := RegEnable(pixel_x_init_offset_w, "b0".asUInt(7.W), layer_st)
io.subfield_d1.pixel_x_add := RegEnable(pixel_x_add_w(6, 0), "b0".asUInt(7.W), layer_st)
io.subfield_d1.pixel_x_byte_stride := RegEnable(pixel_x_stride_w, "b0".asUInt(7.W), layer_st)
io.subfield_d1.pixel_ch_stride := RegEnable(pixel_ch_stride_w, "b0".asUInt(12.W), layer_st)
io.subfield_d1.x_dilate := RegEnable(x_dilate_w, "b0".asUInt(6.W), layer_st)
io.subfield_d1.y_dilate := RegEnable(y_dilate_w, "b0".asUInt(6.W), layer_st)
io.subfield_d1.pad_value := RegEnable(io.reg2dp.pad_value, "b0".asUInt(16.W), layer_st)
io.subfield_d1.entries := RegEnable(entries_w, "b0".asUInt(conf.CSC_ENTRIES_NUM_WIDTH.W), layer_st)
io.subfield_d1.entries_batch := RegEnable(entries_batch_w, "b0".asUInt(conf.CSC_ENTRIES_NUM_WIDTH.W), layer_st)
io.subfield_d1.entries_cmp := RegEnable(io.reg2dp.entries, "b0".asUInt(conf.CSC_ENTRIES_NUM_WIDTH.W), layer_st)
io.subfield_d1.h_offset_slice := RegEnable(h_offset_slice_w, "b0".asUInt(14.W), layer_st)
io.subfield_d1.rls_slices := RegEnable(rls_slices_w, "b0".asUInt(14.W), layer_st)
io.subfield_d1.slice_left := RegEnable(slice_left_w(13, 0), "b0".asUInt(14.W), layer_st)
io.subfield_d1.dataout_width_cmp := RegEnable(dataout_width_cmp_w, "b0".asUInt(13.W), layer_st)
io.subfield_d1.pra_truncate := RegEnable(Fill(4, pra_truncate_w), "b0".asUInt(8.W), layer_st)
io.subfield_d1.pra_precision := RegEnable(Fill(4, io.reg2dp.proc_precision), "b0".asUInt(8.W), layer_st)

//d2
val h_bias_0_stride_w = (io.subfield_d1.entries * io.subfield_d1.data_batch)(conf.CBUF_ADDR_WIDTH-1, 0)
val h_bias_1_stride_w = (io.subfield_d1.entries * io.subfield_d1.h_offset_slice)(conf.CBUF_ADDR_WIDTH-1, 0)
val slices_oprand = Mux(io.layer_st_d1, io.subfield_d1.rls_slices, io.subfield_d1.slice_left)
val slice_entries_w = (io.subfield_d1.entries_batch * slices_oprand)(conf.CSC_ENTRIES_NUM_WIDTH-1, 0)

io.subfield_d2.h_bias_0_stride := RegEnable(h_bias_0_stride_w, "b0".asUInt(12.W), io.layer_st_d1)
io.subfield_d2.h_bias_1_stride := RegEnable(h_bias_1_stride_w, "b0".asUInt(12.W), io.layer_st_d1)
io.subfield_d2.h_bias_2_stride:= RegEnable(io.subfield_d1.entries(conf.CBUF_ADDR_WIDTH-1, 0), "b0".asUInt(conf.CBUF_ADDR_WIDTH.W), io.layer_st_d1)
io.subfield_d2.h_bias_3_stride := RegEnable(io.subfield_d1.entries(conf.CBUF_ADDR_WIDTH-1, 0), "b0".asUInt(conf.CBUF_ADDR_WIDTH.W), io.layer_st_d1)
io.subfield_d2.rls_entries := RegEnable(slice_entries_w, "b0".asUInt(conf.CSC_ENTRIES_NUM_WIDTH.W), io.layer_st_d1)

//when sg is done
io.subfield_sg_done.last_slices := RegEnable(io.subfield_d1.slice_left, "b0".asUInt(14.W), io.is_sg_done)
io.subfield_sg_done.last_entries := RegEnable(slice_entries_w, "b0".asUInt(conf.CSC_ENTRIES_NUM_WIDTH.W), io.is_sg_done)

}


}


object NV_soDLA_CSC_DL_IP_cfg_gateDriver extends App {
  implicit val conf: nvdlaConfig = new nvdlaConfig
  chisel3.Driver.execute(args, () => new NV_soDLA_CSC_DL_IP_cfg_gate())
}


    



