----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2024 04:56:02 PM
-- Design Name: 
-- Module Name: counter - Behavioral
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    generic (
        N : integer := 4
    );
    port (clk  : in std_logic;
          rst  : in std_logic;
          en   : in std_logic;
          count: out std_logic_vector(N-1 downto 0)
    );
end counter;

architecture Behavioral of counter is
    signal int_sig : std_logic_vector(N-1 downto 0);
begin

    process (clk)
    begin
    if rising_edge(clk) then
        if rst='1' then
            int_sig <= (others => '0');
        elsif en='1' then
            int_sig <= int_sig + 1;
        end if;
        count <= int_sig;
    end if;
    end process;


end Behavioral;
