----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/03/2024 04:49:42 PM
-- Design Name: 
-- Module Name: stepper - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

 


entity stepper is
    port(
    amount    : in std_logic_vector(7 downto 0);
    amount_left:out std_logic_vector(7 downto 0);
    direction : in std_logic;
    clock     : in std_logic;
    clear     : in std_logic;
    enable    : in std_logic;
    busy      : out std_logic;
    dir       : out std_logic;
    step      : out std_logic
    );
end stepper;

architecture Behavioral of stepper is
signal reg_counter : std_logic_vector(7 downto 0);
signal internal_clear : std_logic;


component counter is
    generic (
        N : integer := 8
    );
    port (clk  : in std_logic;
          rst  : in std_logic;
          en   : in std_logic;
          count: out std_logic_vector(N-1 downto 0)
    );
end component;

begin
    countdown : counter generic map (
    N => 8
    )
    port map (
        clk => clock,
        rst => internal_clear,
        en  => enable,
        count => reg_counter
    );

looper : process (reg_counter, clear) is
begin
if (reg_counter = amount or enable = '0' or clear = '1') then
    if (reg_counter = amount or clear = '1') then
        internal_clear <= '1';
    else 
        internal_clear <= '0';
    end if;
    busy <= '0';
    step <= '0';
else
    busy <= '1';
    dir <= direction;
    step <= clock;
end if;
amount_left <= reg_counter;
end process looper;

end Behavioral;
