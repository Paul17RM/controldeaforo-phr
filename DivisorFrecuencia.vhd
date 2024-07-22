library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DivisorFrecuencia is
    Port ( CLK : in STD_LOGIC;
           Q : out STD_LOGIC
           );
end DivisorFrecuencia;

architecture Behavioral of DivisorFrecuencia is
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
Signal Q1s,Q2s,Q3s,Q4s,Q5s,Q6s,Q7s,Q8s,Q9s,Q10s,Q11s,Q12s,Q13s,Q14s,Q15s,Q16s,Q17s,Q18s,Q19s,Q20s:std_logic;
Signal Q21s,Q22s,Q23s,Q24s,Q25s,Q26s,Q27s,Q28s,Q29s,clks: std_logic; 
begin
DUT0: B_JK port map (
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
DUT6: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q6s,
                  Q=>Q7s
                  );    
DUT7: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q7s,
                  Q=>Q8s
                  );    
DUT8: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q8s,
                  Q=>Q9s
                  );    
DUT9: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q9s,
                  Q=>Q10s
                  );    
DUT10: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q10s,
                  Q=>Q11s
                  );    
DUT11: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q11s,
                  Q=>Q12s
                  );    
DUT12: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q12s,
                  Q=>Q13s
                  );    
DUT13: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q13s,
                  Q=>Q14s
                  );    
DUT14: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q14s,
                  Q=>Q15s
                  );    
DUT15: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q15s,
                  Q=>Q16s
                  );    
DUT16: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q16s,
                  Q=>Q17s
                  );    
DUT17: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q17s,
                  Q=>Q18s
                  );    
DUT18: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q18s,
                  Q=>Q19s
                  );    
DUT19: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q19s,
                  Q=>Q20s
                  );    
DUT20: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q20s,
                  Q=>Q21s
                  );    
DUT21: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q21s,
                  Q=>Q22s
                  );    
DUT22: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q22s,
                  Q=>Q23s
                  );    
DUT23: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q23s,
                  Q=>Q24s
                  );    
DUT24: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q24s,
                  Q=>Q25s
                  );    
DUT25: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q25s,
                  Q=>Q26s
                  );    
DUT26: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q26s,
                  Q=>Q27s
                  );    
DUT27: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q27s,
                  Q=>Q28s
                  );    
DUT28: BN_JK port map (
                  J=>'1',
                  K=>'1', 
                  CLK => Q28s,
                  Q=>Q29s
                  );    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
    Q <= Q29s; 

end Behavioral;
