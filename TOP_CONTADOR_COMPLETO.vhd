library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity TOP_CONTADOR_COMPLETO is
    Port ( SENSOR1_Entrada : in STD_LOGIC;
           SENSOR2_Entrada : in STD_LOGIC;
           CLK: in std_logic; 
           S1_Salida : out STD_LOGIC;
           S2_Salida : out STD_LOGIC;
           S3_Salida : out STD_LOGIC;
           S4_Salida : out STD_LOGIC;
           S5_Salida : out STD_LOGIC;
           S6_Salida : out STD_LOGIC;
           ENTRADA_bool: out std_logic;
           SALIDA_bool: out std_logic;
           SENSOR1_Salida : out std_logic;
           SENSOR2_Salida : out std_logic  );
end TOP_CONTADOR_COMPLETO;

architecture Behavioral of TOP_CONTADOR_COMPLETO is
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
component TOP_CONTADOR
    Port ( CLK : in STD_LOGIC;
           Q1 : out STD_LOGIC;
           Q2 : out STD_LOGIC;
           Q3 : out STD_LOGIC;
           Q4 : out STD_LOGIC;
           Q5 : out STD_LOGIC;
           Q6 : out STD_LOGIC
             );
           end component; 
component DivisorFrecuencia
    Port ( CLK : in STD_LOGIC;
           Q : out STD_LOGIC
           );
end component;
component B_JK_CL
    Port( J : in STD_LOGIC;
           K : in STD_LOGIC;
           CL: in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC
           );
  end component;
  component BN_JK_CL
    Port( J : in STD_LOGIC;
           K : in STD_LOGIC;
           CL: in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC
           );
  end component;
  signal a1,a2,a3,a4,a5,a6,b1,b2,b3,b4,b5,b6,z1,z2,z3,z4,z5,z6,z7,zi,c1,c2,c3,c4,c5,c6,c7,ci,n1,n2,n3,n4,n5,n6,Sensor1,Sensor2: std_logic;
  signal CLK_DF,SENSOR2_Salida_DF,control_signal: std_logic;
  signal CLK1,CLK2,entrada,salida: std_logic:= '0' ;                    
begin
Sensor1<=Sensor1_Entrada;
Sensor2<=Sensor2_Entrada;
cont1: TOP_CONTADOR port map(
 CLK=>entrada,
 Q1=>A1,
 Q2=>a2,
 Q3=>a3,
 Q4=>a4,
 Q5=>a5,
 Q6=>a6
);
cont2: TOP_CONTADOR port map(
 CLK=>salida,
 Q1=>b1,
 Q2=>b2,
 Q3=>b3,
 Q4=>b4,
 Q5=>b5,
 Q6=>b6
);
n1<= not b1;
n2<= not b2;
n3<= not b3;
n4<= not b4;
n5<= not b5;
n6<= not b6;
complemento2: sumador5bits port map(
A1=>'1',
A2=>'0',
A3=>'0',
A4=>'0',
A5=>'0',
A6=>'0',
A7=>'0',
B1=>n1,
B2=>n2,
B3=>n3,
B4=>n4,
B5=>n5,
B6=>n6,
B7=>'1',
Ci=>'0',
S1=>z1,
S2=>z2,
S3=>z3,
S4=>z4,
S5=>z5,
S6=>z6,
S7=>z7,
SI=>zi
);
sum: sumador5bits port map(
A1=>a1,
A2=>a2,
A3=>a3,
A4=>a4,
A5=>a5,
A6=>a6,
A7=>'0',
B1=> z1,
B2=>z2,
B3=>z3,
B4=>z4,
B5=>z5,
B6=>z6,
B7=>z7,
Ci=>'0',
S1=>c1,
S2=>c2,
S3=>c3,
S4=>c4,
S5=>c5,
S6=>c6,
S7=>c7,
SI=>ci
);
entradaBJK: B_JK_CL port map(
J=>Sensor1,
K=>Sensor2,
CL=>salida,
CLK=>CLK_DF,
Q=>entrada
);
salidaBJK: BN_JK_CL port map(
J=>Sensor2,
K=>Sensor1,
CL=>entrada,
CLK=>CLK_DF,
Q=>salida
);
DF1: DivisorFrecuencia Port Map(
                                CLK=>CLK,
                                Q=>CLK_DF
);
S1_Salida<=c1;
S2_Salida<=c2;
S3_Salida<=c3;
S4_Salida<=c4;
S5_Salida<=c5;
S6_Salida<=c6;
SENSOR1_Salida<=SENSOR1_Entrada;
SENSOR2_Salida<=SENSOR2_Entrada;
ENTRADA_bool<=entrada;
SALIDA_bool<=salida;   
end Behavioral;