-------------------------------------------------------------------------------
--
-- Title       : arr_ent
-- Design      : MultiplicationArray
-- Author      : khater
-- Company     : TFE
--
-------------------------------------------------------------------------------
--
-- File        : array.vhd
-- Generated   : Mon Apr 23 00:41:43 2018
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
--{entity {arr_ent} architecture {arr_arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity arr_ent is
	 port(
		 q : in STD_LOGIC;
		 ci : in STD_LOGIC;
		 m : in STD_LOGIC_VECTOR(7 downto 0);
		 ppi : in STD_LOGIC_VECTOR(7 downto 0);
		 co : out STD_LOGIC;
		 po : out STD_LOGIC_VECTOR(7 downto 0);
		 mo : out STD_LOGIC_VECTOR(7 downto 0)
	     );
end arr_ent;

--}} End of automatically maintained section

architecture arr_arch of arr_ent is	   
component Cell_ent is
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
end component;	   
signal q_tmp:std_logic_vector(8 downto 1);
signal c_tmp:std_logic_vector(7 downto 1);
begin

	 -- enter your statements here --
	 MB: Cell_ent port map(m(0), q, ppi(0), ci, po(0), q_tmp(1), c_tmp(1), mo(0));
	 MB1: Cell_ent port map(m(1), q_tmp(1), ppi(1), c_tmp(1), po(1), q_tmp(2), c_tmp(2), mo(1));
	 MB2: Cell_ent port map(m(2), q_tmp(2), ppi(2), c_tmp(2), po(2), q_tmp(3), c_tmp(3), mo(2));
	 MB3: Cell_ent port map(m(3), q_tmp(3), ppi(3), c_tmp(3), po(3), q_tmp(4), c_tmp(4), mo(3));
	 MB4: Cell_ent port map(m(4), q_tmp(4), ppi(4), c_tmp(4), po(4), q_tmp(5), c_tmp(5), mo(4));
	 MB5: Cell_ent port map(m(5), q_tmp(5), ppi(5), c_tmp(5), po(5), q_tmp(6), c_tmp(6), mo(5));
	 MB6: Cell_ent port map(m(6), q_tmp(6), ppi(6), c_tmp(6), po(6), q_tmp(7), c_tmp(7), mo(6));
	 MB7: Cell_ent port map(m(7), q_tmp(7), ppi(7), c_tmp(7), po(7), q_tmp(8), co, mo(7));
	 
	 
end arr_arch;
