-------------------------------------------------------------------------------
--
-- Title       : MultiArr_ent
-- Design      : MultiplicationArray
-- Author      : khater
-- Company     : TFE
--
-------------------------------------------------------------------------------
--
-- File        : MultiplicationArr.vhd
-- Generated   : Mon Apr 23 07:28:43 2018
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
--{entity {MultiArr_ent} architecture {MultiArr_arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MultiArr_ent is
	 port(
		 m : in STD_LOGIC_VECTOR(7 downto 0);
		 q : in STD_LOGIC_VECTOR(7 downto 0);
		 ppi : in STD_LOGIC_VECTOR(7 downto 0);
		 ci : in STD_LOGIC_VECTOR(7 downto 0);
		 po : out STD_LOGIC_VECTOR(15 downto 0)
	     );
end MultiArr_ent;

--}} End of automatically maintained section

architecture MultiArr_arch of MultiArr_ent is	  
component arr_ent is
	 port(
		 q : in STD_LOGIC;
		 ci : in STD_LOGIC;
		 m : in STD_LOGIC_VECTOR(7 downto 0);
		 ppi : in STD_LOGIC_VECTOR(7 downto 0);
		 co : out STD_LOGIC;
		 po : out STD_LOGIC_VECTOR(7 downto 0);
		 mo : out STD_LOGIC_VECTOR(7 downto 0)
	     );
end component;	 
signal m_tmp:std_logic_vector(63 downto 0);
signal c_tmp:std_logic_vector(8 downto 0);
signal p_tmp:std_logic_vector(71 downto 0);
begin

	 -- enter your statements here --
   U1:arr_ent port map(q(0), ci(0), m, ppi, p_tmp(8), p_tmp(7 downto 0), m_tmp(7 downto 0)); 
   U2:arr_ent port map(q(1), ci(1), m_tmp(7 downto 0), p_tmp(8 downto 1), p_tmp(17), p_tmp(16 downto 9), m_tmp(15 downto 8));
   U3:arr_ent port map(q(2), ci(2), m_tmp(15 downto 8), p_tmp(17 downto 10), p_tmp(26), p_tmp(25 downto 18), m_tmp(23 downto 16));
   U4:arr_ent port map(q(3), ci(3), m_tmp(23 downto 16), p_tmp(26 downto 19), p_tmp(35), p_tmp(34 downto 27), m_tmp(31 downto 24));
   U5:arr_ent port map(q(4), ci(4), m_tmp(31 downto 24), p_tmp(35 downto 28), p_tmp(44), p_tmp(43 downto 36), m_tmp(39 downto 32));
   U6:arr_ent port map(q(5), ci(5), m_tmp(39 downto 32), p_tmp(44 downto 37), p_tmp(53), p_tmp(52 downto 45), m_tmp(47 downto 40));
   U7:arr_ent port map(q(6), ci(6), m_tmp(47 downto 40), p_tmp(53 downto 46), p_tmp(62), p_tmp(61 downto 54), m_tmp(55 downto 48));
   U8:arr_ent port map(q(7), ci(7), m_tmp(55 downto 48), p_tmp(62 downto 55), p_tmp(71), p_tmp(70 downto 63), m_tmp(63 downto 56));
   po(0) <= p_tmp(0);
   po(1) <= p_tmp(9);
   po(2) <= p_tmp(18);
   po(3) <= p_tmp(27);
   po(4) <= p_tmp(36);
   po(5) <= p_tmp(45);
   po(6) <= p_tmp(54);
   po(15 downto 7) <= p_tmp(71 downto 63);

end MultiArr_arch;
