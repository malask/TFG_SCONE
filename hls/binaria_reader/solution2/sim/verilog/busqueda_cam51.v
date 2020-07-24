// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module busqueda_cam51 (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        nodo_V_dout,
        nodo_V_empty_n,
        nodo_V_read,
        relationship_V_dout,
        relationship_V_empty_n,
        relationship_V_read,
        fatherSearch_dout,
        fatherSearch_empty_n,
        fatherSearch_read,
        in1_V_V_dout,
        in1_V_V_empty_n,
        in1_V_V_read,
        in1b_V_V_din,
        in1b_V_V_full_n,
        in1b_V_V_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_pp0_stage0 = 4'd2;
parameter    ap_ST_fsm_state4 = 4'd4;
parameter    ap_ST_fsm_pp1_stage0 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [10:0] nodo_V_dout;
input   nodo_V_empty_n;
output   nodo_V_read;
input  [1:0] relationship_V_dout;
input   relationship_V_empty_n;
output   relationship_V_read;
input  [0:0] fatherSearch_dout;
input   fatherSearch_empty_n;
output   fatherSearch_read;
input  [23:0] in1_V_V_dout;
input   in1_V_V_empty_n;
output   in1_V_V_read;
output  [10:0] in1b_V_V_din;
input   in1b_V_V_full_n;
output   in1b_V_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg nodo_V_read;
reg relationship_V_read;
reg fatherSearch_read;
reg in1_V_V_read;
reg[10:0] in1b_V_V_din;
reg in1b_V_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    nodo_V_blk_n;
reg    relationship_V_blk_n;
reg    fatherSearch_blk_n;
reg    in1b_V_V_blk_n;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp1_stage0;
reg   [0:0] empty_n_reg_211;
reg   [0:0] icmp_ln879_reg_215;
reg   [0:0] and_ln61_reg_219;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] empty_n_2_reg_194;
reg   [0:0] icmp_ln879_2_reg_198;
reg   [0:0] and_ln77_reg_202;
wire    ap_CS_fsm_state4;
reg   [10:0] nodo_V_read_reg_178;
reg    ap_block_state1;
reg   [1:0] relationship_V_read_reg_184;
wire   [0:0] fatherSearch_read_read_fu_74_p2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_predicate_op37_write_state3;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] grp_fu_102_p2;
wire   [0:0] and_ln77_fu_152_p2;
reg   [10:0] tmp_V_3_reg_206;
reg    ap_enable_reg_pp1_iter0;
wire    ap_block_state5_pp1_stage0_iter0;
reg    ap_predicate_op65_write_state6;
reg    ap_block_state6_pp1_stage0_iter1;
reg    ap_block_pp1_stage0_11001;
wire   [0:0] and_ln61_fu_172_p2;
wire   [10:0] grp_fu_108_p4;
reg   [10:0] tmp_V_reg_223;
reg    ap_block_pp0_stage0_subdone;
reg    ap_predicate_tran3to4_state2;
reg    ap_block_pp1_stage0_subdone;
reg    ap_predicate_tran6to4_state5;
wire   [0:0] grp_nbread_fu_80_p2_0;
reg    ap_block_pp0_stage0_01001;
reg    ap_block_pp1_stage0_01001;
wire   [1:0] node_relation_V_1_fu_138_p1;
wire   [0:0] icmp_ln879_5_fu_142_p2;
wire   [0:0] icmp_ln879_6_fu_147_p2;
wire   [10:0] compare_node_V_fu_128_p4;
wire   [1:0] node_relation_V_fu_158_p1;
wire   [0:0] icmp_ln879_3_fu_162_p2;
wire   [0:0] icmp_ln879_4_fu_167_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((in1b_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_predicate_tran3to4_state2 == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((fatherSearch_empty_n == 1'b0) | (relationship_V_empty_n == 1'b0) | (nodo_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (fatherSearch_read_read_fu_74_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((~((fatherSearch_empty_n == 1'b0) | (relationship_V_empty_n == 1'b0) | (nodo_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (fatherSearch_read_read_fu_74_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_predicate_tran6to4_state5 == 1'b1))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if ((~((fatherSearch_empty_n == 1'b0) | (relationship_V_empty_n == 1'b0) | (nodo_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (fatherSearch_read_read_fu_74_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
        end else if ((~((fatherSearch_empty_n == 1'b0) | (relationship_V_empty_n == 1'b0) | (nodo_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (fatherSearch_read_read_fu_74_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((grp_fu_102_p2 == 1'd0) & (grp_nbread_fu_80_p2_0 == 1'd1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        and_ln61_reg_219 <= and_ln61_fu_172_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_fu_102_p2 == 1'd0) & (grp_nbread_fu_80_p2_0 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        and_ln77_reg_202 <= and_ln77_fu_152_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        empty_n_2_reg_194 <= grp_nbread_fu_80_p2_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        empty_n_reg_211 <= grp_nbread_fu_80_p2_0;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbread_fu_80_p2_0 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln879_2_reg_198 <= grp_fu_102_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbread_fu_80_p2_0 == 1'd1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        icmp_ln879_reg_215 <= grp_fu_102_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((fatherSearch_empty_n == 1'b0) | (relationship_V_empty_n == 1'b0) | (nodo_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        nodo_V_read_reg_178 <= nodo_V_dout;
        relationship_V_read_reg_184 <= relationship_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_fu_102_p2 == 1'd0) & (1'd1 == and_ln77_fu_152_p2) & (grp_nbread_fu_80_p2_0 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_V_3_reg_206 <= {{in1_V_V_dout[12:2]}};
    end
end

always @ (posedge ap_clk) begin
    if (((grp_fu_102_p2 == 1'd0) & (1'd1 == and_ln61_fu_172_p2) & (grp_nbread_fu_80_p2_0 == 1'd1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        tmp_V_reg_223 <= {{in1_V_V_dout[23:13]}};
    end
end

always @ (*) begin
    if (((in1b_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        fatherSearch_blk_n = fatherSearch_empty_n;
    end else begin
        fatherSearch_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((fatherSearch_empty_n == 1'b0) | (relationship_V_empty_n == 1'b0) | (nodo_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        fatherSearch_read = 1'b1;
    end else begin
        fatherSearch_read = 1'b0;
    end
end

always @ (*) begin
    if (((in1_V_V_empty_n == 1'b1) & (((1'b1 == ap_CS_fsm_pp0_stage0) & (in1_V_V_empty_n == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))))) begin
        in1_V_V_read = 1'b1;
    end else begin
        in1_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((icmp_ln879_2_reg_198 == 1'd0) & (1'd1 == and_ln77_reg_202) & (empty_n_2_reg_194 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln879_reg_215 == 1'd0) & (1'd1 == and_ln61_reg_219) & (empty_n_reg_211 == 1'd1) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)))) begin
        in1b_V_V_blk_n = in1b_V_V_full_n;
    end else begin
        in1b_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0_01001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_predicate_op65_write_state6 == 1'b1))) begin
        in1b_V_V_din = tmp_V_reg_223;
    end else if (((in1b_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        in1b_V_V_din = 11'd1025;
    end else if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op37_write_state3 == 1'b1))) begin
        in1b_V_V_din = tmp_V_3_reg_206;
    end else begin
        in1b_V_V_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op37_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_predicate_op65_write_state6 == 1'b1)) | ((in1b_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4)))) begin
        in1b_V_V_write = 1'b1;
    end else begin
        in1b_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((in1b_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        nodo_V_blk_n = nodo_V_empty_n;
    end else begin
        nodo_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((fatherSearch_empty_n == 1'b0) | (relationship_V_empty_n == 1'b0) | (nodo_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        nodo_V_read = 1'b1;
    end else begin
        nodo_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        relationship_V_blk_n = relationship_V_empty_n;
    end else begin
        relationship_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((fatherSearch_empty_n == 1'b0) | (relationship_V_empty_n == 1'b0) | (nodo_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        relationship_V_read = 1'b1;
    end else begin
        relationship_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((fatherSearch_empty_n == 1'b0) | (relationship_V_empty_n == 1'b0) | (nodo_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (fatherSearch_read_read_fu_74_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if ((~((fatherSearch_empty_n == 1'b0) | (relationship_V_empty_n == 1'b0) | (nodo_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (fatherSearch_read_read_fu_74_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((in1b_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_pp1_stage0 : begin
            if (~((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if (((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign and_ln61_fu_172_p2 = (icmp_ln879_4_fu_167_p2 & icmp_ln879_3_fu_162_p2);

assign and_ln77_fu_152_p2 = (icmp_ln879_6_fu_147_p2 & icmp_ln879_5_fu_142_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((in1b_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op37_write_state3 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((in1b_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op37_write_state3 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((in1b_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op37_write_state3 == 1'b1));
end

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_01001 = ((in1b_V_V_full_n == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (ap_predicate_op65_write_state6 == 1'b1));
end

always @ (*) begin
    ap_block_pp1_stage0_11001 = ((in1b_V_V_full_n == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (ap_predicate_op65_write_state6 == 1'b1));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = ((in1b_V_V_full_n == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (ap_predicate_op65_write_state6 == 1'b1));
end

always @ (*) begin
    ap_block_state1 = ((fatherSearch_empty_n == 1'b0) | (relationship_V_empty_n == 1'b0) | (nodo_V_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((in1b_V_V_full_n == 1'b0) & (ap_predicate_op37_write_state3 == 1'b1));
end

assign ap_block_state5_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_pp1_stage0_iter1 = ((in1b_V_V_full_n == 1'b0) & (ap_predicate_op65_write_state6 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

always @ (*) begin
    ap_predicate_op37_write_state3 = ((icmp_ln879_2_reg_198 == 1'd0) & (1'd1 == and_ln77_reg_202) & (empty_n_2_reg_194 == 1'd1));
end

always @ (*) begin
    ap_predicate_op65_write_state6 = ((icmp_ln879_reg_215 == 1'd0) & (1'd1 == and_ln61_reg_219) & (empty_n_reg_211 == 1'd1));
end

always @ (*) begin
    ap_predicate_tran3to4_state2 = ((grp_fu_102_p2 == 1'd1) & (grp_nbread_fu_80_p2_0 == 1'd1));
end

always @ (*) begin
    ap_predicate_tran6to4_state5 = ((grp_fu_102_p2 == 1'd1) & (grp_nbread_fu_80_p2_0 == 1'd1));
end

assign ap_ready = internal_ap_ready;

assign compare_node_V_fu_128_p4 = {{in1_V_V_dout[12:2]}};

assign fatherSearch_read_read_fu_74_p2 = fatherSearch_dout;

assign grp_fu_102_p2 = ((in1_V_V_dout == 24'd1025) ? 1'b1 : 1'b0);

assign grp_fu_108_p4 = {{in1_V_V_dout[23:13]}};

assign grp_nbread_fu_80_p2_0 = in1_V_V_empty_n;

assign icmp_ln879_3_fu_162_p2 = ((compare_node_V_fu_128_p4 == nodo_V_read_reg_178) ? 1'b1 : 1'b0);

assign icmp_ln879_4_fu_167_p2 = ((node_relation_V_fu_158_p1 == relationship_V_read_reg_184) ? 1'b1 : 1'b0);

assign icmp_ln879_5_fu_142_p2 = ((grp_fu_108_p4 == nodo_V_read_reg_178) ? 1'b1 : 1'b0);

assign icmp_ln879_6_fu_147_p2 = ((node_relation_V_1_fu_138_p1 == relationship_V_read_reg_184) ? 1'b1 : 1'b0);

assign node_relation_V_1_fu_138_p1 = in1_V_V_dout[1:0];

assign node_relation_V_fu_158_p1 = in1_V_V_dout[1:0];

assign start_out = real_start;

endmodule //busqueda_cam51