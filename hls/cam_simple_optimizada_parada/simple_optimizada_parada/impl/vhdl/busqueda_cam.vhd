-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity busqueda_cam is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    tree_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    tree_V_ce0 : OUT STD_LOGIC;
    tree_V_q0 : IN STD_LOGIC_VECTOR (23 downto 0);
    nodo_V : IN STD_LOGIC_VECTOR (10 downto 0);
    relationship_V : IN STD_LOGIC_VECTOR (1 downto 0);
    fatherSearch : IN STD_LOGIC;
    result_V_V_din : OUT STD_LOGIC_VECTOR (10 downto 0);
    result_V_V_full_n : IN STD_LOGIC;
    result_V_V_write : OUT STD_LOGIC );
end;


architecture behav of busqueda_cam is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv11_400 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal result_V_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal icmp_ln18_reg_339 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal icmp_ln28_reg_308 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln33_reg_327 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal fatherSearch_read_read_fu_88_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln28_fu_172_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_1_fu_178_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_1_reg_312 : STD_LOGIC_VECTOR (10 downto 0);
    signal icmp_ln879_1_fu_203_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln879_1_reg_322 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal and_ln33_fu_213_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_157_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_V_1_reg_331 : STD_LOGIC_VECTOR (10 downto 0);
    signal icmp_ln18_fu_238_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal i_fu_244_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_reg_343 : STD_LOGIC_VECTOR (10 downto 0);
    signal valor_V_reg_353 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal i1_0_reg_135 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_predicate_op38_write_state4 : BOOLEAN;
    signal ap_block_state4 : BOOLEAN;
    signal or_ln37_fu_233_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_0_reg_146 : STD_LOGIC_VECTOR (10 downto 0);
    signal and_ln23_fu_269_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln30_fu_184_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln20_fu_250_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal flag_0_fu_84 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state8 : BOOLEAN;
    signal compare_node_V_1_fu_193_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal node_relation_V_1_fu_189_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln879_3_fu_208_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln37_fu_227_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal node_relation_V_fu_255_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln879_fu_259_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln879_2_fu_264_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    flag_0_fu_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = and_ln33_fu_213_p2) and (icmp_ln28_reg_308 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                flag_0_fu_84 <= ap_const_lv1_1;
            elsif (((fatherSearch_read_read_fu_88_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                flag_0_fu_84 <= ap_const_lv1_0;
            end if; 
        end if;
    end process;

    i1_0_reg_135_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((fatherSearch_read_read_fu_88_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i1_0_reg_135 <= ap_const_lv11_0;
            elsif ((not(((result_V_V_full_n = ap_const_logic_0) and (ap_predicate_op38_write_state4 = ap_const_boolean_1))) and (or_ln37_fu_233_p2 = ap_const_lv1_1) and (icmp_ln28_reg_308 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                i1_0_reg_135 <= i_1_reg_312;
            end if; 
        end if;
    end process;

    i_0_reg_146_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((fatherSearch_read_read_fu_88_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_146 <= ap_const_lv11_0;
            elsif (((ap_const_lv1_0 = and_ln23_fu_269_p2) and (icmp_ln18_reg_339 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
                i_0_reg_146 <= i_reg_343;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln28_reg_308 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                and_ln33_reg_327 <= and_ln33_fu_213_p2;
                icmp_ln879_1_reg_322 <= icmp_ln879_1_fu_203_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_1_reg_312 <= i_1_fu_178_p2;
                icmp_ln28_reg_308 <= icmp_ln28_fu_172_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                i_reg_343 <= i_fu_244_p2;
                icmp_ln18_reg_339 <= icmp_ln18_fu_238_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = and_ln33_fu_213_p2) and (icmp_ln28_reg_308 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                tmp_V_1_reg_331 <= tree_V_q0(12 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln18_reg_339 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                valor_V_reg_353 <= tree_V_q0;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, result_V_V_full_n, ap_CS_fsm_state8, icmp_ln18_reg_339, ap_CS_fsm_state4, icmp_ln28_reg_308, ap_CS_fsm_state5, fatherSearch_read_read_fu_88_p2, ap_CS_fsm_state7, ap_predicate_op38_write_state4, or_ln37_fu_233_p2, and_ln23_fu_269_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((fatherSearch_read_read_fu_88_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                elsif (((fatherSearch_read_read_fu_88_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if ((not(((result_V_V_full_n = ap_const_logic_0) and (ap_predicate_op38_write_state4 = ap_const_boolean_1))) and (or_ln37_fu_233_p2 = ap_const_lv1_1) and (icmp_ln28_reg_308 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                elsif ((not(((result_V_V_full_n = ap_const_logic_0) and (ap_predicate_op38_write_state4 = ap_const_boolean_1))) and (ap_const_logic_1 = ap_CS_fsm_state4) and ((icmp_ln28_reg_308 = ap_const_lv1_1) or (or_ln37_fu_233_p2 = ap_const_lv1_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                if (((result_V_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                if (((ap_const_lv1_0 = and_ln23_fu_269_p2) and (icmp_ln18_reg_339 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                elsif (((icmp_ln18_reg_339 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state8 => 
                if ((not(((icmp_ln18_reg_339 = ap_const_lv1_0) and (result_V_V_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
    and_ln23_fu_269_p2 <= (icmp_ln879_fu_259_p2 and icmp_ln879_2_fu_264_p2);
    and_ln33_fu_213_p2 <= (icmp_ln879_3_fu_208_p2 and icmp_ln879_1_fu_203_p2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_block_state4_assign_proc : process(result_V_V_full_n, ap_predicate_op38_write_state4)
    begin
                ap_block_state4 <= ((result_V_V_full_n = ap_const_logic_0) and (ap_predicate_op38_write_state4 = ap_const_boolean_1));
    end process;


    ap_block_state8_assign_proc : process(result_V_V_full_n, icmp_ln18_reg_339)
    begin
                ap_block_state8 <= ((icmp_ln18_reg_339 = ap_const_lv1_0) and (result_V_V_full_n = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, result_V_V_full_n, ap_CS_fsm_state5)
    begin
        if ((((result_V_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_predicate_op38_write_state4_assign_proc : process(icmp_ln28_reg_308, and_ln33_reg_327)
    begin
                ap_predicate_op38_write_state4 <= ((ap_const_lv1_1 = and_ln33_reg_327) and (icmp_ln28_reg_308 = ap_const_lv1_0));
    end process;


    ap_ready_assign_proc : process(result_V_V_full_n, ap_CS_fsm_state5)
    begin
        if (((result_V_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    compare_node_V_1_fu_193_p4 <= tree_V_q0(23 downto 13);
    fatherSearch_read_read_fu_88_p2 <= (0=>fatherSearch, others=>'-');
    grp_fu_157_p4 <= tree_V_q0(12 downto 2);
    i_1_fu_178_p2 <= std_logic_vector(unsigned(i1_0_reg_135) + unsigned(ap_const_lv11_1));
    i_fu_244_p2 <= std_logic_vector(unsigned(i_0_reg_146) + unsigned(ap_const_lv11_1));
    icmp_ln18_fu_238_p2 <= "1" when (i_0_reg_146 = ap_const_lv11_400) else "0";
    icmp_ln28_fu_172_p2 <= "1" when (i1_0_reg_135 = ap_const_lv11_400) else "0";
    icmp_ln879_1_fu_203_p2 <= "1" when (compare_node_V_1_fu_193_p4 = nodo_V) else "0";
    icmp_ln879_2_fu_264_p2 <= "1" when (node_relation_V_fu_255_p1 = relationship_V) else "0";
    icmp_ln879_3_fu_208_p2 <= "1" when (node_relation_V_1_fu_189_p1 = relationship_V) else "0";
    icmp_ln879_fu_259_p2 <= "1" when (grp_fu_157_p4 = nodo_V) else "0";
    node_relation_V_1_fu_189_p1 <= tree_V_q0(2 - 1 downto 0);
    node_relation_V_fu_255_p1 <= tree_V_q0(2 - 1 downto 0);
    or_ln37_fu_233_p2 <= (xor_ln37_fu_227_p2 or icmp_ln879_1_reg_322);

    result_V_V_blk_n_assign_proc : process(result_V_V_full_n, ap_CS_fsm_state8, icmp_ln18_reg_339, ap_CS_fsm_state4, icmp_ln28_reg_308, and_ln33_reg_327, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or ((ap_const_lv1_1 = and_ln33_reg_327) and (icmp_ln28_reg_308 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln18_reg_339 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8)))) then 
            result_V_V_blk_n <= result_V_V_full_n;
        else 
            result_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    result_V_V_din_assign_proc : process(result_V_V_full_n, ap_CS_fsm_state8, icmp_ln18_reg_339, ap_CS_fsm_state4, ap_CS_fsm_state5, tmp_V_1_reg_331, valor_V_reg_353, ap_predicate_op38_write_state4)
    begin
        if ((not(((icmp_ln18_reg_339 = ap_const_lv1_0) and (result_V_V_full_n = ap_const_logic_0))) and (icmp_ln18_reg_339 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            result_V_V_din <= valor_V_reg_353(23 downto 13);
        elsif (((result_V_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            result_V_V_din <= ap_const_lv11_0;
        elsif ((not(((result_V_V_full_n = ap_const_logic_0) and (ap_predicate_op38_write_state4 = ap_const_boolean_1))) and (ap_const_logic_1 = ap_CS_fsm_state4) and (ap_predicate_op38_write_state4 = ap_const_boolean_1))) then 
            result_V_V_din <= tmp_V_1_reg_331;
        else 
            result_V_V_din <= "XXXXXXXXXXX";
        end if; 
    end process;


    result_V_V_write_assign_proc : process(result_V_V_full_n, ap_CS_fsm_state8, icmp_ln18_reg_339, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_predicate_op38_write_state4)
    begin
        if ((((result_V_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or (not(((result_V_V_full_n = ap_const_logic_0) and (ap_predicate_op38_write_state4 = ap_const_boolean_1))) and (ap_const_logic_1 = ap_CS_fsm_state4) and (ap_predicate_op38_write_state4 = ap_const_boolean_1)) or (not(((icmp_ln18_reg_339 = ap_const_lv1_0) and (result_V_V_full_n = ap_const_logic_0))) and (icmp_ln18_reg_339 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8)))) then 
            result_V_V_write <= ap_const_logic_1;
        else 
            result_V_V_write <= ap_const_logic_0;
        end if; 
    end process;


    tree_V_address0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state6, zext_ln30_fu_184_p1, zext_ln20_fu_250_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            tree_V_address0 <= zext_ln20_fu_250_p1(10 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            tree_V_address0 <= zext_ln30_fu_184_p1(10 - 1 downto 0);
        else 
            tree_V_address0 <= "XXXXXXXXXX";
        end if; 
    end process;


    tree_V_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            tree_V_ce0 <= ap_const_logic_1;
        else 
            tree_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    xor_ln37_fu_227_p2 <= (flag_0_fu_84 xor ap_const_lv1_1);
    zext_ln20_fu_250_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_146),64));
    zext_ln30_fu_184_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i1_0_reg_135),64));
end behav;