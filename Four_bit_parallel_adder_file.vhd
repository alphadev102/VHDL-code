----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.09.2022 22:31:49
-- Design Name: 
-- Module Name: Foutbit_adder - Behavioral
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

entity Foutbit_adder is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           s : out STD_LOGIC_VECTOR (3 downto 0);
           carry : out STD_LOGIC);
end Foutbit_adder;

architecture Behavioral of Foutbit_adder is
component fulladder is
    Port ( p : in STD_LOGIC;
           q : in STD_LOGIC;
           r : in STD_LOGIC;
           t : out STD_LOGIC;
           u : out STD_LOGIC);
end component;
signal c:STD_LOGIC_VECTOR(2 downto 0);
begin
fa1 :fulladder port map(a(0),b(0),'0',s(0),c(0));
fa2 :fulladder port map(a(1),b(1),c(0),s(1),c(1));
fa3 :fulladder port map(a(2),b(2),c(1),s(2),c(2));
fa4 :fulladder port map(a(3),b(3),c(2),s(3),carry);
end Behavioral;
