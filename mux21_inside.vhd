----------------------------------------------------------------------------------
-- Company:
-- Engineer:

--
-- Create Date: 09/06/2022 11:10:12 AM
-- Design Name:
-- Module Name: mux21_inside - Behavioral
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

entity mux21_inside is
Port ( a : in STD_LOGIC;
b : in STD_LOGIC;
s : in STD_LOGIC;
d : out STD_LOGIC);
end mux21_inside;

architecture Behavioral of mux21_inside is

begin
d<=(not(s) and a) or (s and b);

end Behavioral;
