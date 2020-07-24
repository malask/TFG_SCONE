// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _busqueda_cam_HH_
#define _busqueda_cam_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct busqueda_cam : public sc_module {
    // Port declarations 28
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > tree_V_address0;
    sc_out< sc_logic > tree_V_ce0;
    sc_in< sc_lv<24> > tree_V_q0;
    sc_out< sc_lv<10> > tree_V_address1;
    sc_out< sc_logic > tree_V_ce1;
    sc_in< sc_lv<24> > tree_V_q1;
    sc_in< sc_lv<11> > nodo_V_dout;
    sc_in< sc_logic > nodo_V_empty_n;
    sc_out< sc_logic > nodo_V_read;
    sc_in< sc_lv<2> > relationship_V_dout;
    sc_in< sc_logic > relationship_V_empty_n;
    sc_out< sc_logic > relationship_V_read;
    sc_in< sc_lv<1> > fatherSearch_dout;
    sc_in< sc_logic > fatherSearch_empty_n;
    sc_out< sc_logic > fatherSearch_read;
    sc_out< sc_lv<11> > in2_V_V_din;
    sc_in< sc_logic > in2_V_V_full_n;
    sc_out< sc_logic > in2_V_V_write;
    sc_out< sc_lv<11> > in2b_V_V_din;
    sc_in< sc_logic > in2b_V_V_full_n;
    sc_out< sc_logic > in2b_V_V_write;


    // Module declarations
    busqueda_cam(sc_module_name name);
    SC_HAS_PROCESS(busqueda_cam);

    ~busqueda_cam();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > nodo_V_blk_n;
    sc_signal< sc_logic > relationship_V_blk_n;
    sc_signal< sc_logic > fatherSearch_blk_n;
    sc_signal< sc_logic > in2_V_V_blk_n;
    sc_signal< sc_lv<1> > and_ln35_fu_241_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter2;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<1> > and_ln53_reg_475;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > and_ln74_reg_438;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > and_ln35_reg_415;
    sc_signal< sc_logic > in2b_V_V_blk_n;
    sc_signal< sc_lv<1> > and_ln56_reg_484;
    sc_signal< sc_lv<1> > and_ln77_reg_447;
    sc_signal< sc_lv<10> > i1_0_i_i_reg_153;
    sc_signal< sc_lv<10> > i_0_i_i_reg_164;
    sc_signal< sc_lv<11> > nodo_V_read_reg_395;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<2> > relationship_V_read_reg_403;
    sc_signal< sc_lv<1> > fatherSearch_read_read_fu_90_p2;
    sc_signal< sc_lv<1> > tmp_2_fu_247_p3;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<10> > i_2_fu_275_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > and_ln74_fu_299_p2;
    sc_signal< sc_lv<11> > tmp_V_7_reg_442;
    sc_signal< sc_lv<1> > and_ln77_fu_315_p2;
    sc_signal< sc_lv<11> > tmp_V_9_reg_451;
    sc_signal< sc_lv<1> > tmp_fu_321_p3;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< bool > ap_block_state6_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state7_pp1_stage0_iter1;
    sc_signal< bool > ap_block_state8_pp1_stage0_iter2;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<10> > i_fu_349_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<1> > and_ln53_fu_373_p2;
    sc_signal< sc_lv<11> > grp_fu_175_p4;
    sc_signal< sc_lv<11> > tmp_V_reg_479;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< sc_lv<1> > and_ln56_fu_389_p2;
    sc_signal< sc_lv<11> > grp_fu_185_p4;
    sc_signal< sc_lv<11> > tmp_V_8_reg_488;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state6;
    sc_signal< sc_lv<64> > zext_ln64_fu_259_p1;
    sc_signal< sc_lv<64> > zext_ln68_fu_270_p1;
    sc_signal< sc_lv<64> > zext_ln43_fu_333_p1;
    sc_signal< sc_lv<64> > zext_ln47_fu_344_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< bool > ap_block_state5;
    sc_signal< bool > ap_block_pp1_stage0_01001;
    sc_signal< sc_lv<1> > icmp_ln35_fu_235_p2;
    sc_signal< sc_lv<9> > trunc_ln62_fu_255_p1;
    sc_signal< sc_lv<9> > or_ln68_fu_264_p2;
    sc_signal< sc_lv<2> > node_relation_min_V_2_fu_281_p1;
    sc_signal< sc_lv<1> > icmp_ln879_12_fu_289_p2;
    sc_signal< sc_lv<1> > icmp_ln879_13_fu_294_p2;
    sc_signal< sc_lv<2> > node_relation_max_V_2_fu_285_p1;
    sc_signal< sc_lv<1> > icmp_ln879_16_fu_305_p2;
    sc_signal< sc_lv<1> > icmp_ln879_17_fu_310_p2;
    sc_signal< sc_lv<9> > trunc_ln41_fu_329_p1;
    sc_signal< sc_lv<9> > or_ln47_fu_338_p2;
    sc_signal< sc_lv<11> > compare_node_min_V_fu_205_p4;
    sc_signal< sc_lv<2> > node_relation_min_V_fu_355_p1;
    sc_signal< sc_lv<1> > icmp_ln879_fu_363_p2;
    sc_signal< sc_lv<1> > icmp_ln879_11_fu_368_p2;
    sc_signal< sc_lv<11> > compare_node_max_V_fu_225_p4;
    sc_signal< sc_lv<2> > node_relation_max_V_fu_359_p1;
    sc_signal< sc_lv<1> > icmp_ln879_14_fu_379_p2;
    sc_signal< sc_lv<1> > icmp_ln879_15_fu_384_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state5;
    static const sc_lv<4> ap_ST_fsm_pp1_stage0;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<10> ap_const_lv10_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_and_ln35_fu_241_p2();
    void thread_and_ln53_fu_373_p2();
    void thread_and_ln56_fu_389_p2();
    void thread_and_ln74_fu_299_p2();
    void thread_and_ln77_fu_315_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_01001();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5();
    void thread_ap_block_state6_pp1_stage0_iter0();
    void thread_ap_block_state7_pp1_stage0_iter1();
    void thread_ap_block_state8_pp1_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_condition_pp1_exit_iter0_state6();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_ready();
    void thread_compare_node_max_V_fu_225_p4();
    void thread_compare_node_min_V_fu_205_p4();
    void thread_fatherSearch_blk_n();
    void thread_fatherSearch_read();
    void thread_fatherSearch_read_read_fu_90_p2();
    void thread_grp_fu_175_p4();
    void thread_grp_fu_185_p4();
    void thread_i_2_fu_275_p2();
    void thread_i_fu_349_p2();
    void thread_icmp_ln35_fu_235_p2();
    void thread_icmp_ln879_11_fu_368_p2();
    void thread_icmp_ln879_12_fu_289_p2();
    void thread_icmp_ln879_13_fu_294_p2();
    void thread_icmp_ln879_14_fu_379_p2();
    void thread_icmp_ln879_15_fu_384_p2();
    void thread_icmp_ln879_16_fu_305_p2();
    void thread_icmp_ln879_17_fu_310_p2();
    void thread_icmp_ln879_fu_363_p2();
    void thread_in2_V_V_blk_n();
    void thread_in2_V_V_din();
    void thread_in2_V_V_write();
    void thread_in2b_V_V_blk_n();
    void thread_in2b_V_V_din();
    void thread_in2b_V_V_write();
    void thread_node_relation_max_V_2_fu_285_p1();
    void thread_node_relation_max_V_fu_359_p1();
    void thread_node_relation_min_V_2_fu_281_p1();
    void thread_node_relation_min_V_fu_355_p1();
    void thread_nodo_V_blk_n();
    void thread_nodo_V_read();
    void thread_or_ln47_fu_338_p2();
    void thread_or_ln68_fu_264_p2();
    void thread_relationship_V_blk_n();
    void thread_relationship_V_read();
    void thread_tmp_2_fu_247_p3();
    void thread_tmp_fu_321_p3();
    void thread_tree_V_address0();
    void thread_tree_V_address1();
    void thread_tree_V_ce0();
    void thread_tree_V_ce1();
    void thread_trunc_ln41_fu_329_p1();
    void thread_trunc_ln62_fu_255_p1();
    void thread_zext_ln43_fu_333_p1();
    void thread_zext_ln47_fu_344_p1();
    void thread_zext_ln64_fu_259_p1();
    void thread_zext_ln68_fu_270_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif