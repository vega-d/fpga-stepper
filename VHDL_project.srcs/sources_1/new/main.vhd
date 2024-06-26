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


library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all; -- Package for arithmetic operations with std_logic_vector
    use ieee.math_real.all; -- To calculate the number of bits needed to represent an integer
    use IEEE.numeric_std.all;

entity top is
      port (seg       : out std_logic_vector(6 downto 0);
            sw        : in std_logic_vector(16 downto 0);
            LED       : out std_logic_vector(15 downto 0);
            clear     : in std_logic;
            save      : in std_logic;
            selectseg : out std_logic_vector(7 downto 0);
            motor_enable : out std_logic;
            m1_dir    : out std_logic;
            m1_step   : out std_logic;
            m2_dir    : out std_logic;
            m2_step   : out std_logic;
            add       : in std_logic;
            left       : in std_logic;
            right       : in std_logic;
            CLK100MHZ : in std_logic
      );
end top;

architecture behavioral of top is
signal register1 : std_logic_vector(3 downto 0); -- short term
signal register_enumirate : std_logic_vector(2 downto 0); -- selectseg
signal register2 : std_logic_vector(31 downto 0); -- long term
signal register3 : std_logic_vector(7 downto 0); -- long term
signal register4 : std_logic_vector(7 downto 0); -- long term
signal switchnum : std_logic_vector(2 downto 0);
signal input    : std_logic_vector(3 downto 0);
signal CLK100HZ    : std_logic;
signal CLK200HZ    : std_logic;
signal blink    : std_logic_vector(15 downto 0);
signal reg1_motor1    : std_logic_vector(15 downto 0);
signal reg2_motor1    : std_logic_vector(15 downto 0);
signal reg1_motor2    : std_logic_vector(15 downto 0);
signal reg2_motor2    : std_logic_vector(15 downto 0);
signal reg_currentposition_motor1: std_logic_vector(7 downto 0);
signal reg_currentposition_motor2: std_logic_vector(7 downto 0);
signal reg_targetposition_motor1: std_logic_vector(7 downto 0);
signal reg_targetposition_motor2: std_logic_vector(7 downto 0);

--signal input    : std_logic_vector(3 downto 0);
--constant COUNTER_WIDTH : integer := 16; --! Simulating number of bits
component bin2seg is
    port (
      clear : in    std_logic;
      bin   : in    std_logic_vector(3 downto 0);
      seg   : out   std_logic_vector(6 downto 0)
    );
end component;
component clock_enable is
    generic (
        PERIOD : integer
    );
    port (
          clk  : in std_logic;
          rst  : in std_logic;
          pulse: out std_logic
    );
 end component;
 
component counter is
    generic (
        N : integer := 4
    );
    port (clk  : in std_logic;
          rst  : in std_logic;
          en   : in std_logic;
          count: out std_logic_vector(N-1 downto 0)
    );
end component;

component stepper is
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
end component;


begin
--- internal => external
display : bin2seg
    port map (
      clear  => clear,
      bin    => register1,
      seg    => seg
    );
 
mid_clock : clock_enable
    generic map (
        PERIOD => 200000
    )
    port map (
        clk => CLK100MHZ,
        rst => clear,
        pulse => CLK200HZ
    );

counter_selectseg : counter generic map (
    N => 3
    )
    port map (
        clk => CLK200HZ,
        rst => clear,
        en  => '1',
        count => register_enumirate
    );

counter_blink : counter generic map (
    N => 16
    )
    port map (
        clk => CLK200HZ,
        rst => clear,
        en  => '1',
        count => blink
    );


stepper1 : stepper
    port map(
    amount    => reg1_motor1(7 downto 0),
    amount_left=> register3,
    direction => reg1_motor1(9), 
    enable    => reg1_motor1(10),
    clock     => blink (4),
    clear     => clear,
    busy      => reg2_motor1(0),
    dir       => m1_dir,
    step      => m1_step
    );

stepper2 : stepper
    port map(
    amount    => reg1_motor2(7 downto 0),
    amount_left=> register4,
    direction => reg1_motor2(9), 
    enable    => reg1_motor2(10),
    clock     => blink (4),
    clear     => clear,
    busy      => reg2_motor2(0),
    dir       => m2_dir,
    step      => m2_step
    );
    

mover : process (save, reg1_motor1, reg2_motor1) is
begin
    motor_enable <= not(not (reg2_motor1(0) or reg2_motor1(0)) nand input(0));
    if (reg2_motor1(0) = '0') then
        reg1_motor1(10) <= '0';
        reg_currentposition_motor1 <= reg1_motor1(7 downto 0);
    end if;
    if (save = '1' and reg1_motor1(10) = '0') then
        reg1_motor1(10) <= '1';
        if (reg_targetposition_motor1 > reg_currentposition_motor1) then
            reg1_motor2(9) <= '1';
        else
            reg1_motor2(9) <= '0';
        end if;
        reg1_motor1(7 downto 0) <= std_logic_vector(to_unsigned(to_integer(unsigned(reg_targetposition_motor1))-to_integer(unsigned(reg_currentposition_motor1)), 8));
    else 
        reg1_motor1(7 downto 0) <= reg1_motor1(7 downto 0);
    end if;
    
    if (reg2_motor2(0) = '0') then -- we go here if the stepper reports NOT BUSY --
        reg1_motor2(10) <= '0';
        reg_currentposition_motor2 <= reg1_motor2(7 downto 0);
    end if;
    if (save = '1' and reg1_motor2(10) = '0') then -- we go here if the stepper reports NOT BUSY and MOVE COMMAND IS ISSUED--
        reg1_motor2(10) <= '1';
        if reg_targetposition_motor2 > reg_currentposition_motor2 then
            reg1_motor2(9) <= '1';
        else
            reg1_motor2(9) <= '0';
        end if; 
        reg1_motor2(7 downto 0) <= std_logic_vector(to_unsigned(to_integer(unsigned(reg_targetposition_motor2))-to_integer(unsigned(reg_currentposition_motor2)), 8));
    else 
        reg1_motor2(7 downto 0) <= reg1_motor2(7 downto 0);
    end if;
end process mover;

leds : process (blink) is
begin
    LED(LED'LEFT downto (LED'LEFT-register3'LENGTH+1)) <= register3;
    LED(2 downto 0) <= switchnum;
    LED(3) <= blink(8);
end process leds;

selecter : process (sw) is
begin
    case sw(9 downto 0) is
        when "0000000000" =>
            input <= x"0";
        when "0000000001" =>
            input <= x"0";
        when "0000000010" =>
            input <= x"1";
        when "0000000100" =>
            input <= x"2";
        when "0000001000" =>
            input <= x"3";
        when "0000010000" =>
            input <= x"4";
        when "0000100000" =>
            input <= x"5";
        when "0001000000" =>
            input <= x"6";
        when "0010000000" =>
            input <= x"7";
        when "0100000000" =>
            input <= x"8";
        when "1000000000" =>
            input <= x"9";
        when others =>
            input <= input;
    end case;
    case sw(15 downto 10) is
        when "000000" =>
            switchnum <= "000";     
        when "000001" =>
            switchnum <= "000";     
        when "000010" =>
            switchnum <= "001";     
        when "000100" =>
            switchnum <= "010";     
        when "001000" =>
            switchnum <= "100";     
        when "010000" =>
            switchnum <= "101";     
        when "100000" =>
            switchnum <= "110";     
        when others => 
            switchnum <= switchnum;
    end case;
end process selecter;

number_saver : process (save, clear) is 
begin
--    input <= input_sw;
      if (clear = '1') then
        register2 <= "00000000000000000000000000000000";
      elsif (save = '1') then
        case switchnum is
          when "000" =>
--            selectseg(0) <= '0'; 
            register2(0) <= input (0);
            register2(1) <= input (1);
            register2(2) <= input (2);
            register2(3) <= input (3);
          when "001" =>
--            selectseg(1) <= '0'; 
            register2(4) <= input (0);
            register2(5) <= input (1);
            register2(6) <= input (2);
            register2(7) <= input (3);
          when "010" =>
--            selectseg(2) <= '0';
            register2(8) <= input (0);
            register2(9) <= input (1);
            register2(10) <= input (2);
            register2(11) <= input (3);
          when "011" =>
--            selectseg(3) <= '0';
            register2(12) <= input (0);
            register2(13) <= input (1);
            register2(14) <= input (2);
            register2(15) <= input (3);
          when "100" =>
--            selectseg(4) <= '0';
            register2(16) <= input (0);
            register2(17) <= input (1);
            register2(18) <= input (2);
            register2(19) <= input (3);
          when "101" =>
--            selectseg(5) <= '0';
            register2(20) <= input (0);
            register2(21) <= input (1);
            register2(22) <= input (2);
            register2(23) <= input (3);
          when "110" =>
--            selectseg(6) <= '0';
            register2(24) <= input (0);
            register2(25) <= input (1);
            register2(26) <= input (2);
            register2(27) <= input (3);
          when "111" =>
--            selectseg(7) <= '0';
            register2(28) <= input (0);
            register2(29) <= input (1);
            register2(30) <= input (2);
            register2(31) <= input (3);
          when others =>
            null;
        end case;
        reg_targetposition_motor1 <= std_logic_vector(to_unsigned(to_integer(unsigned(register2(11 downto 8))) * 100 + to_integer(unsigned(register2(7 downto 4))) * 10 + to_integer(unsigned(register2(3 downto 0))), 8));
        reg_targetposition_motor2 <= std_logic_vector(to_unsigned(to_integer(unsigned(register2(11+16 downto 8+16))) * 100 + to_integer(unsigned(register2(7+16 downto 4+16))) * 10 + to_integer(unsigned(register2(3+16 downto 0+16))), 8));
        --        by the nine this line here ^^^ is fucked.
      else 
        register2 <= register2;  
      end if;    
end process number_saver;


r2_to_r1_demux_clocked : process (CLK100MHZ, blink) is
-- declarative part (can be empty)
begin      
--    LED(LED'LEFT downto (LED'LEFT-blink'LENGTH+1)) <= blink;
    case register_enumirate is
      when "000" =>     -- x"0" means "0000" in hexadec.
          if (switchnum = "000") then
            if blink(8) = '1' then
                selectseg <= not "00000001";

            else
                selectseg <= not "00000000";
            end if;
          else
            selectseg <= not "00000001";
          end if;
          register1(0) <= register2(0);
          register1(1) <= register2(1);
          register1(2) <= register2(2);
          register1(3) <= register2(3);
      when "001" =>     -- x"0" means "0000" in hexadec.
          if (switchnum = "001") then
            if blink(8) = '1' then
                selectseg <= not "00000010";
            else
                selectseg <= not "00000000";
            end if;
          else
            selectseg <= not "00000010";
          end if;
          register1(0) <= register2(4);
          register1(1) <= register2(5);
          register1(2) <= register2(6);
          register1(3) <= register2(7);
      when "010" =>     -- x"0" means "0000" in hexadec.
          if (switchnum = "010") then
            if blink(8) = '1' then
                selectseg <= not "00000100";
            else
                selectseg <= not "00000000";
            end if;
          else
            selectseg <= not "00000100";
          end if;

          register1(0) <= register2(8);
          register1(1) <= register2(9);
          register1(2) <= register2(10);
          register1(3) <= register2(11);
      when "011" =>     -- x"0" means "0000" in hexadec.

          if (switchnum = "011") then
            if blink(8) = '1' then
                selectseg <= not "00001000";

            else
                selectseg <= not "00000000";
            end if;
          else
            selectseg <= not "00001000";
          end if;

        register1(0) <= register2(12);
        register1(1) <= register2(13);
        register1(2) <= register2(14);
        register1(3) <= register2(15);
      when "100" =>     -- x"0" means "0000" in hexadec.
          if (switchnum = "100") then
            if blink(8) = '1' then
                selectseg <= not "00010000";
            else
                selectseg <= not "00000000";
            end if;
          else
            selectseg <= not "00010000";
          end if;
        register1(0) <= register2(16);
        register1(1) <= register2(17);
        register1(2) <= register2(18);
        register1(3) <= register2(19);
      when "101" =>     -- x"0" means "0000" in hexadec.
        if (switchnum = "101") then
            if blink(8) = '1' then
                selectseg <= not "00100000";

            else
                selectseg <= not "00000000";
            end if;
          else
            selectseg <= not "00100000";
          end if;
        register1(0) <= register2(20);
        register1(1) <= register2(21);
        register1(2) <= register2(22);
        register1(3) <= register2(23);
      when "110" =>     -- x"0" means "0000" in hexadec.
        if (switchnum = "110") then
            if blink(8) = '1' then
                selectseg <= not "01000000";

            else
                selectseg <= not "00000000";
            end if;
          else
            selectseg <= not "01000000";
          end if;
        register1(0) <= register2(24);
        register1(1) <= register2(25);
        register1(2) <= register2(26);
        register1(3) <= register2(27);
      when "111" =>     -- x"0" means "0000" in hexadec.
        if (switchnum = "111") then
            if blink(8) = '1' then
                selectseg <= not "10000000";

            else
                selectseg <= not "00000000";
            end if;
          else
            selectseg <= not "10000000";
          end if;
        register1(0) <= register2(28);
        register1(1) <= register2(29);
        register1(2) <= register2(30);
        register1(3) <= register2(31);
      when others =>
        selectseg <= "00000000";
    end case;
end process r2_to_r1_demux_clocked;

end architecture behavioral;