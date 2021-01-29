library ieee;

use ieee.std_logic_1164.all;

entity adder is

    generic (n: integer := 8);

    port (
        i0, i1: in std_logic_vector (n-1 downto 0);
        ci: in std_logic;
        s: out std_logic_vector (n-1 downto 0);
        co: out std_logic
    );

end adder;


architecture adder_bhv of adder is 

    component full_adder

    port (
        i0, i1, ci: in std_logic;
        s, co: out std_logic
    );

    end component;

    signal t: std_logic_vector (n downto 0);

begin

    t(0) <= ci;
    co <= t(n);

    fa_f: for i in 0 to n-1 generate
    
        fa_i: full_adder port map (i0(i), i1(i), t(i), s(i), t(i+1));
    
    end generate;

end adder_bhv;
