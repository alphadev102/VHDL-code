----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.08.2022 10:48:14
-- Design Name: 
-- Module Name: task_3_lab_2 - Behavioral
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

entity task_3_lab_2 is
    Port ( x : in STD_LOGIC_VECTOR (9 downto 0);
           y : out STD_LOGIC);
end task_3_lab_2;

architecture Behavioral of task_3_lab_2 is
component three_input_or_gate is
    Port ( u : in STD_LOGIC;
           v : in STD_LOGIC;
           w : in STD_LOGIC;
           k : out STD_LOGIC);
end component;
component two_input_or_gate is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : out STD_LOGIC);
end component;
signal m1,m2,m3,m4 : STD_LOGIC;
begin
-- 3 stage means longest path should have 3 gates and any gates can 
-- have any no. of inputs.
lab1 : three_input_or_gate port map (x(0),x(1),x(2),m1);
lab2 : three_input_or_gate port map (x(3),x(4),x(5),m2);
lab3 : three_input_or_gate port map (x(6),x(7),x(8),m3);
lab4 : three_input_or_gate port map (m1,m2,m3,m4);
y <= m4 or x(9);

end Behavioral;
