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

   caracteres:=readkey;
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
    unidad: array[0..9] of string;
    decena: array[0..9] of string;
    centena: array[0..9] of string;
    milar: array[1..9] of string;
    espec: array[1..6] of string;
    final: string;
begin
     unidad[0]:='cero';
     unidad[1]:='uno';
     unidad[2]:='dos';
     unidad[3]:='tres';
     unidad[4]:='cuatro';
     unidad[5]:='cinco';
     unidad[6]:='seis';
     unidad[7]:='siete';
     unidad[8]:='ocho';
     unidad[9]:='nueve';


     espec[1]:='once';
     espec[2]:='doce';
     espec[3]:='trece';
     espec[4]:='catorce';
     espec[5]:='quince';
     espec[6]:='veinte';

     decena[0]:='diez';
     decena[1]:='dieci';
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
     milar[2]:='dos mil';
     milar[3]:='tres mil';
     milar[4]:='cuatro mil';
     milar[5]:='cinco mil';
     milar[6]:='seis mil';
     milar[7]:='siete mil';
     milar[8]:='ocho mil';
     milar[9]:='nueve mil';

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

     if milares=0 then begin
          if centenas=0 then begin
              if decenas=0 then begin
                       final:=unidad[unidades];

              end
              else begin
                    if decenas=1 then begin
                            if (unidades>0) and (unidades<6) then begin
                                  final:=espec[unidades];
                            end
                            else begin
                                 if unidades=0 then begin
                                      final:=decena[unidades];
                                 end
                                 else final:=decena[1]+unidad[unidades];
                            end;
                    end
                    else begin
                         if decenas=2 then begin
                                 if unidades=0 then begin
                                       final:=espec[6];
                                 end
                                 else begin
                                 final:=decena[decenas]+unidad[unidades];
                                 end;
                         end
                         else begin
                                   if unidades=0 then begin
                                           final:=decena[decenas];
                                   end
                                   else begin
                                        final:=decena[decenas]+' y '+unidad[unidades];
                                   end;
                         end;
                    end;

              end;

          end
          else begin
           if centenas=1 then begin
                  if decenas=0 then begin
                              if unidades=0 then begin
                                           final:=centena[0];
                              end
                              else final:=centena[1]+' '+unidad[unidades];
                  end
                  else begin
                            if decenas=1 then begin
                                         if (unidades>0) and (unidades<6) then begin
                                            final:=centena[1]+' '+espec[unidades];
                                         end
                                         else begin
                                              if unidades=0 then begin
                                              final:=centena[1]+' '+decena[unidades];
                                              end
                                              else final:=centena[1]+' '+decena[1]+unidad[unidades];
                                              end;
                                         end
                            else begin
                                 if decenas=2 then begin
                                      if unidades=0 then begin
                                       final:=centena[1]+' '+espec[6];
                                       end
                                     else begin
                                      final:=centena[1]+' '+decena[decenas]+unidad[unidades];
                                      end;
                                 end
                                 else begin
                                     if unidades=0 then begin
                                                 final:=centena[1]+' '+decena[decenas];
                                     end
                                     else begin
                                             final:=centena[1]+' '+decena[decenas]+' y '+unidad[unidades];
                                     end;
                                 end;
                             end;

                  end;

           end
           else begin
                   if decenas=0 then begin
                              if unidades=0 then begin
                                           final:=centena[centenas];
                              end
                              else final:=centena[centenas]+' '+unidad[unidades];
                  end
                  else begin
                            if decenas=1 then begin
                                         if (unidades>0) and (unidades<6) then begin
                                            final:=centena[centenas]+' '+espec[unidades];
                                         end
                                         else begin
                                              if unidades=0 then begin
                                              final:=centena[centenas]+' '+decena[unidades];
                                              end
                                              else final:=centena[centenas]+' '+decena[1]+unidad[unidades];
                                              end;
                                         end
                            else begin
                                 if decenas=2 then begin
                                      if unidades=0 then begin
                                       final:=centena[centenas]+' '+espec[6];
                                       end
                                     else begin
                                      final:=centena[centenas]+' '+decena[decenas]+unidad[unidades];
                                      end;
                                 end
                                 else begin
                                     if unidades=0 then begin
                                                 final:=centena[centenas]+' '+decena[decenas];
                                     end
                                     else begin
                                             final:=centena[centenas]+' '+decena[decenas]+' y '+unidad[unidades];
                                     end;
                                 end;
                             end;

                  end;

           end;

          end;


     end
     else begin

          if centenas=0 then begin
                        if decenas=0 then begin
                                     if unidades=0 then begin
                                        final:=milar[milares];
                                     end
                                     else begin
                                          final:=milar[milares]+' '+unidad[unidades];
                                     end;
                        end
                        else begin
                                     if decenas=1 then begin
                                         if (unidades>0) and (unidades<6) then begin
                                            final:=milar[milares]+' '+espec[unidades];
                                         end
                                         else begin
                                              if unidades=0 then begin
                                              final:=milar[milares]+' '+decena[unidades];
                                              end
                                              else final:=milar[milares]+' '+decena[1]+unidad[unidades];
                                              end;
                                         end
                                     else begin
                                          if decenas=2 then begin
                                             if unidades=0 then begin
                                                final:=milar[milares]+' '+espec[6];
                                             end
                                             else begin
                                               final:=milar[milares]+' '+decena[decenas]+unidad[unidades];
                                             end;
                                          end
                                          else begin
                                                    if unidades=0 then begin
                                                    final:=milar[milares]+' '+decena[decenas];
                                                    end
                                                    else begin
                                                    final:=milar[milares]+' '+decena[decenas]+' y '+unidad[unidades];
                                                    end;
                                          end;
                                     end;
                        end;
          end
          else begin

                                         if centenas=1 then begin
                                            if decenas=0 then begin
                                               if unidades=0 then begin
                                                  final:=milar[milares]+' '+centena[0];
                              end
                              else final:=milar[milares]+' '+centena[1]+' '+unidad[unidades];
                  end
                  else begin
                            if decenas=1 then begin
                                         if (unidades>0) and (unidades<6) then begin
                                            final:=milar[milares]+' '+centena[1]+' '+espec[unidades];
                                         end
                                         else begin
                                              if unidades=0 then begin
                                              final:=milar[milares]+' '+centena[1]+' '+decena[unidades];
                                              end
                                              else final:=milar[milares]+' '+centena[1]+' '+decena[1]+unidad[unidades];
                                              end;
                                         end
                            else begin
                                 if decenas=2 then begin
                                      if unidades=0 then begin
                                       final:=milar[milares]+' '+centena[1]+' '+espec[6];
                                       end
                                     else begin
                                      final:=milar[milares]+' '+centena[1]+' '+decena[decenas]+unidad[unidades];
                                      end;
                                 end
                                 else begin
                                     if unidades=0 then begin
                                                 final:=milar[milares]+' '+centena[1]+' '+decena[decenas];
                                     end
                                     else begin
                                             final:=milar[milares]+' '+centena[1]+' '+decena[decenas]+' y '+unidad[unidades];
                                     end;
                                 end;
                             end;

                  end;

           end
           else begin
                   if decenas=0 then begin
                              if unidades=0 then begin
                                           final:=milar[milares]+' '+centena[centenas];
                              end
                              else final:=milar[milares]+' '+centena[centenas]+' '+unidad[unidades];
                  end
                  else begin
                            if decenas=1 then begin
                                         if (unidades>0) and (unidades<6) then begin
                                            final:=milar[milares]+' '+centena[centenas]+' '+espec[unidades];
                                         end
                                         else begin
                                              if unidades=0 then begin
                                              final:=milar[milares]+' '+centena[centenas]+' '+decena[unidades];
                                              end
                                              else final:=milar[milares]+' '+centena[centenas]+' '+decena[1]+unidad[unidades];
                                              end;
                                         end
                            else begin
                                 if decenas=2 then begin
                                      if unidades=0 then begin
                                       final:=milar[milares]+' '+centena[centenas]+' '+espec[6];
                                       end
                                     else begin
                                      final:=milar[milares]+' '+centena[centenas]+' '+decena[decenas]+unidad[unidades];
                                      end;
                                 end
                                 else begin
                                     if unidades=0 then begin
                                                 final:=milar[milares]+' '+centena[centenas]+' '+decena[decenas];
                                     end
                                     else begin
                                             final:=milar[milares]+' '+centena[centenas]+' '+decena[decenas]+' y '+unidad[unidades];
                                     end;
                                 end;
                             end;

                  end;

           end;




          end;

     end;



  writeln(final);
end;


 procedure CodigoDeBarras;
 var codi:array[1..8] of integer;
    CDB:array[1..8] of integer;
     cod,apor,cdb1:string ;
     i,num,x,a,b,DV,C,CDBF:integer;
     Co:real;
   begin
   i:=0;
   writeln('Ingrese Codigo Unico de 3 cifras de su Empresa');
    readln(cod);
    writeln('Ingrese Aporte de 4 cifras, fin de datos /');
    while apor<>'/' do
    begin
    readln(apor);
    cdb1:=cod+apor;
        val(cdb1,num,x);
        codi[1]:=TRUNC(num/1000000);
        codi[2]:=TRUNC(num/100000)-codi[1]*10;
        codi[3]:=TRUNC(num/10000)-codi[1]*100-codi[2]*10;
        codi[4]:=TRUNC(num/1000)-codi[1]*1000-codi[2]*100-codi[3]*10;
        codi[5]:=TRUNC(num/100)-codi[1]*10000-codi[2]*1000-codi[3]*100-codi[4]*10;
        codi[6]:=TRUNC(num/10)-codi[1]*100000-codi[2]*10000-codi[3]*1000-codi[4]*100-codi[5]*10;
        codi[7]:=TRUNC(num/1)-codi[1]*1000000-codi[2]*100000-codi[3]*10000-codi[4]*1000-codi[5]*100-codi[6]*10;

        a:=codi[2]+codi[4]+codi[6];
        b:=codi[1]+codi[3]+codi[5]+codi[7];
        C:=a-b;
        DV:=(ABS(C) MOD 10);
        codi[8]:=DV;
        CDBF:=(num*10)+DV;
           for i:=1 to 8 do
           begin
           case codi[i] of
           1:CDB[i]:=0001;
           2:CDB[i]:=0010;
           3:CDB[i]:=0011;
           4:CDB[i]:=0100;
           5:CDB[i]:=0101;
           6:CDB[i]:=0110;
           7:CDB[i]:=0111;
           8:CDB[i]:=1000;
           9:CDB[i]:=1001;
           end;
           end;


        writeln(Codi[1],Codi[2],Codi[3],Codi[4],Codi[5],Codi[6],Codi[7],Codi[8]);
        writeln(CDB[1],CDB[2],CDB[3],CDB[4],CDB[5],CDB[6],CDB[7],CDB[8]);

    end;
  end;




begin
     OP:=0;
     NUM:=0;
     writeln('Menu De Opciones');
     writeln('1-Juegos');
     writeln('2-Calculos');
     writeln('3-Codigo de Barras/QR');
     writeln('4-Fin');

     readln(OP);
          case OP of
                1:Juegos;
                2: begin
                writeln('Ingrese un numero real entre 0 y 9999');
                readln(NUM);
                pesos(NUM);


                end;
                3:CodigoDeBarras;
                end;



     Readkey;



end.











