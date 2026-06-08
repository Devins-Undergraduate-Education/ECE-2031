--
--
-- State machine to control trains
-- This template implements the same general path as the example
-- covered in lecture, but does not "release" trains from their
-- stopped state until the other train is completely clear of the
-- relevant sensor.  This is to account for long trains, but that
-- does not affect your assignment this semester. 
--

LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;


ENTITY TrainController IS
	PORT(
		reset, clock, sensor1, sensor2      : IN std_logic;
		sensor3, sensor4, sensor5, sensor6  : IN std_logic;
		switch1, switch2, switch3, switch4  : OUT std_logic;
		dirA, dirB                          : OUT std_logic_vector(1 DOWNTO 0)
	);
END TrainController;


ARCHITECTURE a OF TrainController IS
	-- Create a new TYPE called STATE_TYPE that is only allowed
	-- to have the values specified here. This
	-- 1) enables using helpful names for values instead of
	--    arbitrary values
	-- 2) ensures that signals of this type can only have valid values, and 
	-- 3) helps the synthesis software create efficient hardware for the design.
	TYPE STATE_TYPE IS (
		ST0,
		ST1,
		ST2,
		ST3,
		ST4,
		ST5,
		ST6,
		ST7,
		ST8
	);
	-- Create a signal of the new type.  Note that there is
	-- nothing special about the names "state" or "state_type", but it makes
	-- sense to use these names because those names fit their purpose.
	SIGNAL state                                : STATE_TYPE;
	-- This creates some new internal signals which will be concatenations
	-- of some of the sensor signals.  This will make CASE statements easier.
	-- Note that the names are *not* what makes them concatenations of the relevant
	-- signals; all of these signals need to be assigned values in the architecture.
	SIGNAL sensor13, sensor36, sensor25, sensor26, sensor12  : std_logic_vector(1 DOWNTO 0);

BEGIN
	-- A process statement is required for clocked logic, such as a state machine.
	PROCESS (clock, reset)
	BEGIN
		IF reset = '1' THEN -- This state machine uses an active-high reset.
			-- Reset to this state
			state <= ST0;
		ELSIF clock'EVENT AND clock = '1' THEN
			-- Case statement to determine next state.
			-- Case statements are a nice, clean way to make decisions
			-- based on different values of a signal.
			CASE state IS
				WHEN ST0 =>
					CASE Sensor13 IS
						WHEN "00" => state <= ST0;
						WHEN "01" => state <= ST5;
						WHEN "10" => state <= ST1;
						WHEN "11" => state <= ST6;
						WHEN OTHERS => state <= ST0;
					END CASE;

				WHEN ST1 =>
						CASE sensor36 IS
						WHEN "00" => state <= ST1;
						WHEN "01" => state <= ST2;
						WHEN "10" => state <= ST6;
						WHEN "11" => state <= ST3;
						WHEN OTHERS => state <= ST1;
					END CASE;

				WHEN ST2 =>
					IF Sensor3 = '1' THEN
						state <= ST3;
					ELSE
						state <= ST2;
					END IF;
				
				WHEN ST3 =>
						CASE sensor25 IS
						WHEN "00" => state <= ST3;
						WHEN "01" => state <= ST4;
						WHEN "10" => state <= ST7;
						WHEN "11" => state <= ST8;
						WHEN OTHERS => state <= ST3;
					END CASE;

				WHEN ST4 =>
						CASE sensor26 IS
						WHEN "00" => state <= ST4;
						WHEN "01" => state <= ST5;
						WHEN "10" => state <= ST8;
						WHEN "11" => state <= ST0;
						WHEN OTHERS => state <= ST4;
					END CASE;
					
				WHEN ST5 =>
						CASE sensor12 IS
						WHEN "00" => state <= ST5;
						WHEN "01" => state <= ST0;
						WHEN "10" => state <= ST6;
						WHEN "11" => state <= ST1;
						WHEN OTHERS => state <= ST5;
					END CASE;

				WHEN ST6 =>
						CASE sensor26 IS
						WHEN "00" => state <= ST6;
						WHEN "01" => state <= ST3;
						WHEN "10" => state <= ST1;
						WHEN "11" => state <= ST7;
						WHEN OTHERS => state <= ST6;
					END CASE;
					
				WHEN ST7 =>
					IF sensor5 = '1' THEN
						state <= ST8;
					ELSE
						state <= ST7;
					END IF;
					
				WHEN ST8 =>
					IF sensor6 = '1' THEN
						state <= ST0;
					ELSE
						state <= ST8;
					END IF;


			END CASE;
		END IF;
	END PROCESS;

	-- Notice that all of the following logic is NOT in a process block,
	-- and thus does not depend on any clock.  Everything here is pure combinational
	-- logic, and exists in parallel with everything else.
	
	-- Combine bits for the internal signals declared above.
	-- ("&" operator is concatenation)
	sensor13 <= sensor1 & sensor3;
	sensor36 <= sensor3 & sensor6;
	sensor25 <= sensor2 & sensor5;
	sensor26 <= sensor2 & sensor6;
	sensor12 <= sensor1 & sensor2;

	-- The following outputs depend on the state.  This is a Moore state machine,
	-- so they ONLY depend on the state.

	WITH state SELECT DirA <=
		"01" WHEN ST0,
		"10" WHEN ST1,
		"00" WHEN ST2,
		"10" WHEN ST3,
		"01" WHEN ST4,
		"01" WHEN ST5,
		"10" WHEN ST6,
		"10" WHEN ST7,
		"01" WHEN ST8;
	WITH state SELECT DirB <=
		"10" WHEN ST0,
		"10" WHEN ST1,
		"10" WHEN ST2,
		"10" WHEN ST3,
		"10" WHEN ST4,
		"10" WHEN ST5,
		"10" WHEN ST6,
		"00" WHEN ST7,
		"00" WHEN ST8;
	
	-- These outputs happen to be constant values for this solution;
	-- they do not depend on the state.
	Switch1 <= '1';
	Switch2 <= '1';
	Switch3 <= '1';
	Switch4 <= '1';

END a;


