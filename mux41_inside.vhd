----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 09/06/2022 11:10:12 AM
-- Design Name:
-- Module Name: mux41_inside - Behavioral
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

entity mux41_inside is
Port ( p : in STD_LOGIC;
q : in STD_LOGIC;
r : in STD_LOGIC;
t : in STD_LOGIC;
u : in STD_LOGIC;
v : in STD_LOGIC;
w : out STD_LOGIC);
end mux41_inside;

architecture Behavioral of mux41_inside is

begin
w <=(not(u) and not(v) and p) or (not(u) and v and q) or(u and not(v) and r) or (u and v and t);

end Behavioral;
