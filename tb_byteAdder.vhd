    library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
    
    entity tb_byteAdder is
    end tb_byteAdder;
    
    architecture Testbench of tb_byteAdder is
        -- Señales de entrada
        signal A     : std_logic_vector(7 downto 0) := (others => '0');
        signal B     : std_logic_vector(7 downto 0) := (others => '0');
        
        -- Señales de salida
        signal S     : std_logic_vector(7 downto 0);
        signal C_out : std_logic;
    
        -- Constantes
        constant delay : time := 100 ns;
    
        -- Componente a probar
        component byteAdder
            port(
                A     : in  std_logic_vector(7 downto 0);
                B     : in  std_logic_vector(7 downto 0);
                S     : out std_logic_vector(7 downto 0);
                C_out : out std_logic
            );
        end component;
    begin
        -- Instancia del componente
        UUT: byteAdder
            port map (
                A     => A,
                B     => B,
                S     => S,
                C_out => C_out
            );
    
        -- Estímulos de prueba
        stimulus: process
        begin
                   -- Caso 1: 0 + 0 = 0 con C_out = 0
        A <= std_logic_vector(to_unsigned(0, 8));
        B <= std_logic_vector(to_unsigned(0, 8));
        wait for delay;
        
           

        -- Caso 2: 1 + 1 = 2 con C_out = 0
        A <= std_logic_vector(to_unsigned(1, 8));
        B <= std_logic_vector(to_unsigned(1, 8));
        wait for delay;
        
            

        -- Caso 3: 10 + 20 = 30 con C_out = 0
        A <= std_logic_vector(to_unsigned(10, 8));
        B <= std_logic_vector(to_unsigned(20, 8));
        wait for delay;
        
            

        -- Caso 4: 50 + 75 = 125 con C_out = 0
        A <= std_logic_vector(to_unsigned(50, 8));
        B <= std_logic_vector(to_unsigned(75, 8));
        wait for delay;
       
           

        -- Caso 5: 100 + 27 = 127 con C_out = 0
        A <= std_logic_vector(to_unsigned(100, 8));
        B <= std_logic_vector(to_unsigned(27, 8));
        wait for delay;
       
            
        -- Caso 6: 200 + 30 = 230 con C_out = 0
        A <= std_logic_vector(to_unsigned(200, 8));
        B <= std_logic_vector(to_unsigned(30, 8));
        wait for delay;
      
           

        -- Caso 7: 128 + 128 = 0 con C_out = 1
        A <= std_logic_vector(to_unsigned(128, 8));
        B <= std_logic_vector(to_unsigned(128, 8));
        wait for delay;
      
            

        -- Caso 8: 255 + 0 = 255 con C_out = 0
        A <= std_logic_vector(to_unsigned(255, 8));
        B <= std_logic_vector(to_unsigned(0, 8));
        wait for delay;
      
           

        -- Caso 9: 0 + 255 = 255 con C_out = 0
        A <= std_logic_vector(to_unsigned(0, 8));
        B <= std_logic_vector(to_unsigned(255, 8));
        wait for delay;
       
           
        -- Caso 10: 255 + 1 = 0 con C_out = 1
        A <= std_logic_vector(to_unsigned(255, 8));
        B <= std_logic_vector(to_unsigned(1, 8));
        wait for delay;
       
            

        -- Caso 11: 1 + 255 = 0 con C_out = 1
        A <= std_logic_vector(to_unsigned(1, 8));
        B <= std_logic_vector(to_unsigned(255, 8));
        wait for delay;
       

        -- Caso 12: 64 + 64 = 128 con C_out = 0
        A <= std_logic_vector(to_unsigned(64, 8));
        B <= std_logic_vector(to_unsigned(64, 8));
        wait for delay;
      
           

        -- Caso 13: 127 + 1 = 128 con C_out = 0
        A <= std_logic_vector(to_unsigned(127, 8));
        B <= std_logic_vector(to_unsigned(1, 8));
        wait for delay;
        
        -- Caso 14: 15 + 15 = 30 con C_out = 0
        A <= std_logic_vector(to_unsigned(15, 8));
        B <= std_logic_vector(to_unsigned(15, 8));
        wait for delay;
        

        -- Caso 15: 85 + 85 = 170 con C_out = 0
        A <= std_logic_vector(to_unsigned(85, 8));
        B <= std_logic_vector(to_unsigned(85, 8));
        wait for delay;
       
       

        -- Caso 16: 170 + 85 = 255 con C_out = 0
        A <= std_logic_vector(to_unsigned(170, 8));
        B <= std_logic_vector(to_unsigned(85, 8));
        wait for delay;
       

        -- Caso 17: 42 + 42 = 84 con C_out = 0
        A <= std_logic_vector(to_unsigned(42, 8));
        B <= std_logic_vector(to_unsigned(42, 8));
        wait for delay;
       
   

        -- Caso 18: 123 + 132 = 255 con C_out = 0
        A <= std_logic_vector(to_unsigned(123, 8));
        B <= std_logic_vector(to_unsigned(132, 8));
        wait for delay;
       
          

        -- Caso 19: 250 + 10 = 4 con C_out = 1
        A <= std_logic_vector(to_unsigned(250, 8));
        B <= std_logic_vector(to_unsigned(10, 8));
        wait for delay;
        
            
        -- Caso 20: 200 + 100 = 44 con C_out = 1
        A <= std_logic_vector(to_unsigned(200, 8));
        B <= std_logic_vector(to_unsigned(100, 8));
        wait for delay;
      
            
            wait for 2000000 ns;
            wait;
        end process;
    end Testbench;
