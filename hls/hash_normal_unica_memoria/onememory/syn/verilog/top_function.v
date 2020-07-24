// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="top_function,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=6.888000,HLS_SYN_LAT=2,HLS_SYN_TPT=3,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=4,HLS_SYN_LUT=114,HLS_VERSION=2019_1}" *)

module top_function (
        tree_V_address0,
        tree_V_ce0,
        tree_V_d0,
        tree_V_q0,
        tree_V_we0,
        tree_V_address1,
        tree_V_ce1,
        tree_V_d1,
        tree_V_q1,
        tree_V_we1,
        nodo_V,
        relationship_V,
        fatherSearch,
        result_V_V_din,
        result_V_V_full_n,
        result_V_V_write,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle
);


output  [9:0] tree_V_address0;
output   tree_V_ce0;
output  [23:0] tree_V_d0;
input  [23:0] tree_V_q0;
output   tree_V_we0;
output  [9:0] tree_V_address1;
output   tree_V_ce1;
output  [23:0] tree_V_d1;
input  [23:0] tree_V_q1;
output   tree_V_we1;
input  [10:0] nodo_V;
input  [1:0] relationship_V;
input   fatherSearch;
output  [10:0] result_V_V_din;
input   result_V_V_full_n;
output   result_V_V_write;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;

wire    busqueda_cam_U0_ap_start;
wire    busqueda_cam_U0_ap_done;
wire    busqueda_cam_U0_ap_continue;
wire    busqueda_cam_U0_ap_idle;
wire    busqueda_cam_U0_ap_ready;
wire   [9:0] busqueda_cam_U0_tree_V_address0;
wire    busqueda_cam_U0_tree_V_ce0;
wire   [10:0] busqueda_cam_U0_result_V_V_din;
wire    busqueda_cam_U0_result_V_V_write;
wire    ap_sync_continue;
wire    ap_sync_done;
wire    ap_sync_ready;
wire    busqueda_cam_U0_start_full_n;
wire    busqueda_cam_U0_start_write;

busqueda_cam busqueda_cam_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(busqueda_cam_U0_ap_start),
    .ap_done(busqueda_cam_U0_ap_done),
    .ap_continue(busqueda_cam_U0_ap_continue),
    .ap_idle(busqueda_cam_U0_ap_idle),
    .ap_ready(busqueda_cam_U0_ap_ready),
    .tree_V_address0(busqueda_cam_U0_tree_V_address0),
    .tree_V_ce0(busqueda_cam_U0_tree_V_ce0),
    .tree_V_q0(tree_V_q0),
    .nodo_V(nodo_V),
    .relationship_V(relationship_V),
    .fatherSearch(fatherSearch),
    .result_V_V_din(busqueda_cam_U0_result_V_V_din),
    .result_V_V_full_n(result_V_V_full_n),
    .result_V_V_write(busqueda_cam_U0_result_V_V_write)
);

assign ap_done = busqueda_cam_U0_ap_done;

assign ap_idle = busqueda_cam_U0_ap_idle;

assign ap_ready = busqueda_cam_U0_ap_ready;

assign ap_sync_continue = 1'b1;

assign ap_sync_done = busqueda_cam_U0_ap_done;

assign ap_sync_ready = busqueda_cam_U0_ap_ready;

assign busqueda_cam_U0_ap_continue = 1'b1;

assign busqueda_cam_U0_ap_start = ap_start;

assign busqueda_cam_U0_start_full_n = 1'b1;

assign busqueda_cam_U0_start_write = 1'b0;

assign result_V_V_din = busqueda_cam_U0_result_V_V_din;

assign result_V_V_write = busqueda_cam_U0_result_V_V_write;

assign tree_V_address0 = busqueda_cam_U0_tree_V_address0;

assign tree_V_address1 = 10'd0;

assign tree_V_ce0 = busqueda_cam_U0_tree_V_ce0;

assign tree_V_ce1 = 1'b0;

assign tree_V_d0 = 24'd0;

assign tree_V_d1 = 24'd0;

assign tree_V_we0 = 1'b0;

assign tree_V_we1 = 1'b0;

endmodule //top_function