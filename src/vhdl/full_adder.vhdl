library ieee;

use ieee.std_logic_1164.all;

entity full_adder is

    port (
        i0, i1, ci: in std_logic;
        s, co: out std_logic
    );

end full_adder;


architecture full_adder_bhv of full_adder is 

begin

    s <= i0 xor i1 xor ci;

    co <= (i0 and ci) or (i1 and ci) or (i0 and i1);

end full_adder_bhv;
