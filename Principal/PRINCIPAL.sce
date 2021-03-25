

function chama = PRINCIPAL()
  no = [0 1 3 2;0 5 6 0; 0 4 8 7];
  borda = [];
  saida = [];
  i = 1;
  
  largura_No = []
  largura_qtdNos = 0;
  
  profundidade_No = [];
  profundidade_qtdNos = 0;
  
  guloso_No = [];
  guloso_qtdNos = 0;
  
  
  
            while i <= 10
                
                                
                [saida] = AMOSTRA(no)
              //algo busca em largura
              
               [largura_No,largura_qtdNos] = BUSCA_EM_ARVORE_LARGURA(saida,borda);
               
               
               
               //algo busca em profundidade
               
               [profundidade_No,profundido_qtdNos] = BUSCA_EM_ARVORE_PROFUNDIDADE(saida,borda);
               
               
               
               //algo busca gulosa
               
               [profundidade_No,profundido_qtdNos] = BUSCA_EM_ARVORE_GULOSO(saida,borda);
               
                
            i = i+1;
               
           end;
         ARMAZENAR_LARGURA(largura_No,largura_qtdNos);
         ARMAZENAR_PROFUNDIDADE(profundidade_No,profundidade_qtdNos);
         ARMAZENAR_GULOSO(guloso_No,guloso_qtdNos);
                      
 chama = 1;

endfunction
