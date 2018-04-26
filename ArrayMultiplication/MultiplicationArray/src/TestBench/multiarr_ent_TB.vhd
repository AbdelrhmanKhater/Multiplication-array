library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity multiarr_ent_tb is
end multiarr_ent_tb;

architecture TB_ARCHITECTURE of multiarr_ent_tb is
	-- Component declaration of the tested unit
	component multiarr_ent
	port(
		m : in STD_LOGIC_VECTOR(7 downto 0);
		q : in STD_LOGIC_VECTOR(7 downto 0);
		ppi : in STD_LOGIC_VECTOR(7 downto 0);
		ci : in STD_LOGIC_VECTOR(7 downto 0);
		po : out STD_LOGIC_VECTOR(15 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal m : STD_LOGIC_VECTOR(7 downto 0);
	signal q : STD_LOGIC_VECTOR(7 downto 0);
	signal ppi : STD_LOGIC_VECTOR(7 downto 0);
	signal ci : STD_LOGIC_VECTOR(7 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal po : STD_LOGIC_VECTOR(15 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : multiarr_ent
		port map (
			m => m,
			q => q,
			ppi => ppi,
			ci => ci,
			po => po
		);

	-- Add your stimulus here ...
	process
	begin 			
		m <= "00001000";
		q <= "00001000";
		ppi <= "00000000";
		ci <= "00000000";  
		wait for 100 ns;
		end process;
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_multiarr_ent of multiarr_ent_tb is
	for TB_ARCHITECTURE
		for UUT : multiarr_ent
			use entity work.multiarr_ent(multiarr_arch);
		end for;
	end for;
end TESTBENCH_FOR_multiarr_ent;

