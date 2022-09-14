-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/13/2022 09:29:13 AM
-- Design Name: 
-- Module Name: rippleadder - Behavioral
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

entity rippleadder is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           s : out STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC_VECTOR (2 downto 0);
           cout : out STD_LOGIC);
end rippleadder;

architecture Behavioral of rippleadder is
component fulladder is
    Port ( p : in STD_LOGIC;
           q : in STD_LOGIC;
           r : in STD_LOGIC;
           t : out STD_LOGIC;
           u : out STD_LOGIC);
end component;
signal temp1,temp2,temp3:STD_LOGIC;
begin
lab1 : fulladder port map(a(0),b(0),'0',s(0),temp1);
lab2 : fulladder port map(a(1),b(1),temp1,s(1),temp2);
lab3 : fulladder port map(a(2),b(2),temp2,s(2),temp3);
lab4 : fulladder port map(a(3),b(3),temp3,s(3),cout);
end Behavioral;
