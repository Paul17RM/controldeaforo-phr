library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity BN_JK_CL is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           CL: in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC
           );
end BN_JK_CL;

architecture Behavioral of BN_JK_CL is

signal Q_internal, nQ_internal : std_logic := '0';
begin
    process(CLK,J,K,CL)
    begin
        if falling_edge(CLK) then
            if CL='0' then
                if J = '1' and K = '0' then
                    Q_internal <= '1';
                elsif J = '0' and K = '1' then
                    Q_internal <= '0';
                elsif J = '1' and K = '1' then
                    Q_internal <= not Q_internal;
                end if;
            else
              Q_internal<='0';     
            end if;
        end if;
    end process;

    Q <= Q_internal;

end Behavioral;

