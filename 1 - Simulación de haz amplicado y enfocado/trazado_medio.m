function [y_s,theta_s] = trazado_medio(ABCD,y_e,theta_e)
%trazado_medio devuelve los parametros de la funcion lineal del rayo que
%sale de una lente delgada

%f(x)=m*x+b
%donde m es theta_s, y_s=b

%A,B,C,D son parametros de la matriz del rayo
%y_e altura de entrada
%theta_e angulo de entrada

% por LENTE DELGADA y_s = y_e, entonces b=y_e

y_s= ABCD(1,1)*y_e + ABCD(1,2)*theta_e;
theta_s= ABCD(2,1)*y_e + ABCD(2,2)*theta_e;


end

