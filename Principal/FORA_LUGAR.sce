
function [h]= FORA_LUGAR(no)
    obj = [1 2 3;4 5 6;7 8 0];
    
   no = no(1:3,2:4);
   
   h = sum(sum(no~=obj));
   
   
    
endfunction
