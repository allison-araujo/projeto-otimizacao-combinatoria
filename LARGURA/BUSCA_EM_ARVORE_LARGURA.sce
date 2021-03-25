
function resultado = BUSCA_EM_ARVORE_LARGURA(no, borda)
    
    objetivo=[1 2 3; 4 5 6; 7 8 0];
    node = [];
    solucao  = 1;
    filhos=[];
    memoria = [];
    
    
    
    [node]= CRIAR_NO(no);
    
    [borda] = INSERIR_NO(node, borda);
    
    while solucao <> 0      
        if borda == [] then
            resultado = 0;
            solucao = 0;
         end
            noo = [];
            [noo,borda] = PRIMEIRO_ELEMENTO(borda);
                        
            r = NAO_REPETIR(memoria, noo);
            
        while r == 1
            [noo ,borda] = PRIMEIRO_ELEMENTO(borda);
            r = NAO_REPETIR(memoria,noo);        
        end
    
        if noo(1:3,2:4) == objetivo then
            resultado = 1;
            disp('Achou a solução');
            disp(noo);
            solucao = 0;
        else
            //disp('Nó')
            //disp(noo)
            //pause
            
            memoria = [memoria noo];
            
           // disp('Memória: ')
           // disp(memoria)
            
            [filhos] = EXPANDIR(noo); 
            
                      
            [borda]= INSERIR_NO(filhos, borda);
            disp(borda)
          //  pause
            
          
        end
    end;
        
        

endfunction
