library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity byteAdder is
    port (
        A       : in  std_logic_vector (7 downto 0);
        B       : in  std_logic_vector (7 downto 0);
        S       : out std_logic_vector (7 downto 0);
        C_out   : out std_logic
    );
end byteAdder;

architecture Behavioural of byteAdder is
    signal C_internal : std_logic_vector (6 downto 0);

    component fullAdder
        port (
            A       : in  std_logic;
            B       : in  std_logic;
            C_in    : in  std_logic;
            S       : out std_logic;
            C_out   : out std_logic
        );
    end component;
begin
    FULLADDER0: fullAdder port map(
        A => A(0),
        B => B(0),
        C_in => '0',
        S => S(0),
        C_out => C_internal(0)
    );

    GEN_ADDERS: for i in 1 to 6 generate
        ADDER: fullAdder port map(
            A => A(i),
            B => B(i),
            C_in => C_internal(i-1),
            S => S(i),
            C_out => C_internal(i)
        );
    end generate;

    FULLADDER7: fullAdder port map(
        A => A(7),
        B => B(7),
        C_in => C_internal(6),
        S => S(7),
        C_out => C_out
    );
end Behavioural;