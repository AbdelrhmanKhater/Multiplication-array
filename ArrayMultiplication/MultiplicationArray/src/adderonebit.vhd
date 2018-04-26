-------------------------------------------------------------------------------
--
-- Title       : adderone_ent
-- Design      : adder
-- Author      : khater
-- Company     : TFE
--
-------------------------------------------------------------------------------
--
-- File        : adderonebit.vhd
-- Generated   : Tue Feb 20 08:58:36 2018
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
--{entity {adderone_ent} architecture {addertwo_ent}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity adderone_ent is
	 port(
		 x : in STD_LOGIC;
		 y : in STD_LOGIC;
		 c : in STD_LOGIC;	
		 co : out STD_LOGIC;
		 s : out STD_LOGIC 
	     );
end adderone_ent;

--}} End of automatically maintained section

architecture addertwo_ent of adderone_ent is
begin

	 -- enter your statements here --
	 s <= x xor y xor c; 
	 co <= (x and y) or (x and c) or (y and c);
end addertwo_ent;
