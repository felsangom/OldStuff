program sons;

uses crt;

const
     DOH = 264;
     RE  = 297;
     MI  = 330;
     FA  = 352;
     SOL = 394;
     LA  = 440;
     SI  = 495;

var
   tecla : Char;

procedure som(freq: Integer);
begin
     sound(freq);
     delay(100);
     nosound;
end;

begin
     clrscr;
     WriteLn('A=Do, S=RE, D=Mi, F=Fa, G=Sol, H=La, J=Si --- Q=Sair');
     repeat
           tecla := readkey;

           case tecla of
               'a', 'A': som(DOH);
               's', 'S': som(RE);
               'd', 'D': som(MI);
               'f', 'F': som(FA);
               'g', 'G': som(SOL);
               'h', 'H': som(LA);
               'j', 'J': som(SI);
           else
               WriteLn('A=Do, S=RE, D=Mi, F=Fa, G=Sol, H=La, J=Si --- Q=Sair');
           end;
     until tecla = 'q';
end.