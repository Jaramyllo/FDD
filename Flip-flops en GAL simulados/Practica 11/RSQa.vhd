library ieee;
use ieee.std_logic_1164.all;

entity FFRS is
  port (clk,r,s : in std_logic;
        Q: out std_logic;
        Qnot : out std_logic);
 end FFRS;

architecture codigo of FFRS is  

  signal t1,t2 : std_logic; 
   begin    
    t1 <= r nor t2;
    t2 <= s nor t1;
      process (clk,r,s)  
      begin
       if(clk'event and clk='1' ) then
             if(r='0' and s='0') then
              Q <=t1;
              Qnot <= t2;
             elsif(r='0' and s='1') then
              Q <='1';
              Qnot <='0';
             elsif(r='1' and s='0') then
              Q <='0';
              Qnot <='1';
             elsif(r='1' and s='1') then
              Q <='-';
              Qnot <='-';
             end if;
            end if;          
      end process;
end codigo;
