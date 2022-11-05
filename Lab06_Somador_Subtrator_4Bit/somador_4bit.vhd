library ieee;
use ieee.std_logic_1164.all;

entity somador_4bit is
    port(
        number1 : in  std_logic_vector(3 downto 0);
        number2 : in  std_logic_vector(3 downto 0);
        cIn: in  std_logic;
        cOut: out std_logic;
        result : out std_logic_vector(3 downto 0)
    );
end somador_4bit;

architecture complex_arch of somador_4bit is 
    signal c1,c2,c3 : std_logic;
    
--    process(c1, c2, c3)
    begin
        som_1bit_1: entity work.somador_1bit(basic_arch)
            port map(
                a => number1(0),
                b => number2(0),
                ci=> cIn,
                co=> c1,
                s => result(0)
        );
        som_1bit_2: entity work.somador_1bit(basic_arch)
            port map(
                a => number1(1),
                b => number2(1),
                ci=> c1,
                co=> c2,
                s => result(1)
        );
        som_1bit_3: entity work.somador_1bit(basic_arch)
            port map(
                a => number1(2),
                b => number2(2),
                ci=> c2,
                co=> c3,
                s => result(2)
        );
        som_1bit_4: entity work.somador_1bit(basic_arch)
            port map(
                a => number1(3),
                b => number2(3),
                ci=> c3,
                co=> cOut,
                s => result(3)
        );
--        end;
    end complex_arch;