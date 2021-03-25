
function [filhos]=EXPANDIR_LARGURA(no)
    filhos=[];
    direita=[];
    esquerda=[];
    cima=[];
    baixo=[];
    
    c = 1;
    b = 2;
    d = 3; 
    e = 4;

    //ONDE O ZERO ESTÁ NA PRIMEIRA LINHA
    
    if no(1,2)==0 then
        [baixo] = MOV_BAIXO(no, 1, 2);
            baixo(1,1) = b;
            baixo(2,1) = baixo(2,1)+2;
            baixo(3,1) = baixo(3,1)+1;
        [direita] = MOV_DIREITA(no, 1, 2);
            direita(1,1) = d;
            direita(2,1) = direita(2,1)+2;
            direita(3,1) = direita(3,1)+1;
         
         filhos = [baixo direita];
    end
    
    if no(1,3)==0 then
        [esquerda] = MOV_ESQUERDA(no, 1, 3);
         
            esquerda(1,1) = e;
            esquerda(2,1) = esquerda(2,1)+2;
            esquerda(3,1) = esquerda(3,1)+1;
         
        [baixo] = MOV_BAIXO(no, 1, 3);
            baixo(1,1) = b;
            baixo(2,1) = baixo(2,1)+2;
            baixo(3,1) = baixo(3,1)+1;
        [direita] = MOV_DIREITA(no, 1, 3);
            direita(1,1) = d;
            direita(2,1) = direita(2,1)+2;
            direita(3,1) = direita(3,1)+1;
        
        filhos = [esquerda baixo direita];
    end
    
    if no(1,4) == 0 then
        [baixo] = MOV_BAIXO(no, 1, 4);
            baixo(1,1) = b;
            baixo(2,1) = baixo(2,1)+2;
            baixo(3,1) = baixo(3,1)+1;
        [esquerda] = MOV_ESQUERDA(no, 1, 4);
            esquerda(1,1) = e;
            esquerda(2,1) = esquerda(2,1)+2;
            esquerda(3,1) = esquerda(3,1)+1;
        filhos = [baixo esquerda];
    end
    
    //-------------------------------------------
    
    //ONDE O ZERO ESTÁ NA SEGUNDA LINHA
    
    if no(2,2)==0 then
        [cima] = MOV_CIMA(no, 2, 2);
            cima(1,1) = c;
            cima(2,1) = cima(2,1)+2;
            cima(3,1) = cima(3,1)+1;
        [baixo] = MOV_BAIXO(no, 2, 2);
            baixo(1,1) = b;
            baixo(2,1) = baixo(2,1)+2;
            baixo(3,1) = baixo(3,1)+1;
        [direita] = MOV_DIREITA(no, 2, 2);
            direita(1,1) = d;
            direita(2,1) = direita(2,1)+2;
            direita(3,1) = direita(3,1)+1;
        
        filhos = [cima baixo direita];
    end
    
    if no(2,3)==0 then
        [esquerda] = MOV_ESQUERDA(no, 2, 3);
            esquerda(1,1) = e;
            esquerda(2,1) = esquerda(2,1)+2;
            esquerda(3,1) = esquerda(3,1)+1;
        
        [cima] = MOV_CIMA(no, 2, 3);
            cima(1,1) = c;
            cima(2,1) = cima(2,1)+2;
            cima(3,1) = cima(3,1)+1;
        
        [baixo] = MOV_BAIXO(no, 2, 3);
            baixo(1,1) = b;
            baixo(2,1) = baixo(2,1)+2;
            baixo(3,1) = baixo(3,1)+1;
        
        [direita] = MOV_DIREITA(no, 2, 3);
            direita(1,1) = d;
            direita(2,1) = direita(2,1)+2;
            direita(3,1) = direita(3,1)+1;
        
        
        filhos=[esquerda cima baixo direita];
    end
    
    if no(2,4)==0 then
        [esquerda] = MOV_ESQUERDA(no, 2, 4);
            esquerda(1,1) = e;
            esquerda(2,1) = esquerda(2,1)+2;
            esquerda(3,1) = esquerda(3,1)+1;
            
        [baixo] = MOV_BAIXO(no, 2, 4);
            baixo(1,1) = b;
            baixo(2,1) = baixo(2,1)+2;
            baixo(3,1) = baixo(3,1)+1;
        
        [cima] = MOV_CIMA(no, 2, 4);
            cima(1,1) = d;
            cima(2,1) = cima(2,1)+2;
            cima(3,1) = cima(3,1)+1;
            
        
        filhos = [esquerda baixo cima];
    end
    
    //--------------------------------------
    
    //ONDE O ZERO ESTÁ NA TERCEIRA LINHA
    
    if no(3,2)==0 then
        [cima] = MOV_CIMA(no, 3, 2);
            cima(1,1) = c;
            cima(2,1) = cima(2,1)+2;
            cima(3,1) = cima(3,1)+1;
            
        [direita] = MOV_DIREITA(no, 3, 2);
            direita(1,1) = d;
            direita(2,1) = direita(2,1)+2;
            direita(3,1) = direita(3,1)+1;
            
        
        filhos = [cima direita];
    end
    
    if no(3,3)==0 then
        [esquerda] = MOV_ESQUERDA(no, 3, 3);
            esquerda(1,1) = e;
            esquerda(2,1) = esquerda(2,1)+2;
            esquerda(3,1) = esquerda(3,1)+1;
            
        
        [cima] = MOV_CIMA(no, 3, 3);
            cima(1,1) = c;
            cima(2,1) = cima(2,1)+2;
            cima(3,1) = cima(3,1)+1;
            
        [direita] = MOV_DIREITA(no, 3, 3);
            direita(1,1) = d;
            direita(2,1) = direita(2,1)+2;
            direita(3,1) = direita(3,1)+1;  
            
        
        filhos = [esquerda cima direita];
    end
        
    if no(3,4)==0 then
        [esquerda] = MOV_ESQUERDA(no, 3, 4);
            esquerda(1,1) = e;
            esquerda(2,1) = esquerda(2,1)+2;
            esquerda(3,1) = esquerda(3,1)+1;
            
        [cima] = MOV_CIMA(no, 3, 4);
            cima(1,1) = c;
            cima(2,1) = cima(2,1)+2;
            cima(3,1) = cima(3,1)+1;
            
        
        filhos = [esquerda cima];
    end
    
    //--------------------------------------
    
endfunction
