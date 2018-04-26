-------------------------------------------------------------------------------
--
-- Title       : Cell_ent
-- Design      : MultiplicationArray
-- Author      : khater
-- Company     : TFE
--
-------------------------------------------------------------------------------
--
-- File        : Cell.vhd
-- Generated   : Sun Apr 22 23:28:52 2018
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {Cell_ent} architecture {Cell_arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Cell_ent is
	 port(
		 m : in STD_LOGIC;
		 q : in STD_LOGIC;
		 ppi : in STD_LOGIC;
		 ci : in STD_LOGIC;
		 po : out STD_LOGIC;
		 qo : out STD_LOGIC;
		 co : out STD_LOGIC;
		 mo : out STD_LOGIC
	     );
end Cell_ent;

--}} End of automatically maintained section

architecture Cell_arch of Cell_ent is	
signal tmp:std_logic ;
component adderone_ent is
	 port(
		 x : in STD_LOGIC;
		 y : in STD_LOGIC;
		 c : in STD_LOGIC;	
		 co : out STD_LOGIC;
		 s : out STD_LOGIC 
	     );
end component;

begin

	qo <= q;   	 
	mo <= m;
	tmp <= m and q;
	MA:adderone_ent port map(tmp, ppi, ci, co, po);

end Cell_arch;
