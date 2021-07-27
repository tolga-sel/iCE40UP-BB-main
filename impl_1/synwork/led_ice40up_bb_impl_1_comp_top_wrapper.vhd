--
-- Synopsys
-- Vhdl wrapper for top level design, written on Wed Apr 28 16:35:32 2021
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity wrapper_for_Counter is
   port (
      clk : in std_logic;
      en : in std_logic;
      rst : in std_logic;
      led : out std_logic_vector(2 downto 0)
   );
end wrapper_for_Counter;

architecture behavioral of wrapper_for_Counter is

component Counter
 port (
   clk : in std_logic;
   en : in std_logic;
   rst : in std_logic;
   led : out std_logic_vector (2 downto 0)
 );
end component;

signal tmp_clk : std_logic;
signal tmp_en : std_logic;
signal tmp_rst : std_logic;
signal tmp_led : std_logic_vector (2 downto 0);

begin

tmp_clk <= clk;

tmp_en <= en;

tmp_rst <= rst;

led <= tmp_led;



u1:   Counter port map (
		clk => tmp_clk,
		en => tmp_en,
		rst => tmp_rst,
		led => tmp_led
       );
end behavioral;
