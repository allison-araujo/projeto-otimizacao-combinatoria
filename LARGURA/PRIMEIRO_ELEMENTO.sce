function [no,borda]=PRIMEIRO_ELEMENTO(borda)
    [no] = borda(1:3, 1:4);
    borda(1:3,1:4)=[];
endfunction
