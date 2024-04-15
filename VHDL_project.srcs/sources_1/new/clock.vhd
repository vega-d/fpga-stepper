library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all; -- Package for arithmetic operations with std_logic_vector
    use ieee.math_real.all; -- To calculate the number of bits needed to represent an integer

entity clock_enable is
    generic (
        PERIOD : integer := 200000
    );
    port (clk  : in std_logic;
          rst  : in std_logic;
          pulse: out std_logic
    );
end entity clock_enable;

architecture behavioral of clock_enable is
    --! Get number for needed bits for PERIOD value
    constant bits_needed : integer := integer(ceil(log2(real(PERIOD + 1))));

    --! Local counter with needed number of bits
    signal sig_count : std_logic_vector(bits_needed - 1 downto 0);
begin
--! Generate clock enable signal. By default, enable signal
    --! is low and generated pulse is always one clock long.
    p_clk_enable : process (clk) is
    begin

        -- Synchronous proces
        if (rising_edge(clk)) then
            if (rst = '1') then

                sig_count <= (others => '0');
                pulse <= '0';

            elsif (sig_count = PERIOD-1) then
                sig_count <= (others => '0');
                pulse <= '1';

            else
                sig_count <= sig_count + 1;
                pulse <= '0';

            end if;
        end if;

    end process p_clk_enable;

end architecture behavioral;