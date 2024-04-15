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
          input    : in std_logic_vector(3 downto 0);
--            b     : in std_logic_vector(3 downto 0);
            LED       : out std_logic_vector(15 downto 0);
            clear     : in std_logic;
            save      : in std_logic;
            switchnum : in std_logic_vector(3 downto 0);
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
signal register_enumirate : std_logic_vector(3 downto 0); -- selectseg
signal register2 : std_logic_vector(31 downto 0); -- long term
signal register3 : std_logic_vector(7 downto 0); -- long term
signal register4 : std_logic_vector(7 downto 0); -- long term
signal CLK100HZ    : std_logic;
signal CLK200HZ    : std_logic;
signal blink    : std_logic_vector(15 downto 0);
signal reg1_motor1    : std_logic_vector(15 downto 0);
signal reg2_motor1    : std_logic_vector(15 downto 0);
signal reg1_motor2    : std_logic_vector(15 downto 0);
signal reg2_motor2    : std_logic_vector(15 downto 0);

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
    N => 4
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
    

mover : process (add, reg1_motor1, reg2_motor1) is
begin
    motor_enable <= not (reg2_motor1(0) or reg2_motor1(0)) nand input(0);
    if (reg2_motor1(0) = '0') then
        reg1_motor1(10) <= '0';
    end if;
    if (add = '1' and reg1_motor1(10) = '0') then
        reg1_motor1(10) <= '1';
        reg1_motor1(9) <= input(1);
        reg1_motor1(7 downto 0) <= std_logic_vector(to_unsigned(to_integer(unsigned(register2(11 downto 8))) * 100 + to_integer(unsigned(register2(7 downto 4))) * 10 + to_integer(unsigned(register2(3 downto 0))), 8));
--        by the nine this line here ^^^ is fucked.
    else 
        reg1_motor1(7 downto 0) <= reg1_motor1(7 downto 0);
    end if;
    
    if (reg2_motor2(0) = '0') then
        reg1_motor2(10) <= '0';
    end if;
    if (add = '1' and reg1_motor2(10) = '0') then
        reg1_motor2(10) <= '1';
        reg1_motor2(9) <= input(2);
        reg1_motor2(7 downto 0) <= std_logic_vector(to_unsigned(to_integer(unsigned(register2(11+16 downto 8+16))) * 100 + to_integer(unsigned(register2(7+16 downto 4+16))) * 10 + to_integer(unsigned(register2(3+16 downto 0+16))), 8));
--        by the nine this line here ^^^ is fucked.
    else 
        reg1_motor2(7 downto 0) <= reg1_motor2(7 downto 0);
    end if;


    LED(LED'LEFT downto (LED'LEFT-register3'LENGTH+1)) <= register3;
    LED(7 downto 0) <= reg1_motor1(7 downto 0);
end process mover;

number_saver : process (save, clear) is 
begin
--    input <= input_sw;
      if (clear = '1') then
        register2 <= "00000000000000000000000000000000";
      elsif (save = '1') then
        case switchnum is
          when x"0" =>
--            selectseg(0) <= '0'; 
            register2(0) <= input (0);
            register2(1) <= input (1);
            register2(2) <= input (2);
            register2(3) <= input (3);
          when x"1" =>
--            selectseg(1) <= '0'; 
            register2(4) <= input (0);
            register2(5) <= input (1);
            register2(6) <= input (2);
            register2(7) <= input (3);
          when x"2" =>
--            selectseg(2) <= '0';
            register2(8) <= input (0);
            register2(9) <= input (1);
            register2(10) <= input (2);
            register2(11) <= input (3);
          when x"3" =>
--            selectseg(3) <= '0';
            register2(12) <= input (0);
            register2(13) <= input (1);
            register2(14) <= input (2);
            register2(15) <= input (3);
          when x"4" =>
--            selectseg(4) <= '0';
            register2(16) <= input (0);
            register2(17) <= input (1);
            register2(18) <= input (2);
            register2(19) <= input (3);
          when x"5" =>
--            selectseg(5) <= '0';
            register2(20) <= input (0);
            register2(21) <= input (1);
            register2(22) <= input (2);
            register2(23) <= input (3);
          when x"6" =>
--            selectseg(6) <= '0';
            register2(24) <= input (0);
            register2(25) <= input (1);
            register2(26) <= input (2);
            register2(27) <= input (3);
          when x"7" =>
--            selectseg(7) <= '0';
            register2(28) <= input (0);
            register2(29) <= input (1);
            register2(30) <= input (2);
            register2(31) <= input (3);
          when others =>
            null;
        end case;
      else 
        register2 <= register2;  
      end if;    
end process number_saver;


r2_to_r1_demux_clocked : process (CLK100MHZ, blink) is
-- declarative part (can be empty)
begin      
--    LED(LED'LEFT downto (LED'LEFT-blink'LENGTH+1)) <= blink;
    case register_enumirate is
      when x"0" =>     -- x"0" means "0000" in hexadec.
          if (switchnum = x"0") then
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
      when x"1" =>     -- x"0" means "0000" in hexadec.
          if (switchnum = x"1") then
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
      when x"2" =>     -- x"0" means "0000" in hexadec.
          if (switchnum = x"2") then
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
      when x"3" =>     -- x"0" means "0000" in hexadec.

          if (switchnum = x"3") then
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
      when x"4" =>     -- x"0" means "0000" in hexadec.
          if (switchnum = x"4") then
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
      when x"5" =>     -- x"0" means "0000" in hexadec.
        if (switchnum = x"5") then
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
      when x"6" =>     -- x"0" means "0000" in hexadec.
        if (switchnum = x"6") then
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
      when x"7" =>     -- x"0" means "0000" in hexadec.
        if (switchnum = x"7") then
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