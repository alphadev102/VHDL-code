----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 09/06/2022 11:01:11 AM
-- Design Name:
-- Module Name: mux81_structural - Behavioral
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

entity mux81_structural is
Port ( I0 : in STD_LOGIC;
I1 : in STD_LOGIC;
I2 : in STD_LOGIC;
I3 : in STD_LOGIC;
I4 : in STD_LOGIC;
I5 : in STD_LOGIC;
I6 : in STD_LOGIC;
I7 : in STD_LOGIC;
S0 : in STD_LOGIC;
S1 : in STD_LOGIC;
S2 : in STD_LOGIC;
y : out STD_LOGIC);

end mux81_structural;

architecture Behavioral of mux81_structural is
component mux21_inside is
Port ( a : in STD_LOGIC;
b : in STD_LOGIC;
s : in STD_LOGIC;
d : out STD_LOGIC);
end component;
component mux41_inside is
Port ( p : in STD_LOGIC;
q : in STD_LOGIC;
r : in STD_LOGIC;
t : in STD_LOGIC;
u : in STD_LOGIC;
v : in STD_LOGIC;
w : out STD_LOGIC);
end component;
signal temp1,temp2:STD_LOGIC;
begin
lab1 : mux41_inside port map(I0,I1,I2,I3,S1,S0,temp1);
lab2 : mux41_inside port map(I4,I5,I6,I7,S1,S0,temp2);
lab3 : mux21_inside port map(temp1,temp2,S2,y);

end Behavioral;
