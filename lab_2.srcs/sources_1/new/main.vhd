----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/14/2024 04:59:14 PM
-- Design Name: 
-- Module Name: main - Behavioral
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

entity compare_2bit is
      port (a       : in std_logic_vector(3 downto 0);
            b       : in std_logic_vector(3 downto 0);
            b_greater : out std_logic;
            a_greater : out std_logic;
            b_a_equal  : out std_logic
      );
end compare_2bit;

architecture behavioral of compare_2bit is
begin

  -- MODIFY LOGIC FUNCTION FOR "B GREATER"
  b_greater <= '1' when (a < b) else '0';
  b_a_equal <= '1' when (b = a) else '0';
  a_greater <= '1' when (a > b) else '0';
end architecture behavioral;
