function [saida, borda]= PRIMEIRO_ELEMENTO(borda)
    [saida]=borda(1:3, 1:4);
    borda(1:3, 1:4) = [];
endfunction
