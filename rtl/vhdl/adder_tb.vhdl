library ieee;

use ieee.std_logic_1164.all;

entity adder_tb is

end adder_tb;


architecture adder_tb_bhv of adder_tb is 

    component adder

        port (
            i0, i1: in std_logic_vector (7 downto 0);
            ci: in std_logic;
            s: out std_logic_vector (7 downto 0);
            co: out std_logic
        );

    end component;

    for adder_0: adder use entity work.adder;

    signal i0, i1, s: std_logic_vector (7 downto 0);
    signal ci, co : std_logic;

begin

    adder_0: adder port map (i0, i1, ci, s, co);

    i0 <= "00000000", "00101001" after 50 ps, "00011001" after 100 ps, "10101001" after 150 ps, "10000001" after 200 ps;
    i1 <= "00000000", "00100101" after 50 ps, "10101001" after 100 ps, "00101001" after 150 ps, "10101001" after 200 ps;
    ci <= '0', '0' after 50 ps, '0' after 100 ps, '1' after 150 ps, '0' after 200 ps;
    
    
end adder_tb_bhv;
