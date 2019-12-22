csc
================



| Module | equivalent checking failed(yosys) | pass the PPtester? |
| ------ | ----------- | -------------------|
| NV_NVDLA_CSC_DL_IP_cfg   | Trying to prove $equiv for \dataout_w_init [0 to 12]: failed. | pass |
| NV_NVDLA_CSC_DL_IP_cfg(d1) |  Grouping SAT models for \data_bank [4:1]:  |might overflow|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |    Grouping SAT models for \datain_width [13:1]: |pass|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |    Grouping SAT models for \datain_width_cmp [12:1]: |pass|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |    Grouping SAT models for \datain_height_cmp [12:1]: |pass|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |    Grouping SAT models for \datain_channel_cmp [6:1]: |pass|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |    Trying to prove $equiv for \sub_h_total_g0 to g11 [0]: failed|pass|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |    Grouping SAT models for \conv_x_stride [3:1]:|pass|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |     Grouping SAT models for \conv_y_stride [3:1]:|pass|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |     Grouping SAT models for \pixel_x_init [5:1]:|pass|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |     Grouping SAT models for \pixel_x_add:|pass|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |      Grouping SAT models for \pixel_x_byte_stride [5:1]:|pass|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |       Grouping SAT models for \pixel_ch_stride [11:6]:|pass|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |        Grouping SAT models for \x_dilate [5:1]:|pass|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |        Grouping SAT models for \y_dilate [5:1]:|pass|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |         Grouping SAT models for \entries [14:1]:|pass|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |         Grouping SAT models for \entries_batch [14:1]:|pass|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |       Grouping SAT models for \h_offset_slice [5:0]:|pass|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |       Grouping SAT models for \rls_slices [11:1]:|pass|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |       Grouping SAT models for \slice_left:|pass|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |        Grouping SAT models for \dataout_width_cmp [12:1]:|pass|
| NV_NVDLA_CSC_DL_IP_cfg(d1)    |       Grouping SAT models for { \pra_truncate [7:3] \pra_truncate [1] }:|pass|
