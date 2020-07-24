// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module combinar (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        result_V_V_din,
        result_V_V_full_n,
        result_V_V_write,
        in1_V_V_dout,
        in1_V_V_empty_n,
        in1_V_V_read,
        in2_V_V_dout,
        in2_V_V_empty_n,
        in2_V_V_read,
        in1b_V_V_dout,
        in1b_V_V_empty_n,
        in1b_V_V_read,
        in2b_V_V_dout,
        in2b_V_V_empty_n,
        in2b_V_V_read
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_pp0_stage0 = 6'd2;
parameter    ap_ST_fsm_pp0_stage1 = 6'd4;
parameter    ap_ST_fsm_pp0_stage2 = 6'd8;
parameter    ap_ST_fsm_pp0_stage3 = 6'd16;
parameter    ap_ST_fsm_state7 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [10:0] result_V_V_din;
input   result_V_V_full_n;
output   result_V_V_write;
input  [10:0] in1_V_V_dout;
input   in1_V_V_empty_n;
output   in1_V_V_read;
input  [10:0] in2_V_V_dout;
input   in2_V_V_empty_n;
output   in2_V_V_read;
input  [10:0] in1b_V_V_dout;
input   in1b_V_V_empty_n;
output   in1b_V_V_read;
input  [10:0] in2b_V_V_dout;
input   in2b_V_V_empty_n;
output   in2b_V_V_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[10:0] result_V_V_din;
reg result_V_V_write;
reg in1_V_V_read;
reg in2_V_V_read;
reg in1b_V_V_read;
reg in2b_V_V_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    result_V_V_blk_n;
wire    ap_CS_fsm_pp0_stage1;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage1;
reg   [0:0] empty_n_reg_248;
reg   [0:0] icmp_ln879_reg_284;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
reg   [0:0] empty_n_1_reg_257;
reg   [0:0] icmp_ln879_1_reg_288;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
reg   [0:0] empty_n_2_reg_266;
reg   [0:0] icmp_ln879_2_reg_292;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] empty_n_3_reg_275;
reg   [0:0] icmp_ln879_3_reg_296;
wire    ap_CS_fsm_state7;
wire   [0:0] empty_n_fu_114_p1;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_predicate_op70_write_state6;
reg    ap_block_state6_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [10:0] tmp_V_reg_252;
wire   [0:0] empty_n_1_fu_122_p1;
reg   [10:0] tmp_V_1_reg_261;
wire   [0:0] empty_n_2_fu_130_p1;
reg   [10:0] tmp_V_2_reg_270;
wire   [0:0] empty_n_3_fu_138_p1;
reg   [10:0] tmp_V_3_reg_279;
wire   [0:0] icmp_ln879_fu_146_p2;
wire   [0:0] icmp_ln879_1_fu_157_p2;
wire   [0:0] icmp_ln879_2_fu_168_p2;
wire   [0:0] icmp_ln879_3_fu_179_p2;
wire   [0:0] and_ln115_2_fu_214_p2;
reg   [0:0] and_ln115_2_reg_300;
reg    ap_predicate_op51_write_state3;
reg    ap_block_state3_pp0_stage1_iter0;
reg    ap_block_pp0_stage1_11001;
reg    ap_block_state1;
reg    ap_predicate_op62_write_state5;
reg    ap_block_state5_pp0_stage3_iter0;
reg    ap_block_pp0_stage3_subdone;
reg    ap_block_pp0_stage0_subdone;
reg   [0:0] end_4_0_i_fu_46;
reg   [0:0] end_3_0_i_fu_50;
reg   [0:0] end_2_0_i_fu_54;
reg   [0:0] end_1_0_i_fu_58;
wire   [0:0] in1_V_V_read_nbread_fu_62_p2_0;
wire   [0:0] in2_V_V_read_nbread_fu_68_p2_0;
wire   [0:0] in1b_V_V_read_nbread_fu_74_p2_0;
wire   [0:0] in2b_V_V_read_nbread_fu_80_p2_0;
reg    ap_block_pp0_stage1_01001;
reg    ap_predicate_op61_write_state4;
reg    ap_block_state4_pp0_stage2_iter0;
reg    ap_block_pp0_stage2_01001;
reg    ap_block_pp0_stage3_01001;
reg    ap_block_pp0_stage0_01001;
reg    ap_block_pp0_stage2_11001;
reg    ap_block_pp0_stage3_11001;
wire   [0:0] and_ln115_1_fu_208_p2;
wire   [0:0] and_ln115_fu_202_p2;
reg   [5:0] ap_NS_fsm;
reg    ap_block_pp0_stage1_subdone;
reg    ap_block_pp0_stage2_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
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
        end else if (((result_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'd1 == and_ln115_2_reg_300) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln879_fu_146_p2 == 1'd1) & (empty_n_fu_114_p1 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        end_1_0_i_fu_58 <= 1'd1;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        end_1_0_i_fu_58 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln879_1_fu_157_p2 == 1'd1) & (empty_n_1_fu_122_p1 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        end_2_0_i_fu_54 <= 1'd1;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        end_2_0_i_fu_54 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln879_2_fu_168_p2 == 1'd1) & (empty_n_2_fu_130_p1 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        end_3_0_i_fu_50 <= 1'd1;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        end_3_0_i_fu_50 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln879_3_fu_179_p2 == 1'd1) & (empty_n_3_fu_138_p1 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        end_4_0_i_fu_46 <= 1'd1;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        end_4_0_i_fu_46 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        and_ln115_2_reg_300 <= and_ln115_2_fu_214_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        empty_n_1_reg_257 <= in2_V_V_read_nbread_fu_68_p2_0;
        empty_n_2_reg_266 <= in1b_V_V_read_nbread_fu_74_p2_0;
        empty_n_3_reg_275 <= in2b_V_V_read_nbread_fu_80_p2_0;
        empty_n_reg_248 <= in1_V_V_read_nbread_fu_62_p2_0;
        tmp_V_1_reg_261 <= in2_V_V_dout;
        tmp_V_2_reg_270 <= in1b_V_V_dout;
        tmp_V_3_reg_279 <= in2b_V_V_dout;
        tmp_V_reg_252 <= in1_V_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((empty_n_1_fu_122_p1 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln879_1_reg_288 <= icmp_ln879_1_fu_157_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((empty_n_2_fu_130_p1 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln879_2_reg_292 <= icmp_ln879_2_fu_168_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((empty_n_3_fu_138_p1 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln879_3_reg_296 <= icmp_ln879_3_fu_179_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((empty_n_fu_114_p1 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln879_reg_284 <= icmp_ln879_fu_146_p2;
    end
end

always @ (*) begin
    if (((result_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((result_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (in1_V_V_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        in1_V_V_read = 1'b1;
    end else begin
        in1_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (in1b_V_V_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        in1b_V_V_read = 1'b1;
    end else begin
        in1b_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (in2_V_V_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        in2_V_V_read = 1'b1;
    end else begin
        in2_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (in2b_V_V_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        in2b_V_V_read = 1'b1;
    end else begin
        in2b_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((1'b0 == ap_block_pp0_stage3) & (icmp_ln879_2_reg_292 == 1'd0) & (empty_n_2_reg_266 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2) & (icmp_ln879_1_reg_288 == 1'd0) & (empty_n_1_reg_257 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln879_reg_284 == 1'd0) & (empty_n_reg_248 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln879_3_reg_296 == 1'd0) & (empty_n_3_reg_275 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        result_V_V_blk_n = result_V_V_full_n;
    end else begin
        result_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((result_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
        result_V_V_din = 11'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_predicate_op70_write_state6 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        result_V_V_din = tmp_V_3_reg_279;
    end else if (((1'b0 == ap_block_pp0_stage3_01001) & (ap_predicate_op62_write_state5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        result_V_V_din = tmp_V_2_reg_270;
    end else if (((1'b0 == ap_block_pp0_stage2_01001) & (ap_predicate_op61_write_state4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        result_V_V_din = tmp_V_1_reg_261;
    end else if (((1'b0 == ap_block_pp0_stage1_01001) & (ap_predicate_op51_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        result_V_V_din = tmp_V_reg_252;
    end else begin
        result_V_V_din = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_predicate_op62_write_state5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_predicate_op61_write_state4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_predicate_op51_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((result_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7)) | ((ap_predicate_op70_write_state6 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        result_V_V_write = 1'b1;
    end else begin
        result_V_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((result_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign and_ln115_1_fu_208_p2 = (end_4_0_i_fu_46 & end_3_0_i_fu_50);

assign and_ln115_2_fu_214_p2 = (and_ln115_fu_202_p2 & and_ln115_1_fu_208_p2);

assign and_ln115_fu_202_p2 = (end_2_0_i_fu_54 & end_1_0_i_fu_58);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd5];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((result_V_V_full_n == 1'b0) & (ap_predicate_op70_write_state6 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((result_V_V_full_n == 1'b0) & (ap_predicate_op70_write_state6 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((result_V_V_full_n == 1'b0) & (ap_predicate_op70_write_state6 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_01001 = ((result_V_V_full_n == 1'b0) & (ap_predicate_op51_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage1_11001 = ((result_V_V_full_n == 1'b0) & (ap_predicate_op51_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = ((result_V_V_full_n == 1'b0) & (ap_predicate_op51_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage2_01001 = ((result_V_V_full_n == 1'b0) & (ap_predicate_op61_write_state4 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage2_11001 = ((result_V_V_full_n == 1'b0) & (ap_predicate_op61_write_state4 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage2_subdone = ((result_V_V_full_n == 1'b0) & (ap_predicate_op61_write_state4 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage3_01001 = ((result_V_V_full_n == 1'b0) & (ap_predicate_op62_write_state5 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage3_11001 = ((result_V_V_full_n == 1'b0) & (ap_predicate_op62_write_state5 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage3_subdone = ((result_V_V_full_n == 1'b0) & (ap_predicate_op62_write_state5 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage1_iter0 = ((result_V_V_full_n == 1'b0) & (ap_predicate_op51_write_state3 == 1'b1));
end

always @ (*) begin
    ap_block_state4_pp0_stage2_iter0 = ((result_V_V_full_n == 1'b0) & (ap_predicate_op61_write_state4 == 1'b1));
end

always @ (*) begin
    ap_block_state5_pp0_stage3_iter0 = ((result_V_V_full_n == 1'b0) & (ap_predicate_op62_write_state5 == 1'b1));
end

always @ (*) begin
    ap_block_state6_pp0_stage0_iter1 = ((result_V_V_full_n == 1'b0) & (ap_predicate_op70_write_state6 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_predicate_op51_write_state3 = ((icmp_ln879_reg_284 == 1'd0) & (empty_n_reg_248 == 1'd1));
end

always @ (*) begin
    ap_predicate_op61_write_state4 = ((icmp_ln879_1_reg_288 == 1'd0) & (empty_n_1_reg_257 == 1'd1));
end

always @ (*) begin
    ap_predicate_op62_write_state5 = ((icmp_ln879_2_reg_292 == 1'd0) & (empty_n_2_reg_266 == 1'd1));
end

always @ (*) begin
    ap_predicate_op70_write_state6 = ((icmp_ln879_3_reg_296 == 1'd0) & (empty_n_3_reg_275 == 1'd1));
end

assign empty_n_1_fu_122_p1 = in2_V_V_read_nbread_fu_68_p2_0;

assign empty_n_2_fu_130_p1 = in1b_V_V_read_nbread_fu_74_p2_0;

assign empty_n_3_fu_138_p1 = in2b_V_V_read_nbread_fu_80_p2_0;

assign empty_n_fu_114_p1 = in1_V_V_read_nbread_fu_62_p2_0;

assign icmp_ln879_1_fu_157_p2 = ((in2_V_V_dout == 11'd0) ? 1'b1 : 1'b0);

assign icmp_ln879_2_fu_168_p2 = ((in1b_V_V_dout == 11'd0) ? 1'b1 : 1'b0);

assign icmp_ln879_3_fu_179_p2 = ((in2b_V_V_dout == 11'd0) ? 1'b1 : 1'b0);

assign icmp_ln879_fu_146_p2 = ((in1_V_V_dout == 11'd0) ? 1'b1 : 1'b0);

assign in1_V_V_read_nbread_fu_62_p2_0 = in1_V_V_empty_n;

assign in1b_V_V_read_nbread_fu_74_p2_0 = in1b_V_V_empty_n;

assign in2_V_V_read_nbread_fu_68_p2_0 = in2_V_V_empty_n;

assign in2b_V_V_read_nbread_fu_80_p2_0 = in2b_V_V_empty_n;

endmodule //combinar