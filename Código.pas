(*Comision 1°02 - Berruti Octavio, Navarini Alejandro, Piqué Gabriel*) 
program TpN2AyED(input,output);
uses crt;
var OP:integer;
    c:char;
    NUM:real;


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
   for p:=1 to i  do write('*');
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

function pesos(NUM: real) : string ;
var unidades, decenas, centenas, milares,entera : integer;
    divisor:integer;
    unidad: array[1..9] of string;
    decena: array[0..9] of string;
    centena: array[0..9] of string;
    milar: array[1..9] of string;
begin
     unidad[1]:='uno';
     unidad[2]:='dos';
     unidad[3]:='tres';
     unidad[4]:='cuatro';
     unidad[5]:='cinco';
     unidad[6]:='seis';
     unidad[7]:='siete';
     unidad[8]:='ocho';
     unidad[9]:='nueve';
     decena[0]:='diez';
     decena[1]:=;
     decena[2]:='veinti';
     decena[3]:='treinta';
     decena[4]:='cuarenta';
     decena[5]:='cincuenta';
     decena[6]:='sesenta';
     decena[7]:='setenta';
     decena[8]:='ochenta';
     decena[9]:='noventa';
     centena[0]:='cien';
     centena[1]:='ciento';
     centena[2]:='doscientos';
     centena[3]:='trescientos';
     centena[4]:='cuatrocientos';
     centena[5]:='quinientos';
     centena[6]:='seiscientos';
     centena[7]:='setecientos';
     centena[8]:='ochocientos';
     centena[9]:='novecientos';
     milar[1]:='mil';
     milar[1]:='dos mil';
     milar[1]:='tres mil';
     milar[1]:='cuatro mil';
     milar[1]:='cinco mil';
     milar[1]:='seis mil';
     milar[1]:='siete mil';
     milar[1]:='ocho mil';
     milar[1]:='nueve mil';

     entera:=trunc(NUM);
     divisor:=10;
     unidades:=0;
     decenas:=0;
     centenas:=0;
     milares:=0;
     unidades:=entera mod divisor;
     decenas:=((entera)div 10) mod divisor;
     centenas:=((entera)div(100))mod divisor;
     milares:=(entera div 1000)mod divisor;
     writeln(milares,centenas,decenas,unidades);
end;
procedure CodigoDeBarras;
program TpN2AyED(input,output);
uses crt;
var OP:integer;
    c:char;
    NUM:real;


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
   for p:=1 to i  do write('*');
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

function pesos(NUM: real) : string ;
var unidades, decenas, centenas, milares,entera : integer;
    divisor:integer;
    unidad: array[1..9] of string;
    decena: array[0..9] of string;
    centena: array[0..9] of string;
    milar: array[1..9] of string;
begin
     unidad[1]:='uno';
     unidad[2]:='dos';
     unidad[3]:='tres';
     unidad[4]:='cuatro';
     unidad[5]:='cinco';
     unidad[6]:='seis';
     unidad[7]:='siete';
     unidad[8]:='ocho';
     unidad[9]:='nueve';
     decena[0]:='diez';
     decena[1]:='jeje';
     decena[2]:='veinte';
     decena[3]:='treinta';
     decena[4]:='cuarenta';
     decena[5]:='cincuenta';
     decena[6]:='sesenta';
     decena[7]:='setenta';
     decena[8]:='ochenta';
     decena[9]:='noventa';
     centena[0]:='cien';
     centena[1]:='ciento';
     centena[2]:='doscientos';
     centena[3]:='trescientos';
     centena[4]:='cuatrocientos';
     centena[5]:='quinientos';
     centena[6]:='seiscientos';
     centena[7]:='setecientos';
     centena[8]:='ochocientos';
     centena[9]:='novecientos';
     milar[1]:='mil';
     milar[1]:='dos mil';
     milar[1]:='tres mil';
     milar[1]:='cuatro mil';
     milar[1]:='cinco mil';
     milar[1]:='seis mil';
     milar[1]:='siete mil';
     milar[1]:='ocho mil';
     milar[1]:='nueve mil';

     entera:=trunc(NUM);
     divisor:=10;
     unidades:=0;
     decenas:=0;
     centenas:=0;
     milares:=0;
     unidades:=entera mod divisor;
     decenas:=((entera)div 10) mod divisor;
     centenas:=((entera)div(100))mod divisor;
     milares:=(entera div 1000)mod divisor;
     writeln(milares,centenas,decenas,unidades);
end;

 procedure CodigoDeBarras;
 var Transf:array[1..9] of integer;
    codi:array[1..7] of integer;
     cod,apor,cdb1:string ;
     i,num,x:integer;
   begin
   i:=0;
   Transf[1]:=0001;
   Transf[2]:=0010;
   Transf[3]:=0011;
   Transf[4]:=0100;
   Transf[5]:=0101;
   Transf[6]:=0110;
   Transf[7]:=0111;
   Transf[8]:=1000;
   Transf[9]:=1001;
   writeln('Ingrese Codigo Unico de 3 cifras de su Empresa');
    readln(cod);
    writeln('Ingrese Aporte de 4 cifras, fin de datos /');
    while apor<>'/' do
    begin
    readln(apor);
    cdb1:=cod+apor;
        val(cdb1,num,x);













begin
     OP:=0;
     NUM:=0;
     writeln('Menu De Opciones');
     writeln('1-Juegos');
     writeln('2-Calculos');
     writeln('3-Codigo de Barras/QR');
     writeln('4-Fin');
     readln(OP);
     case OP of 1:Juegos;
                2: begin
                writeln('Ingrese un numero real entre 0 y 9999');
                readln(NUM);
                pesos(NUM);
                end;

                end;
                3:CodigoDeBarras;



     c:=Readkey;

end.






begin
     OP:=0;
     NUM:=0;
     writeln('Menu De Opciones');
     writeln('1-Juegos');
     writeln('2-Calculos');
     writeln('3-Codigo de Barras/QR');
     writeln('4-Fin');
     readln(OP);
     case OP of 1:Juegos;
                2: begin
                writeln('Ingrese un numero real entre 0 y 9999');
                readln(NUM);
                pesos(NUM);
                end
                end;



     c:=Readkey;
end.
