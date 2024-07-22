library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity TB_Sumador is
end TB_Sumador;

architecture Behavioral of TB_Sumador is
component sumador5bits
 Port ( A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           A3 : in STD_LOGIC;
           A4 : in STD_LOGIC;
           A5 : in STD_LOGIC;
           A6 : in STD_LOGIC;
           A7 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           B4 : in STD_LOGIC;
           B5 : in STD_LOGIC;
           B6 : in STD_LOGIC;
           B7 : in STD_LOGIC;
           S1 : out STD_LOGIC;
           S2 : out STD_LOGIC;
           S3 : out STD_LOGIC;
           S4 : out STD_LOGIC;
           S5 : out STD_LOGIC;
           S6 : out STD_LOGIC;
           S7 : out STD_LOGIC;
           Ci : in STD_LOGIC;
           Si : out STD_LOGIC);
           end component;
signal s1,s2,s3,s4,s5,s6,s7,si: std_logic;
begin

prb: sumador5bits port map(
A1=>'1',
A2=>'0',
A3=>'1',
A4=>'0',
A5=>'0',
A6=>'0',
A7=>'0',
B1=>'1',
B2=>'1',
B3=>'0',
B4=>'1',
B5=>'1',
B6=>'1',
B7=>'1',
Ci=>'1',
S1=>s1,
S2=>s2,
S3=>s3,
S4=>s4,
S5=>s5,
S6=>s6,
S7=>s7,
SI=>si
);

end Behavioral;