LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Fireworks IS
  PORT(
    RESETN,
    CLOCK,
    B1,
    B2   : IN  STD_LOGIC;
    GO,
    FAIL : OUT STD_LOGIC
  );
END Fireworks;

ARCHITECTURE internals OF Fireworks IS

  TYPE STATE_TYPE IS (idle, oneOnce, oneTwice, launch);
  SIGNAL state : STATE_TYPE;

BEGIN

  PROCESS (CLOCK, RESETN)
  BEGIN
    IF RESETN = '0' THEN
      state <= idle;

    ELSIF rising_edge(CLOCK) THEN
      CASE state IS

        WHEN idle =>
          IF ((B1='0' AND B2='1') OR (B1='1' AND B2='0')) THEN
            state <= oneOnce;
          ELSIF (B1='1' AND B2='1') THEN
            state <= launch;
          ELSE
            state <= idle;
          END IF;

        WHEN oneOnce =>
          IF (B1='0' AND B2='0') THEN
            state <= idle;
          ELSIF ((B1='0' AND B2='1') OR (B1='1' AND B2='0')) THEN
            state <= oneTwice;
          ELSIF (B1='1' AND B2='1') THEN
            state <= launch;
          ELSE
            state <= oneOnce;
          END IF;

        WHEN oneTwice =>
          state <= oneTwice;  -- self-loop

        WHEN launch =>
          state <= launch;    -- self-loop

        WHEN OTHERS =>
          state <= idle;

      END CASE;
    END IF;
  END PROCESS;

  -- Moore outputs based on current state
  GO   <= '1' WHEN state = launch   ELSE '0';
  FAIL <= '1' WHEN state = oneTwice ELSE '0';

END internals;
