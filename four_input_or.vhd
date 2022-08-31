----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.08.2022 11:31:49
-- Design Name: 
-- Module Name: four_input_or - Behavioral
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

entity four_input_or is
    Port ( p : in STD_LOGIC;
           q : in STD_LOGIC;
           r : in STD_LOGIC;
           s : in STD_LOGIC;
           t : out STD_LOGIC);
end four_input_or;

architecture Behavioral of four_input_or is

begin
t <= p or q or r or s;

end Behavioral;
