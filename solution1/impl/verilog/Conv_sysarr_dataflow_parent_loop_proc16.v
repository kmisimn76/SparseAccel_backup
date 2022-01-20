// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Conv_sysarr_dataflow_parent_loop_proc16 (
        div30_cast124,
        div76_cast125,
        RS,
        weight_l2_0_address0,
        weight_l2_0_ce0,
        weight_l2_0_d0,
        weight_l2_0_q0,
        weight_l2_0_we0,
        weight_l2_0_address1,
        weight_l2_0_ce1,
        weight_l2_0_d1,
        weight_l2_0_q1,
        weight_l2_0_we1,
        weight_l2_1_address0,
        weight_l2_1_ce0,
        weight_l2_1_d0,
        weight_l2_1_q0,
        weight_l2_1_we0,
        weight_l2_1_address1,
        weight_l2_1_ce1,
        weight_l2_1_d1,
        weight_l2_1_q1,
        weight_l2_1_we1,
        weight_l2_2_address0,
        weight_l2_2_ce0,
        weight_l2_2_d0,
        weight_l2_2_q0,
        weight_l2_2_we0,
        weight_l2_2_address1,
        weight_l2_2_ce1,
        weight_l2_2_d1,
        weight_l2_2_q1,
        weight_l2_2_we1,
        weight_l2_3_address0,
        weight_l2_3_ce0,
        weight_l2_3_d0,
        weight_l2_3_q0,
        weight_l2_3_we0,
        weight_l2_3_address1,
        weight_l2_3_ce1,
        weight_l2_3_d1,
        weight_l2_3_q1,
        weight_l2_3_we1,
        p_read,
        p_read1,
        data_l2_0_address0,
        data_l2_0_ce0,
        data_l2_0_d0,
        data_l2_0_q0,
        data_l2_0_we0,
        data_l2_0_address1,
        data_l2_0_ce1,
        data_l2_0_d1,
        data_l2_0_q1,
        data_l2_0_we1,
        data_l2_1_address0,
        data_l2_1_ce0,
        data_l2_1_d0,
        data_l2_1_q0,
        data_l2_1_we0,
        data_l2_1_address1,
        data_l2_1_ce1,
        data_l2_1_d1,
        data_l2_1_q1,
        data_l2_1_we1,
        data_l2_2_address0,
        data_l2_2_ce0,
        data_l2_2_d0,
        data_l2_2_q0,
        data_l2_2_we0,
        data_l2_2_address1,
        data_l2_2_ce1,
        data_l2_2_d1,
        data_l2_2_q1,
        data_l2_2_we1,
        data_l2_3_address0,
        data_l2_3_ce0,
        data_l2_3_d0,
        data_l2_3_q0,
        data_l2_3_we0,
        data_l2_3_address1,
        data_l2_3_ce1,
        data_l2_3_d1,
        data_l2_3_q1,
        data_l2_3_we1,
        p_read2,
        p_read3,
        output_l1_0_address0,
        output_l1_0_ce0,
        output_l1_0_d0,
        output_l1_0_q0,
        output_l1_0_we0,
        output_l1_0_address1,
        output_l1_0_ce1,
        output_l1_0_d1,
        output_l1_0_q1,
        output_l1_0_we1,
        output_l1_1_address0,
        output_l1_1_ce0,
        output_l1_1_d0,
        output_l1_1_q0,
        output_l1_1_we0,
        output_l1_1_address1,
        output_l1_1_ce1,
        output_l1_1_d1,
        output_l1_1_q1,
        output_l1_1_we1,
        output_l1_2_address0,
        output_l1_2_ce0,
        output_l1_2_d0,
        output_l1_2_q0,
        output_l1_2_we0,
        output_l1_2_address1,
        output_l1_2_ce1,
        output_l1_2_d1,
        output_l1_2_q1,
        output_l1_2_we1,
        output_l1_3_address0,
        output_l1_3_ce0,
        output_l1_3_d0,
        output_l1_3_q0,
        output_l1_3_we0,
        output_l1_3_address1,
        output_l1_3_ce1,
        output_l1_3_d1,
        output_l1_3_q1,
        output_l1_3_we1,
        ap_clk,
        ap_rst,
        div76_cast125_ap_vld,
        RS_ap_vld,
        p_read_ap_vld,
        p_read1_ap_vld,
        p_read2_ap_vld,
        p_read3_ap_vld,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [29:0] div30_cast124;
input  [29:0] div76_cast125;
input  [31:0] RS;
output  [8:0] weight_l2_0_address0;
output   weight_l2_0_ce0;
output  [7:0] weight_l2_0_d0;
input  [7:0] weight_l2_0_q0;
output   weight_l2_0_we0;
output  [8:0] weight_l2_0_address1;
output   weight_l2_0_ce1;
output  [7:0] weight_l2_0_d1;
input  [7:0] weight_l2_0_q1;
output   weight_l2_0_we1;
output  [8:0] weight_l2_1_address0;
output   weight_l2_1_ce0;
output  [7:0] weight_l2_1_d0;
input  [7:0] weight_l2_1_q0;
output   weight_l2_1_we0;
output  [8:0] weight_l2_1_address1;
output   weight_l2_1_ce1;
output  [7:0] weight_l2_1_d1;
input  [7:0] weight_l2_1_q1;
output   weight_l2_1_we1;
output  [8:0] weight_l2_2_address0;
output   weight_l2_2_ce0;
output  [7:0] weight_l2_2_d0;
input  [7:0] weight_l2_2_q0;
output   weight_l2_2_we0;
output  [8:0] weight_l2_2_address1;
output   weight_l2_2_ce1;
output  [7:0] weight_l2_2_d1;
input  [7:0] weight_l2_2_q1;
output   weight_l2_2_we1;
output  [8:0] weight_l2_3_address0;
output   weight_l2_3_ce0;
output  [7:0] weight_l2_3_d0;
input  [7:0] weight_l2_3_q0;
output   weight_l2_3_we0;
output  [8:0] weight_l2_3_address1;
output   weight_l2_3_ce1;
output  [7:0] weight_l2_3_d1;
input  [7:0] weight_l2_3_q1;
output   weight_l2_3_we1;
input  [8:0] p_read;
input  [8:0] p_read1;
output  [9:0] data_l2_0_address0;
output   data_l2_0_ce0;
output  [7:0] data_l2_0_d0;
input  [7:0] data_l2_0_q0;
output   data_l2_0_we0;
output  [9:0] data_l2_0_address1;
output   data_l2_0_ce1;
output  [7:0] data_l2_0_d1;
input  [7:0] data_l2_0_q1;
output   data_l2_0_we1;
output  [9:0] data_l2_1_address0;
output   data_l2_1_ce0;
output  [7:0] data_l2_1_d0;
input  [7:0] data_l2_1_q0;
output   data_l2_1_we0;
output  [9:0] data_l2_1_address1;
output   data_l2_1_ce1;
output  [7:0] data_l2_1_d1;
input  [7:0] data_l2_1_q1;
output   data_l2_1_we1;
output  [9:0] data_l2_2_address0;
output   data_l2_2_ce0;
output  [7:0] data_l2_2_d0;
input  [7:0] data_l2_2_q0;
output   data_l2_2_we0;
output  [9:0] data_l2_2_address1;
output   data_l2_2_ce1;
output  [7:0] data_l2_2_d1;
input  [7:0] data_l2_2_q1;
output   data_l2_2_we1;
output  [9:0] data_l2_3_address0;
output   data_l2_3_ce0;
output  [7:0] data_l2_3_d0;
input  [7:0] data_l2_3_q0;
output   data_l2_3_we0;
output  [9:0] data_l2_3_address1;
output   data_l2_3_ce1;
output  [7:0] data_l2_3_d1;
input  [7:0] data_l2_3_q1;
output   data_l2_3_we1;
input  [31:0] p_read2;
input  [9:0] p_read3;
output  [8:0] output_l1_0_address0;
output   output_l1_0_ce0;
output  [31:0] output_l1_0_d0;
input  [31:0] output_l1_0_q0;
output   output_l1_0_we0;
output  [8:0] output_l1_0_address1;
output   output_l1_0_ce1;
output  [31:0] output_l1_0_d1;
input  [31:0] output_l1_0_q1;
output   output_l1_0_we1;
output  [8:0] output_l1_1_address0;
output   output_l1_1_ce0;
output  [31:0] output_l1_1_d0;
input  [31:0] output_l1_1_q0;
output   output_l1_1_we0;
output  [8:0] output_l1_1_address1;
output   output_l1_1_ce1;
output  [31:0] output_l1_1_d1;
input  [31:0] output_l1_1_q1;
output   output_l1_1_we1;
output  [8:0] output_l1_2_address0;
output   output_l1_2_ce0;
output  [31:0] output_l1_2_d0;
input  [31:0] output_l1_2_q0;
output   output_l1_2_we0;
output  [8:0] output_l1_2_address1;
output   output_l1_2_ce1;
output  [31:0] output_l1_2_d1;
input  [31:0] output_l1_2_q1;
output   output_l1_2_we1;
output  [8:0] output_l1_3_address0;
output   output_l1_3_ce0;
output  [31:0] output_l1_3_d0;
input  [31:0] output_l1_3_q0;
output   output_l1_3_we0;
output  [8:0] output_l1_3_address1;
output   output_l1_3_ce1;
output  [31:0] output_l1_3_d1;
input  [31:0] output_l1_3_q1;
output   output_l1_3_we1;
input   ap_clk;
input   ap_rst;
input   div76_cast125_ap_vld;
input   RS_ap_vld;
input   p_read_ap_vld;
input   p_read1_ap_vld;
input   p_read2_ap_vld;
input   p_read3_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

reg ap_done;
reg ap_ready;
reg ap_idle;

wire   [8:0] dataflow_parent_loop_proc15_U0_weight_l2_0_address0;
wire    dataflow_parent_loop_proc15_U0_weight_l2_0_ce0;
wire   [7:0] dataflow_parent_loop_proc15_U0_weight_l2_0_d0;
wire    dataflow_parent_loop_proc15_U0_weight_l2_0_we0;
wire   [8:0] dataflow_parent_loop_proc15_U0_weight_l2_0_address1;
wire    dataflow_parent_loop_proc15_U0_weight_l2_0_ce1;
wire   [7:0] dataflow_parent_loop_proc15_U0_weight_l2_0_d1;
wire    dataflow_parent_loop_proc15_U0_weight_l2_0_we1;
wire   [8:0] dataflow_parent_loop_proc15_U0_weight_l2_1_address0;
wire    dataflow_parent_loop_proc15_U0_weight_l2_1_ce0;
wire   [7:0] dataflow_parent_loop_proc15_U0_weight_l2_1_d0;
wire    dataflow_parent_loop_proc15_U0_weight_l2_1_we0;
wire   [8:0] dataflow_parent_loop_proc15_U0_weight_l2_1_address1;
wire    dataflow_parent_loop_proc15_U0_weight_l2_1_ce1;
wire   [7:0] dataflow_parent_loop_proc15_U0_weight_l2_1_d1;
wire    dataflow_parent_loop_proc15_U0_weight_l2_1_we1;
wire   [8:0] dataflow_parent_loop_proc15_U0_weight_l2_2_address0;
wire    dataflow_parent_loop_proc15_U0_weight_l2_2_ce0;
wire   [7:0] dataflow_parent_loop_proc15_U0_weight_l2_2_d0;
wire    dataflow_parent_loop_proc15_U0_weight_l2_2_we0;
wire   [8:0] dataflow_parent_loop_proc15_U0_weight_l2_2_address1;
wire    dataflow_parent_loop_proc15_U0_weight_l2_2_ce1;
wire   [7:0] dataflow_parent_loop_proc15_U0_weight_l2_2_d1;
wire    dataflow_parent_loop_proc15_U0_weight_l2_2_we1;
wire   [8:0] dataflow_parent_loop_proc15_U0_weight_l2_3_address0;
wire    dataflow_parent_loop_proc15_U0_weight_l2_3_ce0;
wire   [7:0] dataflow_parent_loop_proc15_U0_weight_l2_3_d0;
wire    dataflow_parent_loop_proc15_U0_weight_l2_3_we0;
wire   [8:0] dataflow_parent_loop_proc15_U0_weight_l2_3_address1;
wire    dataflow_parent_loop_proc15_U0_weight_l2_3_ce1;
wire   [7:0] dataflow_parent_loop_proc15_U0_weight_l2_3_d1;
wire    dataflow_parent_loop_proc15_U0_weight_l2_3_we1;
wire   [9:0] dataflow_parent_loop_proc15_U0_data_l2_0_address0;
wire    dataflow_parent_loop_proc15_U0_data_l2_0_ce0;
wire   [7:0] dataflow_parent_loop_proc15_U0_data_l2_0_d0;
wire    dataflow_parent_loop_proc15_U0_data_l2_0_we0;
wire   [9:0] dataflow_parent_loop_proc15_U0_data_l2_0_address1;
wire    dataflow_parent_loop_proc15_U0_data_l2_0_ce1;
wire   [7:0] dataflow_parent_loop_proc15_U0_data_l2_0_d1;
wire    dataflow_parent_loop_proc15_U0_data_l2_0_we1;
wire   [9:0] dataflow_parent_loop_proc15_U0_data_l2_1_address0;
wire    dataflow_parent_loop_proc15_U0_data_l2_1_ce0;
wire   [7:0] dataflow_parent_loop_proc15_U0_data_l2_1_d0;
wire    dataflow_parent_loop_proc15_U0_data_l2_1_we0;
wire   [9:0] dataflow_parent_loop_proc15_U0_data_l2_1_address1;
wire    dataflow_parent_loop_proc15_U0_data_l2_1_ce1;
wire   [7:0] dataflow_parent_loop_proc15_U0_data_l2_1_d1;
wire    dataflow_parent_loop_proc15_U0_data_l2_1_we1;
wire   [9:0] dataflow_parent_loop_proc15_U0_data_l2_2_address0;
wire    dataflow_parent_loop_proc15_U0_data_l2_2_ce0;
wire   [7:0] dataflow_parent_loop_proc15_U0_data_l2_2_d0;
wire    dataflow_parent_loop_proc15_U0_data_l2_2_we0;
wire   [9:0] dataflow_parent_loop_proc15_U0_data_l2_2_address1;
wire    dataflow_parent_loop_proc15_U0_data_l2_2_ce1;
wire   [7:0] dataflow_parent_loop_proc15_U0_data_l2_2_d1;
wire    dataflow_parent_loop_proc15_U0_data_l2_2_we1;
wire   [9:0] dataflow_parent_loop_proc15_U0_data_l2_3_address0;
wire    dataflow_parent_loop_proc15_U0_data_l2_3_ce0;
wire   [7:0] dataflow_parent_loop_proc15_U0_data_l2_3_d0;
wire    dataflow_parent_loop_proc15_U0_data_l2_3_we0;
wire   [9:0] dataflow_parent_loop_proc15_U0_data_l2_3_address1;
wire    dataflow_parent_loop_proc15_U0_data_l2_3_ce1;
wire   [7:0] dataflow_parent_loop_proc15_U0_data_l2_3_d1;
wire    dataflow_parent_loop_proc15_U0_data_l2_3_we1;
wire   [8:0] dataflow_parent_loop_proc15_U0_output_l1_0_address0;
wire    dataflow_parent_loop_proc15_U0_output_l1_0_ce0;
wire   [31:0] dataflow_parent_loop_proc15_U0_output_l1_0_d0;
wire    dataflow_parent_loop_proc15_U0_output_l1_0_we0;
wire   [8:0] dataflow_parent_loop_proc15_U0_output_l1_0_address1;
wire    dataflow_parent_loop_proc15_U0_output_l1_0_ce1;
wire   [31:0] dataflow_parent_loop_proc15_U0_output_l1_0_d1;
wire    dataflow_parent_loop_proc15_U0_output_l1_0_we1;
wire   [8:0] dataflow_parent_loop_proc15_U0_output_l1_1_address0;
wire    dataflow_parent_loop_proc15_U0_output_l1_1_ce0;
wire   [31:0] dataflow_parent_loop_proc15_U0_output_l1_1_d0;
wire    dataflow_parent_loop_proc15_U0_output_l1_1_we0;
wire   [8:0] dataflow_parent_loop_proc15_U0_output_l1_1_address1;
wire    dataflow_parent_loop_proc15_U0_output_l1_1_ce1;
wire   [31:0] dataflow_parent_loop_proc15_U0_output_l1_1_d1;
wire    dataflow_parent_loop_proc15_U0_output_l1_1_we1;
wire   [8:0] dataflow_parent_loop_proc15_U0_output_l1_2_address0;
wire    dataflow_parent_loop_proc15_U0_output_l1_2_ce0;
wire   [31:0] dataflow_parent_loop_proc15_U0_output_l1_2_d0;
wire    dataflow_parent_loop_proc15_U0_output_l1_2_we0;
wire   [8:0] dataflow_parent_loop_proc15_U0_output_l1_2_address1;
wire    dataflow_parent_loop_proc15_U0_output_l1_2_ce1;
wire   [31:0] dataflow_parent_loop_proc15_U0_output_l1_2_d1;
wire    dataflow_parent_loop_proc15_U0_output_l1_2_we1;
wire   [8:0] dataflow_parent_loop_proc15_U0_output_l1_3_address0;
wire    dataflow_parent_loop_proc15_U0_output_l1_3_ce0;
wire   [31:0] dataflow_parent_loop_proc15_U0_output_l1_3_d0;
wire    dataflow_parent_loop_proc15_U0_output_l1_3_we0;
wire   [8:0] dataflow_parent_loop_proc15_U0_output_l1_3_address1;
wire    dataflow_parent_loop_proc15_U0_output_l1_3_ce1;
wire   [31:0] dataflow_parent_loop_proc15_U0_output_l1_3_d1;
wire    dataflow_parent_loop_proc15_U0_output_l1_3_we1;
wire    dataflow_parent_loop_proc15_U0_ap_start;
wire    dataflow_parent_loop_proc15_U0_ap_done;
wire    dataflow_parent_loop_proc15_U0_ap_ready;
wire    dataflow_parent_loop_proc15_U0_ap_idle;
reg    dataflow_parent_loop_proc15_U0_ap_continue;
wire    dataflow_parent_loop_proc15_U0_div76_cast125_ap_vld;
wire    ap_sync_continue;
wire    ap_sync_done;
wire    ap_sync_ready;
reg   [29:0] loop_dataflow_input_count;
reg   [29:0] loop_dataflow_output_count;
wire   [29:0] bound_minus_1;
wire    dataflow_parent_loop_proc15_U0_start_full_n;
wire    dataflow_parent_loop_proc15_U0_start_write;

// power-on initialization
initial begin
#0 loop_dataflow_input_count = 30'd0;
#0 loop_dataflow_output_count = 30'd0;
end

Conv_sysarr_dataflow_parent_loop_proc15 dataflow_parent_loop_proc15_U0(
    .div76_cast125(div76_cast125),
    .RS(RS),
    .weight_l2_0_address0(dataflow_parent_loop_proc15_U0_weight_l2_0_address0),
    .weight_l2_0_ce0(dataflow_parent_loop_proc15_U0_weight_l2_0_ce0),
    .weight_l2_0_d0(dataflow_parent_loop_proc15_U0_weight_l2_0_d0),
    .weight_l2_0_q0(weight_l2_0_q0),
    .weight_l2_0_we0(dataflow_parent_loop_proc15_U0_weight_l2_0_we0),
    .weight_l2_0_address1(dataflow_parent_loop_proc15_U0_weight_l2_0_address1),
    .weight_l2_0_ce1(dataflow_parent_loop_proc15_U0_weight_l2_0_ce1),
    .weight_l2_0_d1(dataflow_parent_loop_proc15_U0_weight_l2_0_d1),
    .weight_l2_0_q1(8'd0),
    .weight_l2_0_we1(dataflow_parent_loop_proc15_U0_weight_l2_0_we1),
    .weight_l2_1_address0(dataflow_parent_loop_proc15_U0_weight_l2_1_address0),
    .weight_l2_1_ce0(dataflow_parent_loop_proc15_U0_weight_l2_1_ce0),
    .weight_l2_1_d0(dataflow_parent_loop_proc15_U0_weight_l2_1_d0),
    .weight_l2_1_q0(weight_l2_1_q0),
    .weight_l2_1_we0(dataflow_parent_loop_proc15_U0_weight_l2_1_we0),
    .weight_l2_1_address1(dataflow_parent_loop_proc15_U0_weight_l2_1_address1),
    .weight_l2_1_ce1(dataflow_parent_loop_proc15_U0_weight_l2_1_ce1),
    .weight_l2_1_d1(dataflow_parent_loop_proc15_U0_weight_l2_1_d1),
    .weight_l2_1_q1(8'd0),
    .weight_l2_1_we1(dataflow_parent_loop_proc15_U0_weight_l2_1_we1),
    .weight_l2_2_address0(dataflow_parent_loop_proc15_U0_weight_l2_2_address0),
    .weight_l2_2_ce0(dataflow_parent_loop_proc15_U0_weight_l2_2_ce0),
    .weight_l2_2_d0(dataflow_parent_loop_proc15_U0_weight_l2_2_d0),
    .weight_l2_2_q0(weight_l2_2_q0),
    .weight_l2_2_we0(dataflow_parent_loop_proc15_U0_weight_l2_2_we0),
    .weight_l2_2_address1(dataflow_parent_loop_proc15_U0_weight_l2_2_address1),
    .weight_l2_2_ce1(dataflow_parent_loop_proc15_U0_weight_l2_2_ce1),
    .weight_l2_2_d1(dataflow_parent_loop_proc15_U0_weight_l2_2_d1),
    .weight_l2_2_q1(8'd0),
    .weight_l2_2_we1(dataflow_parent_loop_proc15_U0_weight_l2_2_we1),
    .weight_l2_3_address0(dataflow_parent_loop_proc15_U0_weight_l2_3_address0),
    .weight_l2_3_ce0(dataflow_parent_loop_proc15_U0_weight_l2_3_ce0),
    .weight_l2_3_d0(dataflow_parent_loop_proc15_U0_weight_l2_3_d0),
    .weight_l2_3_q0(weight_l2_3_q0),
    .weight_l2_3_we0(dataflow_parent_loop_proc15_U0_weight_l2_3_we0),
    .weight_l2_3_address1(dataflow_parent_loop_proc15_U0_weight_l2_3_address1),
    .weight_l2_3_ce1(dataflow_parent_loop_proc15_U0_weight_l2_3_ce1),
    .weight_l2_3_d1(dataflow_parent_loop_proc15_U0_weight_l2_3_d1),
    .weight_l2_3_q1(8'd0),
    .weight_l2_3_we1(dataflow_parent_loop_proc15_U0_weight_l2_3_we1),
    .p_read(p_read),
    .p_read1(p_read1),
    .ko_2(loop_dataflow_input_count),
    .data_l2_0_address0(dataflow_parent_loop_proc15_U0_data_l2_0_address0),
    .data_l2_0_ce0(dataflow_parent_loop_proc15_U0_data_l2_0_ce0),
    .data_l2_0_d0(dataflow_parent_loop_proc15_U0_data_l2_0_d0),
    .data_l2_0_q0(data_l2_0_q0),
    .data_l2_0_we0(dataflow_parent_loop_proc15_U0_data_l2_0_we0),
    .data_l2_0_address1(dataflow_parent_loop_proc15_U0_data_l2_0_address1),
    .data_l2_0_ce1(dataflow_parent_loop_proc15_U0_data_l2_0_ce1),
    .data_l2_0_d1(dataflow_parent_loop_proc15_U0_data_l2_0_d1),
    .data_l2_0_q1(8'd0),
    .data_l2_0_we1(dataflow_parent_loop_proc15_U0_data_l2_0_we1),
    .data_l2_1_address0(dataflow_parent_loop_proc15_U0_data_l2_1_address0),
    .data_l2_1_ce0(dataflow_parent_loop_proc15_U0_data_l2_1_ce0),
    .data_l2_1_d0(dataflow_parent_loop_proc15_U0_data_l2_1_d0),
    .data_l2_1_q0(data_l2_1_q0),
    .data_l2_1_we0(dataflow_parent_loop_proc15_U0_data_l2_1_we0),
    .data_l2_1_address1(dataflow_parent_loop_proc15_U0_data_l2_1_address1),
    .data_l2_1_ce1(dataflow_parent_loop_proc15_U0_data_l2_1_ce1),
    .data_l2_1_d1(dataflow_parent_loop_proc15_U0_data_l2_1_d1),
    .data_l2_1_q1(8'd0),
    .data_l2_1_we1(dataflow_parent_loop_proc15_U0_data_l2_1_we1),
    .data_l2_2_address0(dataflow_parent_loop_proc15_U0_data_l2_2_address0),
    .data_l2_2_ce0(dataflow_parent_loop_proc15_U0_data_l2_2_ce0),
    .data_l2_2_d0(dataflow_parent_loop_proc15_U0_data_l2_2_d0),
    .data_l2_2_q0(data_l2_2_q0),
    .data_l2_2_we0(dataflow_parent_loop_proc15_U0_data_l2_2_we0),
    .data_l2_2_address1(dataflow_parent_loop_proc15_U0_data_l2_2_address1),
    .data_l2_2_ce1(dataflow_parent_loop_proc15_U0_data_l2_2_ce1),
    .data_l2_2_d1(dataflow_parent_loop_proc15_U0_data_l2_2_d1),
    .data_l2_2_q1(8'd0),
    .data_l2_2_we1(dataflow_parent_loop_proc15_U0_data_l2_2_we1),
    .data_l2_3_address0(dataflow_parent_loop_proc15_U0_data_l2_3_address0),
    .data_l2_3_ce0(dataflow_parent_loop_proc15_U0_data_l2_3_ce0),
    .data_l2_3_d0(dataflow_parent_loop_proc15_U0_data_l2_3_d0),
    .data_l2_3_q0(data_l2_3_q0),
    .data_l2_3_we0(dataflow_parent_loop_proc15_U0_data_l2_3_we0),
    .data_l2_3_address1(dataflow_parent_loop_proc15_U0_data_l2_3_address1),
    .data_l2_3_ce1(dataflow_parent_loop_proc15_U0_data_l2_3_ce1),
    .data_l2_3_d1(dataflow_parent_loop_proc15_U0_data_l2_3_d1),
    .data_l2_3_q1(8'd0),
    .data_l2_3_we1(dataflow_parent_loop_proc15_U0_data_l2_3_we1),
    .p_read2(p_read2),
    .p_read3(p_read3),
    .output_l1_0_address0(dataflow_parent_loop_proc15_U0_output_l1_0_address0),
    .output_l1_0_ce0(dataflow_parent_loop_proc15_U0_output_l1_0_ce0),
    .output_l1_0_d0(dataflow_parent_loop_proc15_U0_output_l1_0_d0),
    .output_l1_0_q0(32'd0),
    .output_l1_0_we0(dataflow_parent_loop_proc15_U0_output_l1_0_we0),
    .output_l1_0_address1(dataflow_parent_loop_proc15_U0_output_l1_0_address1),
    .output_l1_0_ce1(dataflow_parent_loop_proc15_U0_output_l1_0_ce1),
    .output_l1_0_d1(dataflow_parent_loop_proc15_U0_output_l1_0_d1),
    .output_l1_0_q1(32'd0),
    .output_l1_0_we1(dataflow_parent_loop_proc15_U0_output_l1_0_we1),
    .output_l1_1_address0(dataflow_parent_loop_proc15_U0_output_l1_1_address0),
    .output_l1_1_ce0(dataflow_parent_loop_proc15_U0_output_l1_1_ce0),
    .output_l1_1_d0(dataflow_parent_loop_proc15_U0_output_l1_1_d0),
    .output_l1_1_q0(32'd0),
    .output_l1_1_we0(dataflow_parent_loop_proc15_U0_output_l1_1_we0),
    .output_l1_1_address1(dataflow_parent_loop_proc15_U0_output_l1_1_address1),
    .output_l1_1_ce1(dataflow_parent_loop_proc15_U0_output_l1_1_ce1),
    .output_l1_1_d1(dataflow_parent_loop_proc15_U0_output_l1_1_d1),
    .output_l1_1_q1(32'd0),
    .output_l1_1_we1(dataflow_parent_loop_proc15_U0_output_l1_1_we1),
    .output_l1_2_address0(dataflow_parent_loop_proc15_U0_output_l1_2_address0),
    .output_l1_2_ce0(dataflow_parent_loop_proc15_U0_output_l1_2_ce0),
    .output_l1_2_d0(dataflow_parent_loop_proc15_U0_output_l1_2_d0),
    .output_l1_2_q0(32'd0),
    .output_l1_2_we0(dataflow_parent_loop_proc15_U0_output_l1_2_we0),
    .output_l1_2_address1(dataflow_parent_loop_proc15_U0_output_l1_2_address1),
    .output_l1_2_ce1(dataflow_parent_loop_proc15_U0_output_l1_2_ce1),
    .output_l1_2_d1(dataflow_parent_loop_proc15_U0_output_l1_2_d1),
    .output_l1_2_q1(32'd0),
    .output_l1_2_we1(dataflow_parent_loop_proc15_U0_output_l1_2_we1),
    .output_l1_3_address0(dataflow_parent_loop_proc15_U0_output_l1_3_address0),
    .output_l1_3_ce0(dataflow_parent_loop_proc15_U0_output_l1_3_ce0),
    .output_l1_3_d0(dataflow_parent_loop_proc15_U0_output_l1_3_d0),
    .output_l1_3_q0(32'd0),
    .output_l1_3_we0(dataflow_parent_loop_proc15_U0_output_l1_3_we0),
    .output_l1_3_address1(dataflow_parent_loop_proc15_U0_output_l1_3_address1),
    .output_l1_3_ce1(dataflow_parent_loop_proc15_U0_output_l1_3_ce1),
    .output_l1_3_d1(dataflow_parent_loop_proc15_U0_output_l1_3_d1),
    .output_l1_3_q1(32'd0),
    .output_l1_3_we1(dataflow_parent_loop_proc15_U0_output_l1_3_we1),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .RS_ap_vld(RS_ap_vld),
    .p_read_ap_vld(p_read_ap_vld),
    .p_read1_ap_vld(p_read1_ap_vld),
    .ko_2_ap_vld(1'b0),
    .p_read2_ap_vld(p_read2_ap_vld),
    .p_read3_ap_vld(p_read3_ap_vld),
    .ap_start(dataflow_parent_loop_proc15_U0_ap_start),
    .ap_done(dataflow_parent_loop_proc15_U0_ap_done),
    .ap_ready(dataflow_parent_loop_proc15_U0_ap_ready),
    .ap_idle(dataflow_parent_loop_proc15_U0_ap_idle),
    .ap_continue(dataflow_parent_loop_proc15_U0_ap_continue)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        loop_dataflow_input_count <= 30'd0;
    end else begin
        if ((~(loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1) & (dataflow_parent_loop_proc15_U0_ap_ready == 1'b1))) begin
            loop_dataflow_input_count <= (loop_dataflow_input_count + 30'd1);
        end else if (((loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1) & (dataflow_parent_loop_proc15_U0_ap_ready == 1'b1))) begin
            loop_dataflow_input_count <= 30'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        loop_dataflow_output_count <= 30'd0;
    end else begin
        if ((~(loop_dataflow_output_count == bound_minus_1) & (dataflow_parent_loop_proc15_U0_ap_continue == 1'b1) & (dataflow_parent_loop_proc15_U0_ap_done == 1'b1))) begin
            loop_dataflow_output_count <= (loop_dataflow_output_count + 30'd1);
        end else if (((loop_dataflow_output_count == bound_minus_1) & (dataflow_parent_loop_proc15_U0_ap_continue == 1'b1) & (dataflow_parent_loop_proc15_U0_ap_done == 1'b1))) begin
            loop_dataflow_output_count <= 30'd0;
        end
    end
end

always @ (*) begin
    if (((loop_dataflow_output_count == bound_minus_1) & (dataflow_parent_loop_proc15_U0_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((loop_dataflow_output_count == 30'd0) & (ap_start == 1'b0) & (dataflow_parent_loop_proc15_U0_ap_idle == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1) & (dataflow_parent_loop_proc15_U0_ap_ready == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~(loop_dataflow_output_count == bound_minus_1) | (ap_continue == 1'b1))) begin
        dataflow_parent_loop_proc15_U0_ap_continue = 1'b1;
    end else begin
        dataflow_parent_loop_proc15_U0_ap_continue = 1'b0;
    end
end

assign ap_sync_continue = ap_continue;

assign ap_sync_done = dataflow_parent_loop_proc15_U0_ap_done;

assign ap_sync_ready = dataflow_parent_loop_proc15_U0_ap_ready;

assign bound_minus_1 = (div30_cast124 - 30'd1);

assign data_l2_0_address0 = dataflow_parent_loop_proc15_U0_data_l2_0_address0;

assign data_l2_0_address1 = 10'd0;

assign data_l2_0_ce0 = dataflow_parent_loop_proc15_U0_data_l2_0_ce0;

assign data_l2_0_ce1 = 1'b0;

assign data_l2_0_d0 = 8'd0;

assign data_l2_0_d1 = 8'd0;

assign data_l2_0_we0 = 1'b0;

assign data_l2_0_we1 = 1'b0;

assign data_l2_1_address0 = dataflow_parent_loop_proc15_U0_data_l2_1_address0;

assign data_l2_1_address1 = 10'd0;

assign data_l2_1_ce0 = dataflow_parent_loop_proc15_U0_data_l2_1_ce0;

assign data_l2_1_ce1 = 1'b0;

assign data_l2_1_d0 = 8'd0;

assign data_l2_1_d1 = 8'd0;

assign data_l2_1_we0 = 1'b0;

assign data_l2_1_we1 = 1'b0;

assign data_l2_2_address0 = dataflow_parent_loop_proc15_U0_data_l2_2_address0;

assign data_l2_2_address1 = 10'd0;

assign data_l2_2_ce0 = dataflow_parent_loop_proc15_U0_data_l2_2_ce0;

assign data_l2_2_ce1 = 1'b0;

assign data_l2_2_d0 = 8'd0;

assign data_l2_2_d1 = 8'd0;

assign data_l2_2_we0 = 1'b0;

assign data_l2_2_we1 = 1'b0;

assign data_l2_3_address0 = dataflow_parent_loop_proc15_U0_data_l2_3_address0;

assign data_l2_3_address1 = 10'd0;

assign data_l2_3_ce0 = dataflow_parent_loop_proc15_U0_data_l2_3_ce0;

assign data_l2_3_ce1 = 1'b0;

assign data_l2_3_d0 = 8'd0;

assign data_l2_3_d1 = 8'd0;

assign data_l2_3_we0 = 1'b0;

assign data_l2_3_we1 = 1'b0;

assign dataflow_parent_loop_proc15_U0_ap_start = ap_start;

assign dataflow_parent_loop_proc15_U0_div76_cast125_ap_vld = div76_cast125_ap_vld;

assign dataflow_parent_loop_proc15_U0_start_full_n = 1'b1;

assign dataflow_parent_loop_proc15_U0_start_write = 1'b0;

assign output_l1_0_address0 = dataflow_parent_loop_proc15_U0_output_l1_0_address0;

assign output_l1_0_address1 = 9'd0;

assign output_l1_0_ce0 = dataflow_parent_loop_proc15_U0_output_l1_0_ce0;

assign output_l1_0_ce1 = 1'b0;

assign output_l1_0_d0 = dataflow_parent_loop_proc15_U0_output_l1_0_d0;

assign output_l1_0_d1 = 32'd0;

assign output_l1_0_we0 = dataflow_parent_loop_proc15_U0_output_l1_0_we0;

assign output_l1_0_we1 = 1'b0;

assign output_l1_1_address0 = dataflow_parent_loop_proc15_U0_output_l1_1_address0;

assign output_l1_1_address1 = 9'd0;

assign output_l1_1_ce0 = dataflow_parent_loop_proc15_U0_output_l1_1_ce0;

assign output_l1_1_ce1 = 1'b0;

assign output_l1_1_d0 = dataflow_parent_loop_proc15_U0_output_l1_1_d0;

assign output_l1_1_d1 = 32'd0;

assign output_l1_1_we0 = dataflow_parent_loop_proc15_U0_output_l1_1_we0;

assign output_l1_1_we1 = 1'b0;

assign output_l1_2_address0 = dataflow_parent_loop_proc15_U0_output_l1_2_address0;

assign output_l1_2_address1 = 9'd0;

assign output_l1_2_ce0 = dataflow_parent_loop_proc15_U0_output_l1_2_ce0;

assign output_l1_2_ce1 = 1'b0;

assign output_l1_2_d0 = dataflow_parent_loop_proc15_U0_output_l1_2_d0;

assign output_l1_2_d1 = 32'd0;

assign output_l1_2_we0 = dataflow_parent_loop_proc15_U0_output_l1_2_we0;

assign output_l1_2_we1 = 1'b0;

assign output_l1_3_address0 = dataflow_parent_loop_proc15_U0_output_l1_3_address0;

assign output_l1_3_address1 = 9'd0;

assign output_l1_3_ce0 = dataflow_parent_loop_proc15_U0_output_l1_3_ce0;

assign output_l1_3_ce1 = 1'b0;

assign output_l1_3_d0 = dataflow_parent_loop_proc15_U0_output_l1_3_d0;

assign output_l1_3_d1 = 32'd0;

assign output_l1_3_we0 = dataflow_parent_loop_proc15_U0_output_l1_3_we0;

assign output_l1_3_we1 = 1'b0;

assign weight_l2_0_address0 = dataflow_parent_loop_proc15_U0_weight_l2_0_address0;

assign weight_l2_0_address1 = 9'd0;

assign weight_l2_0_ce0 = dataflow_parent_loop_proc15_U0_weight_l2_0_ce0;

assign weight_l2_0_ce1 = 1'b0;

assign weight_l2_0_d0 = 8'd0;

assign weight_l2_0_d1 = 8'd0;

assign weight_l2_0_we0 = 1'b0;

assign weight_l2_0_we1 = 1'b0;

assign weight_l2_1_address0 = dataflow_parent_loop_proc15_U0_weight_l2_1_address0;

assign weight_l2_1_address1 = 9'd0;

assign weight_l2_1_ce0 = dataflow_parent_loop_proc15_U0_weight_l2_1_ce0;

assign weight_l2_1_ce1 = 1'b0;

assign weight_l2_1_d0 = 8'd0;

assign weight_l2_1_d1 = 8'd0;

assign weight_l2_1_we0 = 1'b0;

assign weight_l2_1_we1 = 1'b0;

assign weight_l2_2_address0 = dataflow_parent_loop_proc15_U0_weight_l2_2_address0;

assign weight_l2_2_address1 = 9'd0;

assign weight_l2_2_ce0 = dataflow_parent_loop_proc15_U0_weight_l2_2_ce0;

assign weight_l2_2_ce1 = 1'b0;

assign weight_l2_2_d0 = 8'd0;

assign weight_l2_2_d1 = 8'd0;

assign weight_l2_2_we0 = 1'b0;

assign weight_l2_2_we1 = 1'b0;

assign weight_l2_3_address0 = dataflow_parent_loop_proc15_U0_weight_l2_3_address0;

assign weight_l2_3_address1 = 9'd0;

assign weight_l2_3_ce0 = dataflow_parent_loop_proc15_U0_weight_l2_3_ce0;

assign weight_l2_3_ce1 = 1'b0;

assign weight_l2_3_d0 = 8'd0;

assign weight_l2_3_d1 = 8'd0;

assign weight_l2_3_we0 = 1'b0;

assign weight_l2_3_we1 = 1'b0;

endmodule //Conv_sysarr_dataflow_parent_loop_proc16
