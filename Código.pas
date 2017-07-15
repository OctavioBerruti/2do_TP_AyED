(*Comision 1°02 - Berruti Octavio, Navarini Alejandro, Piqué Gabriel*) 
program TpN2AyED(input,output);
uses crt;
var OP:integer;
    c:char;


procedure Juegos;
var arreglos: array[1..2,1..11] of char;
    caracteres,letra: char;
    i,p,aciertos,m,acierto,o,h,ingreso:integer;
begin
     for m:=1 to 11  do arreglos[2,m]:='*';
    i:=1;
    o:=0;
    aciertos:=1;
    ingreso:=0;
  arreglos[1,i]:='a';
  clrscr; 
  writeln('Ingrese una palabra de maximo 10  caracteres o ingrese "/" para finalizar');
 while (caracteres<>'/') and (i<>11) do
   begin
   readln(caracteres);
   clrscr;
   for p:=1 to i  do writeln('*');
   arreglos[1,i]:=caracteres;
   i:=i+1;
  end;
  clrscr;
 while (o<>7) and (aciertos<>(i-1)) do begin
   writeln('Ingrese una letra');
   readln(letra);
   clrscr;
          for h:=1 to (i-1)  do begin
           if letra=arreglos[2,h] then ingreso:=1;
         end;
         if ingreso=0 then begin
       for h:=1 to (i-1)  do begin
           if letra=arreglos[1,h] then begin
            acierto:=1;
            aciertos:=aciertos+1;
            arreglos[2,h]:=arreglos[1,h];
           end
         end;
           if acierto=1 then begin
           writeln('acertaste!');
           end
           else begin
           writeln('desacertaste');
           o:=o+1;
           end;
            end
            else writeln('ya ingresaste esa letra');
           acierto:=0;
           ingreso:=0;
       writeln('la palabra es');
       for m:=1 to (i-2)  do write(arreglos[2,m]);
       writeln();
 end

end;
