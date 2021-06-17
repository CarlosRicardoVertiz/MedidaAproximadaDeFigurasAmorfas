%Materia: Calculo Integral
%Nombre Del Alumno: Carlos Ricardo Vertiz
%correo electronico: carlosricardovertiz@gmail.com
%grupo: 3202
%Descripcion: Script que funciona para encontrar el area bajo la curva
%por medio del tema "medidas aproximada de figuras amorfas"
clc
clear

syms x;
%pide valores 
intervalo_a= 3;
intervalo_b= 6;
num_rectangulos=5;
%aqui se encuentra la funcion
disp("f(x)2*x,[3,6] con 5 rectangulos");
funcion = inline("2*x");
%pricedimiento de base
base= (intervalo_b-intervalo_a)/num_rectangulos;
disp("BASE: ");
disp(base);
%procedimiento de altura
%a+ base 
disp("-----ALTURA Y AREA-----");
acumulador=0;
for area=1:num_rectangulos;
  disp("calculo de areas, cuando:")
  disp(["el area esta en el rectangulo: ", int2str(area)]);
areas= intervalo_a + area*(base)
%sirve para sacar areas
h=funcion(areas);
h_con_valor_absoluto=h;
%Sacamos el area total
at=base*h;
%sacamos valor absoluto
area_total=abs(at);
acumulador= acumulador + area_total;
end
disp ("el area aproximado es de: ");
acumulador

%OrgullosamenteTESJI<3