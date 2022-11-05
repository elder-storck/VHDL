library ieee;
use ieee.std_logic_1164.all;

entity somador_1bit is
    port(
        a, b, ci : in  std_logic;
        co, s    : out std_logic
    );
end entity;

architecture basic_arch of somador_1bit is
    begin
 
    co <= (a and b) or (a and ci) or (b and ci);
    s <= a xor b xor ci;
end basic_arch;