----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.09.2022 20:32:31
-- Design Name: 
-- Module Name: mux_4_1_structural - Behavioral
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

entity mux_4_1_structural is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           x : in STD_LOGIC;
           d : in STD_LOGIC;
           s1 : in STD_LOGIC;
           s0 : in STD_LOGIC;
           y : out STD_LOGIC);
end mux_4_1_structural;

architecture Behavioral of mux_4_1_structural is
component mux21 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           y : out STD_LOGIC);
end component;
signal temp1,temp2 : STD_LOGIC;
begin
lab1: mux21 port map(a=>a,b=>b,c=>S1,y=>temp1);
lab2: mux21 port map(a=>x,b=>d,c=>S1,y=>temp2);
lab3: mux21 port map(a=>temp1,b=>temp2,c=>S0,y=>y);
end Behavioral;
