// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _combinar_HH_
#define _combinar_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct combinar : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<11> > result_V_V_din;
    sc_in< sc_logic > result_V_V_full_n;
    sc_out< sc_logic > result_V_V_write;
    sc_in< sc_lv<11> > in1_V_V_dout;
    sc_in< sc_logic > in1_V_V_empty_n;
    sc_out< sc_logic > in1_V_V_read;
    sc_in< sc_lv<11> > in2_V_V_dout;
    sc_in< sc_logic > in2_V_V_empty_n;
    sc_out< sc_logic > in2_V_V_read;
    sc_in< sc_lv<11> > in1b_V_V_dout;
    sc_in< sc_logic > in1b_V_V_empty_n;
    sc_out< sc_logic > in1b_V_V_read;
    sc_in< sc_lv<11> > in2b_V_V_dout;
    sc_in< sc_logic > in2b_V_V_empty_n;
    sc_out< sc_logic > in2b_V_V_read;


    // Module declarations
    combinar(sc_module_name name);
    SC_HAS_PROCESS(combinar);

    ~combinar();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > result_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<1> > empty_n_reg_248;
    sc_signal< sc_lv<1> > icmp_ln879_reg_284;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< sc_lv<1> > empty_n_1_reg_257;
    sc_signal< sc_lv<1> > icmp_ln879_1_reg_288;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage3;
    sc_signal< bool > ap_block_pp0_stage3;
    sc_signal< sc_lv<1> > empty_n_2_reg_266;
    sc_signal< sc_lv<1> > icmp_ln879_2_reg_292;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > empty_n_3_reg_275;
    sc_signal< sc_lv<1> > icmp_ln879_3_reg_296;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > empty_n_fu_114_p1;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_predicate_op70_write_state6;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<11> > tmp_V_reg_252;
    sc_signal< sc_lv<1> > empty_n_1_fu_122_p1;
    sc_signal< sc_lv<11> > tmp_V_1_reg_261;
    sc_signal< sc_lv<1> > empty_n_2_fu_130_p1;
    sc_signal< sc_lv<11> > tmp_V_2_reg_270;
    sc_signal< sc_lv<1> > empty_n_3_fu_138_p1;
    sc_signal< sc_lv<11> > tmp_V_3_reg_279;
    sc_signal< sc_lv<1> > icmp_ln879_fu_146_p2;
    sc_signal< sc_lv<1> > icmp_ln879_1_fu_157_p2;
    sc_signal< sc_lv<1> > icmp_ln879_2_fu_168_p2;
    sc_signal< sc_lv<1> > icmp_ln879_3_fu_179_p2;
    sc_signal< sc_lv<1> > and_ln115_2_fu_214_p2;
    sc_signal< sc_lv<1> > and_ln115_2_reg_300;
    sc_signal< bool > ap_predicate_op51_write_state3;
    sc_signal< bool > ap_block_state3_pp0_stage1_iter0;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_predicate_op62_write_state5;
    sc_signal< bool > ap_block_state5_pp0_stage3_iter0;
    sc_signal< bool > ap_block_pp0_stage3_subdone;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_lv<1> > end_4_0_i_fu_46;
    sc_signal< sc_lv<1> > end_3_0_i_fu_50;
    sc_signal< sc_lv<1> > end_2_0_i_fu_54;
    sc_signal< sc_lv<1> > end_1_0_i_fu_58;
    sc_signal< sc_lv<1> > in1_V_V_read_nbread_fu_62_p2_0;
    sc_signal< sc_lv<1> > in2_V_V_read_nbread_fu_68_p2_0;
    sc_signal< sc_lv<1> > in1b_V_V_read_nbread_fu_74_p2_0;
    sc_signal< sc_lv<1> > in2b_V_V_read_nbread_fu_80_p2_0;
    sc_signal< bool > ap_block_pp0_stage1_01001;
    sc_signal< bool > ap_predicate_op61_write_state4;
    sc_signal< bool > ap_block_state4_pp0_stage2_iter0;
    sc_signal< bool > ap_block_pp0_stage2_01001;
    sc_signal< bool > ap_block_pp0_stage3_01001;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< bool > ap_block_pp0_stage3_11001;
    sc_signal< sc_lv<1> > and_ln115_1_fu_208_p2;
    sc_signal< sc_lv<1> > and_ln115_fu_202_p2;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_pp0_stage0;
    static const sc_lv<6> ap_ST_fsm_pp0_stage1;
    static const sc_lv<6> ap_ST_fsm_pp0_stage2;
    static const sc_lv<6> ap_ST_fsm_pp0_stage3;
    static const sc_lv<6> ap_ST_fsm_state7;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<11> ap_const_lv11_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_and_ln115_1_fu_208_p2();
    void thread_and_ln115_2_fu_214_p2();
    void thread_and_ln115_fu_202_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage3();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state7();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_01001();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2();
    void thread_ap_block_pp0_stage2_01001();
    void thread_ap_block_pp0_stage2_11001();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_pp0_stage3();
    void thread_ap_block_pp0_stage3_01001();
    void thread_ap_block_pp0_stage3_11001();
    void thread_ap_block_pp0_stage3_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage1_iter0();
    void thread_ap_block_state4_pp0_stage2_iter0();
    void thread_ap_block_state5_pp0_stage3_iter0();
    void thread_ap_block_state6_pp0_stage0_iter1();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_predicate_op51_write_state3();
    void thread_ap_predicate_op61_write_state4();
    void thread_ap_predicate_op62_write_state5();
    void thread_ap_predicate_op70_write_state6();
    void thread_ap_ready();
    void thread_empty_n_1_fu_122_p1();
    void thread_empty_n_2_fu_130_p1();
    void thread_empty_n_3_fu_138_p1();
    void thread_empty_n_fu_114_p1();
    void thread_icmp_ln879_1_fu_157_p2();
    void thread_icmp_ln879_2_fu_168_p2();
    void thread_icmp_ln879_3_fu_179_p2();
    void thread_icmp_ln879_fu_146_p2();
    void thread_in1_V_V_read();
    void thread_in1_V_V_read_nbread_fu_62_p2_0();
    void thread_in1b_V_V_read();
    void thread_in1b_V_V_read_nbread_fu_74_p2_0();
    void thread_in2_V_V_read();
    void thread_in2_V_V_read_nbread_fu_68_p2_0();
    void thread_in2b_V_V_read();
    void thread_in2b_V_V_read_nbread_fu_80_p2_0();
    void thread_result_V_V_blk_n();
    void thread_result_V_V_din();
    void thread_result_V_V_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif