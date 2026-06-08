-- ============================================================
--  SCOMP Math Peripheral (fixed I/O addresses 0x090–0x095)
--  Native SCOMP I/O address bus is 11 bits: IO_ADDR[10:0]
--  Map:
--    0x090 CONTROL (W): opcode in bits[3:0]
--    0x091 OPERAND_A (W)
--    0x092 OPERAND_B (W)
--    0x093 RESULT_LO (R)
--    0x094 RESULT_HI (R)
--    0x095 STATUS   (R): bit0 READY, bit1 OVERFLOW, bit2 DIV_BY_ZERO
-- ============================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SCOMP_Math is
  generic (
    -- Relocatable base I/O address (11-bit space). Default = 0x090.
    BASE_ADDR : integer := 16#090#
  );
  port (
    clk      : in  std_logic;
    reset_n  : in  std_logic;

    io_addr  : in  std_logic_vector(10 downto 0);
    io_data  : inout std_logic_vector(15 downto 0);
    io_rd    : in  std_logic;  -- active HIGH read strobe
    io_wr    : in  std_logic   -- active HIGH write strobe
  );
end entity;

architecture rtl of SCOMP_Math is

  function A(n : integer) return std_logic_vector is
  begin
    return std_logic_vector(to_unsigned(n, 11));
  end;

  -- addresses (11-bit) derived from BASE_ADDR
  constant A_CTRL  : std_logic_vector(10 downto 0) := A(BASE_ADDR + 0);
  constant A_OPA   : std_logic_vector(10 downto 0) := A(BASE_ADDR + 1);
  constant A_OPB   : std_logic_vector(10 downto 0) := A(BASE_ADDR + 2);
  constant A_RESLO : std_logic_vector(10 downto 0) := A(BASE_ADDR + 3);
  constant A_RESHI : std_logic_vector(10 downto 0) := A(BASE_ADDR + 4);
  constant A_STAT  : std_logic_vector(10 downto 0) := A(BASE_ADDR + 5);

  -- Opcodes (bits[3:0] of CONTROL)
  constant OP_NOP : std_logic_vector(3 downto 0) := "0000";
  constant OP_ADD : std_logic_vector(3 downto 0) := "0001";
  constant OP_SUB : std_logic_vector(3 downto 0) := "0010";
  constant OP_MUL : std_logic_vector(3 downto 0) := "0011";
  constant OP_DIV : std_logic_vector(3 downto 0) := "0100";
  constant OP_MOD : std_logic_vector(3 downto 0) := "0101";
  constant OP_ABS : std_logic_vector(3 downto 0) := "0110";
  constant OP_NEG : std_logic_vector(3 downto 0) := "0111";
  constant OP_MIN : std_logic_vector(3 downto 0) := "1000";
  constant OP_MAX : std_logic_vector(3 downto 0) := "1001";

  -- Registers
  signal reg_A    : signed(15 downto 0) := (others => '0');
  signal reg_B    : signed(15 downto 0) := (others => '0');
  signal res_lo   : std_logic_vector(15 downto 0) := (others => '0');
  signal res_hi   : std_logic_vector(15 downto 0) := (others => '0');
  signal status   : std_logic_vector(15 downto 0) := (others => '0');

  -- Read mux & OE
  signal read_data : std_logic_vector(15 downto 0) := (others => '0');
  signal drive_bus : std_logic := '0';

  -- Decode
  signal sel_ctrl  : std_logic;
  signal sel_opa   : std_logic;
  signal sel_opb   : std_logic;
  signal sel_reslo : std_logic;
  signal sel_reshi : std_logic;
  signal sel_stat  : std_logic;

begin

  -- 11-bit address compares
  sel_ctrl  <= '1' when io_addr = A_CTRL  else '0';
  sel_opa   <= '1' when io_addr = A_OPA   else '0';
  sel_opb   <= '1' when io_addr = A_OPB   else '0';
  sel_reslo <= '1' when io_addr = A_RESLO else '0';
  sel_reshi <= '1' when io_addr = A_RESHI else '0';
  sel_stat  <= '1' when io_addr = A_STAT  else '0';

  --------------------------------------------------------------------
  -- Write path
  --------------------------------------------------------------------
  process(clk, reset_n)
    variable v_op    : std_logic_vector(3 downto 0);
    variable v_sum   : signed(15 downto 0);
    variable v_diff  : signed(15 downto 0);
    variable v_prod  : signed(31 downto 0);
    variable v_quot  : signed(15 downto 0);
    variable v_rem   : signed(15 downto 0);
    variable v_ovf   : std_logic;
    variable v_dbz   : std_logic;
  begin
    if reset_n = '0' then
      reg_A   <= (others => '0');
      reg_B   <= (others => '0');
      res_lo  <= (others => '0');
      res_hi  <= (others => '0');
      status  <= (others => '0');
      status(0) <= '1'; -- READY
    elsif rising_edge(clk) then
      -- Latch operands and control writes
      if io_wr = '1' then
        if sel_opa = '1' then
          reg_A <= signed(io_data);
        elsif sel_opb = '1' then
          reg_B <= signed(io_data);
        elsif sel_ctrl = '1' then
          -- Begin operation
          v_op  := io_data(3 downto 0);
          v_ovf := '0';
          v_dbz := '0';

          if v_op = OP_NOP then
            -- no change

          elsif v_op = OP_ADD then
            v_sum := reg_A + reg_B;
            res_lo <= std_logic_vector(v_sum);
            res_hi <= (others => '0');
            -- overflow if same-sign inputs but different-sign result
            if (reg_A(15) = reg_B(15)) and (v_sum(15) /= reg_A(15)) then
              v_ovf := '1';
            end if;

          elsif v_op = OP_SUB then
            v_diff := reg_A - reg_B;
            res_lo <= std_logic_vector(v_diff);
            res_hi <= (others => '0');
            if (reg_A(15) /= reg_B(15)) and (v_diff(15) /= reg_A(15)) then
              v_ovf := '1';
            end if;

			 elsif v_op = OP_MUL then
			   v_prod := reg_A * reg_B;  -- 16x16 -> 32-bit product
			   res_lo <= std_logic_vector(v_prod(15 downto 0));
			   res_hi <= std_logic_vector(v_prod(31 downto 16));
				if v_prod(31 downto 16) /= signed'(15 downto 0 => v_prod(15)) then
				  v_ovf := '1';
			   end if;

          elsif (v_op = OP_DIV) or (v_op = OP_MOD) then
            if reg_B = 0 then
              v_dbz := '1';
              -- leave results unchanged
            else
              v_quot := reg_A / reg_B;
              v_rem  := reg_A rem reg_B;
              res_lo <= std_logic_vector(v_quot);
              res_hi <= std_logic_vector(v_rem);
            end if;

          elsif v_op = OP_ABS then
            if reg_A(15) = '1' then
              res_lo <= std_logic_vector(-reg_A);
            else
              res_lo <= std_logic_vector(reg_A);
            end if;
            res_hi <= (others => '0');

          elsif v_op = OP_NEG then
            res_lo <= std_logic_vector(-reg_A);
            res_hi <= (others => '0');

          -- signed MIN(A,B)
          elsif v_op = OP_MIN then
            if reg_A <= reg_B then
              res_lo <= std_logic_vector(reg_A);
            else
              res_lo <= std_logic_vector(reg_B);
            end if;
            res_hi <= (others => '0');

          -- signed MAX(A,B)
          elsif v_op = OP_MAX then
            if reg_A >= reg_B then
              res_lo <= std_logic_vector(reg_A);
            else
              res_lo <= std_logic_vector(reg_B);
            end if;
            res_hi <= (others => '0');

          else
            -- unknown opcode: ignore
            null;
          end if;

          status(1) <= v_ovf;  -- OVERFLOW
          status(2) <= v_dbz;  -- DIV_BY_ZERO
          status(0) <= '1';    -- READY
        end if;
      end if;
    end if;
  end process;

  --------------------------------------------------------------------
  -- Read path
  --------------------------------------------------------------------
  read_data <=
    (others => '0')           when sel_ctrl  = '1' else
    std_logic_vector(reg_A)   when sel_opa   = '1' else
    std_logic_vector(reg_B)   when sel_opb   = '1' else
    res_lo                    when sel_reslo = '1' else
    res_hi                    when sel_reshi = '1' else
    status                    when sel_stat  = '1' else
    (others => '0');

  drive_bus <= '1' when (io_rd = '1' and (sel_ctrl or sel_opa or sel_opb or sel_reslo or sel_reshi or sel_stat) = '1') else '0';

  io_data <= read_data when drive_bus = '1' else (others => 'Z');

end architecture;
