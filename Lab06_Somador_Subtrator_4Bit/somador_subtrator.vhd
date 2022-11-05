library ieee;
use ieee.std_logic_1164.all;

entity somador_subtrator is
    port(
    a, b    : in std_logic_vector(3 downto 0);
    sel     : in std_logic;
    r       : out std_logic_vector(3 downto 0);
    co      : out std_logic;
    estouro : out std_logic
    );
end somador_subtrator;

architecture so_su_arch of somador_subtrator is
    signal bb : std_logic_vector(3 downto 0);
    --signal co : std_logic;
    signal cInTemp : std_logic;
    signal temp :std_logic_vector(3 downto 0);
    
    begin
 
    --bb <= b2;
    mux_unit: entity work.mux2_1_1bit(if_arch) 
        port map(
            input   => b,
            keyIn   => sel,
            --output  => r,
            output  => bb,
            keyOut  => cInTemp
        );
     som_unit: entity work.somador_4bit(complex_arch)
        port map(
            number1 => a,
            number2 => bb,
            cIn     => cInTemp,
            cOut    => co,
            result  => temp
        );
    r <= temp;  
    estouro <= (a(3) and bb(3) and (not(temp(3)))) or ((not a(3)) and (not bb(3)) and temp(3));

end so_su_arch;