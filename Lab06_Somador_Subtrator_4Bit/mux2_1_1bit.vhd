----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:40:03 09/30/2020 
-- Design Name: 
-- Module Name:    mux2_1_1bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity mux2_1_1bit is
    Port (
           input : in std_logic_vector(3 downto 0);
           keyIn : in  STD_LOGIC;
           keyOut : out STD_LOGIC; 
           output : out  std_logic_vector(3 downto 0)
           );
end mux2_1_1bit;

architecture if_arch of mux2_1_1bit is
begin
   process(keyIn , input)
   begin
      --keyOut <= keyIn;
      if (keyIn = '0') then
         output(0) <= input(0);
         output(1) <= input(1);
         output(2) <= input(2);
         output(3) <= input(3);
         --output <= input;
         keyOut <= '0';
      else
         output(0) <= not(input(0));
         output(1) <= not(input(1));
         output(2) <= not(input(2));
         output(3) <= not(input(3));
         keyOut <= '1';
      end if;
   end process;
end if_arch;
