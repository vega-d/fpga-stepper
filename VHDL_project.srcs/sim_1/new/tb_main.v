-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 15.4.2024 09:12:52 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_top is
end tb_top;

architecture tb of tb_top is

    component top
        port (seg          : out std_logic_vector (6 downto 0);
              input        : in std_logic_vector (3 downto 0);
              LED          : out std_logic_vector (15 downto 0);
              clear        : in std_logic;
              save         : in std_logic;
              dir_override : in std_logic_vector(1 downto 0);
              selectseg    : out std_logic_vector (7 downto 0);
              motor_enable : out std_logic;
              m1_dir       : out std_logic;
              m1_step      : out std_logic;
              m2_dir       : out std_logic;
              m2_step      : out std_logic;
              add          : in std_logic;
              left         : in std_logic;
              right        : in std_logic;
              CLK100MHZ    : in std_logic);
    end component;

    signal seg          : std_logic_vector (6 downto 0);
    signal input        : std_logic_vector (3 downto 0);
    signal LED          : std_logic_vector (15 downto 0);
    signal clear        : std_logic;
    signal save         : std_logic;
    signal selectseg    : std_logic_vector (7 downto 0);
    signal motor_enable : std_logic;
    signal m1_dir       : std_logic;
    signal m1_step      : std_logic;
    signal m2_dir       : std_logic;
    signal m2_step      : std_logic;
    signal add          : std_logic;
    signal left         : std_logic;
    signal right        : std_logic;
    signal dir_override : std_logic_vector(1 downto 0);
    signal CLK100MHZ    : std_logic;


    constant TbPeriod : time := 10 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : top
    port map (seg          => seg,
              input        => input,
              LED          => LED,
              clear        => clear,
              save         => save,
              selectseg    => selectseg,
              motor_enable => motor_enable,
              dir_override => dir_override, 
              m1_dir       => m1_dir,
              m1_step      => m1_step,
              m2_dir       => m2_dir,
              m2_step      => m2_step,
              add          => add,
              left         => left,
              right        => right,
              CLK100MHZ    => CLK100MHZ);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that CLK100MHZ is really your main clock signal
    CLK100MHZ <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        input <= (others => '0');
        save <= '0';
        add <= '0';
        left <= '0';
        right <= '0';
        dir_override <= "00";
        -- Reset generation
        -- EDIT: Check that clear is really your reset signal
        clear <= '1';
        wait for 100 ns;
        clear <= '0';
        wait for 100 ns;

        -- input first number
        input <= "0010"; -- twenty steps
        wait for 100 * TbPeriod;
        
        -- save into memory & execute
        save <= '1';
        wait for 100 * TbPeriod;
        save <= '0';
        wait for 100 * TbPeriod;
        
        -- input second number
        for i in 0 to 3 loop
            left <= '1';
            wait for 100 * TbPeriod;
            left <= '0';
            wait for 100 * TbPeriod;
        end loop;
        input <= "0011"; -- three steps
        wait for 100 * TbPeriod;
        
        -- save into memory & execute
        save <= '1';
        wait for 100 * TbPeriod;
        save <= '0';
        wait for 100 * TbPeriod;
                
        

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_top of tb_top is
    for tb
    end for;
end cfg_tb_top;