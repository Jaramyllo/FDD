LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY EDeco IS PORT(
	E: 		 IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
	DISPLAY: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);

END EDeco;

ARCHITECTURE ADeco OF EDeco IS
BEGIN

	PROCESS( E )
	BEGIN
		IF( E = "0000")THEN
			DISPLAY<="0000001";		-- 0
		   ELSIF( E = "0001") THEN
		   	DISPLAY<="1001111";		-- 1
		   ELSIF( E = "0010") THEN
		   	DISPLAY<="0010010";		-- 2
		   ELSIF( E = "0011") THEN
		   	DISPLAY<="0000110";		-- 3
		   ELSIF( E = "0100") THEN
		   	DISPLAY<="1001100";		-- 4
		   ELSIF( E = "0101") THEN
		   	DISPLAY<="0100100";		--	5
		   ELSIF( E = "0110") THEN
		   	DISPLAY<="0100000";		--	6
		   ELSIF( E = "0111") THEN
		   	DISPLAY<="0001110";		--	7
		   ELSIF( E = "1000") THEN
		   	DISPLAY<="0000000";		--	8
		   ELSIF( E = "1001") THEN
		   	DISPLAY<="0000100";		--	9
		   ELSE 
		   	DISPLAY<="-------";
		   END IF;
	END PROCESS;

END ADeco;