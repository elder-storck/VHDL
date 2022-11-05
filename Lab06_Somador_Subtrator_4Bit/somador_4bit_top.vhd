library ieee;
use ieee.std_logic_1164.all;
entity somador_4bit_top is 
    port(
    sw : in  std_logic_vector(8 downto 0);    --9 switch
    led: out std_logic_vector(5 downto 0)
    );
end somador_4bit_top;

architecture arch of somador_4bit_top is
    begin
    som_unit: entity work.somador_subtrator(so_su_arch)
        port map(
            a       => sw(3 downto 0),
            b       => sw(7 downto 4),
            sel     => sw(8),
            r       => led(3 downto 0),
            co      => led(4),
            estouro => led(5)
    );
end arch;