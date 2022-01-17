-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Conv_sysarr_dbbuf_runL2toL1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    data_l1buf_018_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    data_l1buf_018_ce0 : OUT STD_LOGIC;
    data_l1buf_018_we0 : OUT STD_LOGIC;
    data_l1buf_018_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    data_l1buf_119_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    data_l1buf_119_ce0 : OUT STD_LOGIC;
    data_l1buf_119_we0 : OUT STD_LOGIC;
    data_l1buf_119_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    data_l1buf_220_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    data_l1buf_220_ce0 : OUT STD_LOGIC;
    data_l1buf_220_we0 : OUT STD_LOGIC;
    data_l1buf_220_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    data_l1buf_321_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    data_l1buf_321_ce0 : OUT STD_LOGIC;
    data_l1buf_321_we0 : OUT STD_LOGIC;
    data_l1buf_321_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    data_l2_0_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    data_l2_0_ce0 : OUT STD_LOGIC;
    data_l2_0_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    data_l2_1_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    data_l2_1_ce0 : OUT STD_LOGIC;
    data_l2_1_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    data_l2_2_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    data_l2_2_ce0 : OUT STD_LOGIC;
    data_l2_2_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    data_l2_3_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    data_l2_3_ce0 : OUT STD_LOGIC;
    data_l2_3_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    empty_15_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    empty_15_empty_n : IN STD_LOGIC;
    empty_15_read : OUT STD_LOGIC;
    co_1_dout : IN STD_LOGIC_VECTOR (9 downto 0);
    co_1_empty_n : IN STD_LOGIC;
    co_1_read : OUT STD_LOGIC;
    r_dout : IN STD_LOGIC_VECTOR (9 downto 0);
    r_empty_n : IN STD_LOGIC;
    r_read : OUT STD_LOGIC;
    s_dout : IN STD_LOGIC_VECTOR (9 downto 0);
    s_empty_n : IN STD_LOGIC;
    s_read : OUT STD_LOGIC;
    empty_dout : IN STD_LOGIC_VECTOR (9 downto 0);
    empty_empty_n : IN STD_LOGIC;
    empty_read : OUT STD_LOGIC );
end;


architecture behav of Conv_sysarr_dbbuf_runL2toL1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal empty_15_blk_n : STD_LOGIC;
    signal co_1_blk_n : STD_LOGIC;
    signal r_blk_n : STD_LOGIC;
    signal s_blk_n : STD_LOGIC;
    signal empty_blk_n : STD_LOGIC;
    signal indvar_flatten_reg_202 : STD_LOGIC_VECTOR (63 downto 0);
    signal hi_reg_213 : STD_LOGIC_VECTOR (31 downto 0);
    signal wi_reg_224 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_read_reg_353 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal s_read_reg_358 : STD_LOGIC_VECTOR (9 downto 0);
    signal H_TILE_tmp_reg_363 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_reg_368 : STD_LOGIC_VECTOR (9 downto 0);
    signal trunc_ln53_fu_235_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal trunc_ln53_reg_373 : STD_LOGIC_VECTOR (8 downto 0);
    signal mul9_i_i_fu_239_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal mul9_i_i_reg_378 : STD_LOGIC_VECTOR (9 downto 0);
    signal bound_fu_249_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bound_reg_383 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln59_fu_255_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln59_reg_388 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln59_reg_388_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln59_reg_388_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln59_reg_388_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln59_2_fu_260_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal select_ln59_1_fu_285_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln59_1_reg_397 : STD_LOGIC_VECTOR (31 downto 0);
    signal empty_39_fu_306_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal empty_39_reg_407 : STD_LOGIC_VECTOR (9 downto 0);
    signal empty_39_reg_407_pp0_iter1_reg : STD_LOGIC_VECTOR (9 downto 0);
    signal empty_40_fu_310_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal empty_40_reg_412 : STD_LOGIC_VECTOR (8 downto 0);
    signal empty_40_reg_412_pp0_iter1_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln65_fu_314_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_347_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal add17_i_i_reg_422 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_phi_mux_hi_phi_fu_217_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal idxprom_i_i_fu_324_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal idxprom18_i_i_fu_332_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal bound_fu_249_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal cast_fu_245_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal bound_fu_249_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln65_fu_266_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln59_3_fu_279_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln59_fu_293_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln59_fu_271_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_339_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal add13_i_i_fu_320_p2 : STD_LOGIC_VECTOR (9 downto 0);
    attribute use_dsp48 : string;
    attribute use_dsp48 of add13_i_i_fu_320_p2 : signal is "no";
    signal grp_fu_339_p0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_fu_347_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component Conv_sysarr_dbbuf_mul_10s_10s_10_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (9 downto 0);
        din1 : IN STD_LOGIC_VECTOR (9 downto 0);
        dout : OUT STD_LOGIC_VECTOR (9 downto 0) );
    end component;


    component Conv_sysarr_dbbuf_mul_32ns_32ns_64_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component Conv_sysarr_dbbuf_ama_addmuladd_10ns_10ns_10s_10ns_10_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (9 downto 0);
        din1 : IN STD_LOGIC_VECTOR (9 downto 0);
        din2 : IN STD_LOGIC_VECTOR (9 downto 0);
        din3 : IN STD_LOGIC_VECTOR (9 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (9 downto 0) );
    end component;


    component Conv_sysarr_dbbuf_mac_muladd_9s_9s_9ns_9_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (8 downto 0);
        din1 : IN STD_LOGIC_VECTOR (8 downto 0);
        din2 : IN STD_LOGIC_VECTOR (8 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (8 downto 0) );
    end component;



begin
    mul_10s_10s_10_1_1_U76 : component Conv_sysarr_dbbuf_mul_10s_10s_10_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 10,
        din1_WIDTH => 10,
        dout_WIDTH => 10)
    port map (
        din0 => empty_dout,
        din1 => co_1_dout,
        dout => mul9_i_i_fu_239_p2);

    mul_32ns_32ns_64_1_1_U77 : component Conv_sysarr_dbbuf_mul_32ns_32ns_64_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 64)
    port map (
        din0 => bound_fu_249_p0,
        din1 => bound_fu_249_p1,
        dout => bound_fu_249_p2);

    ama_addmuladd_10ns_10ns_10s_10ns_10_4_1_U78 : component Conv_sysarr_dbbuf_ama_addmuladd_10ns_10ns_10s_10ns_10_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 10,
        din1_WIDTH => 10,
        din2_WIDTH => 10,
        din3_WIDTH => 10,
        dout_WIDTH => 10)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_339_p0,
        din1 => mul9_i_i_reg_378,
        din2 => tmp_reg_368,
        din3 => empty_39_reg_407_pp0_iter1_reg,
        ce => ap_const_logic_1,
        dout => grp_fu_339_p4);

    mac_muladd_9s_9s_9ns_9_4_1_U79 : component Conv_sysarr_dbbuf_mac_muladd_9s_9s_9ns_9_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 9,
        din1_WIDTH => 9,
        din2_WIDTH => 9,
        dout_WIDTH => 9)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => trunc_ln53_reg_373,
        din1 => grp_fu_347_p1,
        din2 => empty_40_reg_412_pp0_iter1_reg,
        ce => ap_const_logic_1,
        dout => grp_fu_347_p3);





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
                elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
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
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((not(((empty_empty_n = ap_const_logic_0) or (s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (r_empty_n = ap_const_logic_0) or (co_1_empty_n = ap_const_logic_0) or (empty_15_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
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
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                elsif ((not(((empty_empty_n = ap_const_logic_0) or (s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (r_empty_n = ap_const_logic_0) or (co_1_empty_n = ap_const_logic_0) or (empty_15_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    hi_reg_213_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln59_reg_388 = ap_const_lv1_0))) then 
                hi_reg_213 <= select_ln59_1_reg_397;
            elsif ((not(((empty_empty_n = ap_const_logic_0) or (s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (r_empty_n = ap_const_logic_0) or (co_1_empty_n = ap_const_logic_0) or (empty_15_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                hi_reg_213 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    indvar_flatten_reg_202_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln59_fu_255_p2 = ap_const_lv1_0))) then 
                indvar_flatten_reg_202 <= add_ln59_2_fu_260_p2;
            elsif ((not(((empty_empty_n = ap_const_logic_0) or (s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (r_empty_n = ap_const_logic_0) or (co_1_empty_n = ap_const_logic_0) or (empty_15_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                indvar_flatten_reg_202 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;

    wi_reg_224_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln59_fu_255_p2 = ap_const_lv1_0))) then 
                wi_reg_224 <= add_ln65_fu_314_p2;
            elsif ((not(((empty_empty_n = ap_const_logic_0) or (s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (r_empty_n = ap_const_logic_0) or (co_1_empty_n = ap_const_logic_0) or (empty_15_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                wi_reg_224 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((empty_empty_n = ap_const_logic_0) or (s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (r_empty_n = ap_const_logic_0) or (co_1_empty_n = ap_const_logic_0) or (empty_15_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                H_TILE_tmp_reg_363 <= empty_15_dout;
                bound_reg_383 <= bound_fu_249_p2;
                mul9_i_i_reg_378 <= mul9_i_i_fu_239_p2;
                r_read_reg_353 <= r_dout;
                s_read_reg_358 <= s_dout;
                tmp_reg_368 <= empty_dout;
                trunc_ln53_reg_373 <= trunc_ln53_fu_235_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (icmp_ln59_reg_388_pp0_iter2_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                add17_i_i_reg_422 <= grp_fu_347_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln59_fu_255_p2 = ap_const_lv1_0))) then
                empty_39_reg_407 <= empty_39_fu_306_p1;
                empty_40_reg_412 <= empty_40_fu_310_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                empty_39_reg_407_pp0_iter1_reg <= empty_39_reg_407;
                empty_40_reg_412_pp0_iter1_reg <= empty_40_reg_412;
                icmp_ln59_reg_388 <= icmp_ln59_fu_255_p2;
                icmp_ln59_reg_388_pp0_iter1_reg <= icmp_ln59_reg_388;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                icmp_ln59_reg_388_pp0_iter2_reg <= icmp_ln59_reg_388_pp0_iter1_reg;
                icmp_ln59_reg_388_pp0_iter3_reg <= icmp_ln59_reg_388_pp0_iter2_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln59_fu_255_p2 = ap_const_lv1_0))) then
                select_ln59_1_reg_397 <= select_ln59_1_fu_285_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, empty_15_empty_n, co_1_empty_n, r_empty_n, s_empty_n, empty_empty_n, icmp_ln59_fu_255_p2, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter4)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((empty_empty_n = ap_const_logic_0) or (s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (r_empty_n = ap_const_logic_0) or (co_1_empty_n = ap_const_logic_0) or (empty_15_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln59_fu_255_p2 = ap_const_lv1_1))) and not(((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln59_fu_255_p2 = ap_const_lv1_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add13_i_i_fu_320_p2 <= std_logic_vector(signed(grp_fu_339_p4) + signed(s_read_reg_358));
    add_ln59_2_fu_260_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_202) + unsigned(ap_const_lv64_1));
    add_ln59_3_fu_279_p2 <= std_logic_vector(unsigned(ap_const_lv32_1) + unsigned(ap_phi_mux_hi_phi_fu_217_p4));
    add_ln65_fu_314_p2 <= std_logic_vector(unsigned(ap_const_lv32_1) + unsigned(select_ln59_fu_271_p3));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state7 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, empty_15_empty_n, co_1_empty_n, r_empty_n, s_empty_n, empty_empty_n)
    begin
                ap_block_state1 <= ((empty_empty_n = ap_const_logic_0) or (s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (r_empty_n = ap_const_logic_0) or (co_1_empty_n = ap_const_logic_0) or (empty_15_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln59_fu_255_p2)
    begin
        if ((icmp_ln59_fu_255_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_hi_phi_fu_217_p4_assign_proc : process(hi_reg_213, icmp_ln59_reg_388, ap_CS_fsm_pp0_stage0, select_ln59_1_reg_397, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln59_reg_388 = ap_const_lv1_0))) then 
            ap_phi_mux_hi_phi_fu_217_p4 <= select_ln59_1_reg_397;
        else 
            ap_phi_mux_hi_phi_fu_217_p4 <= hi_reg_213;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bound_fu_249_p0 <= cast_fu_245_p1(32 - 1 downto 0);
    bound_fu_249_p1 <= cast_fu_245_p1(32 - 1 downto 0);
    cast_fu_245_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(empty_15_dout),64));

    co_1_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, co_1_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            co_1_blk_n <= co_1_empty_n;
        else 
            co_1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    co_1_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, empty_15_empty_n, co_1_empty_n, r_empty_n, s_empty_n, empty_empty_n)
    begin
        if ((not(((empty_empty_n = ap_const_logic_0) or (s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (r_empty_n = ap_const_logic_0) or (co_1_empty_n = ap_const_logic_0) or (empty_15_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            co_1_read <= ap_const_logic_1;
        else 
            co_1_read <= ap_const_logic_0;
        end if; 
    end process;

    data_l1buf_018_address0 <= idxprom18_i_i_fu_332_p1(9 - 1 downto 0);

    data_l1buf_018_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            data_l1buf_018_ce0 <= ap_const_logic_1;
        else 
            data_l1buf_018_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    data_l1buf_018_d0 <= data_l2_0_q0;

    data_l1buf_018_we0_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln59_reg_388_pp0_iter3_reg, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (icmp_ln59_reg_388_pp0_iter3_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            data_l1buf_018_we0 <= ap_const_logic_1;
        else 
            data_l1buf_018_we0 <= ap_const_logic_0;
        end if; 
    end process;

    data_l1buf_119_address0 <= idxprom18_i_i_fu_332_p1(9 - 1 downto 0);

    data_l1buf_119_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            data_l1buf_119_ce0 <= ap_const_logic_1;
        else 
            data_l1buf_119_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    data_l1buf_119_d0 <= data_l2_1_q0;

    data_l1buf_119_we0_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln59_reg_388_pp0_iter3_reg, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (icmp_ln59_reg_388_pp0_iter3_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            data_l1buf_119_we0 <= ap_const_logic_1;
        else 
            data_l1buf_119_we0 <= ap_const_logic_0;
        end if; 
    end process;

    data_l1buf_220_address0 <= idxprom18_i_i_fu_332_p1(9 - 1 downto 0);

    data_l1buf_220_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            data_l1buf_220_ce0 <= ap_const_logic_1;
        else 
            data_l1buf_220_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    data_l1buf_220_d0 <= data_l2_2_q0;

    data_l1buf_220_we0_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln59_reg_388_pp0_iter3_reg, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (icmp_ln59_reg_388_pp0_iter3_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            data_l1buf_220_we0 <= ap_const_logic_1;
        else 
            data_l1buf_220_we0 <= ap_const_logic_0;
        end if; 
    end process;

    data_l1buf_321_address0 <= idxprom18_i_i_fu_332_p1(9 - 1 downto 0);

    data_l1buf_321_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            data_l1buf_321_ce0 <= ap_const_logic_1;
        else 
            data_l1buf_321_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    data_l1buf_321_d0 <= data_l2_3_q0;

    data_l1buf_321_we0_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln59_reg_388_pp0_iter3_reg, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_1) and (icmp_ln59_reg_388_pp0_iter3_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            data_l1buf_321_we0 <= ap_const_logic_1;
        else 
            data_l1buf_321_we0 <= ap_const_logic_0;
        end if; 
    end process;

    data_l2_0_address0 <= idxprom_i_i_fu_324_p1(10 - 1 downto 0);

    data_l2_0_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            data_l2_0_ce0 <= ap_const_logic_1;
        else 
            data_l2_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    data_l2_1_address0 <= idxprom_i_i_fu_324_p1(10 - 1 downto 0);

    data_l2_1_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            data_l2_1_ce0 <= ap_const_logic_1;
        else 
            data_l2_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    data_l2_2_address0 <= idxprom_i_i_fu_324_p1(10 - 1 downto 0);

    data_l2_2_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            data_l2_2_ce0 <= ap_const_logic_1;
        else 
            data_l2_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    data_l2_3_address0 <= idxprom_i_i_fu_324_p1(10 - 1 downto 0);

    data_l2_3_ce0_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            data_l2_3_ce0 <= ap_const_logic_1;
        else 
            data_l2_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    empty_15_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, empty_15_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            empty_15_blk_n <= empty_15_empty_n;
        else 
            empty_15_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    empty_15_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, empty_15_empty_n, co_1_empty_n, r_empty_n, s_empty_n, empty_empty_n)
    begin
        if ((not(((empty_empty_n = ap_const_logic_0) or (s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (r_empty_n = ap_const_logic_0) or (co_1_empty_n = ap_const_logic_0) or (empty_15_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            empty_15_read <= ap_const_logic_1;
        else 
            empty_15_read <= ap_const_logic_0;
        end if; 
    end process;

    empty_39_fu_306_p1 <= select_ln59_fu_271_p3(10 - 1 downto 0);
    empty_40_fu_310_p1 <= select_ln59_fu_271_p3(9 - 1 downto 0);

    empty_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, empty_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            empty_blk_n <= empty_empty_n;
        else 
            empty_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    empty_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, empty_15_empty_n, co_1_empty_n, r_empty_n, s_empty_n, empty_empty_n)
    begin
        if ((not(((empty_empty_n = ap_const_logic_0) or (s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (r_empty_n = ap_const_logic_0) or (co_1_empty_n = ap_const_logic_0) or (empty_15_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            empty_read <= ap_const_logic_1;
        else 
            empty_read <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_339_p0 <= std_logic_vector(unsigned(r_read_reg_353) + unsigned(trunc_ln59_fu_293_p1));
    grp_fu_347_p1 <= select_ln59_1_fu_285_p3(9 - 1 downto 0);
    icmp_ln59_fu_255_p2 <= "1" when (indvar_flatten_reg_202 = bound_reg_383) else "0";
    icmp_ln65_fu_266_p2 <= "1" when (wi_reg_224 = H_TILE_tmp_reg_363) else "0";
    idxprom18_i_i_fu_332_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add17_i_i_reg_422),64));
    idxprom_i_i_fu_324_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add13_i_i_fu_320_p2),64));

    r_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, r_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            r_blk_n <= r_empty_n;
        else 
            r_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    r_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, empty_15_empty_n, co_1_empty_n, r_empty_n, s_empty_n, empty_empty_n)
    begin
        if ((not(((empty_empty_n = ap_const_logic_0) or (s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (r_empty_n = ap_const_logic_0) or (co_1_empty_n = ap_const_logic_0) or (empty_15_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            r_read <= ap_const_logic_1;
        else 
            r_read <= ap_const_logic_0;
        end if; 
    end process;


    s_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, s_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            s_blk_n <= s_empty_n;
        else 
            s_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    s_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, empty_15_empty_n, co_1_empty_n, r_empty_n, s_empty_n, empty_empty_n)
    begin
        if ((not(((empty_empty_n = ap_const_logic_0) or (s_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (r_empty_n = ap_const_logic_0) or (co_1_empty_n = ap_const_logic_0) or (empty_15_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            s_read <= ap_const_logic_1;
        else 
            s_read <= ap_const_logic_0;
        end if; 
    end process;

    select_ln59_1_fu_285_p3 <= 
        add_ln59_3_fu_279_p2 when (icmp_ln65_fu_266_p2(0) = '1') else 
        ap_phi_mux_hi_phi_fu_217_p4;
    select_ln59_fu_271_p3 <= 
        ap_const_lv32_0 when (icmp_ln65_fu_266_p2(0) = '1') else 
        wi_reg_224;
    trunc_ln53_fu_235_p1 <= empty_15_dout(9 - 1 downto 0);
    trunc_ln59_fu_293_p1 <= select_ln59_1_fu_285_p3(10 - 1 downto 0);
end behav;
