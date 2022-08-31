----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.08.2022 10:53:24
-- Design Name: 
-- Module Name: three_input_or_gate - Behavioral
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

entity three_input_or_gate is
    Port ( u : in STD_LOGIC;
           v : in STD_LOGIC;
           w : in STD_LOGIC;
           k : out STD_LOGIC);
end three_input_or_gate;

architecture Behavioral of three_input_or_gate is

begin
k <= u or v or w;

end Behavioral;
