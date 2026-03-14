-- Code adapted from: https://www.fpga4student.com/2017/02/vhdl-code-for-full-adder.html
-- Structural code for full adder 
library ieee; 
use ieee.std_logic_1164.all;  

entity fa_1bit_structural is  
port( 
     X1, X2, Cin : in std_logic;  
     S, Cout : out std_logic
    );  
end entity fa_1bit_structural;  

architecture structural of fa_1bit_structural is  

   signal a1, a2, a3: std_logic;  

begin  

   a1 <= X1 xor X2;  
   a2 <= X1 and X2;  
   a3 <= a1 and Cin;  
   Cout <= a2 or a3;  
   S <= a1 xor Cin;  

end structural;  