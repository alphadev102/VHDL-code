----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.08.2022 18:48:31
-- Design Name: 
-- Module Name: lab1_task5 - Behavioral
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

entity lab1_task5 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           s2 : out STD_LOGIC;
           cout : out STD_LOGIC);
end lab1_task5;

architecture Behavioral of lab1_task5 is
component half_adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC;
           c : out STD_LOGIC);
end component;
signal sum1,sum2,carry1,carry2 :STD_LOGIC;
begin
lab1 :half_adder port map(a,b,sum1,carry1);
lab2 :half_adder port map(sum1,cin,sum2,carry2);
s2<=sum2;
cout<=carry2 or carry1;
end Behavioral;
