function [filhos]= MOV_ESQUERDA(no, l, c)

    filhos = [filhos no];
    aux = filhos(l,c-1);
    filhos(l,c-1) = no(l,c);
    filhos(l,c) = aux;
   
           
  endfunction    
