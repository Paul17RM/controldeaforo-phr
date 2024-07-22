library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TOP_CONTADOR is
    Port ( CLK : in STD_LOGIC;
           Q1 : out STD_LOGIC;
           Q2 : out STD_LOGIC;
           Q3 : out STD_LOGIC;
           Q4 : out STD_LOGIC;
           Q5 : out STD_LOGIC;
           Q6 : out STD_LOGIC
           );
end TOP_CONTADOR;

architecture Behavioral of TOP_CONTADOR is
component B_JK is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC
           );
 end component;          
component BN_JK is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC
           );           
end component;
Signal Q1s,Q2s,Q3s,Q4s,Q5s,Q6s,clks: std_logic; 
begin
DUT0: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => CLK,
                  Q=>Q1s
                  );
 
DUT1: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q1s,
                  Q=>Q2s
                  );
                  
DUT2: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q2s,
                  Q=>Q3s
                  );

DUT3: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q3s,
                  Q=>Q4s
                  );
DUT4: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q4s,
                  Q=>Q5s
                  );
DUT5: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q5s,
                  Q=>Q6s
                  );                                
    Q1 <= Q1s; 
    Q2 <= Q2s; 
    Q3 <= Q3s; 
    Q4 <= Q4s;
    Q5 <= Q5s; 
    Q6 <= Q6s;

end Behavioral;

