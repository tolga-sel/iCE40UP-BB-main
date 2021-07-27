-- Tolga Sel
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity Counter is
    port  (  clk  :  in  STD_LOGIC;
	         en   :  in  STD_LOGIC;
			 rst  :  in  STD_LOGIC;
			 led  :  out STD_LOGIC_VECTOR(2 downto 0)
			 );
end Counter;


architecture Behavioral of Counter is
    signal scounter  :  STD_LOGIC_VECTOR(31 downto 0);
	
	
	
begin
    process(clk, rst)
	begin
	    if (rst = '0') then
		    scounter <= (others => '0');
	    
		elsif (clk'event and clk ='1') then
		    if (en = '1') then
			    scounter <= scounter + 1;
			end if;
		end if;
	end process;
	
	led <= not scounter(25 downto 23);

end Behavioral;
