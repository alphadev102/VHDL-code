----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.08.2022 12:26:52
-- Design Name: 
-- Module Name: task_1_lab_2 - Behavioral
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

entity task_1_lab_2 is
    Port ( x : in STD_LOGIC_VECTOR (9 downto 0);
           y : out STD_LOGIC);
end task_1_lab_2;

architecture Behavioral of task_1_lab_2 is
signal m1,m2,m3,m4,m5,m6,m7,m8 : STD_LOGIC ;
begin
m1 <= x(0) or x(1);
m2 <= x(2) or x(3);
m3 <= m1 or m2;
m4 <= m3 or x(4);
m5 <= m4 or x(5);
m6 <= m5 or x(6);
m7 <= m6 or x(7);
m8 <= m7 or x(8);
y <= m8 or x(9);

end Behavioral;
