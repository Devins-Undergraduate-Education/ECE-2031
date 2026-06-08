LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.All;

-- Do not modify this entity statement.
ENTITY Dryer IS  
	PORT(
		RESETN,
		CLOCK,
		TOOHOT,
		DAMP   : IN  STD_LOGIC;
		HEAT,
		VENT   : OUT STD_LOGIC
	);
END Dryer;


ARCHITECTURE internals of Dryer IS

	TYPE STATE_TYPE IS (idle, cool, dryHeat, dryVent); -- define a type to represent the state
	SIGNAL STATE : STATE_TYPE;   -- create a signal to store the state
	-- You may declare additional signals here if desired.

	BEGIN
	
	-- Process block for the state machine
	PROCESS(CLOCK, RESETN) BEGIN
		IF RESETN = '0' THEN
			STATE <= idle ;
		ELSIF RISING_EDGE(CLOCK) THEN
			CASE STATE IS
			
			WHEN idle =>
				IF(TOOHOT = '1') THEN
					state <= cool;
				ELSIF(TOOHOT = '0' AND DAMP = '0') THEN
					state <= idle;
				ELSIF(TOOHOT = '0' AND DAMP = '1') THEN
					state <= dryHeat;
				ELSE
					state <= idle;
				END IF;
				
			WHEN cool =>
				IF(TOOHOT = '0' AND DAMP = '0') THEN 
					state <= idle;
				ELSIF(TOOHOT = '0' AND DAMP = '1') THEN
					state <= dryHeat;
				ELSIF(TOOHOT = '1') THEN
					state <= cool;
				ELSE
					state <= cool;
				END IF;
			
			WHEN dryHeat =>
				IF(TOOHOT = '0' AND DAMP = '0') THEN 
					state <= cool;
				ELSIF(TOOHOT = '0' AND DAMP = '1') THEN
					state <= dryVent;
				ELSIF(TOOHOT = '1') THEN
					state <= cool;
				ELSE
					state <= dryHeat;
				END IF;
			
			WHEN dryVent =>
				IF(TOOHOT = '0' AND DAMP = '0') THEN 
					state <= cool;
				ELSIF(TOOHOT = '0' AND DAMP = '1') THEN
					state <= dryHeat;
				ELSIF(TOOHOT = '1') THEN
					state <= cool;
				ELSE
					state <= dryVent;
				END IF;

			WHEN others =>
				state <= idle;
			
			END CASE;
		END IF;
	END PROCESS;

	-- Combinational assignments for the output
	HEAT <= '1' WHEN state = dryHeat OR state = dryVent ELSE '0';
	VENT <= '1' WHEN state = dryVent OR state = cool ELSE '0';


END internals;