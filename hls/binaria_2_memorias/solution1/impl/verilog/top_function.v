// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="top_function,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=7.470250,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=336,HLS_SYN_LUT=1465,HLS_VERSION=2019_1}" *)

module top_function (
        tree1_V_address0,
        tree1_V_ce0,
        tree1_V_d0,
        tree1_V_q0,
        tree1_V_we0,
        tree1_V_address1,
        tree1_V_ce1,
        tree1_V_d1,
        tree1_V_q1,
        tree1_V_we1,
        tree2_V_address0,
        tree2_V_ce0,
        tree2_V_d0,
        tree2_V_q0,
        tree2_V_we0,
        tree2_V_address1,
        tree2_V_ce1,
        tree2_V_d1,
        tree2_V_q1,
        tree2_V_we1,
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


output  [8:0] tree1_V_address0;
output   tree1_V_ce0;
output  [23:0] tree1_V_d0;
input  [23:0] tree1_V_q0;
output   tree1_V_we0;
output  [8:0] tree1_V_address1;
output   tree1_V_ce1;
output  [23:0] tree1_V_d1;
input  [23:0] tree1_V_q1;
output   tree1_V_we1;
output  [9:0] tree2_V_address0;
output   tree2_V_ce0;
output  [23:0] tree2_V_d0;
input  [23:0] tree2_V_q0;
output   tree2_V_we0;
output  [9:0] tree2_V_address1;
output   tree2_V_ce1;
output  [23:0] tree2_V_d1;
input  [23:0] tree2_V_q1;
output   tree2_V_we1;
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

wire    top_function_entry3_U0_ap_start;
wire    top_function_entry3_U0_ap_done;
wire    top_function_entry3_U0_ap_continue;
wire    top_function_entry3_U0_ap_idle;
wire    top_function_entry3_U0_ap_ready;
wire    top_function_entry3_U0_start_out;
wire    top_function_entry3_U0_start_write;
wire   [0:0] top_function_entry3_U0_fatherSearch;
wire   [10:0] top_function_entry3_U0_nodo_V_out_din;
wire    top_function_entry3_U0_nodo_V_out_write;
wire   [1:0] top_function_entry3_U0_relationship_V_out_din;
wire    top_function_entry3_U0_relationship_V_out_write;
wire   [0:0] top_function_entry3_U0_fatherSearch_out_din;
wire    top_function_entry3_U0_fatherSearch_out_write;
wire    top_function_entry43_U0_ap_start;
wire    top_function_entry43_U0_ap_done;
wire    top_function_entry43_U0_ap_continue;
wire    top_function_entry43_U0_ap_idle;
wire    top_function_entry43_U0_ap_ready;
wire    top_function_entry43_U0_nodo_V_read;
wire    top_function_entry43_U0_relationship_V_read;
wire    top_function_entry43_U0_fatherSearch_read;
wire   [10:0] top_function_entry43_U0_nodo_V_out_din;
wire    top_function_entry43_U0_nodo_V_out_write;
wire   [10:0] top_function_entry43_U0_nodo_V_out1_din;
wire    top_function_entry43_U0_nodo_V_out1_write;
wire   [1:0] top_function_entry43_U0_relationship_V_out_din;
wire    top_function_entry43_U0_relationship_V_out_write;
wire   [1:0] top_function_entry43_U0_relationship_V_out2_din;
wire    top_function_entry43_U0_relationship_V_out2_write;
wire   [0:0] top_function_entry43_U0_fatherSearch_out_din;
wire    top_function_entry43_U0_fatherSearch_out_write;
wire   [0:0] top_function_entry43_U0_fatherSearch_out3_din;
wire    top_function_entry43_U0_fatherSearch_out3_write;
wire    busqueda_cam_1_U0_ap_start;
wire    busqueda_cam_1_U0_ap_done;
wire    busqueda_cam_1_U0_ap_continue;
wire    busqueda_cam_1_U0_ap_idle;
wire    busqueda_cam_1_U0_ap_ready;
wire    busqueda_cam_1_U0_start_out;
wire    busqueda_cam_1_U0_start_write;
wire   [8:0] busqueda_cam_1_U0_tree_V_address0;
wire    busqueda_cam_1_U0_tree_V_ce0;
wire   [8:0] busqueda_cam_1_U0_tree_V_address1;
wire    busqueda_cam_1_U0_tree_V_ce1;
wire    busqueda_cam_1_U0_nodo_V_read;
wire    busqueda_cam_1_U0_relationship_V_read;
wire    busqueda_cam_1_U0_fatherSearch_read;
wire   [10:0] busqueda_cam_1_U0_in1_V_V_din;
wire    busqueda_cam_1_U0_in1_V_V_write;
wire   [10:0] busqueda_cam_1_U0_in1b_V_V_din;
wire    busqueda_cam_1_U0_in1b_V_V_write;
wire    busqueda_cam_U0_ap_start;
wire    busqueda_cam_U0_ap_done;
wire    busqueda_cam_U0_ap_continue;
wire    busqueda_cam_U0_ap_idle;
wire    busqueda_cam_U0_ap_ready;
wire   [9:0] busqueda_cam_U0_tree_V_address0;
wire    busqueda_cam_U0_tree_V_ce0;
wire   [9:0] busqueda_cam_U0_tree_V_address1;
wire    busqueda_cam_U0_tree_V_ce1;
wire    busqueda_cam_U0_nodo_V_read;
wire    busqueda_cam_U0_relationship_V_read;
wire    busqueda_cam_U0_fatherSearch_read;
wire   [10:0] busqueda_cam_U0_in2_V_V_din;
wire    busqueda_cam_U0_in2_V_V_write;
wire   [10:0] busqueda_cam_U0_in2b_V_V_din;
wire    busqueda_cam_U0_in2b_V_V_write;
wire    combinar_U0_ap_start;
wire    combinar_U0_ap_done;
wire    combinar_U0_ap_continue;
wire    combinar_U0_ap_idle;
wire    combinar_U0_ap_ready;
wire   [10:0] combinar_U0_result_V_V_din;
wire    combinar_U0_result_V_V_write;
wire    combinar_U0_in1_V_V_read;
wire    combinar_U0_in2_V_V_read;
wire    combinar_U0_in1b_V_V_read;
wire    combinar_U0_in2b_V_V_read;
wire    ap_sync_continue;
wire    nodo_V_c1_full_n;
wire   [10:0] nodo_V_c1_dout;
wire    nodo_V_c1_empty_n;
wire    relationship_V_c2_full_n;
wire   [1:0] relationship_V_c2_dout;
wire    relationship_V_c2_empty_n;
wire    fatherSearch_c3_full_n;
wire   [0:0] fatherSearch_c3_dout;
wire    fatherSearch_c3_empty_n;
wire    nodo_V_c_full_n;
wire   [10:0] nodo_V_c_dout;
wire    nodo_V_c_empty_n;
wire    nodo_V_c7_full_n;
wire   [10:0] nodo_V_c7_dout;
wire    nodo_V_c7_empty_n;
wire    relationship_V_c_full_n;
wire   [1:0] relationship_V_c_dout;
wire    relationship_V_c_empty_n;
wire    relationship_V_c8_full_n;
wire   [1:0] relationship_V_c8_dout;
wire    relationship_V_c8_empty_n;
wire    fatherSearch_c_full_n;
wire   [0:0] fatherSearch_c_dout;
wire    fatherSearch_c_empty_n;
wire    fatherSearch_c9_full_n;
wire   [0:0] fatherSearch_c9_dout;
wire    fatherSearch_c9_empty_n;
wire    in1_V_V_full_n;
wire   [10:0] in1_V_V_dout;
wire    in1_V_V_empty_n;
wire    in1b_V_V_full_n;
wire   [10:0] in1b_V_V_dout;
wire    in1b_V_V_empty_n;
wire    in2_V_V_full_n;
wire   [10:0] in2_V_V_dout;
wire    in2_V_V_empty_n;
wire    in2b_V_V_full_n;
wire   [10:0] in2b_V_V_dout;
wire    in2b_V_V_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_top_function_entry3_U0_ap_ready;
wire    ap_sync_top_function_entry3_U0_ap_ready;
reg   [1:0] top_function_entry3_U0_ap_ready_count;
reg    ap_sync_reg_busqueda_cam_1_U0_ap_ready;
wire    ap_sync_busqueda_cam_1_U0_ap_ready;
reg   [1:0] busqueda_cam_1_U0_ap_ready_count;
reg    ap_sync_reg_busqueda_cam_U0_ap_ready;
wire    ap_sync_busqueda_cam_U0_ap_ready;
reg   [1:0] busqueda_cam_U0_ap_ready_count;
wire   [0:0] start_for_top_function_entry43_U0_din;
wire    start_for_top_function_entry43_U0_full_n;
wire   [0:0] start_for_top_function_entry43_U0_dout;
wire    start_for_top_function_entry43_U0_empty_n;
wire    top_function_entry43_U0_start_full_n;
wire    top_function_entry43_U0_start_write;
wire   [0:0] start_for_combinar_U0_din;
wire    start_for_combinar_U0_full_n;
wire   [0:0] start_for_combinar_U0_dout;
wire    start_for_combinar_U0_empty_n;
wire    busqueda_cam_U0_start_full_n;
wire    busqueda_cam_U0_start_write;
wire    combinar_U0_start_full_n;
wire    combinar_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_top_function_entry3_U0_ap_ready = 1'b0;
#0 top_function_entry3_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_busqueda_cam_1_U0_ap_ready = 1'b0;
#0 busqueda_cam_1_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_busqueda_cam_U0_ap_ready = 1'b0;
#0 busqueda_cam_U0_ap_ready_count = 2'd0;
end

top_function_entry3 top_function_entry3_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(top_function_entry3_U0_ap_start),
    .start_full_n(start_for_top_function_entry43_U0_full_n),
    .ap_done(top_function_entry3_U0_ap_done),
    .ap_continue(top_function_entry3_U0_ap_continue),
    .ap_idle(top_function_entry3_U0_ap_idle),
    .ap_ready(top_function_entry3_U0_ap_ready),
    .start_out(top_function_entry3_U0_start_out),
    .start_write(top_function_entry3_U0_start_write),
    .nodo_V(nodo_V),
    .relationship_V(relationship_V),
    .fatherSearch(top_function_entry3_U0_fatherSearch),
    .nodo_V_out_din(top_function_entry3_U0_nodo_V_out_din),
    .nodo_V_out_full_n(nodo_V_c1_full_n),
    .nodo_V_out_write(top_function_entry3_U0_nodo_V_out_write),
    .relationship_V_out_din(top_function_entry3_U0_relationship_V_out_din),
    .relationship_V_out_full_n(relationship_V_c2_full_n),
    .relationship_V_out_write(top_function_entry3_U0_relationship_V_out_write),
    .fatherSearch_out_din(top_function_entry3_U0_fatherSearch_out_din),
    .fatherSearch_out_full_n(fatherSearch_c3_full_n),
    .fatherSearch_out_write(top_function_entry3_U0_fatherSearch_out_write)
);

top_function_entry43 top_function_entry43_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(top_function_entry43_U0_ap_start),
    .ap_done(top_function_entry43_U0_ap_done),
    .ap_continue(top_function_entry43_U0_ap_continue),
    .ap_idle(top_function_entry43_U0_ap_idle),
    .ap_ready(top_function_entry43_U0_ap_ready),
    .nodo_V_dout(nodo_V_c1_dout),
    .nodo_V_empty_n(nodo_V_c1_empty_n),
    .nodo_V_read(top_function_entry43_U0_nodo_V_read),
    .relationship_V_dout(relationship_V_c2_dout),
    .relationship_V_empty_n(relationship_V_c2_empty_n),
    .relationship_V_read(top_function_entry43_U0_relationship_V_read),
    .fatherSearch_dout(fatherSearch_c3_dout),
    .fatherSearch_empty_n(fatherSearch_c3_empty_n),
    .fatherSearch_read(top_function_entry43_U0_fatherSearch_read),
    .nodo_V_out_din(top_function_entry43_U0_nodo_V_out_din),
    .nodo_V_out_full_n(nodo_V_c_full_n),
    .nodo_V_out_write(top_function_entry43_U0_nodo_V_out_write),
    .nodo_V_out1_din(top_function_entry43_U0_nodo_V_out1_din),
    .nodo_V_out1_full_n(nodo_V_c7_full_n),
    .nodo_V_out1_write(top_function_entry43_U0_nodo_V_out1_write),
    .relationship_V_out_din(top_function_entry43_U0_relationship_V_out_din),
    .relationship_V_out_full_n(relationship_V_c_full_n),
    .relationship_V_out_write(top_function_entry43_U0_relationship_V_out_write),
    .relationship_V_out2_din(top_function_entry43_U0_relationship_V_out2_din),
    .relationship_V_out2_full_n(relationship_V_c8_full_n),
    .relationship_V_out2_write(top_function_entry43_U0_relationship_V_out2_write),
    .fatherSearch_out_din(top_function_entry43_U0_fatherSearch_out_din),
    .fatherSearch_out_full_n(fatherSearch_c_full_n),
    .fatherSearch_out_write(top_function_entry43_U0_fatherSearch_out_write),
    .fatherSearch_out3_din(top_function_entry43_U0_fatherSearch_out3_din),
    .fatherSearch_out3_full_n(fatherSearch_c9_full_n),
    .fatherSearch_out3_write(top_function_entry43_U0_fatherSearch_out3_write)
);

busqueda_cam_1 busqueda_cam_1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(busqueda_cam_1_U0_ap_start),
    .start_full_n(start_for_combinar_U0_full_n),
    .ap_done(busqueda_cam_1_U0_ap_done),
    .ap_continue(busqueda_cam_1_U0_ap_continue),
    .ap_idle(busqueda_cam_1_U0_ap_idle),
    .ap_ready(busqueda_cam_1_U0_ap_ready),
    .start_out(busqueda_cam_1_U0_start_out),
    .start_write(busqueda_cam_1_U0_start_write),
    .tree_V_address0(busqueda_cam_1_U0_tree_V_address0),
    .tree_V_ce0(busqueda_cam_1_U0_tree_V_ce0),
    .tree_V_q0(tree1_V_q0),
    .tree_V_address1(busqueda_cam_1_U0_tree_V_address1),
    .tree_V_ce1(busqueda_cam_1_U0_tree_V_ce1),
    .tree_V_q1(tree1_V_q1),
    .nodo_V_dout(nodo_V_c_dout),
    .nodo_V_empty_n(nodo_V_c_empty_n),
    .nodo_V_read(busqueda_cam_1_U0_nodo_V_read),
    .relationship_V_dout(relationship_V_c_dout),
    .relationship_V_empty_n(relationship_V_c_empty_n),
    .relationship_V_read(busqueda_cam_1_U0_relationship_V_read),
    .fatherSearch_dout(fatherSearch_c_dout),
    .fatherSearch_empty_n(fatherSearch_c_empty_n),
    .fatherSearch_read(busqueda_cam_1_U0_fatherSearch_read),
    .in1_V_V_din(busqueda_cam_1_U0_in1_V_V_din),
    .in1_V_V_full_n(in1_V_V_full_n),
    .in1_V_V_write(busqueda_cam_1_U0_in1_V_V_write),
    .in1b_V_V_din(busqueda_cam_1_U0_in1b_V_V_din),
    .in1b_V_V_full_n(in1b_V_V_full_n),
    .in1b_V_V_write(busqueda_cam_1_U0_in1b_V_V_write)
);

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
    .tree_V_q0(tree2_V_q0),
    .tree_V_address1(busqueda_cam_U0_tree_V_address1),
    .tree_V_ce1(busqueda_cam_U0_tree_V_ce1),
    .tree_V_q1(tree2_V_q1),
    .nodo_V_dout(nodo_V_c7_dout),
    .nodo_V_empty_n(nodo_V_c7_empty_n),
    .nodo_V_read(busqueda_cam_U0_nodo_V_read),
    .relationship_V_dout(relationship_V_c8_dout),
    .relationship_V_empty_n(relationship_V_c8_empty_n),
    .relationship_V_read(busqueda_cam_U0_relationship_V_read),
    .fatherSearch_dout(fatherSearch_c9_dout),
    .fatherSearch_empty_n(fatherSearch_c9_empty_n),
    .fatherSearch_read(busqueda_cam_U0_fatherSearch_read),
    .in2_V_V_din(busqueda_cam_U0_in2_V_V_din),
    .in2_V_V_full_n(in2_V_V_full_n),
    .in2_V_V_write(busqueda_cam_U0_in2_V_V_write),
    .in2b_V_V_din(busqueda_cam_U0_in2b_V_V_din),
    .in2b_V_V_full_n(in2b_V_V_full_n),
    .in2b_V_V_write(busqueda_cam_U0_in2b_V_V_write)
);

combinar combinar_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(combinar_U0_ap_start),
    .ap_done(combinar_U0_ap_done),
    .ap_continue(combinar_U0_ap_continue),
    .ap_idle(combinar_U0_ap_idle),
    .ap_ready(combinar_U0_ap_ready),
    .result_V_V_din(combinar_U0_result_V_V_din),
    .result_V_V_full_n(result_V_V_full_n),
    .result_V_V_write(combinar_U0_result_V_V_write),
    .in1_V_V_dout(in1_V_V_dout),
    .in1_V_V_empty_n(in1_V_V_empty_n),
    .in1_V_V_read(combinar_U0_in1_V_V_read),
    .in2_V_V_dout(in2_V_V_dout),
    .in2_V_V_empty_n(in2_V_V_empty_n),
    .in2_V_V_read(combinar_U0_in2_V_V_read),
    .in1b_V_V_dout(in1b_V_V_dout),
    .in1b_V_V_empty_n(in1b_V_V_empty_n),
    .in1b_V_V_read(combinar_U0_in1b_V_V_read),
    .in2b_V_V_dout(in2b_V_V_dout),
    .in2b_V_V_empty_n(in2b_V_V_empty_n),
    .in2b_V_V_read(combinar_U0_in2b_V_V_read)
);

fifo_w11_d2_A nodo_V_c1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(top_function_entry3_U0_nodo_V_out_din),
    .if_full_n(nodo_V_c1_full_n),
    .if_write(top_function_entry3_U0_nodo_V_out_write),
    .if_dout(nodo_V_c1_dout),
    .if_empty_n(nodo_V_c1_empty_n),
    .if_read(top_function_entry43_U0_nodo_V_read)
);

fifo_w2_d2_A relationship_V_c2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(top_function_entry3_U0_relationship_V_out_din),
    .if_full_n(relationship_V_c2_full_n),
    .if_write(top_function_entry3_U0_relationship_V_out_write),
    .if_dout(relationship_V_c2_dout),
    .if_empty_n(relationship_V_c2_empty_n),
    .if_read(top_function_entry43_U0_relationship_V_read)
);

fifo_w1_d2_A fatherSearch_c3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(top_function_entry3_U0_fatherSearch_out_din),
    .if_full_n(fatherSearch_c3_full_n),
    .if_write(top_function_entry3_U0_fatherSearch_out_write),
    .if_dout(fatherSearch_c3_dout),
    .if_empty_n(fatherSearch_c3_empty_n),
    .if_read(top_function_entry43_U0_fatherSearch_read)
);

fifo_w11_d2_A nodo_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(top_function_entry43_U0_nodo_V_out_din),
    .if_full_n(nodo_V_c_full_n),
    .if_write(top_function_entry43_U0_nodo_V_out_write),
    .if_dout(nodo_V_c_dout),
    .if_empty_n(nodo_V_c_empty_n),
    .if_read(busqueda_cam_1_U0_nodo_V_read)
);

fifo_w11_d2_A nodo_V_c7_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(top_function_entry43_U0_nodo_V_out1_din),
    .if_full_n(nodo_V_c7_full_n),
    .if_write(top_function_entry43_U0_nodo_V_out1_write),
    .if_dout(nodo_V_c7_dout),
    .if_empty_n(nodo_V_c7_empty_n),
    .if_read(busqueda_cam_U0_nodo_V_read)
);

fifo_w2_d2_A relationship_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(top_function_entry43_U0_relationship_V_out_din),
    .if_full_n(relationship_V_c_full_n),
    .if_write(top_function_entry43_U0_relationship_V_out_write),
    .if_dout(relationship_V_c_dout),
    .if_empty_n(relationship_V_c_empty_n),
    .if_read(busqueda_cam_1_U0_relationship_V_read)
);

fifo_w2_d2_A relationship_V_c8_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(top_function_entry43_U0_relationship_V_out2_din),
    .if_full_n(relationship_V_c8_full_n),
    .if_write(top_function_entry43_U0_relationship_V_out2_write),
    .if_dout(relationship_V_c8_dout),
    .if_empty_n(relationship_V_c8_empty_n),
    .if_read(busqueda_cam_U0_relationship_V_read)
);

fifo_w1_d2_A fatherSearch_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(top_function_entry43_U0_fatherSearch_out_din),
    .if_full_n(fatherSearch_c_full_n),
    .if_write(top_function_entry43_U0_fatherSearch_out_write),
    .if_dout(fatherSearch_c_dout),
    .if_empty_n(fatherSearch_c_empty_n),
    .if_read(busqueda_cam_1_U0_fatherSearch_read)
);

fifo_w1_d2_A fatherSearch_c9_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(top_function_entry43_U0_fatherSearch_out3_din),
    .if_full_n(fatherSearch_c9_full_n),
    .if_write(top_function_entry43_U0_fatherSearch_out3_write),
    .if_dout(fatherSearch_c9_dout),
    .if_empty_n(fatherSearch_c9_empty_n),
    .if_read(busqueda_cam_U0_fatherSearch_read)
);

fifo_w11_d8_A in1_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(busqueda_cam_1_U0_in1_V_V_din),
    .if_full_n(in1_V_V_full_n),
    .if_write(busqueda_cam_1_U0_in1_V_V_write),
    .if_dout(in1_V_V_dout),
    .if_empty_n(in1_V_V_empty_n),
    .if_read(combinar_U0_in1_V_V_read)
);

fifo_w11_d8_A in1b_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(busqueda_cam_1_U0_in1b_V_V_din),
    .if_full_n(in1b_V_V_full_n),
    .if_write(busqueda_cam_1_U0_in1b_V_V_write),
    .if_dout(in1b_V_V_dout),
    .if_empty_n(in1b_V_V_empty_n),
    .if_read(combinar_U0_in1b_V_V_read)
);

fifo_w11_d8_A in2_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(busqueda_cam_U0_in2_V_V_din),
    .if_full_n(in2_V_V_full_n),
    .if_write(busqueda_cam_U0_in2_V_V_write),
    .if_dout(in2_V_V_dout),
    .if_empty_n(in2_V_V_empty_n),
    .if_read(combinar_U0_in2_V_V_read)
);

fifo_w11_d8_A in2b_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(busqueda_cam_U0_in2b_V_V_din),
    .if_full_n(in2b_V_V_full_n),
    .if_write(busqueda_cam_U0_in2b_V_V_write),
    .if_dout(in2b_V_V_dout),
    .if_empty_n(in2b_V_V_empty_n),
    .if_read(combinar_U0_in2b_V_V_read)
);

start_for_top_funbkb start_for_top_funbkb_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_top_function_entry43_U0_din),
    .if_full_n(start_for_top_function_entry43_U0_full_n),
    .if_write(top_function_entry3_U0_start_write),
    .if_dout(start_for_top_function_entry43_U0_dout),
    .if_empty_n(start_for_top_function_entry43_U0_empty_n),
    .if_read(top_function_entry43_U0_ap_ready)
);

start_for_combinacud start_for_combinacud_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_combinar_U0_din),
    .if_full_n(start_for_combinar_U0_full_n),
    .if_write(busqueda_cam_1_U0_start_write),
    .if_dout(start_for_combinar_U0_dout),
    .if_empty_n(start_for_combinar_U0_empty_n),
    .if_read(combinar_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_busqueda_cam_1_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_busqueda_cam_1_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_busqueda_cam_1_U0_ap_ready <= ap_sync_busqueda_cam_1_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_busqueda_cam_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_busqueda_cam_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_busqueda_cam_U0_ap_ready <= ap_sync_busqueda_cam_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_top_function_entry3_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_top_function_entry3_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_top_function_entry3_U0_ap_ready <= ap_sync_top_function_entry3_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_sync_ready == 1'b1) & (busqueda_cam_1_U0_ap_ready == 1'b0))) begin
        busqueda_cam_1_U0_ap_ready_count <= (busqueda_cam_1_U0_ap_ready_count - 2'd1);
    end else if (((busqueda_cam_1_U0_ap_ready == 1'b1) & (ap_sync_ready == 1'b0))) begin
        busqueda_cam_1_U0_ap_ready_count <= (busqueda_cam_1_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((ap_sync_ready == 1'b1) & (busqueda_cam_U0_ap_ready == 1'b0))) begin
        busqueda_cam_U0_ap_ready_count <= (busqueda_cam_U0_ap_ready_count - 2'd1);
    end else if (((busqueda_cam_U0_ap_ready == 1'b1) & (ap_sync_ready == 1'b0))) begin
        busqueda_cam_U0_ap_ready_count <= (busqueda_cam_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((ap_sync_ready == 1'b1) & (top_function_entry3_U0_ap_ready == 1'b0))) begin
        top_function_entry3_U0_ap_ready_count <= (top_function_entry3_U0_ap_ready_count - 2'd1);
    end else if (((top_function_entry3_U0_ap_ready == 1'b1) & (ap_sync_ready == 1'b0))) begin
        top_function_entry3_U0_ap_ready_count <= (top_function_entry3_U0_ap_ready_count + 2'd1);
    end
end

assign ap_done = combinar_U0_ap_done;

assign ap_idle = (top_function_entry43_U0_ap_idle & top_function_entry3_U0_ap_idle & combinar_U0_ap_idle & busqueda_cam_U0_ap_idle & busqueda_cam_1_U0_ap_idle);

assign ap_ready = ap_sync_ready;

assign ap_sync_busqueda_cam_1_U0_ap_ready = (busqueda_cam_1_U0_ap_ready | ap_sync_reg_busqueda_cam_1_U0_ap_ready);

assign ap_sync_busqueda_cam_U0_ap_ready = (busqueda_cam_U0_ap_ready | ap_sync_reg_busqueda_cam_U0_ap_ready);

assign ap_sync_continue = 1'b1;

assign ap_sync_done = combinar_U0_ap_done;

assign ap_sync_ready = (ap_sync_top_function_entry3_U0_ap_ready & ap_sync_busqueda_cam_U0_ap_ready & ap_sync_busqueda_cam_1_U0_ap_ready);

assign ap_sync_top_function_entry3_U0_ap_ready = (top_function_entry3_U0_ap_ready | ap_sync_reg_top_function_entry3_U0_ap_ready);

assign busqueda_cam_1_U0_ap_continue = 1'b1;

assign busqueda_cam_1_U0_ap_start = ((ap_sync_reg_busqueda_cam_1_U0_ap_ready ^ 1'b1) & ap_start);

assign busqueda_cam_U0_ap_continue = 1'b1;

assign busqueda_cam_U0_ap_start = ((ap_sync_reg_busqueda_cam_U0_ap_ready ^ 1'b1) & ap_start);

assign busqueda_cam_U0_start_full_n = 1'b1;

assign busqueda_cam_U0_start_write = 1'b0;

assign combinar_U0_ap_continue = 1'b1;

assign combinar_U0_ap_start = start_for_combinar_U0_empty_n;

assign combinar_U0_start_full_n = 1'b1;

assign combinar_U0_start_write = 1'b0;

assign result_V_V_din = combinar_U0_result_V_V_din;

assign result_V_V_write = combinar_U0_result_V_V_write;

assign start_for_combinar_U0_din = 1'b1;

assign start_for_top_function_entry43_U0_din = 1'b1;

assign top_function_entry3_U0_ap_continue = 1'b1;

assign top_function_entry3_U0_ap_start = ((ap_sync_reg_top_function_entry3_U0_ap_ready ^ 1'b1) & ap_start);

assign top_function_entry3_U0_fatherSearch = fatherSearch;

assign top_function_entry43_U0_ap_continue = 1'b1;

assign top_function_entry43_U0_ap_start = start_for_top_function_entry43_U0_empty_n;

assign top_function_entry43_U0_start_full_n = 1'b1;

assign top_function_entry43_U0_start_write = 1'b0;

assign tree1_V_address0 = busqueda_cam_1_U0_tree_V_address0;

assign tree1_V_address1 = busqueda_cam_1_U0_tree_V_address1;

assign tree1_V_ce0 = busqueda_cam_1_U0_tree_V_ce0;

assign tree1_V_ce1 = busqueda_cam_1_U0_tree_V_ce1;

assign tree1_V_d0 = 24'd0;

assign tree1_V_d1 = 24'd0;

assign tree1_V_we0 = 1'b0;

assign tree1_V_we1 = 1'b0;

assign tree2_V_address0 = busqueda_cam_U0_tree_V_address0;

assign tree2_V_address1 = busqueda_cam_U0_tree_V_address1;

assign tree2_V_ce0 = busqueda_cam_U0_tree_V_ce0;

assign tree2_V_ce1 = busqueda_cam_U0_tree_V_ce1;

assign tree2_V_d0 = 24'd0;

assign tree2_V_d1 = 24'd0;

assign tree2_V_we0 = 1'b0;

assign tree2_V_we1 = 1'b0;

endmodule //top_function