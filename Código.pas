(*Comision 1°02 - Berruti Octavio, Navarini Alejandro, Piqué Gabriel*) 
program TpN2AyED(input,output);
uses crt;
var OP:integer;
    c:char;


procedure Juegos;
var arreglos: array[1..2,1..11] of char;
    caracteres: char;
    i:integer;
begin
    i:=1;
  arreglos[1,i]:='a';
  writeln('Ingrese una palabra de maximo 10  caracteres y al finalizar ingrese "/"');
 while (caracteres<>'/') and (i<>11) do
   begin 
   readln(caracteres);
   arreglos[1,i]:=caracteres;
   i:=i+1;
  end

end;




begin
     OP:=0;
     writeln('Menu De Opciones');
     writeln('1-Juegos');
     writeln('2-Calculos');
     writeln('3-Codigo de Barras/QR');
     writeln('4-Fin');
     readln(OP);
     case OP of 1:Juegos;
                end;



     c:=Readkey;
end.
