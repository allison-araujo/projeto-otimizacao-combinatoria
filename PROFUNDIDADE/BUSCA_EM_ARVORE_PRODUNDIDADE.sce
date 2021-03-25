
function resultado = BUSCA_EM_ARVORE_PROFUNDIDADE(no, borda)
    objetivo=[1 2 3; 4 5 6; 7 8 0];
    node = [];
    solucao  = 1;
    filhos=[];
    memoria = [];
    p = 0;
    
    
    [node]= CRIAR_NO(no);
    
    [borda] = INSERIR_NO(node, borda);
       
    while solucao <> 0      
        if borda == [] then
            resultado = 0;
            solucao = 0;
         end
            noo = [];
            [noo,borda] = REMOVE_ULTIMO(borda);
            //disp(noo);
                        
            r = NAO_REPETIR(memoria, noo);
            
        while r == 1
            [noo ,borda] = REMOVE_ULTIMO(borda);
            r = NAO_REPETIR(memoria,noo);        
        end
    
        if no(1:3,2:4) == objetivo then
            resultado = 1;
            disp('Achou a solução');
            disp(noo);
            solucao = 0;
        else
           // disp(noo)
           // pause
            
            memoria = [memoria noo];
            
            disp(noo)
            [filhos] = EXPANDIR(noo); 
            
                      
            [borda]= INSERIR_NO(filhos, borda);
            disp(borda)
          
        end
              
    end;
        
        
    
endfunction
