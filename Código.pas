(*Comision 1°02 - Berruti Octavio, Navarini Alejandro, Piqué Gabriel*) 
program TpN2AyED(input,output);
uses crt;
var OP:integer;
procedure Juegos;
var arreglo:array[1..2,1..11] of char;
    caracter: char;
    i: integer;
 begin
  i:=1;
  caracter:='';
  arreglo[1,i]='';
  writeln('Ingrese una palabra de maximo 10  caracteres y al finalizar ingrese "/"');
  while (caracter<>'/') and (i<>11) do
   begin 
   read(caracter);
   arreglo[1,i]:=caracter;
   caracter:='';
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
1:Juegos;
2:Calculos();
3:CodigodeBarras();
readkey
end.
