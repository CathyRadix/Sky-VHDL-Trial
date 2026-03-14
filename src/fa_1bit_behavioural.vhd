-- Code adapted from: https://www.fpga4student.com/2017/02/vhdl-code-for-full-adder.html
-- Behavioural code for full adder 

library ieee; 
use ieee.std_logic_1164.all;  
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tt_um_1bbCR is  
port( 
        ui_in   : in  std_logic_vector(7 downto 0);
        uo_out  : out std_logic_vector(7 downto 0);
        uio_in  : in  std_logic_vector(7 downto 0);
        uio_out : out std_logic_vector(7 downto 0);
        uio_oe  : out std_logic_vector(7 downto 0);
        ena     : in  std_logic;
        clk     : in  std_logic;
        rst_n   : in  std_logic 
);  
end entity tt_um_1bbCR;  

architecture Behavioral of tt/_um_1bbCR is   
 
signal tmp: std_logic_vector(1 downto 0);
 
begin  
   process(X1,X2,Cin)
   begin 
 	tmp <= ('0' & X1) + ('0' & X2) +('0' & Cin) ;
   end process;

   S <= tmp(0);
   Cout <= tmp(1);

end Behavioral; 
