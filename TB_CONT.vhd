library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity TB_CONT is
end TB_CONT;

architecture Behavioral of TB_CONT is
component TOP_CONTADOR_NEGADO
    Port ( CLK : in STD_LOGIC;
           Q1 : out STD_LOGIC;
           Q2 : out STD_LOGIC;
           Q3 : out STD_LOGIC;
           Q4 : out STD_LOGIC;
           Q5 : out STD_LOGIC;
           Q6 : out STD_LOGIC);
           end component;
 signal CLK,Q1,Q2,Q3,Q4,Q5,Q6: std_logic;
 constant clock_period: time := 1 ns;     
begin
prb: TOP_CONTADOR_NEGADO port map(
 CLK=>CLK,
 Q1=>Q1,
 Q2=>Q2,
 Q3=>Q3,
 Q4=>Q4,
 Q5=>Q5,
 Q6=>Q6
);
clk_process: process
    begin
        loop
            CLK <= '1';
            wait for clock_period / 2;
            CLK <= '0';
            wait for clock_period / 2;
        end loop;
    end process clk_process;


end Behavioral;