
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bin2seg is 
      port (seg       : out std_logic_vector(6 downto 0);
            bin       : in std_logic_vector(3 downto 0);
            clear     : in std_logic
      );
end bin2seg;
architecture behavioral of bin2seg is
begin
p_7seg_decoder : process (bin, clear) is
begin
  if (clear = '1') then
    seg <= "1111111";  -- Clear the display
  else

    case bin is
      when x"0" =>     -- x"0" means "0000" in hexadec.
        --      ABCDEFG
        seg <= "0000001";
      when x"1" =>
        seg <= "1001111";
      when x"2" =>
        seg <= "0010010";
      when x"3" =>
        seg <= "0000110";
      when x"4" =>
      --        ABCDEFG
        seg <= "1001100";
      when x"5" =>
        seg <= "0100100";
      when x"6" =>
        seg <= "0100000";
      when x"7" =>
        seg <= "0001111";
      when x"8" =>
        seg <= "0000000";
      when x"9" =>
        seg <= "0000100";
      when x"A" =>
        seg <= "0001000";
      when x"b" =>
        seg <= "1100000";
      when x"C" =>
        seg <= "0110001";
      when x"d" =>
      --        ABCDEFG
        seg <= "1000010";
      when x"E" =>
        seg <= "0110000";
      when others =>
        seg <= "0111000";

    end case;

  end if;    
end process p_7seg_decoder;
end architecture behavioral;
