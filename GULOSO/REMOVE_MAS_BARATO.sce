


   function [no,borda]= REMOVE_MAS_BARATO(borda)
    vet = [];
    
    tamanho = size(borda);
    tamanho = tamanho(2);
    tam = 100000;
     i = 1;
    while i <= tamanho
    aux = borda(2,i);
    
        if aux <= tam
        vet=i;
        tam=aux;
        end
        i=i+4;
    end
        y=vet+3;
    
        no=borda(:,vet:y)
        borda(:,vet:y)=[];
    
    
endfunction
