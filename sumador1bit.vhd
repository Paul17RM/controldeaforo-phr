library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sumador1bits is
Port (A,B,Cin:in std_logic; S, Cout:out std_logic);
end sumador1bits;
architecture Behavioral of sumador1bits is
begin
S <= ((A XOR B) XOR Cin);
Cout <= (A AND B) OR (Cin AND (A XOR B));
end Behavioral;

