
function [no_largura,cont] = BUSCA_EM_ARVORE_LARGURA(no,borda)
    
    objetivo=[1 2 3; 4 5 6; 7 8 0];
    node = [];
    solucao  = 1;
    filhos = [];
    nos = [];
    cont = 1;
    
    [node]= CRIAR_NO(no);
    
    [borda] = INSERIR_NO(node, borda);
       
    while solucao<>0      
        if borda == [] then
            solucao = 0;
         end
         
         noo = [];

            [noo,borda] = PRIMEIRO_ELEMENTO(borda);
            
            r = NAO_REPETIR(nos, noo);
        
        while r == 1
            [noo,borda] = PRIMEIRO_ELEMENTO(borda);
            r = NAO_REPETIR(nos,noo);        
        end
    
        if noo(1:3,2:4) == objetivo then
          no_largura = noo
            
            disp('Achou a solução');
            disp(noo);
            solucao = 0;
        else
            [nos] = [nos noo];
            [filhos] = EXPANDIR_LARGURA(noo);
            
            tamanho = size(filhos)
        
            cont = cont + tamanho(2)/4 
            [borda]= INSERIR_NO(filhos, borda);
           // disp('Borda:')
            disp(borda)
        end
       
    end;
      
    
endfunction
