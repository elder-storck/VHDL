library ieee;
use ieee.std_logic_1164.all;

entity SomadorSubtrator_TB is
end SomadorSubtrator_TB;

architecture tb_arch of SomadorSubtrator_TB is
    signal sw_a0 : std_logic;
    signal sw_a1 : std_logic;
    signal sw_a2 : std_logic;
    signal sw_a3 : std_logic;
    signal sw_b0 : std_logic;
    signal sw_b1 : std_logic;
    signal sw_b2 : std_logic;
    signal sw_b3 : std_logic;
    signal sw_s  : std_logic;
    signal led0  : std_logic;
    signal led1  : std_logic;
    signal led2  : std_logic;
    signal led3  : std_logic;
    signal led4  : std_logic;
    signal led5  : std_logic;
    begin
        tb_unit: entity work.somador_subtrator(so_su_arch)
        port map(
            a(3)    => sw_a3,
            a(2)    => sw_a2,
            a(1)    => sw_a1,
            a(0)    => sw_a0,
            b(3)    => sw_b3,
            b(2)    => sw_b2,
            b(1)    => sw_b1,
            b(0)    => sw_b0,
            sel     => sw_s,
            r(3)    => led3,
            r(2)    => led2,
            r(1)    => led1,
            r(0)    => led0,
            co      => led4,
            estouro => led5
        );
    process
    begin
        sw_a3   <= '0';
        sw_a2   <= '0';
        sw_a1   <= '0';
        sw_a0   <= '1';
        sw_b3   <= '0';
        sw_b2   <= '0';
        sw_b1   <= '0';
        sw_b0   <= '1';
        sw_s    <= '1';
        wait for 200 ns;

        sw_a3   <= '0';
        sw_a2   <= '0';
        sw_a1   <= '1';
        sw_a0   <= '0';
        sw_b3   <= '0';
        sw_b2   <= '0';
        sw_b1   <= '1';
        sw_b0   <= '0';
        sw_s    <= '1';
        wait for 200 ns;

        sw_a3   <= '0';
        sw_a2   <= '1';
        sw_a1   <= '0';
        sw_a0   <= '0';
        sw_b3   <= '0';
        sw_b2   <= '1';
        sw_b1   <= '0';
        sw_b0   <= '0';
        sw_s    <= '1';
        wait for 200 ns;

        sw_a3   <= '1';
        sw_a2   <= '0';
        sw_a1   <= '1';
        sw_a0   <= '1';
        sw_b3   <= '1';
        sw_b2   <= '1';
        sw_b1   <= '1';
        sw_b0   <= '0';
        sw_s    <= '1';
        wait for 200 ns;

        sw_a3   <= '1';
        sw_a2   <= '0';
        sw_a1   <= '0';
        sw_a0   <= '1';
        sw_b3   <= '0';
        sw_b2   <= '1';
        sw_b1   <= '1';
        sw_b0   <= '0';
        sw_s    <= '1';
        wait for 200 ns;

assert false
         report "Simulation Completed"
         severity failure;
   end process;
end tb_arch;     
