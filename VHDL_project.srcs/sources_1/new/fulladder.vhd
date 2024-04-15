----------------------------------------------------------
--
--! @title Half adder
--! @author Tomas Fryza
--! Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
--!
--! @copyright (c) 2019 Tomas Fryza
--! This work is licensed under the terms of the MIT license
--!
--! Implementation of half adder.
--
-- Hardware: Nexys A7-50T, xc7a50ticsg324-1L
-- Software: TerosHDL, Vivado 2020.2, EDA Playground

library ieee;
  use ieee.std_logic_1164.all;

----------------------------------------------------------
-- Entity declaration for half adder
----------------------------------------------------------

entity half_adder is
  port (
    a     : in    std_logic;
    b     : in    std_logic;
    sum   : out   std_logic;
    carry : out   std_logic
  );
end entity half_adder;

----------------------------------------------------------
-- Architecture body for half adder
----------------------------------------------------------

architecture behavioral of half_adder is

begin

  sum   <= a xor b;
  carry <= a and b;

end architecture behavioral;



----------------------------------------------------------
--
--! @title Full adder
--! @author Tomas Fryza
--! Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
--!
--! @copyright (c) 2019 Tomas Fryza
--! This work is licensed under the terms of the MIT license
--!
--! Implementation of full adder.
--
-- Hardware: Nexys A7-50T, xc7a50ticsg324-1L
-- Software: TerosHDL, Vivado 2020.2, EDA Playground

library ieee;
  use ieee.std_logic_1164.all;

----------------------------------------------------------
-- Entity declaration for full adder
----------------------------------------------------------

entity full_adder is
  port (
    a        : in    std_logic;
    b        : in    std_logic;
    carry_in : in    std_logic;
    sum      : out   std_logic;
    carry_out    : out   std_logic
  );
end entity full_adder;

----------------------------------------------------------
-- Architecture body for full adder
----------------------------------------------------------

architecture behavioral of full_adder is

  -- Internal signals between half adders
  signal sig_sum0_a1 : std_logic;  -- From sum0 to a1
  signal sig_carry0  : std_logic;
  signal sig_carry1  : std_logic;

begin

  --------------------------------------------------------
  -- Instance (copy) of the first half adder
  half_adder0 : entity work.half_adder
    port map (
      a     => a,
      b     => b,
      sum   => sig_sum0_a1,
      carry => sig_carry0
    );

  --------------------------------------------------------
  -- Instance (copy) of the second half adder
  half_adder1 : entity work.half_adder
    port map (
      a     => sig_sum0_a1,
      b     => carry_in,
      sum   => sum,
      carry => sig_carry1
    );

  -- Output carry
  carry_out <= sig_carry0 or sig_carry1;

end architecture behavioral;

library ieee;
  use ieee.std_logic_1164.all;

entity adder_4bit is
  port (
    a        : in    std_logic_vector(3 downto 0);
    b        : in    std_logic_vector(3 downto 0);
    carry_in : in    std_logic;
    result   : out   std_logic_vector(3 downto 0);
    carry_out: out   std_logic
  );
end entity adder_4bit;

architecture behavioral of adder_4bit is
  -- Component declaration for full adder
  component full_adder is
    port (
      carry_in  : in    std_logic;
      b     : in    std_logic;
      a     : in    std_logic;
      carry_out : out   std_logic;
      sum   : out   std_logic
    );
  end component;

  -- Local signals for carry propagation
  signal sig_c0 : std_logic;
  signal sig_c1 : std_logic;
  signal sig_c2 : std_logic;
begin

  -- Component instantiations for each bit position
  -- 1st full adder
  FA0 : full_adder
    port map (
      carry_in  => carry_in,
      b     => b(0),
      a     => a(0),
      carry_out => sig_c0,
      sum   => result(0)
    );

  -- 2nd full adder
  
  FA1 : full_adder
    port map (
      carry_in  => sig_c0,
      b     => b(1),
      a     => a(1),
      carry_out => sig_c1,
      sum   => result(1)
    );

  -- 3rd full adder

  FA2 : full_adder
    port map (
      carry_in  => sig_c1,
      b     => b(2),
      a     => a(2),
      carry_out => sig_c2,
      sum   => result(2)
    );


  -- 4th full adder
  FA3 : full_adder
    port map (
      carry_in  => sig_c2,
      b     => b(3),
      a     => a(3),
      carry_out => carry_out,
      sum   => result(3)
    );


end architecture behavioral;


library ieee;
  use ieee.std_logic_1164.all;

entity adder_8bit is
  port (
    a        : in    std_logic_vector(7 downto 0);
    b        : in    std_logic_vector(7 downto 0);
    carry_in : in    std_logic;
    result   : out   std_logic_vector(7 downto 0);
    carry_out: out   std_logic
  );
end entity adder_8bit;

architecture behavioral of adder_8bit is
  -- Component declaration for full adder
  component full_adder is
    port (
      carry_in  : in    std_logic;
      b     : in    std_logic;
      a     : in    std_logic;
      carry_out : out   std_logic;
      sum   : out   std_logic
    );
  end component;

  -- Local signals for carry propagation
  signal sig_c0 : std_logic;
  signal sig_c1 : std_logic;
  signal sig_c2 : std_logic;
  signal sig_c3 : std_logic;
  signal sig_c4 : std_logic;
  signal sig_c5 : std_logic;
  signal sig_c6 : std_logic;
begin

  -- Component instantiations for each bit position
  -- 1st full adder
  FA0 : full_adder
    port map (
      carry_in  => carry_in,
      b     => b(0),
      a     => a(0),
      carry_out => sig_c0,
      sum   => result(0)
    );

  -- 2nd full adder
  
  FA1 : full_adder
    port map (
      carry_in  => sig_c0,
      b     => b(1),
      a     => a(1),
      carry_out => sig_c1,
      sum   => result(1)
    );

  -- 3rd full adder

  FA2 : full_adder
    port map (
      carry_in  => sig_c1,
      b     => b(2),
      a     => a(2),
      carry_out => sig_c2,
      sum   => result(2)
    );


  -- 4th full adder
  FA3 : full_adder
    port map (
      carry_in  => sig_c2,
      b     => b(3),
      a     => a(3),
      carry_out => sig_c3,
      sum   => result(3)
    );

  -- 5th full adder
  FA4 : full_adder
    port map (
      carry_in  => sig_c3,
      b     => b(4),
      a     => a(4),
      carry_out => sig_c4,
      sum   => result(4)
    );

  -- 6th full adder
  FA5 : full_adder
    port map (
      carry_in  => sig_c4,
      b     => b(5),
      a     => a(5),
      carry_out => sig_c5,
      sum   => result(5)
    );


  -- 7th full adder
  FA6 : full_adder
    port map (
      carry_in  => sig_c5,
      b     => b(6),
      a     => a(6),
      carry_out => sig_c6,
      sum   => result(6)
    );


  -- 8th full adder
  FA7 : full_adder
    port map (
      carry_in  => sig_c6,
      b     => b(7),
      a     => a(7),
      carry_out => carry_out,
      sum   => result(7)
    );



end architecture behavioral;
