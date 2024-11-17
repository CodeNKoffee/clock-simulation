library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity digital_clock_tb is
end entity digital_clock_tb;

architecture behavioral of digital_clock_tb is
  signal clk : std_logic := '0';
  signal reset : std_logic := '0';
  signal seconds : integer range 0 to 59;
  signal minutes : integer range 0 to 59;
  signal hours : integer range 0 to 23;

  constant clk_period : time := 10 ns; -- Adjust for your desired frequency
begin
  -- Instantiate the digital clock
  dut : entity work.digital_clock
    port map (
      clk => clk,
      reset => reset,
      seconds => seconds,
      minutes => minutes,
      hours => hours
    );

  -- Clock generation process
  clk_process : process
  begin
    clk <= not clk;
    wait for clk_period/2;
  end process;

  -- Stimulus process
  stim_proc : process
  begin
    -- Apply reset for a few clock cycles
    wait for 20 ns; 
    reset <= '1';

    -- Let the clock run
    wait;
  end process;
end architecture behavioral;