(*Comision 1°02 - Berruti Octavio, Navarini Alejandro, Piqué Gabriel*) 
program TpN2AyED(input,output);
uses crt;
var OP:integer;
function Juegos();
var arrrglo:array[0..1,0..10] of char;
    caracter: char;
    i: integer;
 begin
  i:=0;
  writeln('Ingrese una palabra de maximo 10  caracteres y al finalizar ingrese "/"');
  while caracter='/' or i=10 do
   begin 
   read(caracter);
   arreglo[0,i]:=caracter;
   i:=i+1;
   
   
  end 

 end;
function Calculos();
function CodigodeBarras();
begin
writeln('Menu De Opciones');
writeln('1-Juegos');
writeln('2-Calculos');
writeln('3-Codigo de Barras/QR');
writeln('4-Fin');
while OP<>4 do
readln(OP);

case OP of 
1:Juegos();
2:Calculos();
3:CodigodeBarras();
readkey
end.
