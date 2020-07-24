// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module busqueda_cam (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        tree_V_address0,
        tree_V_ce0,
        tree_V_q0,
        nodo_V,
        relationship_V,
        fatherSearch,
        result_V_V_din,
        result_V_V_full_n,
        result_V_V_write
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] tree_V_address0;
output   tree_V_ce0;
input  [23:0] tree_V_q0;
input  [10:0] nodo_V;
input  [1:0] relationship_V;
input   fatherSearch;
output  [10:0] result_V_V_din;
input   result_V_V_full_n;
output   result_V_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] tree_V_address0;
reg tree_V_ce0;
reg[10:0] result_V_V_din;
reg result_V_V_write;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    result_V_V_blk_n;
wire    ap_CS_fsm_state8;
reg   [0:0] icmp_ln18_reg_339;
wire    ap_CS_fsm_state4;
reg   [0:0] icmp_ln28_reg_308;
reg   [0:0] and_ln33_reg_327;
wire    ap_CS_fsm_state5;
wire   [0:0] fatherSearch_read_read_fu_88_p2;
wire   [0:0] icmp_ln28_fu_172_p2;
wire    ap_CS_fsm_state2;
wire   [10:0] i_1_fu_178_p2;
reg   [10:0] i_1_reg_312;
wire   [0:0] icmp_ln879_1_fu_203_p2;
reg   [0:0] icmp_ln879_1_reg_322;
wire    ap_CS_fsm_state3;
wire   [0:0] and_ln33_fu_213_p2;
wire   [10:0] grp_fu_157_p4;
reg   [10:0] tmp_V_1_reg_331;
wire   [0:0] icmp_ln18_fu_238_p2;
wire    ap_CS_fsm_state6;
wire   [10:0] i_fu_244_p2;
reg   [10:0] i_reg_343;
reg   [23:0] valor_V_reg_353;
wire    ap_CS_fsm_state7;
reg   [10:0] i1_0_reg_135;
reg    ap_predicate_op38_write_state4;
reg    ap_block_state4;
wire   [0:0] or_ln37_fu_233_p2;
reg   [10:0] i_0_reg_146;
wire   [0:0] and_ln23_fu_269_p2;
wire   [63:0] zext_ln30_fu_184_p1;
wire   [63:0] zext_ln20_fu_250_p1;
reg   [0:0] flag_0_fu_84;
reg    ap_block_state8;
wire   [10:0] compare_node_V_1_fu_193_p4;
wire   [1:0] node_relation_V_1_fu_189_p1;
wire   [0:0] icmp_ln879_3_fu_208_p2;
wire   [0:0] xor_ln37_fu_227_p2;
wire   [1:0] node_relation_V_fu_255_p1;
wire   [0:0] icmp_ln879_fu_259_p2;
wire   [0:0] icmp_ln879_2_fu_264_p2;
reg   [8:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'd1 == and_ln33_fu_213_p2) & (icmp_ln28_reg_308 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        flag_0_fu_84 <= 1'd1;
    end else if (((fatherSearch_read_read_fu_88_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        flag_0_fu_84 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((fatherSearch_read_read_fu_88_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i1_0_reg_135 <= 11'd0;
    end else if ((~((result_V_V_full_n == 1'b0) & (ap_predicate_op38_write_state4 == 1'b1)) & (or_ln37_fu_233_p2 == 1'd1) & (icmp_ln28_reg_308 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        i1_0_reg_135 <= i_1_reg_312;
    end
end

always @ (posedge ap_clk) begin
    if (((fatherSearch_read_read_fu_88_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_146 <= 11'd0;
    end else if (((1'd0 == and_ln23_fu_269_p2) & (icmp_ln18_reg_339 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        i_0_reg_146 <= i_reg_343;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln28_reg_308 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        and_ln33_reg_327 <= and_ln33_fu_213_p2;
        icmp_ln879_1_reg_322 <= icmp_ln879_1_fu_203_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_312 <= i_1_fu_178_p2;
        icmp_ln28_reg_308 <= icmp_ln28_fu_172_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_reg_343 <= i_fu_244_p2;
        icmp_ln18_reg_339 <= icmp_ln18_fu_238_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'd1 == and_ln33_fu_213_p2) & (icmp_ln28_reg_308 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_V_1_reg_331 <= {{tree_V_q0[12:2]}};
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln18_reg_339 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        valor_V_reg_353 <= tree_V_q0;
    end
end

always @ (*) begin
    if ((((result_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
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
    if (((result_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((1'd1 == and_ln33_reg_327) & (icmp_ln28_reg_308 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln18_reg_339 == 1'd0) & (1'b1 == ap_CS_fsm_state8)))) begin
        result_V_V_blk_n = result_V_V_full_n;
    end else begin
        result_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((icmp_ln18_reg_339 == 1'd0) & (result_V_V_full_n == 1'b0)) & (icmp_ln18_reg_339 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        result_V_V_din = {{valor_V_reg_353[23:13]}};
    end else if (((result_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        result_V_V_din = 11'd0;
    end else if ((~((result_V_V_full_n == 1'b0) & (ap_predicate_op38_write_state4 == 1'b1)) & (1'b1 == ap_CS_fsm_state4) & (ap_predicate_op38_write_state4 == 1'b1))) begin
        result_V_V_din = tmp_V_1_reg_331;
    end else begin
        result_V_V_din = 'bx;
    end
end

always @ (*) begin
    if ((((result_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | (~((result_V_V_full_n == 1'b0) & (ap_predicate_op38_write_state4 == 1'b1)) & (1'b1 == ap_CS_fsm_state4) & (ap_predicate_op38_write_state4 == 1'b1)) | (~((icmp_ln18_reg_339 == 1'd0) & (result_V_V_full_n == 1'b0)) & (icmp_ln18_reg_339 == 1'd0) & (1'b1 == ap_CS_fsm_state8)))) begin
        result_V_V_write = 1'b1;
    end else begin
        result_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tree_V_address0 = zext_ln20_fu_250_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        tree_V_address0 = zext_ln30_fu_184_p1;
    end else begin
        tree_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state6))) begin
        tree_V_ce0 = 1'b1;
    end else begin
        tree_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((fatherSearch_read_read_fu_88_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if (((fatherSearch_read_read_fu_88_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if ((~((result_V_V_full_n == 1'b0) & (ap_predicate_op38_write_state4 == 1'b1)) & (or_ln37_fu_233_p2 == 1'd1) & (icmp_ln28_reg_308 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if ((~((result_V_V_full_n == 1'b0) & (ap_predicate_op38_write_state4 == 1'b1)) & (1'b1 == ap_CS_fsm_state4) & ((icmp_ln28_reg_308 == 1'd1) | (or_ln37_fu_233_p2 == 1'd0)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((result_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'd0 == and_ln23_fu_269_p2) & (icmp_ln18_reg_339 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if (((icmp_ln18_reg_339 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if ((~((icmp_ln18_reg_339 == 1'd0) & (result_V_V_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign and_ln23_fu_269_p2 = (icmp_ln879_fu_259_p2 & icmp_ln879_2_fu_264_p2);

assign and_ln33_fu_213_p2 = (icmp_ln879_3_fu_208_p2 & icmp_ln879_1_fu_203_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

always @ (*) begin
    ap_block_state4 = ((result_V_V_full_n == 1'b0) & (ap_predicate_op38_write_state4 == 1'b1));
end

always @ (*) begin
    ap_block_state8 = ((icmp_ln18_reg_339 == 1'd0) & (result_V_V_full_n == 1'b0));
end

always @ (*) begin
    ap_predicate_op38_write_state4 = ((1'd1 == and_ln33_reg_327) & (icmp_ln28_reg_308 == 1'd0));
end

assign compare_node_V_1_fu_193_p4 = {{tree_V_q0[23:13]}};

assign fatherSearch_read_read_fu_88_p2 = fatherSearch;

assign grp_fu_157_p4 = {{tree_V_q0[12:2]}};

assign i_1_fu_178_p2 = (i1_0_reg_135 + 11'd1);

assign i_fu_244_p2 = (i_0_reg_146 + 11'd1);

assign icmp_ln18_fu_238_p2 = ((i_0_reg_146 == 11'd1024) ? 1'b1 : 1'b0);

assign icmp_ln28_fu_172_p2 = ((i1_0_reg_135 == 11'd1024) ? 1'b1 : 1'b0);

assign icmp_ln879_1_fu_203_p2 = ((compare_node_V_1_fu_193_p4 == nodo_V) ? 1'b1 : 1'b0);

assign icmp_ln879_2_fu_264_p2 = ((node_relation_V_fu_255_p1 == relationship_V) ? 1'b1 : 1'b0);

assign icmp_ln879_3_fu_208_p2 = ((node_relation_V_1_fu_189_p1 == relationship_V) ? 1'b1 : 1'b0);

assign icmp_ln879_fu_259_p2 = ((grp_fu_157_p4 == nodo_V) ? 1'b1 : 1'b0);

assign node_relation_V_1_fu_189_p1 = tree_V_q0[1:0];

assign node_relation_V_fu_255_p1 = tree_V_q0[1:0];

assign or_ln37_fu_233_p2 = (xor_ln37_fu_227_p2 | icmp_ln879_1_reg_322);

assign xor_ln37_fu_227_p2 = (flag_0_fu_84 ^ 1'd1);

assign zext_ln20_fu_250_p1 = i_0_reg_146;

assign zext_ln30_fu_184_p1 = i1_0_reg_135;

endmodule //busqueda_cam