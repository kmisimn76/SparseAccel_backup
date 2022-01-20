# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 266 \
    name weight_l2_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_l2_0 \
    op interface \
    ports { weight_l2_0_address0 { O 9 vector } weight_l2_0_ce0 { O 1 bit } weight_l2_0_d0 { O 8 vector } weight_l2_0_q0 { I 8 vector } weight_l2_0_we0 { O 1 bit } weight_l2_0_address1 { O 9 vector } weight_l2_0_ce1 { O 1 bit } weight_l2_0_d1 { O 8 vector } weight_l2_0_q1 { I 8 vector } weight_l2_0_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_l2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 267 \
    name weight_l2_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_l2_1 \
    op interface \
    ports { weight_l2_1_address0 { O 9 vector } weight_l2_1_ce0 { O 1 bit } weight_l2_1_d0 { O 8 vector } weight_l2_1_q0 { I 8 vector } weight_l2_1_we0 { O 1 bit } weight_l2_1_address1 { O 9 vector } weight_l2_1_ce1 { O 1 bit } weight_l2_1_d1 { O 8 vector } weight_l2_1_q1 { I 8 vector } weight_l2_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_l2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 268 \
    name weight_l2_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_l2_2 \
    op interface \
    ports { weight_l2_2_address0 { O 9 vector } weight_l2_2_ce0 { O 1 bit } weight_l2_2_d0 { O 8 vector } weight_l2_2_q0 { I 8 vector } weight_l2_2_we0 { O 1 bit } weight_l2_2_address1 { O 9 vector } weight_l2_2_ce1 { O 1 bit } weight_l2_2_d1 { O 8 vector } weight_l2_2_q1 { I 8 vector } weight_l2_2_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_l2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 269 \
    name weight_l2_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_l2_3 \
    op interface \
    ports { weight_l2_3_address0 { O 9 vector } weight_l2_3_ce0 { O 1 bit } weight_l2_3_d0 { O 8 vector } weight_l2_3_q0 { I 8 vector } weight_l2_3_we0 { O 1 bit } weight_l2_3_address1 { O 9 vector } weight_l2_3_ce1 { O 1 bit } weight_l2_3_d1 { O 8 vector } weight_l2_3_q1 { I 8 vector } weight_l2_3_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_l2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 272 \
    name data_l2_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_l2_0 \
    op interface \
    ports { data_l2_0_address0 { O 10 vector } data_l2_0_ce0 { O 1 bit } data_l2_0_d0 { O 8 vector } data_l2_0_q0 { I 8 vector } data_l2_0_we0 { O 1 bit } data_l2_0_address1 { O 10 vector } data_l2_0_ce1 { O 1 bit } data_l2_0_d1 { O 8 vector } data_l2_0_q1 { I 8 vector } data_l2_0_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_l2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 273 \
    name data_l2_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_l2_1 \
    op interface \
    ports { data_l2_1_address0 { O 10 vector } data_l2_1_ce0 { O 1 bit } data_l2_1_d0 { O 8 vector } data_l2_1_q0 { I 8 vector } data_l2_1_we0 { O 1 bit } data_l2_1_address1 { O 10 vector } data_l2_1_ce1 { O 1 bit } data_l2_1_d1 { O 8 vector } data_l2_1_q1 { I 8 vector } data_l2_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_l2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 274 \
    name data_l2_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_l2_2 \
    op interface \
    ports { data_l2_2_address0 { O 10 vector } data_l2_2_ce0 { O 1 bit } data_l2_2_d0 { O 8 vector } data_l2_2_q0 { I 8 vector } data_l2_2_we0 { O 1 bit } data_l2_2_address1 { O 10 vector } data_l2_2_ce1 { O 1 bit } data_l2_2_d1 { O 8 vector } data_l2_2_q1 { I 8 vector } data_l2_2_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_l2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 275 \
    name data_l2_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_l2_3 \
    op interface \
    ports { data_l2_3_address0 { O 10 vector } data_l2_3_ce0 { O 1 bit } data_l2_3_d0 { O 8 vector } data_l2_3_q0 { I 8 vector } data_l2_3_we0 { O 1 bit } data_l2_3_address1 { O 10 vector } data_l2_3_ce1 { O 1 bit } data_l2_3_d1 { O 8 vector } data_l2_3_q1 { I 8 vector } data_l2_3_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_l2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 278 \
    name output_l1_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_l1_0 \
    op interface \
    ports { output_l1_0_address0 { O 9 vector } output_l1_0_ce0 { O 1 bit } output_l1_0_d0 { O 32 vector } output_l1_0_q0 { I 32 vector } output_l1_0_we0 { O 1 bit } output_l1_0_address1 { O 9 vector } output_l1_0_ce1 { O 1 bit } output_l1_0_d1 { O 32 vector } output_l1_0_q1 { I 32 vector } output_l1_0_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_l1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 279 \
    name output_l1_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_l1_1 \
    op interface \
    ports { output_l1_1_address0 { O 9 vector } output_l1_1_ce0 { O 1 bit } output_l1_1_d0 { O 32 vector } output_l1_1_q0 { I 32 vector } output_l1_1_we0 { O 1 bit } output_l1_1_address1 { O 9 vector } output_l1_1_ce1 { O 1 bit } output_l1_1_d1 { O 32 vector } output_l1_1_q1 { I 32 vector } output_l1_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_l1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 280 \
    name output_l1_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_l1_2 \
    op interface \
    ports { output_l1_2_address0 { O 9 vector } output_l1_2_ce0 { O 1 bit } output_l1_2_d0 { O 32 vector } output_l1_2_q0 { I 32 vector } output_l1_2_we0 { O 1 bit } output_l1_2_address1 { O 9 vector } output_l1_2_ce1 { O 1 bit } output_l1_2_d1 { O 32 vector } output_l1_2_q1 { I 32 vector } output_l1_2_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_l1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 281 \
    name output_l1_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_l1_3 \
    op interface \
    ports { output_l1_3_address0 { O 9 vector } output_l1_3_ce0 { O 1 bit } output_l1_3_d0 { O 32 vector } output_l1_3_q0 { I 32 vector } output_l1_3_we0 { O 1 bit } output_l1_3_address1 { O 9 vector } output_l1_3_ce1 { O 1 bit } output_l1_3_d1 { O 32 vector } output_l1_3_q1 { I 32 vector } output_l1_3_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_l1_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name div30_cast124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_div30_cast124 \
    op interface \
    ports { div30_cast124 { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name div76_cast125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_div76_cast125 \
    op interface \
    ports { div76_cast125 { I 30 vector } div76_cast125_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name RS \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_RS \
    op interface \
    ports { RS { I 32 vector } RS_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 9 vector } p_read_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 9 vector } p_read1_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 32 vector } p_read2_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name p_read3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read3 \
    op interface \
    ports { p_read3 { I 10 vector } p_read3_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


