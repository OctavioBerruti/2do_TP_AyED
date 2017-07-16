(*Comision 1°02 - Berruti Octavio, Navarini Alejandro, Piqué Gabriel*) 
program TpN2AyED(input,output);
uses crt;
var OP:integer;
    c:char;


procedure Juegos;
var muneco: array[1..6] of string;
     arreglos: array[1..3,1..11] of char;
    caracteres,letra: char;
    i,p,aciertos,m,acierto,o,h,ingreso:integer;
begin
      muneco[1]:=' O';
      muneco[2]:='/';
      muneco[3]:='\';
      muneco[4]:='|';
      muneco[5]:='/';
      muneco[6]:=' \';

     for m:=1 to 11  do arreglos[2,m]:='*';
     for m:=1 to 8  do arreglos[3,m]:=' ';
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
           if (letra=arreglos[2,h]) or (letra=arreglos[3,h])   then ingreso:=1;
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
            if o=1 then writeln(muneco[1]);
           if o=2 then begin
           writeln(muneco[1]);
           write(muneco[2]);
           end;
           if o=3 then begin
           writeln(muneco[1]);
           write(muneco[2]);
           write(muneco[4]);
           end;
           if o=4 then begin
           writeln(muneco[1]);
           write(muneco[2]);
           write(muneco[4]);
           writeln(muneco[3]);
           end;
           if o=5 then begin
           writeln(muneco[1]);
           write(muneco[2]);
           write(muneco[4]);
           writeln(muneco[3]);
           write(muneco[5]);
           end;
            if o=6 then begin
           writeln(muneco[1]);
           write(muneco[2]);
           write(muneco[4]);
           writeln(muneco[3]);
           write(muneco[5]);
           write(muneco[6]);
           end;
           end
           else begin
           writeln('desacertaste');
           arreglos[3,o+1]:=letra;

           o:=o+1;
           if o=1 then writeln(muneco[1]);
           if o=2 then begin
           writeln(muneco[1]);
           write(muneco[2]);
           end;
           if o=3 then begin
           writeln(muneco[1]);
           write(muneco[2]);
           write(muneco[4]);
           end;
           if o=4 then begin
           writeln(muneco[1]);
           write(muneco[2]);
           write(muneco[4]);
           writeln(muneco[3]);
           end;
           if o=5 then begin
           writeln(muneco[1]);
           write(muneco[2]);
           write(muneco[4]);
           writeln(muneco[3]);
           write(muneco[5]);
           end;
            if o=6 then begin
           writeln(muneco[1]);
           write(muneco[2]);
           write(muneco[4]);
           writeln(muneco[3]);
           write(muneco[5]);
           write(muneco[6]);
           end;






           end;
            end
            else writeln('ya ingresaste esa letra');
           acierto:=0;
           ingreso:=0;
           writeln();
       writeln('la palabra es');
       for m:=1 to (i-2)  do write(arreglos[2,m]);
       writeln();
          if aciertos=(i-1) then begin
           writeln('GANASTE EL JUEGO, FELICIDADES');
           end
          else begin
          if  o=7 then begin
             clrscr;
            writeln('PERDISTE EL JUEGO, LA PALABRA ERA: ');
            for m:=1 to (i-2)  do write(arreglos[1,m]);
           end

          else begin
         write('ingresaste erroneamente: ');
         for h:=1 to o+1 do write(arreglos[3,h],' ');
         writeln();
         writeln('Te quedan ', 7-o, ' intentos');
         writeln();
         end
         end;

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
