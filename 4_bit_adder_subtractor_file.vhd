-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/13/2022 09:44:36 AM
-- Design Name: 
-- Module Name: addersubtractor - Behavioral
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

entity addersubtractor is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           s : out STD_LOGIC_VECTOR (3 downto 0);
           M : in STD_LOGIC;
           cout : out STD_LOGIC);
end addersubtractor;

architecture Behavioral of addersubtractor is
component fulladder is
    Port ( p : in STD_LOGIC;
           q : in STD_LOGIC;
           r : in STD_LOGIC;
           t : out STD_LOGIC;
           u : out STD_LOGIC);
end component;
signal temp1,temp2,temp3,xor1,xor2,xor3,xor4:STD_LOGIC;
begin
xor1<=b(0) xor M;
xor2<=b(1) xor M;
xor3<=b(2) xor M;
xor4<=b(3) xor M;
lab1 : fulladder port map(a(0),xor1,M,s(0),temp1);
lab2 : fulladder port map(a(1),xor2,temp1,s(1),temp2);
lab3 : fulladder port map(a(2),xor3,temp2,s(2),temp3);
lab4 : fulladder port map(a(3),xor4,temp3,s(3),cout);
end Behavioral;
