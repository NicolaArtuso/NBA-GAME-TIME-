program NBAGAMETIME;
uses
  crt;
type
       Tsquadra=record
       conference:string[30];
       divisione:string[30];
       nome:string[50];
       vinte:integer;
       perse:integer;
       assegnata:boolean;
       //percentuale:integer;
     end;
       Tpartita=record
        squadra_trasferta:Tsquadra;
        squadra_casa:Tsquadra;
        punti_trasferta:integer;
        punti_casa:integer;
       end;
       Tgiornata=array[1..15] of Tpartita;
       Fpartite_playoffs=file of Tpartita;
       Fpartite=file of Tgiornata;
       Fsquadre= file of Tsquadra;
       power_ranking=array[1..30]of Tsquadra;
       conference=array[1..15]of Tsquadra;
var S:Fsquadre;
    P:Fpartite;
    V:power_ranking;
    EST,OVEST: conference;
    SPLAYOFFS: Fsquadre;
    a,b,c,d,i,x,y:integer;
    PPLAYOFFS:Fpartite_playoffs;
    nome_squadre:string;
    nome_partite:string;
    nome_stagione:string;
    supporto_giornata:Tgiornata;
    supporto_stringa:string;
    supporto_squadra:Tsquadra;
    supporto_partita:Tpartita;
procedure intro;
          begin
  delay(1000);
  writeln();
    write('                    N');textcolor(blue);write('N');textcolor(white);write('N');textcolor(blue);write('N     ');textcolor(blue);write('N');textcolor(white);write('N');textcolor(blue);write('N   ');textcolor(red);writeln('BBBBBBBBB   AAAAAAAAAAAA');
  textcolor(blue);
  write('                    N');textcolor(white);write('N');textcolor(blue);write('N');textcolor(white);write('N');textcolor(blue);write('N    ');textcolor(white);write('N');textcolor(blue);write('N');textcolor(white);write('N');textcolor(white);writeln('   BBB    BBB  AAA      AAA');
  write('                    N');textcolor(blue);write('N');textcolor(white);write('N');textcolor(blue);write('N');textcolor(white);write('N');textcolor(blue);write('N   ');textcolor(blue);write('N');textcolor(white);write('N');textcolor(blue);write('N');textcolor(red);writeln('   BBB    BBB  AAA      AAA');
  textcolor(blue);
  write('                    N');textcolor(white);write('N');textcolor(blue);write('N') ;textcolor(blue);write(' N');textcolor(white);write('N');textcolor(blue);write('N') ;textcolor(white);write('  N');textcolor(blue);write('N');textcolor(white);write('N') ; writeln('   BBBBBBBBB   AAAAAAAAAAAA');
  textcolor(red);
  writeln('                    NNN  NNN NNN   BBBBBBBBB   AAAAAAAAAAAA');
  textcolor(white);
  writeln('                    NNN   NNNNNN   BBB    BBB  AAA      AAA');
  textcolor(red);
  writeln('                    NNN    NNNNN   BBB   BBBB  AAA      AAA');
  textcolor(white);
  writeln('                    NNN     NNNN   BBBBBBBBB   AAA      AAA');
  writeln();
  writeln();
  textcolor(yellow);
  delay(2000);
  writeln('            GGGG   AAAA   M   M   EEEE    TTTTTT   II   M   M   EEEE');
  writeln('            G      A  A   MM MM   E         TT     II   MM MM   E   ');
  writeln('            G GG   AAAA   M M M   EEE       TT     II   M M M   EEE ');
  writeln('            G  G   A  A   M   M   E         TT     II   M   M   E   ');
  writeln('            GGGG   A  A   M   M   EEEE      TT     II   M   M   EEEE');
  writeln();
  writeln();
  writeln();
  textcolor(3);
  delay(1000);
  writeln('                                 projected by');
  writeln('                               ARTUSO&CRIVELLARI');
  delay(5000);
  clrscr;
  //readkey();
end;
procedure ricevi_squadre(var s:Fsquadre);
          var supporto:Tsquadra;
          begin
           seek(s,0);
           with supporto do
           begin
           conference:='est';
           divisione:='atlantic';
           nome:='Philadelphia 76ers    ';
           vinte:=0;
           perse:=0;
           assegnata:=false;
           //percentuale:=(vinte/(vinte+perse)*100);
           write(s,supporto);
           //read(s,supporto);
           end;

           with supporto do
           begin
           conference:='est';
           divisione:='atlantic';
           nome:='Boston Celtics        ';
           vinte:=0;
           perse:=0;
           assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
           end;

           with supporto do
           begin
           conference:='est';
           divisione:='atlantic';
           nome:='Brooklyn Nets         ';
           vinte:=0;
           perse:=0;
           assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
           end;

           with supporto do
           begin
           conference:='est';
           divisione:='atlantic';
           nome:='New York Knicks       ';
           vinte:=0;
           perse:=0;
           assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
           end;

           with supporto do
           Begin
           conference:='est';
           divisione:='atlantic';
           nome:='Toronto Raptors       ';
           vinte:=0;
           perse:=0;
           assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
           end;

           ///////////////////////////////////////////////////////////

           with supporto do
           begin
           conference:='est';
           divisione:='central';
           nome:='Cleveland Cavaliers   ';
           vinte:=0;
           perse:=0;
           assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
           end;

           with supporto do
           begin
           conference:='est';
           divisione:='central';
           nome:='Chicago Bulls         ';
           vinte:=0;
           perse:=0;
           assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
           end;

           with supporto do
           begin
           conference:='est';
           divisione:='central';
           nome:='Detroit Pistons       ';
           vinte:=0;
           perse:=0;
           assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
           end;

           with supporto do
           begin
           conference:='est';
           divisione:='central';
           nome:='Indiana Pacers        ';
           vinte:=0;
           perse:=0;
           assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
           end;

           with supporto do
           begin
           conference:='est';
           divisione:='central';
           nome:='Milwakee Bucks        ';
           vinte:=0;
           perse:=0;
           assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
           end;

           //////////////////////////////////////////////////////////////

           with supporto do
           begin
           conference:='est';
           divisione:='southeast';
           nome:='Atlanta Hawks         ';
           vinte:=0;
           perse:=0;
           assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
           end;

            with supporto do
           begin
           conference:='est';
           divisione:='southeast';
           nome:='Charlotte Hornets     ';
           vinte:=0;
           perse:=0;
            assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
           end;

            with supporto do
           begin
           conference:='est';
           divisione:='southeast';
           nome:='Miami Heat            ';
           vinte:=0;
           perse:=0;
            assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
           end;

            with supporto do
           begin
           conference:='est';
           divisione:='southeast';
           nome:='Orlando Magic         ';
           vinte:=0;
           perse:=0;
            assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
           end;

            with supporto do
           begin
           conference:='est';
           divisione:='southeast';
           nome:='Washington Wizards    ';
           vinte:=0;
           perse:=0;
            assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
           end;

          ///////////////////////////////////////////////////////////////

            with supporto do
           begin
           conference:='ovest';
           divisione:='northwest';
           nome:='Denver Nuggets        ';
           vinte:=0;
           perse:=0;
            assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
           end;

           with supporto do
           begin
           conference:='ovest';
           divisione:='northwest';
           nome:='Minnesota Timberwolves';
           vinte:=0;
           perse:=0;
            assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
           end;

           with supporto do
           begin
           conference:='ovest';
           divisione:='northwest';
           nome:='Oklahoma City Thunder ';
           vinte:=0;
           perse:=0;
            assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
           end;

           with supporto do
           begin
           conference:='ovest';
           divisione:='northwest';
           nome:='Portland Trail Blazers';
           vinte:=0;
           perse:=0;
            assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
           end;

           with supporto do
           begin
           conference:='ovest';
           divisione:='northwest';
           nome:='Utah Jazz             ';
           vinte:=0;
           perse:=0;
            assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
           end;

           /////////////////////////////////////////////

           with supporto do
           begin
           conference:='ovest';
           divisione:='pacific';
           nome:='Los Angeles Lakers    ';
           vinte:=0;
           perse:=0;
            assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
          end;

            with supporto do
           begin
           conference:='ovest';
           divisione:='pacific';
           nome:='Golden State Warriors ';
           vinte:=0;
           perse:=0;
            assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
          end;

             with supporto do
           begin
           conference:='ovest';
           divisione:='pacific';
           nome:='Los Angeles Clippers  ';
           vinte:=0;
           perse:=0;
            assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
          end;

           with supporto do
           begin
           conference:='ovest';
           divisione:='pacific';
           nome:='Phoenix Suns          ';
           vinte:=0;
           perse:=0;
            assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
          end;

           with supporto do
           begin
           conference:='ovest';
           divisione:='pacific';
           nome:='Sacramento Kings      ';
           vinte:=0;
           perse:=0;
            assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
          end;

           ////////////////////////////////////////////////////////////

           with supporto do
           begin
           conference:='ovest';
           divisione:='southwest';
           nome:='Dallas Mavericks      ';
           vinte:=0;
           perse:=0;
            assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
          end;

             with supporto do
           begin
           conference:='ovest';
           divisione:='southwest';
           nome:='Houston Rockets       ';
           vinte:=0;
           perse:=0;
            assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
          end;

            with supporto do
           begin
           conference:='ovest';
           divisione:='southwest';
           nome:='Memphis Grizzlies     ';
           vinte:=0;
           perse:=0;
            assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
          end;

              with supporto do
           begin
           conference:='ovest';
           divisione:='southwest';
           nome:='New Orleans Pelicans  ';
           vinte:=0;
           perse:=0;
            assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
          end;

            with supporto do
           begin
           conference:='ovest';
           divisione:='southwest';
           nome:='San Antonio Spurs     ';
           vinte:=0;
           perse:=0;
            assegnata:=false;
           //percentuale:=vinte/(vinte+perse)*100;
           write(s,supporto);
          end;


          end;
procedure stampa_squadre(var s:Fsquadre);
          var supporto:Tsquadra;
          begin
           seek(s,0);
           while (not(EOF(s)))do
           begin
           read(s,supporto);
           with supporto do
           begin
           writeln(filepos(s));
           writeln(nome);
           writeln(divisione);
           writeln(conference);
           writeln(vinte,'-',perse);
           //writeln(percentuale);
           writeln();
           readkey();
           end;
           end;
          end;
function massimo(var vect:power_ranking;n:integer):Tsquadra;
          var i:integer;
              supporto:Tsquadra;
          begin
          supporto.vinte:=-1 ;
          for i:=1 to n do
          begin
               if (vect[i].vinte>=supporto.vinte) and (vect[i].assegnata=false) then
                   begin
                        supporto:=vect[i];
                   end;
          //supporto.vinte:=-1;
          supporto.assegnata:=true;
           massimo:=supporto;
          end;


          end;
function massimo_conference(var vect:conference;n:integer):Tsquadra;
          var i:integer;
              supporto:Tsquadra;
          begin
          supporto.vinte:=-1 ;
          for i:=1 to n do
          begin
               if (vect[i].vinte>=supporto.vinte) and (vect[i].assegnata=false) then
                   begin
                        supporto:=vect[i];
                   end;
          //supporto.vinte:=-1;
          supporto.assegnata:=true;
           massimo_conference:=supporto;
          end;


          end;
procedure accoppiamenti(var p:Fpartite;var s:Fsquadre);
          var giornata:Tgiornata;
              partita:Tpartita;
              c,r,z:integer;
              supporto,supporto2,supporto3:tsquadra;
          begin
            seek(p,filesize(p));
             textcolor(yellow);
             writeln(filepos(p)+1,'^ giornata');
             textcolor(white);
             for c:=1 to 15 do
                 begin
                  randomize;
                  repeat
                  randomize;
                  r:=random(30);
                  seek(s,r);
                  read(s,supporto);
                  randomize;
                  z:=random(30);
                  seek(s,z);
                  read(s,supporto2);
                  until (r<>z) and (supporto.assegnata=false) and ( supporto2.assegnata=false);
                  supporto.assegnata:=true;
                  supporto2.assegnata:=true;
                  seek(s,r);
                  write(s,supporto);
                  seek(s,z);
                  write(s,supporto2);
                  with giornata[c] do
                  begin
                    squadra_trasferta:=supporto;
                    squadra_casa:=supporto2;
                    repeat
                    punti_trasferta:=random(60)+71;
                    punti_casa:=random(60)+71;
                    until punti_trasferta<>punti_casa;

                     if punti_trasferta>punti_casa then
            begin
             textcolor(3);
             write(squadra_trasferta.nome,' ',punti_trasferta);textcolor(white);writeln('-',punti_casa,'     ',squadra_casa.nome);
             seek(s,r);
             supporto.vinte:=supporto.vinte+1;
             write(s,supporto);
             seek(s,z);
             supporto2.perse:=supporto2.perse+1;
             write(s,supporto2);
            end
            else
             begin
             write(squadra_trasferta.nome,' ',punti_trasferta,'-');textcolor(3);writeln(punti_casa,'     ',squadra_casa.nome);textcolor(white);
             seek(s,z);
             supporto2.vinte:=supporto2.vinte+1;
             write(s,supporto2);
             seek(s,r);
             supporto.perse:=supporto.perse+1;
             write(s,supporto);
             end;
                  end;

            end;
            write(p,giornata);
            seek(s,0);
            while(not EOF(s)) do
            begin
            with supporto3 do
            begin

             read(s,supporto3);
             r:=filepos(s)-1;
             seek(s,r);
             supporto3.assegnata:=false;
             write(s,supporto3);
            end;
            end;
            //readkey();
          end;
procedure classifica_totale(var s:Fsquadre);
            var po,v:power_ranking;
                supporto:Tsquadra;
                c,i,t:integer;
          begin
            seek(s,0);

            for c:=1 to 30 do
            begin
            read(s,supporto);
            v[c]:=supporto;
            po[c].assegnata:=false;
            end;

            for c:=1 to 30 do
            begin
              po[c]:=massimo(v,30);
              for i:=1 to 30 do
               begin
               if v[i].nome=po[c].nome then
                  begin
                  with v[i] do
                   begin
                   nome:='';
                   divisione:='';
                   conference:='';
                   vinte:=-i;
                   assegnata:=true;
                   perse:=0;
                   end;
                  end;
               end;
            end;

            for c:=1 to 30 do
            begin
             with po[c] do
             begin
              write(c,' ',nome,' ',vinte,'-',perse);
              Readln();
              end;
            end;

          end;
function classifica_conference(var s:Fsquadre;co:string):conference;
          var po,v:conference;
                supporto:Tsquadra;
                c,i,t:integer;
                a:string;
            begin
            seek(s,0);
            t:=0;
            if co='est' then
            begin
            for c:=1 to 30 do
            begin
            read(s,supporto);
            if supporto.conference='est' then
            begin
            t:=t+1;
            v[t]:=supporto;
            po[t].assegnata:=false;
            end;
            end;

            for t:=1 to 15 do
            begin
              po[t]:=massimo_conference(v,15);
              for i:=1 to 15 do
               begin
               if v[i].nome=po[t].nome then
                  begin
                  with v[i] do
                   begin
                   nome:='';
                   divisione:='';
                   conference:='';
                   vinte:=-i;
                   assegnata:=true;
                   perse:=0;
                   end;
                  end;
               end;
            end;
            end;



            if co='ovest' then
            begin
            for c:=1 to 30 do
            begin
            read(s,supporto);
            if supporto.conference='ovest' then
            begin
            t:=t+1;
            v[t]:=supporto;
            po[t].assegnata:=false;
            end;
            end;

            for c:=1 to 15 do
            begin
              po[c]:=massimo_conference(v,15);
              for i:=1 to 15 do
               begin
               if v[i].nome=po[c].nome then
                  begin
                  with v[i] do
                   begin
                   nome:='';
                   divisione:='';
                   conference:='';
                   vinte:=-i;
                   assegnata:=true;
                   perse:=0;
                   end;
                  end;
               end;
            end;
            end;
             for c:=1 to 15 do
            begin
             classifica_conference[c]:=po[c];
            end;
            end;
procedure stampa_conference(po:conference);
          var c:integer;
          begin
          for c:=1 to 15 do
          begin
           with po[c] do
             begin
              if c<9 then
              begin
              textcolor(3);
              write(c,'  ',nome,' ',vinte,'-',perse);
              end;

              if c=9 then
               begin
              textcolor(white);
              write(c,'  ',nome,' ',vinte,'-',perse);
              end;
              if c>9 then
              write(c,' ',nome,' ',vinte,'-',perse);
              Readln();
           end;

           end;
           writeln();
          end;
procedure quadro_primo_turno (var sp:Fsquadre);
          var c:integer;
              supporto:Tsquadra;
          begin
          c:=0;
           textcolor(blue);write('EST                                              ');textcolor(red);writeln('OVEST');textcolor(white);
          repeat
          writeln('==========================                       ==========================');
          write('|');seek(sp,c);read(sp,supporto);write(supporto.nome,' ',supporto.vinte,'|                       |');seek(sp,c+8);read(sp,supporto);writeln(supporto.vinte,' ',supporto.nome,'|');
          writeln('|                        |                       |                        |');
          write('|');seek(sp,7-c);read(sp,supporto);write(supporto.nome,' ',supporto.vinte,'|                       |');seek(sp,15-c);read(sp,supporto);writeln(supporto.vinte,' ',supporto.nome,'|');
          writeln('==========================                       ==========================');
          c:=c+2;
          until c=8;


          end;
procedure azzera_vittorie(var e:conference);                     //serve per passare dalla regular season ai playoffs
          var x:integer;
          begin
          for x:=1 to 8 do
          begin
           e[x].vinte:=0;
           e[x].perse:=0;
          end;
          end;
procedure primo_turno(var sp:Fsquadre;var pp:Fpartite_playoffs);
          var x:integer;
              partita:Tpartita;
              supporto,supporto2:Tsquadra;
          begin
          for x:=0 to 7 do
          begin
           seek(pp,filesize(pp));
            with partita do
             begin
                randomize;
                if x<=3 then
                begin
                seek(sp,7-x)
                end
                else
                begin
                seek(sp,23-x-4);
                end;
                read(sp,supporto);
                squadra_trasferta:=supporto;
                if x<=3 then
                begin
                seek(sp,x)
                end
                else
                begin
                seek(sp,x+4);
                end;
                read(sp,supporto2);
                squadra_casa:=supporto2;
                randomize;
                if (supporto2.vinte<>4) and (supporto.vinte<>4) then
                begin
                repeat
                randomize;
                punti_trasferta:=random(60)+71;
                randomize;
                punti_casa:=random(60)+71;
                until punti_casa<>punti_trasferta;;
            if punti_trasferta>punti_casa then
            begin
              if x<=3 then
                begin
                seek(sp,7-x)
                end
                else
                begin
                seek(sp,23-x-4);
                end;
             supporto.vinte:=supporto.vinte+1;
             write(sp,supporto);
              if x<=3 then
                begin
                seek(sp,x)
                end
                else
                begin
                seek(sp,x+4);
                end;
             supporto2.perse:=supporto2.perse+1;
             write(sp,supporto2);
             textcolor(3);
             write(squadra_trasferta.nome,' ',punti_trasferta);textcolor(white);writeln('-',punti_casa,'     ',squadra_casa.nome);

            end
            else
             begin
              if x<=3 then
                begin
                seek(sp,x)
                end
                else
                begin
                seek(sp,x+4);
                end;
             supporto2.vinte:=supporto2.vinte+1;
             write(sp,supporto2);
              if x<=3 then
                begin
                seek(sp,7-x)
                end
                else
                begin
                seek(sp,23-x-4);
                end;
             supporto.perse:=supporto.perse+1;
             write(sp,supporto);
             write(squadra_trasferta.nome,' ',punti_trasferta,'-');textcolor(3);writeln(punti_casa,'     ',squadra_casa.nome);textcolor(white);
          end;
          seek(pp,filesize(pp));
          write(pp,partita);
          end
          else
          begin
          if supporto.vinte=4 then
          begin
             if x<=3 then
                begin
                seek(sp,7-x)
                end
                else
                begin
                seek(sp,23-x-4);
                end;
          supporto.assegnata:=true;
          write(sp,supporto);
            if x<=3 then
                begin
                seek(sp,x)
                end
                else
                begin
                seek(sp,x+4);
                end;
          supporto2.assegnata:=false;
          write(sp,supporto2);
          end;
          if supporto2.vinte=4 then
          begin
           if x<=3 then
                begin
                seek(sp,7-x)
                end
                else
                begin
                seek(sp,23-x-4);
                end;
          supporto2.assegnata:=true;
          write(sp,supporto2);
            if x<=3 then
                begin
                seek(sp,x)
                end
                else
                begin
                seek(sp,x+4);
                end;
          supporto.assegnata:=false;
          write(sp,supporto);
          end;
          end;
          end;

         end;
          end;
procedure vettore_file (var c:conference;var sp:Fsquadre);       //serve per passare dalla regular season ai playoffs do azzera vittorie
          var i:integer;
              supporto:Tsquadra;
          begin
           for i:=1 to 8 do
           begin
           seek(sp,filesize(sp));
           with supporto do
           begin
           nome:=c[i].nome;
           conference:=c[i].conference;
           divisione:=c[i].divisione;
           vinte:=0;
           perse:=0;
           assegnata:=false;
           end;
           write(sp,supporto);
           end;
          end;
procedure da_primo_a_secondo(var sp:Fsquadre);
          var x,c:integer;
              partita:Tpartita;
              supporto,supporto2:Tsquadra;
          begin
          for x:=0 to 15 do
          begin
          seek(sp,x);
          read(sp,supporto);
          if supporto.assegnata=true then
          begin
            seek(sp,filesize(sp));
            supporto2:=supporto;
            supporto2.vinte:=0;
            supporto2.perse:=0;
            write(sp,supporto2);
          end;
          end;

          end;
procedure secondo_turno(var sp:Fsquadre;var pp:Fpartite_playoffs);
          var x,c:integer;
              partita:Tpartita;
              supporto,supporto2:Tsquadra;
          begin
          c:=1;

          for x:=1 to 2 do
          begin
             seek(pp,filesize(pp));
             with partita do
             begin
              seek(sp,20-x);
              read(sp,supporto);
              squadra_trasferta:=supporto;
              seek(sp,15+x);
              read(sp,supporto2);
              squadra_casa:=supporto2;
              if (supporto.vinte<>4) and (supporto2.vinte<>4) then
              begin
              repeat
              randomize;
              punti_casa:=random(60)+71;
              randomize;
              punti_trasferta:=random(60)+71;
              until punti_casa<>punti_trasferta;
              write(pp,partita);
              if punti_trasferta>punti_casa then
              begin
              textcolor(3);
              write(squadra_trasferta.nome,' ',punti_trasferta);textcolor(white);writeln('-',punti_casa,'     ',squadra_casa.nome);
              seek(sp,20-x);
              supporto.vinte:=supporto.vinte+1;
              write(sp,supporto);
              seek(sp,15+x);
              supporto2.perse:=supporto2.perse+1;
              write(sp,supporto2);
              end
              else
              begin
              textcolor(white);
              write(squadra_trasferta.nome,' ',punti_trasferta);textcolor(3);writeln('-',punti_casa,'     ',squadra_casa.nome);textcolor(white);
              seek(sp,20-x);
              supporto.perse:=supporto.perse+1;
              write(sp,supporto);
              seek(sp,15+x);
              supporto2.vinte:=supporto2.vinte+1;
              write(sp,supporto2);
              seek(pp,filesize(pp));
              write(pp,partita);
               end;
              end
              else
               begin
                if supporto.vinte=4 then
                begin
                seek(sp,20-x);
                supporto.assegnata:=true;
                write(sp,supporto);
                seek(sp,15+x);
                supporto2.assegnata:=false;
                write(sp,supporto2);
                end;
                if supporto2.vinte=4 then
                begin
                seek(sp,15+x);
                supporto2.assegnata:=true;
                 write(sp,supporto2);
                 seek(sp,20-x);
                 supporto.assegnata:=false;
                 write(sp,supporto);
                 end;
               end;
              end;
             end;
 //////////////////////////////////////////////////////////////////////////////
              for x:=1 to 2 do
          begin
             seek(pp,filesize(pp));
             with partita do
             begin
              seek(sp,24-x);
              read(sp,supporto);
              squadra_trasferta:=supporto;
              seek(sp,19+x);
              read(sp,supporto2);
              squadra_casa:=supporto2;
              if (squadra_casa.vinte<>4) and (squadra_trasferta.vinte<>4) then
              begin
              repeat
              randomize;
              punti_casa:=random(60)+71;
              randomize;
              punti_trasferta:=random(60)+71;
              until punti_casa<>punti_trasferta;
              write(pp,partita);
              if punti_trasferta>punti_casa then
              begin

              textcolor(3);
              write(squadra_trasferta.nome,' ',punti_trasferta);textcolor(white);writeln('-',punti_casa,'     ',squadra_casa.nome);
              seek(sp,24-x);
              supporto.vinte:=supporto.vinte+1;
              write(sp,supporto);
              seek(sp,19+x);
              supporto2.perse:=supporto2.perse+1;
              write(sp,supporto2);
              end

              else
              begin

              textcolor(white);
              write(squadra_trasferta.nome,' ',punti_trasferta);textcolor(3);writeln('-',punti_casa,'     ',squadra_casa.nome);textcolor(white);
              seek(sp,24-x);
              supporto.perse:=supporto.perse+1;
              write(sp,supporto);
              seek(sp,19+x);
              supporto2.vinte:=supporto2.vinte+1;
              write(sp,supporto2);
              seek(pp,filesize(pp));
              write(pp,partita);

               end;

              end
              else
              begin
               if supporto.vinte=4 then
                begin
                seek(sp,24-x);
                supporto.assegnata:=true;
                write(sp,supporto);
                seek(sp,(19+x));
                supporto2.assegnata:=false;
                write(sp,supporto2);
                end;
                if supporto2.vinte=4 then
                begin
                seek(sp,24-x);
                supporto.assegnata:=false;
                write(sp,supporto);
                seek(sp,(19+x));
                supporto2.assegnata:=true;
                write(sp,supporto2);
                 end;
              end;
              end;
             end;
          end;
procedure quadro_secondo_turno (var sp:Fsquadre);
         var supporto:Tsquadra;
          begin
           textcolor(blue);write('EST                                              ');textcolor(red);writeln('OVEST');textcolor(white);
          writeln('==========================                        ==========================');
          write('|');seek(sp,16);read(sp,supporto);write(supporto.nome,' ',supporto.vinte,'|                       |');seek(sp,20);read(sp,supporto);writeln(supporto.vinte,' ',supporto.nome,'|');
          writeln('|                        |                       |                        |');
          write('|');seek(sp,19);read(sp,supporto);write(supporto.nome,' ',supporto.vinte,'|                       |');seek(sp,23);read(sp,supporto);writeln(supporto.vinte,' ',supporto.nome,'|');
          writeln('==========================                       ==========================');

           writeln('==========================                       ==========================');
          write('|');seek(sp,17);read(sp,supporto);write(supporto.nome,' ',supporto.vinte,'|                       |');seek(sp,21);read(sp,supporto);writeln(supporto.vinte,' ',supporto.nome,'|');
          writeln('|                        |                       |                        |');
          write('|');seek(sp,18);read(sp,supporto);write(supporto.nome,' ',supporto.vinte,'|                       |');seek(sp,22);read(sp,supporto);writeln(supporto.vinte,' ',supporto.nome,'|');
          writeln('==========================                       ==========================');

          end;
procedure da_secondo_a_semifinali(var sp:Fsquadre);
          var x,c:integer;
              partita:Tpartita;
              supporto,supporto2:Tsquadra;
          begin
          for x:=16 to 23 do
          begin
          seek(sp,x);
          read(sp,supporto);
          if supporto.assegnata=true then
          begin
            seek(sp,filesize(sp));
            supporto2:=supporto;
            supporto2.vinte:=0;
            supporto2.perse:=0;
            write(sp,supporto2);
          end;
          end;

          end;
procedure semifinali(var sp:Fsquadre;var pp:Fpartite_playoffs);
          var x,c:integer;
              partita:Tpartita;
              supporto,supporto2:Tsquadra;
              begin
              seek(pp,filesize(pp));
              with partita do
              begin
               seek(sp,25);
               read(sp,supporto);
               squadra_trasferta:=supporto;
               seek(sp,24);
               read(sp,supporto2);
               squadra_casa:=supporto2;

               if (supporto.vinte<>4) and (supporto2.vinte<>4) then
              begin
              repeat
              randomize;
              punti_casa:=random(60)+71;
              randomize;
              punti_trasferta:=random(60)+71;
              until punti_casa<>punti_trasferta;
              write(pp,partita);
              if punti_trasferta>punti_casa then
              begin
              textcolor(3);
              write(squadra_trasferta.nome,' ',punti_trasferta);textcolor(white);writeln('-',punti_casa,'     ',squadra_casa.nome);
              seek(sp,25);
              supporto.vinte:=supporto.vinte+1;
              write(sp,supporto);
              seek(sp,24);
              supporto2.perse:=supporto2.perse+1;
              write(sp,supporto2);
              end
              else
              begin
              textcolor(white);
              write(squadra_trasferta.nome,' ',punti_trasferta);textcolor(3);writeln('-',punti_casa,'     ',squadra_casa.nome);textcolor(white);
              seek(sp,25);
              supporto.perse:=supporto.perse+1;
              write(sp,supporto);
              seek(sp,24);
              supporto2.vinte:=supporto2.vinte+1;
              write(sp,supporto2);
              end;
              seek(pp,filesize(pp));
              write(pp,partita);
              end
                 else
               begin
                if supporto.vinte=4 then
                begin
                seek(sp,25);
                supporto.assegnata:=true;
                write(sp,supporto);
                seek(sp,24);
                supporto2.assegnata:=false;
                write(sp,supporto2);
                end;
                if supporto2.vinte=4 then
                begin
                seek(sp,25);
                supporto2.assegnata:=true;
                 write(sp,supporto2);
                 seek(sp,24);
                 supporto.assegnata:=false;
                 write(sp,supporto);
                 end;
               end;
              end;
              ////////////////////////////////
               seek(pp,filesize(pp));
              with partita do
              begin
               seek(sp,27);
               read(sp,supporto);
               squadra_trasferta:=supporto;
               seek(sp,26);
               read(sp,supporto2);
               squadra_casa:=supporto2;

               if (supporto.vinte<>4) and (supporto2.vinte<>4) then
              begin
              repeat
              punti_casa:=random(60)+71;
              punti_trasferta:=random(60)+71;
              until punti_casa<>punti_trasferta;
              write(pp,partita);
              if punti_trasferta>punti_casa then
              begin
              textcolor(3);
              write(squadra_trasferta.nome,' ',punti_trasferta);textcolor(white);writeln('-',punti_casa,'     ',squadra_casa.nome);
              seek(sp,27);
              supporto.vinte:=supporto.vinte+1;
              write(sp,supporto);
              seek(sp,26);
              supporto2.perse:=supporto2.perse+1;
              write(sp,supporto2);
              end
              else
              begin
              textcolor(white);
              write(squadra_trasferta.nome,' ',punti_trasferta);textcolor(3);writeln('-',punti_casa,'     ',squadra_casa.nome);textcolor(white);
              seek(sp,27);
              supporto.perse:=supporto.perse+1;
              write(sp,supporto);
              seek(sp,26);
              supporto2.vinte:=supporto2.vinte+1;
              write(sp,supporto2);
              end;
              seek(pp,filesize(pp));
              write(pp,partita);

              end
                 else
               begin
                if supporto.vinte=4 then
                begin
                seek(sp,27);
                supporto.assegnata:=true;
                write(sp,supporto);
                seek(sp,26);
                supporto2.assegnata:=false;
                write(sp,supporto2);
                end;
                if supporto2.vinte=4 then
                begin
                seek(sp,27);
                supporto2.assegnata:=true;
                 write(sp,supporto2);
                 seek(sp,26);
                 supporto.assegnata:=false;
                 write(sp,supporto);
                 end;
               end;
              end;


              end;
procedure quadro_semifinali(var sp:Fsquadre);
           var supporto:Tsquadra;
          begin
           textcolor(blue);write('EST                                              ');textcolor(red);writeln('OVEST');textcolor(white);
          writeln('==========================                       ==========================');
          write('|');seek(sp,24);read(sp,supporto);write(supporto.nome,' ',supporto.vinte,'|                       |');seek(sp,26);read(sp,supporto);writeln(supporto.vinte,' ',supporto.nome,'|');
          writeln('|                        |                       |                        |');
          write('|');seek(sp,25);read(sp,supporto);write(supporto.nome,' ',supporto.vinte,'|                       |');seek(sp,27);read(sp,supporto);writeln(supporto.vinte,' ',supporto.nome,'|');
           writeln('==========================                       ==========================');
          end;
procedure da_semifinali_a_finali(var sp:Fsquadre);
           var x,c:integer;
              partita:Tpartita;
              supporto,supporto2:Tsquadra;
          begin
          for x:=24 to 27 do
          begin
          seek(sp,x);
          read(sp,supporto);
          if supporto.assegnata=true then
          begin
            seek(sp,filesize(sp));
            supporto2:=supporto;
            supporto2.vinte:=0;
            supporto2.perse:=0;
            write(sp,supporto2);
          end;
          end;

          end;
procedure finali(var sp:Fsquadre;var pp:Fpartite_playoffs);
           var x,c:integer;
              partita:Tpartita;
              supporto,supporto2:Tsquadra;
              begin
              seek(pp,filesize(pp));
              with partita do
              begin
               seek(sp,29);
               read(sp,supporto);
               squadra_trasferta:=supporto;
               seek(sp,28);
               read(sp,supporto2);
               squadra_casa:=supporto2;

               if (supporto.vinte<>4) and (supporto2.vinte<>4) then
              begin
              repeat
              randomize;
              punti_casa:=random(60)+71;
              randomize;
              punti_trasferta:=random(60)+71;
              until punti_casa<>punti_trasferta;
              write(pp,partita);
              if punti_trasferta>punti_casa then
              begin
              textcolor(3);
              write(squadra_trasferta.nome,' ',punti_trasferta);textcolor(white);writeln('-',punti_casa,'     ',squadra_casa.nome);
              seek(sp,29);
              supporto.vinte:=supporto.vinte+1;
              write(sp,supporto);
              seek(sp,28);
              supporto2.perse:=supporto2.perse+1;
              write(sp,supporto2);
              end
              else
              begin
              textcolor(white);
              write(squadra_trasferta.nome,' ',punti_trasferta);textcolor(3);writeln('-',punti_casa,'     ',squadra_casa.nome);textcolor(white);
              seek(sp,29);
              supporto.perse:=supporto.perse+1;
              write(sp,supporto);
              seek(sp,28);
              supporto2.vinte:=supporto2.vinte+1;
              write(sp,supporto2);
              end;
              seek(pp,filesize(pp));
              write(pp,partita);

              end
                 else
               begin
                if supporto.vinte=4 then
                begin
                seek(sp,29);
                supporto.assegnata:=true;
                write(sp,supporto);
                seek(sp,28);
                supporto2.assegnata:=false;
                write(sp,supporto2);
                writeln('THE ',supporto.nome,'ARE THE NEW WORLD CHAMPIONS! CONGRATULATIONS');
                end;
                if supporto2.vinte=4 then
                begin
                seek(sp,28);
                supporto2.assegnata:=true;
                 write(sp,supporto2);
                 seek(sp,29);
                 supporto.assegnata:=false;
                 write(sp,supporto);
                 writeln('THE ',supporto2.nome,'ARE THE NEW WORLD CHAMPIONS! CONGRATULATIONS');
                 end;
               end;
              end;

              end;
procedure quadro_finali(var sp:Fsquadre);
           var supporto:Tsquadra;
          begin
          writeln();
          writeln();
          writeln();
          writeln();
          writeln();
          writeln();
          writeln();
          writeln();
          writeln();
          writeln('                          ========================== ');
          write('                          |');seek(sp,28);read(sp,supporto);writeln(supporto.nome,' ',supporto.vinte,'|');
          writeln('                          |                        | ');
          write('                          |');seek(sp,29);read(sp,supporto);writeln(supporto.nome,' ',supporto.vinte,'|   ');
           writeln('                          ========================== ');
          end;
procedure MENU;
          begin
          writeln();
          writeln();
          textcolor(yellow);
          writeln('           @   @ @@@  @@@@   @@@@ @@@@@ @   @ @@@@@   @@@@@ @ @   @ @@@@@   ');
          writeln('           @@  @ @  @ @  @   @    @   @ @@ @@ @         @   @ @@ @@ @       ');
          writeln('           @ @ @ @@@  @@@@   @ @@ @@@@@ @ @ @ @@@@      @   @ @ @ @ @@@@@   ');
          writeln('           @  @@ @  @ @  @   @  @ @   @ @   @ @         @   @ @   @ @       ');
          writeln('           @   @ @@@  @  @   @@@@ @   @ @   @ @@@@@     @   @ @   @ @@@@@   ');
          writeln('');
          textcolor(white);
          writeln('                    ===================    ==================== ');
          writeln('                    |1 Gioca          |    | 2 Risultati      | ');
          writeln('                    ===================    ==================== ');
          writeln();
          writeln('                    ===================    ==================== ');
          writeln('                    |3 Classifiche    |    | 4 Playoffs       | ');
          writeln('                    ===================    ==================== ');
          writeln();
          writeln('                    ===================    ==================== ');
          writeln('                    |5 Guida          |    | 6 Cambia Profilo | ');
          writeln('                    ===================    ==================== ');
          writeln();
          writeln('                                ===================             ');
          writeln('                                |7 Esci           |             ');
          writeln('                                ===================             ');

          end;
procedure menu_classifiche;
          begin
          writeln();
          writeln();
          writeln();
          writeln();
          WRITELN();
          textcolor(yellow);
          writeln('               @@@@@ @     @@@@@ @@@@@ @@@@@ @ @@@@@ @ @@@@@ @@@@@ ');
          writeln('               @     @     @   @ @     @     @ @     @ @     @   @ ');
          writeln('               @     @     @@@@@ @@@@@ @@@@@ @ @@@@@ @ @     @@@@@ ');
          writeln('               @     @     @   @     @     @ @ @     @ @     @   @ ');
          writeln('               @@@@@ @@@@@ @   @ @@@@@ @@@@@ @ @     @ @@@@@ @   @ ');
          writeln();
          textcolor(white);
          writeln('        =========================   =================   ==================');
          writeln('        |1 Classifica conference|   |2 Power ranking|   |3 Torna al menu''|');
          writeln('        =========================   =================   ==================');
          end;
procedure menu_playoffs;
          begin
           writeln();
           writeln();
           writeln();
           writeln();
           writeln();
           writeln('              @@@@@ @     @@@@@ @   @ @@@@@ @@@@@ @@@@@ @@@@@   ');
           writeln('              @   @ @     @   @  @ @  @   @ @     @     @       ');
           writeln('              @@@@@ @     @@@@@   @   @   @ @@@@@ @@@@@ @@@@@   ');
           writeln('              @     @     @   @   @   @   @ @     @         @   ');
           writeln('              @     @@@@@ @   @   @   @@@@@ @     @     @@@@@   ');
           writeln();
           writeln('                ===================    ==================== ');
           writeln('                |1 Gioca          |    | 2 Risultati      | ');
           writeln('                ===================    ==================== ');
           writeln();
           writeln('                           ==================== ');
           writeln('                           | 4 esci           | ');
           writeln('                           ==================== ');
           writeln();
          end;
procedure coppa;
          begin
textcolor(yellow);
writeln('                          @@@@@@                     ');
writeln('                        @@@@@@@@@@                  ');
writeln('                       @@@@@@@@@@@@                 ');
writeln('                      @@@@@@@@@@@@@@                ');
writeln('                      @@@@@@@@@@@@@@                ');
writeln('                       @@@@@@@@@@@@                 ');
writeln('                        @@@@@@@@@@                  ');
textcolor(white);write('@@@@@ @   @ @@@@@        ');textcolor(yellow);write(' @@@@@@             ');textcolor(white);writeln('@@@@@ @ @   @ @@@@@ @     @@@@@');
write('  @   @   @ @           ');textcolor(yellow);write('@@@@@@@@@@@@@@@@@    ');textcolor(white);writeln('@     @ @@  @ @   @ @     @    ');
write('  @   @@@@@ @@@         ');textcolor(yellow);write('@@@@@@@@@@@@@@@@     ');textcolor(white);writeln('@@@@@ @ @ @ @ @@@@@ @     @@@@@');
write('  @   @   @ @           ');textcolor(yellow);write('@@@@@@@@@@@@@@       ');textcolor(white);writeln('@     @ @  @@ @   @ @         @');
write('  @   @   @ @@@@@       ');textcolor(yellow);write('@@@@@@@@@@@@         ');textcolor(white);writeln('@     @ @   @ @   @ @@@@@ @@@@@');textcolor(yellow);
writeln('                        @@@@@@@@@@@                 ');
writeln('                        @@@@@@@@@@                  ');
writeln('                        @@@@@@@@@                   ');
writeln('                        @@@@@@@@                    ');
writeln('                        @@@@@@@                     ');
writeln('                        @@@@@@                      ');
writeln('                        @@@@@                       ');
writeln('                        @@@@                        ');
writeln('                        @@@                         ');
writeln('                        @@                          ');
writeln('             @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    ');
writeln('             @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    ');

readkey();
end;
procedure guida;
          begin
          writeln('Ben arrivato su nba game time, la nuova simulazione del campionato più bello del mondo!');
          writeln('Cosa ti offre nba game time? ');
          writeln('-Ti permette di simulare nel piu'' breve tempo possibile la regular season del Nba fino ad arrivare ai playoffs   che decretano il vincitore.');
          writeln('-Ti consente di visualizzare classifiche aggiornate delle squadre nba piu'' famose partita dopo partita. (power ranking che e'' la classifica totale, e la classifica di Conference suddivisa in est e ovest)');
          writeln();
          READLN();
          writeln('Come e'' strutturato nba game time?   ');
          writeln('All''inizio della schermata principale ci sono varie gamme di scelta:  ');
          writeln('1) gioca ------------> Inizio della simulazione;');
          writeln('2) risultati---------> visualizza i risultati ottenuti dalle partite eseguite;  ');
          writeln('3) classifiche----->   aggiorna le classifiche ;  ');
          writeln('4) playoffs-------->  menu'' formato da quattro scelte: 1) gioca; 2) risultati; 3) quadro playoffs; 4) esci;  ');
          writeln('5) guida----------> permette di illustrare le regole alle persone che giocano per la prima volta;  ');
          writeln('6) esci-----------> fa uscire l''utente dal programma;  ');
          writeln('La lega e'' formata da 30 squadre della Conference a loro volta suddivise in 15 squadre della Est e in 15 squadre dell’Ovest.');
          writeln('Quando finisce la regular season, formata da 82 partite, le prime 8 della Conference Est e le prime 8 della Conference Ovest vanno ai playoffs e passano il turno le squadre che vincono 4 partite, tutto cio'' si ripete fino alla finale.');
          writeln('Puoi uscire dal gioco in qualsiasi momento grazie al salvataggio automatico e quando rientri puoi decidere se continuare la stagione precedente oppure iniziarne una nuova.');
          writeln('Grazie per l’attenzione, buon divertimento! ');
          readln();
          end;



begin
 //intro;
 textcolor(white);
  writeln('1--> Nuova stagione');
  writeln('2--> Carica stagione');
  readln(c);
  case c of
  1: begin
     writeln('inserisci il nome del nuovo file delle squadre');
     readln(nome_squadre);
     assign(S,nome_squadre);
     rewrite(S);
     ricevi_squadre(S);
     writeln('inserisci il nome del nuovo file delle partite');
     readln(nome_partite);
     assign(P,nome_partite);
     rewrite(P);
     end;
  2: begin
     writeln('inserisci il nome del file delle squadre da caricare');
     readln(nome_squadre);
     assign(S,nome_squadre);
     reset(S);
     writeln('inserisci il nome del file delle partite da caricare');
     readln(nome_partite);
     assign(P,nome_partite);
     reset(P);
     end;
     end;
  repeat
     clrscr;
     MENU;
     readln(c);
     CLRSCR;
  case c of
  1:begin
    clrscr;
    if filesize(P)<82 then
    begin
    repeat
    writeln('Sei arrivato alla ',filesize(P)+1,'^ giornata');
    writeln('Quante partite vuoi giocare? (max ',(82-filesize(P)),')');
    readln(i);
    repeat
    accoppiamenti(P,S);
    clrscr;
    i:=i-1;
    until (i=0) or (filesize(P)=82) ;
    writeln('Premi 1 per simulare altre partite');
    writeln('Premi 2 per tornare al menu');
    readln(x);
    until x=2;
    end
    else
    begin
    writeln('Complimenti! Hai completato la regular season. Torna al menu iniziale per       continuare nei playoffs!');
    READKEY();
    clrscr;
    end;
    end;

  2:begin
      clrscr;
      writeln('Sei arrivato alla ',filesize(P),'^ giornata');
      repeat
      repeat
      writeln('Quale giornata vuoi visualizzare?');
      readln(x);
      clrscr;
      until (x<=filesize(P)) and (0<x);
      seek(P,x-1);
      read(P,supporto_giornata);
      textcolor(yellow);
      writeln(x,'^ giornata');
      textcolor(white);
      for x:=1 to 15 do
      begin
      with supporto_giornata[x] do
      begin
         if punti_trasferta>punti_casa then
            begin
             textcolor(3);
             write(squadra_trasferta.nome,' ',punti_trasferta);textcolor(white);writeln('-',punti_casa,'     ',squadra_casa.nome);
             end
         else
             begin
             write(squadra_trasferta.nome,' ',punti_trasferta,'-');textcolor(3);writeln(punti_casa,'     ',squadra_casa.nome);textcolor(white);
         end;
      end;
      end;
      writeln();
      readkey();
      writeln('Premi 1 per vedere altri risultati');
      writeln('Premi 2 per tornare al menu');
      readln(x);
      clrscr;
      until x=2;
      end;
  3: begin
     repeat
      menu_classifiche;
      readln(x);
      clrscr;
      case x of
      1: begin
         writeln('inserisci il nome della conference che vuoi visualizzare (est/ovest)');
         readln(supporto_stringa);
         stampa_conference(classifica_conference(S,supporto_stringa));
         readkey();
         clrscr;
         end;
      2: begin
         classifica_totale(S);
         readkey();
         clrscr;
         end;
      3: END;
      clrscr;
      until x=3;
      end;

  4:begin
    if filesize(P)=82 then
    begin
    assign(SPLAYOFFS,nome_squadre+'_playoffs');
       assign(PPLAYOFFS,nome_partite+'_playoffs');
       writeln('Premi 1 per continuare i playoffs');
       writeln('Premi 2 per cominciare/ricominciare i playoffs');
       readln(i);
       clrscr;
       if i=1 then
       begin
        reset(PPLAYOFFS);
        reset(SPLAYOFFS);
       end
       else
       begin
        rewrite(PPLAYOFFS);
        rewrite(SPLAYOFFS);
        EST:=classifica_conference(S,'est');
        OVEST:=classifica_conference(S,'ovest');
        azzera_vittorie(EST);
        azzera_vittorie(OVEST);
        vettore_file(EST,SPLAYOFFS);
        vettore_file(OVEST,SPLAYOFFS);
       end;
    repeat
    menu_playoffs;
    readln(y);
    clrscr;
    case y of
    1: begin
        if filesize(SPLAYOFFS)<=16 then
        begin
          repeat
          quadro_primo_turno(SPLAYOFFS);
          writeln('Premi 1 per simulare');
          writeln('Premi 2 per tornare al menu''');
          readln(a);
          case a of
        1: begin
          readkey();
           x:=0;
            for i:=0 to 15 do
          begin
           seek(SPLAYOFFS,i);
           read(SPLAYOFFS,supporto_squadra);
           if supporto_squadra.assegnata=true then
           begin
            x:=x+1;
           end;
          end;
          if x<>8 then
          begin
          writeln('Quante gare vuoi simulare?');
          readln(b);
          repeat
          primo_turno(SPLAYOFFS,PPLAYOFFS);
          READKEY();
          clrscr;
          b:=b-1;
          until b=0;

          clrscr;
          end
          else
          begin
           da_primo_a_secondo(SPLAYOFFS);
          end;
          end;

         2: begin
            clrscr;
            menu_playoffs;
           end;
         end;
        until (a=2) or (x=8);
        CLRSCR;
        end;
////////////////////////////////////////////////////////////////////////
         if (filesize(SPLAYOFFS)>16)and(filesize(SPLAYOFFS)<=24) or (x=8) then
          BEGIN
          repeat
          quadro_secondo_turno(SPLAYOFFS);
          writeln('Premi 1 per simulare');
          writeln('Premi 2 per tornare al menu''');
          readln(a);
          case a of
        1: begin
          readkey();
           x:=0;
          for i:=16 to 23 do
          begin
           seek(SPLAYOFFS,i);
           read(SPLAYOFFS,supporto_squadra);
           if supporto_squadra.assegnata=true then
           begin
            x:=x+1;
           end;
          end;
          if x<>4 then
          begin
          writeln('Quante gare vuoi simulare?');
          readln(b);
          repeat
          secondo_turno(SPLAYOFFS,PPLAYOFFS);
          READKEY();
          clrscr;
          b:=b-1;
          until b=0;

          clrscr;
          end
          else
          begin
           da_secondo_a_semifinali(SPLAYOFFS);
          end;
          end;
        2: begin
            clrscr;
            menu_playoffs;
           end;
         end;
         until (a=2) or (x=4);
         end;
         clrscr;
          /////////////////////////////////////////////////////////////////////////
          if (filesize(SPLAYOFFS)>24) and (filesize(SPLAYOFFS)<=28) or(x=4) then
          begin
          repeat
          quadro_semifinali(SPLAYOFFS);
          writeln('Premi 1 per simulare');
          writeln('Premi 2 per tornare al menu''');
          readln(a);
          case a of
        1: begin

          readkey();
          x:=0;
            for i:=24 to 27 do
            begin
           seek(SPLAYOFFS,i);
           read(SPLAYOFFS,supporto_squadra);
           if supporto_squadra.assegnata=true then
           begin
            x:=x+1;
           end;
          end;
          if x<>2 then
          begin
          writeln('Quante gare vuoi simulare?');
          readln(b);
          repeat
          semifinali(SPLAYOFFS,PPLAYOFFS);
          READKEY();
          clrscr;
          b:=b-1;
          until b=0;

          clrscr;
          end
          else
          begin
           da_semifinali_a_finali(SPLAYOFFS);
          end;
          end;

        2: begin
            clrscr;
            menu_playoffs;
           end;
         end;
         until (a=2) or (x=2);
         end;
///////////////////////////////////////////////////////////////////////////////
        if (filesize(SPLAYOFFS)>28) then
        begin
          repeat
          coppa;
          textcolor(white);
          quadro_finali(SPLAYOFFS);
          readkey();
          writeln('Quante gare vuoi simulare?');
          readln(b);
          repeat
          finali(SPLAYOFFS,PPLAYOFFS);
          readkey();
          clrscr;
          b:=b-1;
          until b=0;
          clrscr;
          quadro_finali(SPLAYOFFS);
          readkey();
          clrscr;
          writeln('Premi 1 per continuare a simulare');
          writeln('Premi 2 per tornare al menu''');
          readln(a);
          until a=2;
          end;
    if filesize(SPLAYOFFS)=0 then
    begin
     writeln('Non hai ancora completato la regular season, completala per poter giocare');
     readkey();
    end;
    end;
    2: begin
       repeat
       writeln('Quanti risultati vuoi vedere? max(',filesize(PPLAYOFFS),')');
       readln(a);
       repeat
       writeln('Da che partita vuoi partire?');
       readln(b);
       clrscr;
       until b+a<=filesize(PPLAYOFFS)-1;
       for i:=b to b+a-1 do
       begin
        seek(PPLAYOFFS,i);
        read(PPLAYOFFS,supporto_partita);
        with supporto_partita do
        begin
         if punti_trasferta>punti_casa then
            begin
             textcolor(3);
             write(squadra_trasferta.nome,' ',punti_trasferta);textcolor(white);writeln('-',punti_casa,'     ',squadra_casa.nome);
             end
         else
             begin
             write(squadra_trasferta.nome,' ',punti_trasferta,'-');textcolor(3);writeln(punti_casa,'     ',squadra_casa.nome);textcolor(white);
         end;
             readln();
       end;
       end;
       clrscr;
       writeln('premi 1 per guardare altri risultati');
       writeln('premi 2 per uscire');
       readln(d);
       until d=2;
       end;

     end;

    until y=3;
    end;
    close(PPLAYOFFS);
    close(SPLAYOFFS);
    end;
  5:guida;
  6:begin
  clrscr;
  writeln('1--> Nuova stagione');
  writeln('2--> Carica stagione');
  readln(c);
  case c of
  1: begin
     writeln('inserisci il nome del nuovo file delle squadre');
     readln(nome_squadre);
     assign(S,nome_squadre);
     rewrite(S);
     ricevi_squadre(S);
     writeln('inserisci il nome del nuovo file delle partite');
     readln(nome_partite);
     assign(P,nome_partite);
     rewrite(P);
     end;
  2: begin
     writeln('inserisci il nome del file delle squadre da caricare');
     readln(nome_squadre);
     assign(S,nome_squadre);
     reset(S);
     writeln('inserisci il nome del file delle partite da caricare');
     readln(nome_partite);
     assign(P,nome_partite);
     reset(P);
     end;
     end;
    end;
  7:end;
  until c=7;
  close(S);
  CLOSE(P);

end.
