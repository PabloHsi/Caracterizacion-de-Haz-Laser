function [pixel_x,pixel_y] = centro(imagen,k)
%Busco el centro de la imagen, a partir del promedio de los maximos hallados
%Busco los primeros k maximos en x e y

    imagen_aux = imagen;%el auxiliar lo necesito para buscar el centro, cada vez que encuentro un max lo borro y busco el siguiente
       
    for i=1:k
    [Max(i),Ind(i)] = max(imagen_aux(:)); 
    [Ind_fila(i), Ind_col(i)] = ind2sub(size(imagen_aux),Ind(i)); %ind2sub pasa de Ind anterior a los indices fila y columna
    imagen_aux(Ind_fila(i),Ind_col(i))=0; %al maximo encontrado lo borro 
    end
    
    %Devuelvo la coordenada del pixel 
    pixel_x = round( mean(Ind_fila) );
    pixel_y = round( mean(Ind_col) );
    
end

