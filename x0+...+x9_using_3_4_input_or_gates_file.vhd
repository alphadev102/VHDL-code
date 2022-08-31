----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.08.2022 10:26:42
-- Design Name: 
-- Module Name: task_2_lab_2 - Behavioral
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

entity task_2_lab_2 is
    Port ( x : in STD_LOGIC_VECTOR (9 downto 0);
           y : out STD_LOGIC);
end task_2_lab_2;

architecture Behavioral of task_2_lab_2 is
component four_input_or_gate is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           w : out STD_LOGIC);
end component;
signal m1,m2: STD_LOGIC;
begin
lab1 : four_input_or_gate port map(x(0),x(1),x(2),x(3),m1);
lab2 : four_input_or_gate port map(x(4),x(5),x(6),x(7),m2);
lab3 : four_input_or_gate port map(m1,x(8),x(9),m2,y);

end Behavioral;
