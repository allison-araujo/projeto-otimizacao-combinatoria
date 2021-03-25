function [filhos]=MOV_DIREITA(no, l,c)
    aux = [];
    filhos=[filhos no];
    aux = filhos(l,c+1);
    filhos(l,c+1)=no(l,c);
    filhos(l,c)=aux;
    
endfunction
