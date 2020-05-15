function [matriz] = arreglo(z,d0,f1,f2)
%function [A,B,C,D] = arreglo(z,d0,f1,f2)
%Hasta d0 es campo libre
%En d0 hay una lente f1
%En d0+d hay una lente f2

    d = f1 + f2; %esto esta en mm
    
    if(z<=d0)
        matriz = [1, z ; 0, 1];
    elseif( (z > d0)  &&  (z <= (d+d0)) )
        matriz = [1, (z-d0);0 ,1]*[1, 0;(-1/f1), 1]*[1, d0;0, 1];
    else 
        matriz = [1 (z-d-d0) ; 0 1]*[1 0; -1/f2 1]*[1 d;0 1]*[1 0;(-1/f1) 1]*[1 d0;0 1];
    end
    
    %A=matriz(1,1);
    %B=matriz(1,2);
    %C=matriz(2,1);
    %D=matriz(2,2);
    
end
