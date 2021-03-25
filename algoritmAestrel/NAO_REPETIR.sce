
function r = NAO_REPETIR(repete,filho)
    tamanho = size(repete);
    r = 0;
    i = 2;
    k = 0;
        while  i<=tamanho(2) & r ==0
            k = i+2;
            if repete(:,i:k)==filho(:,2:4) then
                r = 1;
            end
        i = i+4;
    end
    
endfunction
