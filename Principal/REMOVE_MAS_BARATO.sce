
function [no,borda]= REMOVE_MAS_BARATO(borda)
        
    tf = size(borda);
    tf = tf(2);
        c0 = 100000;
        i = 1;
        while i <= tf
         cinst = borda(2,i);
        // save cinst.mat
            if cinst < c0
             
             im = i;
             c0 = cinst;
            end
            i=i+4;
        end
        y = im+3;
        
        no = borda(:,im:y)
         borda(:,im:y) = [];
    
    
    
endfunction
