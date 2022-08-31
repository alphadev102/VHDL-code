----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.08.2022 11:28:47
-- Design Name: 
-- Module Name: task_4_lab_2 - Behavioral
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

entity task_4_lab_2 is
    Port ( x : in STD_LOGIC_VECTOR (9 downto 0);
           y : out STD_LOGIC);
end task_4_lab_2;

architecture Behavioral of task_4_lab_2 is
component four_input_or is
    Port ( p : in STD_LOGIC;
           q : in STD_LOGIC;
           r : in STD_LOGIC;
           s : in STD_LOGIC;
           t : out STD_LOGIC);
end component;
component three_input_or is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : out STD_LOGIC);
end component;
component two_input_or is
    Port ( u : in STD_LOGIC;
           v : in STD_LOGIC;
           w : out STD_LOGIC);
end component;
signal m1,m2,m3 : STD_LOGIC;
begin
lab1 : four_input_or port map (x(0),x(1),x(2),x(3),m1);
lab2 : four_input_or port map (x(4),m1,x(5),x(6),m2);
lab3 : three_input_or port map (x(7),m2,x(8),m3);
lab4 : two_input_or port map (m3,x(9),y);

end Behavioral;
