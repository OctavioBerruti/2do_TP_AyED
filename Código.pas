(*Comision 1°02 - Berruti Octavio, Navarini Alejandro, Piqué Gabriel*) 
Aca modifica todo
program TpN2AyED;
uses crt;
var OP:integer     ;
const ;
procedure Juegos;
procedure Calculos;
procedure CodigodeBarras;
begin
writeln('Menu De Opciones');
writeln('1-Juegos');
writeln('2-Calculos');
writeln('3-Codigo de Barras/QR');
writeln('4-Fin');
readln(OP);
repeat
 
case OP of 
1:Juegos;
2:Calculos;
3:CodigodeBarras;
until (OP=4);
end.
