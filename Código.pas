(*Comision 1°02 - Berruti Octavio, Navarini Alejandro, Piqué Gabriel*) 
program TpN2AyED(input,output);
uses crt;
var OP:integer;
function Juegos();
 begin
  writeln('Ingrese una palabra de maximo 10  caracteres y al finalizar ingrese "/"');
  While caracter='/' or i=10 do
   begin 
   readln();
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
readln(OP);
while OP<>4 do
case OP of 
1:Juegos();
2:Calculos();
3:CodigodeBarras();
readln(OP);
readkey
end.
