----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2022 21:19:33
-- Design Name: 
-- Module Name: full_adder_behavioral - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder_behavioral is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end full_adder_behavioral;

architecture Behavioral of full_adder_behavioral is

begin
process(a,b)
begin
if(a='0' and b='0' and cin='0') then
sum <= '0';
carry <= '0';
elsif(a='0' and b='0' and cin='1') then 
sum <= '1';
carry <='0';
elsif(a='0' and b='1' and cin='0') then
sum <= '1';
carry <='0';
elsif (a='0' and b='1' and cin='1') then
sum <= '0';
carry <='1';
elsif(a='1' and b='0' and cin='0') then
sum <= '1';
carry <='0';
elsif(a='1' and b='0' and cin='1') then
sum <='0';
carry <='1';
elsif (a='1' and b='1' and cin='0') then
sum <='0';
carry <='1';
elsif(a='1' and b='1' and cin='1') then
sum <='1';
carry <='1';
end if;
end process;
end Behavioral;
