library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity sumador5bits is
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
           S7 : out std_logic; 
           Ci : in STD_LOGIC;
           Si : out STD_LOGIC);
end sumador5bits;

architecture Behavioral of sumador5bits is
component sumador1bits is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           S : out STD_LOGIC;
           Cout: out STD_LOGIC
           );
           end component;
signal C1,C2,C3,C4,C5,C6: std_logic;
begin
SUM1: sumador1bits port map(
A=>A1,
B=>B1,
Cin=>Ci,
S=>S1,
Cout=>C1
);

SUM2: sumador1bits port map(
A=>A2,
B=>B2,
Cin=>C1,
S=>S2,
Cout=>C2
);

SUM3: sumador1bits port map(
A=>A3,
B=>B3,
Cin=>C2,
S=>S3,
Cout=>C3
);

SUM4: sumador1bits port map(
A=>A4,
B=>B4,
Cin=>C3,
S=>S4,
Cout=>C4
);

SUM5: sumador1bits port map(
A=>A5,
B=>B5,
Cin=>C4,
S=>S5,
Cout=>C5
);

SUM6: sumador1bits port map(
A=>A6,
B=>B6,
Cin=>C5,
S=>S6,
Cout=>C6
);
SUM7: sumador1bits port map(
A=>A7,
B=>B7,
Cin=>C6,
S=>S7,
Cout=>Si
);

end Behavioral;
