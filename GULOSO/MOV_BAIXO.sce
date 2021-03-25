function [filhos]= MOV_BAIXO(no, l, c)
     aux = [];
    filhos = [filhos no ];
    aux = filhos(l+1,c);
    filhos(l+1,c) = no(l,c);
    filhos(l,c) = aux;
   
           
  endfunction    
