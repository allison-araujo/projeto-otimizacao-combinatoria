    
     function [no,borda]= REMOVE_ULTIMO(borda)
    [tamanho]=size(borda);
    coluna=tamanho(2);
    //Metodo Pilha

    
    [no] = borda(1:3, coluna-3:coluna);
    borda(1:3, coluna-3:coluna)=[];
endfunction
