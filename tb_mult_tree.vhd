library ieee;
use	  ieee.std_logic_1164.all;

entity tb_mult_tree is
end tb_mult_tree;

architecture behavior of tb_mult_tree is
    component mult_tree
    generic ( w : positive := 8 );
    port (
        -- Data Inputs SW[7:0], EA SW9, EB SW8
        SW  :   in  std_logic_vector(9 downto 0);

        -- LEDs
        LEDR :  out  std_logic_vector(7 downto 0);

        -- Sync Reset KEY0, Manual Clk KEY1
        KEY:   in std_logic_vector(1 downto 0);

        -- Displays
        HEX0, HEX1, HEX2, HEX3 : out std_logic_vector(0 to 6));
    end component;

    signal swt : std_logic_vector(9 downto 0);
    signal ledrt : std_logic_vector(7 downto 0);
    signal keyt : std_logic_vector(1 downto 0);
    signal hex0t,  hex1t, hex2t, hex3t  : std_logic_vector(0 to 6);

   begin 
    
	 mult: mult_tree
    port map( swt,  ledrt, keyt, hex0t, hex1t, hex2t, hex3t);
	 
	 process 
        begin 
				keyt <= "10";
				wait for 10 ns;
				keyt <= "11";
				wait for 10 ns;
				keyt <= "10";
				wait for 10 ns;
				keyt <= "00";
				swt <= "1011111111";
				wait for 10 ns;
				keyt <= "10";
				swt <= "1011111111";
				wait for 10 ns;
				keyt <= "00";
				swt <= "0111111111";
				wait for 10 ns;
				keyt <= "10";
				swt <= "0111111111";
				wait for 10 ns;
				
				keyt <= "00";
				wait for 10 ns;
				keyt <= "10";
				wait for 10 ns;
				
				keyt <= "00";
				wait for 10 ns;
				keyt <= "10";
				wait for 10 ns;
				
				keyt <= "00";
				wait for 10 ns;
				keyt <= "10";
				wait for 10 ns;
				
	
				keyt <= "00";
				wait for 10 ns;
				keyt <= "10";
				wait for 10 ns;
				
				keyt <= "00";
				wait for 10 ns;
				keyt <= "10";
				wait for 10 ns;
				
				keyt <= "00";
				wait for 10 ns;
				keyt <= "10";
				wait for 10 ns;
				
				keyt <= "00";
				wait for 10 ns;
				keyt <= "10";
				wait for 10 ns;
				
				keyt <= "00";
				wait for 10 ns;
				keyt <= "10";
				wait for 10 ns;
				
				keyt <= "00";
				wait for 10 ns;
				keyt <= "10";
				wait for 10 ns;
				
				keyt <= "00";
				wait for 10 ns;
				keyt <= "10";
				wait for 10 ns;
            wait;
				
    end process;
end behavior;