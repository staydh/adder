library ieee;

use ieee.std_logic_1164.all;

entity full_adder_tb is

end full_adder_tb;


architecture full_adder_tb_bhv of full_adder_tb is 

    component full_adder

        port (
            i0, i1, ci: in std_logic;
            s, co: out std_logic
        );

    end component;

    for full_adder_0: full_adder use entity work.full_adder;

    signal i0, i1, ci, s, co : std_logic;

begin

    full_adder_0: full_adder port map (i0, i1, ci, s, co);

    i0 <= '0', '1' after 50 ps, '0' after 100 ps, '1' after 150 ps, '0' after 200 ps, '1' after 250 ps, '0' after 300 ps, '1' after 350 ps;
    i1 <= '0', '0' after 50 ps, '1' after 100 ps, '1' after 150 ps, '0' after 200 ps, '0' after 250 ps, '1' after 300 ps, '1' after 350 ps;
    ci <= '0', '0' after 50 ps, '0' after 100 ps, '0' after 150 ps, '1' after 200 ps, '1' after 250 ps, '1' after 300 ps, '1' after 350 ps;
    
    
end full_adder_tb_bhv;
