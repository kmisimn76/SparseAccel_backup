-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Conv_sysarr_dataflow_parent_loop_proc16 is
port (
    lshr_ln334_cast : IN STD_LOGIC_VECTOR (31 downto 0);
    param_L1_TILENUM_S : IN STD_LOGIC_VECTOR (31 downto 0);
    param : IN STD_LOGIC_VECTOR (1183 downto 0);
    ko_1 : IN STD_LOGIC_VECTOR (11 downto 0);
    co : IN STD_LOGIC_VECTOR (31 downto 0);
    ho : IN STD_LOGIC_VECTOR (10 downto 0);
    wo : IN STD_LOGIC_VECTOR (31 downto 0);
    data_l2_0_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    data_l2_0_ce0 : OUT STD_LOGIC;
    data_l2_0_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    data_l2_0_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    data_l2_0_we0 : OUT STD_LOGIC;
    data_l2_0_address1 : OUT STD_LOGIC_VECTOR (10 downto 0);
    data_l2_0_ce1 : OUT STD_LOGIC;
    data_l2_0_d1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    data_l2_0_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    data_l2_0_we1 : OUT STD_LOGIC;
    output_l2_0_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    output_l2_0_ce0 : OUT STD_LOGIC;
    output_l2_0_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    output_l2_0_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    output_l2_0_we0 : OUT STD_LOGIC;
    output_l2_0_address1 : OUT STD_LOGIC_VECTOR (10 downto 0);
    output_l2_0_ce1 : OUT STD_LOGIC;
    output_l2_0_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    output_l2_0_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    output_l2_0_we1 : OUT STD_LOGIC;
    weight_l2_0_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    weight_l2_0_ce0 : OUT STD_LOGIC;
    weight_l2_0_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    weight_l2_0_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    weight_l2_0_we0 : OUT STD_LOGIC;
    weight_l2_0_address1 : OUT STD_LOGIC_VECTOR (11 downto 0);
    weight_l2_0_ce1 : OUT STD_LOGIC;
    weight_l2_0_d1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    weight_l2_0_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    weight_l2_0_we1 : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    param_L1_TILENUM_S_ap_vld : IN STD_LOGIC;
    param_ap_vld : IN STD_LOGIC;
    ko_1_ap_vld : IN STD_LOGIC;
    co_ap_vld : IN STD_LOGIC;
    ho_ap_vld : IN STD_LOGIC;
    wo_ap_vld : IN STD_LOGIC;
    data_l2_0_empty_n : IN STD_LOGIC;
    data_l2_0_read : OUT STD_LOGIC;
    output_l2_0_full_n : IN STD_LOGIC;
    output_l2_0_write : OUT STD_LOGIC;
    weight_l2_0_empty_n : IN STD_LOGIC;
    weight_l2_0_read : OUT STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of Conv_sysarr_dataflow_parent_loop_proc16 is 
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";

attribute shreg_extract : string;
    signal dataflow_parent_loop_proc15_U0_wo : STD_LOGIC_VECTOR (10 downto 0);
    signal dataflow_parent_loop_proc15_U0_data_l2_0_address0 : STD_LOGIC_VECTOR (10 downto 0);
    signal dataflow_parent_loop_proc15_U0_data_l2_0_ce0 : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_data_l2_0_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal dataflow_parent_loop_proc15_U0_data_l2_0_we0 : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_data_l2_0_address1 : STD_LOGIC_VECTOR (10 downto 0);
    signal dataflow_parent_loop_proc15_U0_data_l2_0_ce1 : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_data_l2_0_d1 : STD_LOGIC_VECTOR (7 downto 0);
    signal dataflow_parent_loop_proc15_U0_data_l2_0_we1 : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_output_l2_0_address0 : STD_LOGIC_VECTOR (10 downto 0);
    signal dataflow_parent_loop_proc15_U0_output_l2_0_ce0 : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_output_l2_0_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal dataflow_parent_loop_proc15_U0_output_l2_0_we0 : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_output_l2_0_address1 : STD_LOGIC_VECTOR (10 downto 0);
    signal dataflow_parent_loop_proc15_U0_output_l2_0_ce1 : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_output_l2_0_d1 : STD_LOGIC_VECTOR (31 downto 0);
    signal dataflow_parent_loop_proc15_U0_output_l2_0_we1 : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_weight_l2_0_address0 : STD_LOGIC_VECTOR (11 downto 0);
    signal dataflow_parent_loop_proc15_U0_weight_l2_0_ce0 : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_weight_l2_0_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal dataflow_parent_loop_proc15_U0_weight_l2_0_we0 : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_weight_l2_0_address1 : STD_LOGIC_VECTOR (11 downto 0);
    signal dataflow_parent_loop_proc15_U0_weight_l2_0_ce1 : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_weight_l2_0_d1 : STD_LOGIC_VECTOR (7 downto 0);
    signal dataflow_parent_loop_proc15_U0_weight_l2_0_we1 : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_data_l2_0_read : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_output_l2_0_write : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_weight_l2_0_read : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_ap_start : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_ap_done : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_ap_ready : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_ap_idle : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_ap_continue : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_param_L1_TILENUM_S_ap_vld : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_data_l2_0_full_n : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_data_l2_0_write : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_weight_l2_0_full_n : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_weight_l2_0_write : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal loop_dataflow_input_count : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal loop_dataflow_output_count : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal bound_minus_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal dataflow_parent_loop_proc15_U0_start_full_n : STD_LOGIC;
    signal dataflow_parent_loop_proc15_U0_start_write : STD_LOGIC;

    component Conv_sysarr_dataflow_parent_loop_proc15 IS
    port (
        param_L1_TILENUM_S : IN STD_LOGIC_VECTOR (31 downto 0);
        param : IN STD_LOGIC_VECTOR (1183 downto 0);
        ko_1 : IN STD_LOGIC_VECTOR (11 downto 0);
        co : IN STD_LOGIC_VECTOR (31 downto 0);
        ro : IN STD_LOGIC_VECTOR (31 downto 0);
        ho : IN STD_LOGIC_VECTOR (10 downto 0);
        wo : IN STD_LOGIC_VECTOR (10 downto 0);
        data_l2_0_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
        data_l2_0_ce0 : OUT STD_LOGIC;
        data_l2_0_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        data_l2_0_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        data_l2_0_we0 : OUT STD_LOGIC;
        data_l2_0_address1 : OUT STD_LOGIC_VECTOR (10 downto 0);
        data_l2_0_ce1 : OUT STD_LOGIC;
        data_l2_0_d1 : OUT STD_LOGIC_VECTOR (7 downto 0);
        data_l2_0_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
        data_l2_0_we1 : OUT STD_LOGIC;
        output_l2_0_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
        output_l2_0_ce0 : OUT STD_LOGIC;
        output_l2_0_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        output_l2_0_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        output_l2_0_we0 : OUT STD_LOGIC;
        output_l2_0_address1 : OUT STD_LOGIC_VECTOR (10 downto 0);
        output_l2_0_ce1 : OUT STD_LOGIC;
        output_l2_0_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
        output_l2_0_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
        output_l2_0_we1 : OUT STD_LOGIC;
        weight_l2_0_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
        weight_l2_0_ce0 : OUT STD_LOGIC;
        weight_l2_0_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        weight_l2_0_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        weight_l2_0_we0 : OUT STD_LOGIC;
        weight_l2_0_address1 : OUT STD_LOGIC_VECTOR (11 downto 0);
        weight_l2_0_ce1 : OUT STD_LOGIC;
        weight_l2_0_d1 : OUT STD_LOGIC_VECTOR (7 downto 0);
        weight_l2_0_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
        weight_l2_0_we1 : OUT STD_LOGIC;
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        param_ap_vld : IN STD_LOGIC;
        ko_1_ap_vld : IN STD_LOGIC;
        co_ap_vld : IN STD_LOGIC;
        ro_ap_vld : IN STD_LOGIC;
        ho_ap_vld : IN STD_LOGIC;
        wo_ap_vld : IN STD_LOGIC;
        data_l2_0_empty_n : IN STD_LOGIC;
        data_l2_0_read : OUT STD_LOGIC;
        output_l2_0_full_n : IN STD_LOGIC;
        output_l2_0_write : OUT STD_LOGIC;
        weight_l2_0_empty_n : IN STD_LOGIC;
        weight_l2_0_read : OUT STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;



begin
    dataflow_parent_loop_proc15_U0 : component Conv_sysarr_dataflow_parent_loop_proc15
    port map (
        param_L1_TILENUM_S => param_L1_TILENUM_S,
        param => param,
        ko_1 => ko_1,
        co => co,
        ro => loop_dataflow_input_count,
        ho => ho,
        wo => dataflow_parent_loop_proc15_U0_wo,
        data_l2_0_address0 => dataflow_parent_loop_proc15_U0_data_l2_0_address0,
        data_l2_0_ce0 => dataflow_parent_loop_proc15_U0_data_l2_0_ce0,
        data_l2_0_d0 => dataflow_parent_loop_proc15_U0_data_l2_0_d0,
        data_l2_0_q0 => data_l2_0_q0,
        data_l2_0_we0 => dataflow_parent_loop_proc15_U0_data_l2_0_we0,
        data_l2_0_address1 => dataflow_parent_loop_proc15_U0_data_l2_0_address1,
        data_l2_0_ce1 => dataflow_parent_loop_proc15_U0_data_l2_0_ce1,
        data_l2_0_d1 => dataflow_parent_loop_proc15_U0_data_l2_0_d1,
        data_l2_0_q1 => ap_const_lv8_0,
        data_l2_0_we1 => dataflow_parent_loop_proc15_U0_data_l2_0_we1,
        output_l2_0_address0 => dataflow_parent_loop_proc15_U0_output_l2_0_address0,
        output_l2_0_ce0 => dataflow_parent_loop_proc15_U0_output_l2_0_ce0,
        output_l2_0_d0 => dataflow_parent_loop_proc15_U0_output_l2_0_d0,
        output_l2_0_q0 => ap_const_lv32_0,
        output_l2_0_we0 => dataflow_parent_loop_proc15_U0_output_l2_0_we0,
        output_l2_0_address1 => dataflow_parent_loop_proc15_U0_output_l2_0_address1,
        output_l2_0_ce1 => dataflow_parent_loop_proc15_U0_output_l2_0_ce1,
        output_l2_0_d1 => dataflow_parent_loop_proc15_U0_output_l2_0_d1,
        output_l2_0_q1 => ap_const_lv32_0,
        output_l2_0_we1 => dataflow_parent_loop_proc15_U0_output_l2_0_we1,
        weight_l2_0_address0 => dataflow_parent_loop_proc15_U0_weight_l2_0_address0,
        weight_l2_0_ce0 => dataflow_parent_loop_proc15_U0_weight_l2_0_ce0,
        weight_l2_0_d0 => dataflow_parent_loop_proc15_U0_weight_l2_0_d0,
        weight_l2_0_q0 => weight_l2_0_q0,
        weight_l2_0_we0 => dataflow_parent_loop_proc15_U0_weight_l2_0_we0,
        weight_l2_0_address1 => dataflow_parent_loop_proc15_U0_weight_l2_0_address1,
        weight_l2_0_ce1 => dataflow_parent_loop_proc15_U0_weight_l2_0_ce1,
        weight_l2_0_d1 => dataflow_parent_loop_proc15_U0_weight_l2_0_d1,
        weight_l2_0_q1 => ap_const_lv8_0,
        weight_l2_0_we1 => dataflow_parent_loop_proc15_U0_weight_l2_0_we1,
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        param_ap_vld => param_ap_vld,
        ko_1_ap_vld => ko_1_ap_vld,
        co_ap_vld => co_ap_vld,
        ro_ap_vld => ap_const_logic_0,
        ho_ap_vld => ho_ap_vld,
        wo_ap_vld => wo_ap_vld,
        data_l2_0_empty_n => ap_const_logic_0,
        data_l2_0_read => dataflow_parent_loop_proc15_U0_data_l2_0_read,
        output_l2_0_full_n => output_l2_0_full_n,
        output_l2_0_write => dataflow_parent_loop_proc15_U0_output_l2_0_write,
        weight_l2_0_empty_n => ap_const_logic_0,
        weight_l2_0_read => dataflow_parent_loop_proc15_U0_weight_l2_0_read,
        ap_start => dataflow_parent_loop_proc15_U0_ap_start,
        ap_done => dataflow_parent_loop_proc15_U0_ap_done,
        ap_ready => dataflow_parent_loop_proc15_U0_ap_ready,
        ap_idle => dataflow_parent_loop_proc15_U0_ap_idle,
        ap_continue => dataflow_parent_loop_proc15_U0_ap_continue);





    loop_dataflow_input_count_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                loop_dataflow_input_count <= ap_const_lv32_0;
            else
                if ((not((loop_dataflow_input_count = bound_minus_1)) and (dataflow_parent_loop_proc15_U0_ap_ready = ap_const_logic_1) and (ap_start = ap_const_logic_1))) then 
                    loop_dataflow_input_count <= std_logic_vector(unsigned(loop_dataflow_input_count) + unsigned(ap_const_lv32_1));
                elsif (((dataflow_parent_loop_proc15_U0_ap_ready = ap_const_logic_1) and (loop_dataflow_input_count = bound_minus_1) and (ap_start = ap_const_logic_1))) then 
                    loop_dataflow_input_count <= ap_const_lv32_0;
                end if; 
            end if;
        end if;
    end process;


    loop_dataflow_output_count_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                loop_dataflow_output_count <= ap_const_lv32_0;
            else
                if ((not((loop_dataflow_output_count = bound_minus_1)) and (dataflow_parent_loop_proc15_U0_ap_continue = ap_const_logic_1) and (dataflow_parent_loop_proc15_U0_ap_done = ap_const_logic_1))) then 
                    loop_dataflow_output_count <= std_logic_vector(unsigned(loop_dataflow_output_count) + unsigned(ap_const_lv32_1));
                elsif (((dataflow_parent_loop_proc15_U0_ap_continue = ap_const_logic_1) and (dataflow_parent_loop_proc15_U0_ap_done = ap_const_logic_1) and (loop_dataflow_output_count = bound_minus_1))) then 
                    loop_dataflow_output_count <= ap_const_lv32_0;
                end if; 
            end if;
        end if;
    end process;


    ap_done_assign_proc : process(dataflow_parent_loop_proc15_U0_ap_done, loop_dataflow_output_count, bound_minus_1)
    begin
        if (((dataflow_parent_loop_proc15_U0_ap_done = ap_const_logic_1) and (loop_dataflow_output_count = bound_minus_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(dataflow_parent_loop_proc15_U0_ap_idle, ap_start, loop_dataflow_output_count)
    begin
        if (((dataflow_parent_loop_proc15_U0_ap_idle = ap_const_logic_1) and (loop_dataflow_output_count = ap_const_lv32_0) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(dataflow_parent_loop_proc15_U0_ap_ready, ap_start, loop_dataflow_input_count, bound_minus_1)
    begin
        if (((dataflow_parent_loop_proc15_U0_ap_ready = ap_const_logic_1) and (loop_dataflow_input_count = bound_minus_1) and (ap_start = ap_const_logic_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_sync_continue <= ap_continue;
    ap_sync_done <= dataflow_parent_loop_proc15_U0_ap_done;
    ap_sync_ready <= dataflow_parent_loop_proc15_U0_ap_ready;
    bound_minus_1 <= std_logic_vector(unsigned(lshr_ln334_cast) - unsigned(ap_const_lv32_1));
    data_l2_0_address0 <= dataflow_parent_loop_proc15_U0_data_l2_0_address0;
    data_l2_0_address1 <= ap_const_lv11_0;
    data_l2_0_ce0 <= dataflow_parent_loop_proc15_U0_data_l2_0_ce0;
    data_l2_0_ce1 <= ap_const_logic_0;
    data_l2_0_d0 <= ap_const_lv8_0;
    data_l2_0_d1 <= ap_const_lv8_0;
    data_l2_0_read <= dataflow_parent_loop_proc15_U0_data_l2_0_write;
    data_l2_0_we0 <= ap_const_logic_0;
    data_l2_0_we1 <= ap_const_logic_0;

    dataflow_parent_loop_proc15_U0_ap_continue_assign_proc : process(ap_continue, loop_dataflow_output_count, bound_minus_1)
    begin
        if ((not((loop_dataflow_output_count = bound_minus_1)) or (ap_continue = ap_const_logic_1))) then 
            dataflow_parent_loop_proc15_U0_ap_continue <= ap_const_logic_1;
        else 
            dataflow_parent_loop_proc15_U0_ap_continue <= ap_const_logic_0;
        end if; 
    end process;

    dataflow_parent_loop_proc15_U0_ap_start <= ap_start;
    dataflow_parent_loop_proc15_U0_data_l2_0_full_n <= data_l2_0_empty_n;
    dataflow_parent_loop_proc15_U0_data_l2_0_write <= ap_const_logic_0;
    dataflow_parent_loop_proc15_U0_param_L1_TILENUM_S_ap_vld <= param_L1_TILENUM_S_ap_vld;
    dataflow_parent_loop_proc15_U0_start_full_n <= ap_const_logic_1;
    dataflow_parent_loop_proc15_U0_start_write <= ap_const_logic_0;
    dataflow_parent_loop_proc15_U0_weight_l2_0_full_n <= weight_l2_0_empty_n;
    dataflow_parent_loop_proc15_U0_weight_l2_0_write <= ap_const_logic_0;
    
    dataflow_parent_loop_proc15_U0_wo_proc : process(wo)
    variable vlo_cpy : STD_LOGIC_VECTOR(32+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(32+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(32 - 1 downto 0);
    variable dataflow_parent_loop_proc15_U0_wo_i : integer;
    variable section : STD_LOGIC_VECTOR(32 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(32 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(32 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(5 - 1 downto 0) := ap_const_lv32_0(5 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(5 - 1 downto 0) := ap_const_lv32_B(5 - 1 downto 0);
        v0_cpy := wo;
        if (vlo_cpy(5 - 1 downto 0) > vhi_cpy(5 - 1 downto 0)) then
            vhi_cpy(5-1 downto 0) := std_logic_vector(32-1-unsigned(ap_const_lv32_B(5-1 downto 0)));
            vlo_cpy(5-1 downto 0) := std_logic_vector(32-1-unsigned(ap_const_lv32_0(5-1 downto 0)));
            for dataflow_parent_loop_proc15_U0_wo_i in 0 to 32-1 loop
                v0_cpy(dataflow_parent_loop_proc15_U0_wo_i) := wo(32-1-dataflow_parent_loop_proc15_U0_wo_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(5-1 downto 0)))));

        section := (others=>'0');
        section(5-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(5-1 downto 0)) - unsigned(vlo_cpy(5-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(31-1 downto 0)))));
        res_mask := res_mask(32-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        dataflow_parent_loop_proc15_U0_wo <= resvalue(11-1 downto 0);
    end process;

    output_l2_0_address0 <= dataflow_parent_loop_proc15_U0_output_l2_0_address0;
    output_l2_0_address1 <= ap_const_lv11_0;
    output_l2_0_ce0 <= dataflow_parent_loop_proc15_U0_output_l2_0_ce0;
    output_l2_0_ce1 <= ap_const_logic_0;
    output_l2_0_d0 <= dataflow_parent_loop_proc15_U0_output_l2_0_d0;
    output_l2_0_d1 <= ap_const_lv32_0;
    output_l2_0_we0 <= dataflow_parent_loop_proc15_U0_output_l2_0_we0;
    output_l2_0_we1 <= ap_const_logic_0;
    output_l2_0_write <= dataflow_parent_loop_proc15_U0_output_l2_0_write;
    weight_l2_0_address0 <= dataflow_parent_loop_proc15_U0_weight_l2_0_address0;
    weight_l2_0_address1 <= ap_const_lv12_0;
    weight_l2_0_ce0 <= dataflow_parent_loop_proc15_U0_weight_l2_0_ce0;
    weight_l2_0_ce1 <= ap_const_logic_0;
    weight_l2_0_d0 <= ap_const_lv8_0;
    weight_l2_0_d1 <= ap_const_lv8_0;
    weight_l2_0_read <= dataflow_parent_loop_proc15_U0_weight_l2_0_write;
    weight_l2_0_we0 <= ap_const_logic_0;
    weight_l2_0_we1 <= ap_const_logic_0;
end behav;