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
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    nodo_V_dout : IN STD_LOGIC_VECTOR (10 downto 0);
    nodo_V_empty_n : IN STD_LOGIC;
    nodo_V_read : OUT STD_LOGIC;
    relationship_V_dout : IN STD_LOGIC_VECTOR (1 downto 0);
    relationship_V_empty_n : IN STD_LOGIC;
    relationship_V_read : OUT STD_LOGIC;
    fatherSearch_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    fatherSearch_empty_n : IN STD_LOGIC;
    fatherSearch_read : OUT STD_LOGIC;
    in2_V_V_dout : IN STD_LOGIC_VECTOR (23 downto 0);
    in2_V_V_empty_n : IN STD_LOGIC;
    in2_V_V_read : OUT STD_LOGIC;
    in2b_V_V_din : OUT STD_LOGIC_VECTOR (10 downto 0);
    in2b_V_V_full_n : IN STD_LOGIC;
    in2b_V_V_write : OUT STD_LOGIC );
end;


architecture behav of busqueda_cam is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_pp1_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv11_401 : STD_LOGIC_VECTOR (10 downto 0) := "10000000001";
    constant ap_const_lv24_401 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000010000000001";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal nodo_V_blk_n : STD_LOGIC;
    signal relationship_V_blk_n : STD_LOGIC;
    signal fatherSearch_blk_n : STD_LOGIC;
    signal in2b_V_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp1_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp1_stage0 : signal is "none";
    signal ap_enable_reg_pp1_iter1 : STD_LOGIC := '0';
    signal ap_block_pp1_stage0 : BOOLEAN;
    signal empty_n_reg_211 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln879_reg_215 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln61_reg_219 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal empty_n_3_reg_194 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln879_7_reg_198 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln77_reg_202 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal nodo_V_read_reg_178 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal relationship_V_read_reg_184 : STD_LOGIC_VECTOR (1 downto 0);
    signal fatherSearch_read_read_fu_74_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_predicate_op37_write_state3 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal grp_fu_102_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln77_fu_152_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_V_6_reg_206 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_enable_reg_pp1_iter0 : STD_LOGIC := '0';
    signal ap_block_state5_pp1_stage0_iter0 : BOOLEAN;
    signal ap_predicate_op65_write_state6 : BOOLEAN;
    signal ap_block_state6_pp1_stage0_iter1 : BOOLEAN;
    signal ap_block_pp1_stage0_11001 : BOOLEAN;
    signal and_ln61_fu_172_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_108_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_V_reg_223 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_predicate_tran3to4_state2 : BOOLEAN;
    signal ap_block_pp1_stage0_subdone : BOOLEAN;
    signal ap_predicate_tran6to4_state5 : BOOLEAN;
    signal grp_nbread_fu_80_p2_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_block_pp1_stage0_01001 : BOOLEAN;
    signal node_relation_V_2_fu_138_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln879_10_fu_142_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln879_11_fu_147_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal compare_node_V_fu_128_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal node_relation_V_fu_158_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln879_8_fu_162_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln879_9_fu_167_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_idle_pp1 : STD_LOGIC;
    signal ap_enable_pp1 : STD_LOGIC;


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


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((in2b_V_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_predicate_tran3to4_state2 = ap_const_boolean_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((not(((ap_start = ap_const_logic_0) or (fatherSearch_empty_n = ap_const_logic_0) or (relationship_V_empty_n = ap_const_logic_0) or (nodo_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (fatherSearch_read_read_fu_74_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif ((not(((ap_start = ap_const_logic_0) or (fatherSearch_empty_n = ap_const_logic_0) or (relationship_V_empty_n = ap_const_logic_0) or (nodo_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (fatherSearch_read_read_fu_74_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp1_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp1_iter0 <= ap_const_logic_0;
            else
                if (((ap_predicate_tran6to4_state5 = ap_const_boolean_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone))) then 
                    ap_enable_reg_pp1_iter0 <= ap_const_logic_0;
                elsif ((not(((ap_start = ap_const_logic_0) or (fatherSearch_empty_n = ap_const_logic_0) or (relationship_V_empty_n = ap_const_logic_0) or (nodo_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (fatherSearch_read_read_fu_74_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp1_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp1_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp1_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp1_stage0_subdone)) then 
                    ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
                elsif ((not(((ap_start = ap_const_logic_0) or (fatherSearch_empty_n = ap_const_logic_0) or (relationship_V_empty_n = ap_const_logic_0) or (nodo_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (fatherSearch_read_read_fu_74_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp1_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_fu_102_p2 = ap_const_lv1_0) and (grp_nbread_fu_80_p2_0 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then
                and_ln61_reg_219 <= and_ln61_fu_172_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_fu_102_p2 = ap_const_lv1_0) and (grp_nbread_fu_80_p2_0 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                and_ln77_reg_202 <= and_ln77_fu_152_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                empty_n_3_reg_194 <= grp_nbread_fu_80_p2_0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then
                empty_n_reg_211 <= grp_nbread_fu_80_p2_0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_nbread_fu_80_p2_0 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln879_7_reg_198 <= grp_fu_102_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_nbread_fu_80_p2_0 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then
                icmp_ln879_reg_215 <= grp_fu_102_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (fatherSearch_empty_n = ap_const_logic_0) or (relationship_V_empty_n = ap_const_logic_0) or (nodo_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                nodo_V_read_reg_178 <= nodo_V_dout;
                relationship_V_read_reg_184 <= relationship_V_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_fu_102_p2 = ap_const_lv1_0) and (ap_const_lv1_1 = and_ln77_fu_152_p2) and (grp_nbread_fu_80_p2_0 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_V_6_reg_206 <= in2_V_V_dout(12 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_fu_102_p2 = ap_const_lv1_0) and (ap_const_lv1_1 = and_ln61_fu_172_p2) and (grp_nbread_fu_80_p2_0 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))) then
                tmp_V_reg_223 <= in2_V_V_dout(23 downto 13);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, nodo_V_empty_n, relationship_V_empty_n, fatherSearch_empty_n, in2b_V_V_full_n, ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_CS_fsm_state4, fatherSearch_read_read_fu_74_p2, ap_enable_reg_pp0_iter0, ap_enable_reg_pp1_iter0, ap_block_pp0_stage0_subdone, ap_block_pp1_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (fatherSearch_empty_n = ap_const_logic_0) or (relationship_V_empty_n = ap_const_logic_0) or (nodo_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (fatherSearch_read_read_fu_74_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage0;
                elsif ((not(((ap_start = ap_const_logic_0) or (fatherSearch_empty_n = ap_const_logic_0) or (relationship_V_empty_n = ap_const_logic_0) or (nodo_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (fatherSearch_read_read_fu_74_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                if (((in2b_V_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_pp1_stage0 => 
                if (not(((ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone) and (ap_enable_reg_pp1_iter0 = ap_const_logic_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage0;
                elsif (((ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone) and (ap_enable_reg_pp1_iter0 = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage0;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    and_ln61_fu_172_p2 <= (icmp_ln879_9_fu_167_p2 and icmp_ln879_8_fu_162_p2);
    and_ln77_fu_152_p2 <= (icmp_ln879_11_fu_147_p2 and icmp_ln879_10_fu_142_p2);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_pp1_stage0 <= ap_CS_fsm(3);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state4 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(in2b_V_V_full_n, ap_enable_reg_pp0_iter1, ap_predicate_op37_write_state3)
    begin
                ap_block_pp0_stage0_01001 <= ((in2b_V_V_full_n = ap_const_logic_0) and (ap_predicate_op37_write_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(in2b_V_V_full_n, ap_enable_reg_pp0_iter1, ap_predicate_op37_write_state3)
    begin
                ap_block_pp0_stage0_11001 <= ((in2b_V_V_full_n = ap_const_logic_0) and (ap_predicate_op37_write_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(in2b_V_V_full_n, ap_enable_reg_pp0_iter1, ap_predicate_op37_write_state3)
    begin
                ap_block_pp0_stage0_subdone <= ((in2b_V_V_full_n = ap_const_logic_0) and (ap_predicate_op37_write_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;

        ap_block_pp1_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp1_stage0_01001_assign_proc : process(in2b_V_V_full_n, ap_enable_reg_pp1_iter1, ap_predicate_op65_write_state6)
    begin
                ap_block_pp1_stage0_01001 <= ((in2b_V_V_full_n = ap_const_logic_0) and (ap_predicate_op65_write_state6 = ap_const_boolean_1) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp1_stage0_11001_assign_proc : process(in2b_V_V_full_n, ap_enable_reg_pp1_iter1, ap_predicate_op65_write_state6)
    begin
                ap_block_pp1_stage0_11001 <= ((in2b_V_V_full_n = ap_const_logic_0) and (ap_predicate_op65_write_state6 = ap_const_boolean_1) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp1_stage0_subdone_assign_proc : process(in2b_V_V_full_n, ap_enable_reg_pp1_iter1, ap_predicate_op65_write_state6)
    begin
                ap_block_pp1_stage0_subdone <= ((in2b_V_V_full_n = ap_const_logic_0) and (ap_predicate_op65_write_state6 = ap_const_boolean_1) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, nodo_V_empty_n, relationship_V_empty_n, fatherSearch_empty_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (fatherSearch_empty_n = ap_const_logic_0) or (relationship_V_empty_n = ap_const_logic_0) or (nodo_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter1_assign_proc : process(in2b_V_V_full_n, ap_predicate_op37_write_state3)
    begin
                ap_block_state3_pp0_stage0_iter1 <= ((in2b_V_V_full_n = ap_const_logic_0) and (ap_predicate_op37_write_state3 = ap_const_boolean_1));
    end process;

        ap_block_state5_pp1_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state6_pp1_stage0_iter1_assign_proc : process(in2b_V_V_full_n, ap_predicate_op65_write_state6)
    begin
                ap_block_state6_pp1_stage0_iter1 <= ((in2b_V_V_full_n = ap_const_logic_0) and (ap_predicate_op65_write_state6 = ap_const_boolean_1));
    end process;


    ap_done_assign_proc : process(ap_done_reg, in2b_V_V_full_n, ap_CS_fsm_state4)
    begin
        if (((in2b_V_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_pp1 <= (ap_idle_pp1 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp1_assign_proc : process(ap_enable_reg_pp1_iter1, ap_enable_reg_pp1_iter0)
    begin
        if (((ap_enable_reg_pp1_iter1 = ap_const_logic_0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_0))) then 
            ap_idle_pp1 <= ap_const_logic_1;
        else 
            ap_idle_pp1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_predicate_op37_write_state3_assign_proc : process(empty_n_3_reg_194, icmp_ln879_7_reg_198, and_ln77_reg_202)
    begin
                ap_predicate_op37_write_state3 <= ((icmp_ln879_7_reg_198 = ap_const_lv1_0) and (ap_const_lv1_1 = and_ln77_reg_202) and (empty_n_3_reg_194 = ap_const_lv1_1));
    end process;


    ap_predicate_op65_write_state6_assign_proc : process(empty_n_reg_211, icmp_ln879_reg_215, and_ln61_reg_219)
    begin
                ap_predicate_op65_write_state6 <= ((icmp_ln879_reg_215 = ap_const_lv1_0) and (ap_const_lv1_1 = and_ln61_reg_219) and (empty_n_reg_211 = ap_const_lv1_1));
    end process;


    ap_predicate_tran3to4_state2_assign_proc : process(grp_fu_102_p2, grp_nbread_fu_80_p2_0)
    begin
                ap_predicate_tran3to4_state2 <= ((grp_fu_102_p2 = ap_const_lv1_1) and (grp_nbread_fu_80_p2_0 = ap_const_lv1_1));
    end process;


    ap_predicate_tran6to4_state5_assign_proc : process(grp_fu_102_p2, grp_nbread_fu_80_p2_0)
    begin
                ap_predicate_tran6to4_state5 <= ((grp_fu_102_p2 = ap_const_lv1_1) and (grp_nbread_fu_80_p2_0 = ap_const_lv1_1));
    end process;


    ap_ready_assign_proc : process(in2b_V_V_full_n, ap_CS_fsm_state4)
    begin
        if (((in2b_V_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    compare_node_V_fu_128_p4 <= in2_V_V_dout(12 downto 2);

    fatherSearch_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, fatherSearch_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            fatherSearch_blk_n <= fatherSearch_empty_n;
        else 
            fatherSearch_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    fatherSearch_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, nodo_V_empty_n, relationship_V_empty_n, fatherSearch_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (fatherSearch_empty_n = ap_const_logic_0) or (relationship_V_empty_n = ap_const_logic_0) or (nodo_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            fatherSearch_read <= ap_const_logic_1;
        else 
            fatherSearch_read <= ap_const_logic_0;
        end if; 
    end process;

    fatherSearch_read_read_fu_74_p2 <= fatherSearch_dout;
    grp_fu_102_p2 <= "1" when (in2_V_V_dout = ap_const_lv24_401) else "0";
    grp_fu_108_p4 <= in2_V_V_dout(23 downto 13);
    grp_nbread_fu_80_p2_0 <= (0=>(in2_V_V_empty_n), others=>'-');
    icmp_ln879_10_fu_142_p2 <= "1" when (grp_fu_108_p4 = nodo_V_read_reg_178) else "0";
    icmp_ln879_11_fu_147_p2 <= "1" when (node_relation_V_2_fu_138_p1 = relationship_V_read_reg_184) else "0";
    icmp_ln879_8_fu_162_p2 <= "1" when (compare_node_V_fu_128_p4 = nodo_V_read_reg_178) else "0";
    icmp_ln879_9_fu_167_p2 <= "1" when (node_relation_V_fu_158_p1 = relationship_V_read_reg_184) else "0";

    in2_V_V_read_assign_proc : process(in2_V_V_empty_n, ap_CS_fsm_pp1_stage0, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001, ap_enable_reg_pp1_iter0, ap_block_pp1_stage0_11001)
    begin
        if (((in2_V_V_empty_n = ap_const_logic_1) and (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (in2_V_V_empty_n = ap_const_logic_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)) or ((ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001))))) then 
            in2_V_V_read <= ap_const_logic_1;
        else 
            in2_V_V_read <= ap_const_logic_0;
        end if; 
    end process;


    in2b_V_V_blk_n_assign_proc : process(in2b_V_V_full_n, ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, ap_block_pp1_stage0, empty_n_reg_211, icmp_ln879_reg_215, and_ln61_reg_219, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, empty_n_3_reg_194, icmp_ln879_7_reg_198, and_ln77_reg_202, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or ((ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln879_7_reg_198 = ap_const_lv1_0) and (ap_const_lv1_1 = and_ln77_reg_202) and (empty_n_3_reg_194 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((icmp_ln879_reg_215 = ap_const_lv1_0) and (ap_const_lv1_1 = and_ln61_reg_219) and (empty_n_reg_211 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp1_stage0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0)))) then 
            in2b_V_V_blk_n <= in2b_V_V_full_n;
        else 
            in2b_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    in2b_V_V_din_assign_proc : process(in2b_V_V_full_n, ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_CS_fsm_state4, ap_predicate_op37_write_state3, tmp_V_6_reg_206, ap_predicate_op65_write_state6, tmp_V_reg_223, ap_block_pp0_stage0_01001, ap_block_pp1_stage0_01001)
    begin
        if (((ap_predicate_op65_write_state6 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_01001) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0))) then 
            in2b_V_V_din <= tmp_V_reg_223;
        elsif (((in2b_V_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            in2b_V_V_din <= ap_const_lv11_401;
        elsif (((ap_predicate_op37_write_state3 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_01001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            in2b_V_V_din <= tmp_V_6_reg_206;
        else 
            in2b_V_V_din <= "XXXXXXXXXXX";
        end if; 
    end process;


    in2b_V_V_write_assign_proc : process(in2b_V_V_full_n, ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter1, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_CS_fsm_state4, ap_predicate_op37_write_state3, ap_block_pp0_stage0_11001, ap_predicate_op65_write_state6, ap_block_pp1_stage0_11001)
    begin
        if ((((ap_predicate_op37_write_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)) or ((ap_predicate_op65_write_state6 = ap_const_boolean_1) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_boolean_0 = ap_block_pp1_stage0_11001)) or ((in2b_V_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            in2b_V_V_write <= ap_const_logic_1;
        else 
            in2b_V_V_write <= ap_const_logic_0;
        end if; 
    end process;

    node_relation_V_2_fu_138_p1 <= in2_V_V_dout(2 - 1 downto 0);
    node_relation_V_fu_158_p1 <= in2_V_V_dout(2 - 1 downto 0);

    nodo_V_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, nodo_V_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            nodo_V_blk_n <= nodo_V_empty_n;
        else 
            nodo_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    nodo_V_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, nodo_V_empty_n, relationship_V_empty_n, fatherSearch_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (fatherSearch_empty_n = ap_const_logic_0) or (relationship_V_empty_n = ap_const_logic_0) or (nodo_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            nodo_V_read <= ap_const_logic_1;
        else 
            nodo_V_read <= ap_const_logic_0;
        end if; 
    end process;


    relationship_V_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, relationship_V_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            relationship_V_blk_n <= relationship_V_empty_n;
        else 
            relationship_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    relationship_V_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, nodo_V_empty_n, relationship_V_empty_n, fatherSearch_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (fatherSearch_empty_n = ap_const_logic_0) or (relationship_V_empty_n = ap_const_logic_0) or (nodo_V_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            relationship_V_read <= ap_const_logic_1;
        else 
            relationship_V_read <= ap_const_logic_0;
        end if; 
    end process;

end behav;