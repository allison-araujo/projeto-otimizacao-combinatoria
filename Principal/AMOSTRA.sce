

function [saida] = AMOSTRA(no)
     aux = [];
     aleatorio = null;
     i = 1;
     j = 5;
     node = [];
     head = [];     
     tamanho = null;   
    // disp(no)
   
    
    while i <= j
        aux = EXPANDIR(no)
        aux(1,1) = 0, aux(2,1) = 0, aux(3,1) = 0;
        //disp(aux);

        tamanho = size(aux)

            if tamanho(2)/4 == 4 then
                 
                 aleatorio = int((grand(1,1, "unf",1,4)))
               
                        
                            if aleatorio == 1
                                no = aux(1:3,1:4)
                                //head = EXPANDIR(no)      
                                
                            
                            elseif aleatorio == 2
                                  no = aux(1:3,5:8)
                                  //head = EXPANDIR(node)
                             
                            elseif aleatorio == 3
                                   no = aux(1:3,9:12);
                                   //head = EXPANDIR(node);        
                             
                             elseif aleatorio == 4
                                    no = aux(1:3,1:4)
                                    //head = EXPANDIR(1:3,13:16)
                             end    
                        
         
            elseif tamanho(2)/4 ==  3 then
                    aleatorio = int(((grand(1,2, "unf",1,3))))
              
                    
                            if aleatorio == 1 then
                                no = aux(1:3,1:4)
                                //head = EXPANDIR(node)      
                           
                            elseif aleatorio == 2
                                  no = aux(1:3,5:8)
                                  //head = EXPANDIR(node)
                                 
                                                  
                            elseif aleatorio == 3
                                   no = aux(1:3,10:12);
                                  // head = EXPANDIR(node);        
                            end
                               
            elseif tamanho(2)/4 ==  2 then
                    aleatorio = int(((grand(1,2, "unf",1,2))))
                    
                   
                            if aleatorio == 1
                                no = aux(1:3,1:4)
                                //head = EXPANDIR(node)      
                            
                           elseif aleatorio == 2
                                  no = aux(1:3,5:8)
                                  //head = EXPANDIR(node)
                              
                            end                  
            elseif tamanho(2)/4 ==  1 then
                 if aleatorio == 1
                        no = aux(1:3,1:4)
                           
                 end
           end        
     i  = i +1;
     //disp(no)
    end
  no(1,1) = 0, no(2,1) = 0, no(3,1) = 0;  
  novo = no  
 [saida] = novo;
   
  
    
endfunction


