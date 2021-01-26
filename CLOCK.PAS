{
²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
² Felipe dos Santos Gomes                           ²°
² Faculdade Exponencial                             ²°
² Sistemas de Informacao - 2¦ Fase                  ²°
²  -Concluido em:  29/04/2005                       ²°
²  -Aprimorado em: 04/05/2005                       ²°
²  -Aprimorado em: 02/08/2005 - Danton Junior       ²°
²  -Aprimorado em: 10/11/2005 - Felipe / Alexandre  ²°
²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²°
 °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
}

Program Relogio;

uses                                   {Bibliotecas}
 windos,
 graph,
 crt,
 Dos;

var                                    {Declaracao de variaveis}
  h, m, s, hund : word;
  driver,
  mode,
  cor,
  x,
  y,
  z,
  Erro,
  totsec,
  errorcode: integer;
  seg,
  min,
  hor: string;
  angle: real;

function LeadingZero(w : integer) : String;       {Funcao para o tempo}
var
  s : string;
begin
  Str(w:0,s);
  if Length(s) = 1 then
    s :='0' + s;
  LeadingZero := s;
end;

begin
  clrscr;
  cor:=1;
  driver:=detect;
  initgraph(driver,mode,' ');      {Inicializacao do modo grafico}
  errorcode:= graphresult;
  if (errorcode<>grOk) then
  begin
   writeln('Erro grafico: ',grapherrormsg(errorcode));
   write('Pressione qualquer tecla para encerrar...');
   readkey;
   exit;
  end
  else
  begin
   setlinestyle(0,0,2);
   setlinestyle(0,0,2);
   setfillstyle(1,RED);
   fillellipse(320,240,140,140);
   setfillstyle(1,lightblue);
   fillellipse(320,240,120,120);
   repeat
    setcolor(lightgreen);
    settextstyle(3,HorizDir,1);
    setcolor(white);
    settextstyle(4,HorizDir,2);
    outtextxy(370,133,'1');                    {Escreve os numeros do relogio}
    outtextxy(408,172,'2');
    outtextxy(428,226,'3');
    outtextxy(411,282,'4');
    outtextxy(372,320,'5');
    outtextxy(315,335,'6');
    outtextxy(261,319,'7');
    outtextxy(223,282,'8');
    outtextxy(204,226,'9');
    outtextxy(217,173,'10');
    outtextxy(252,135,'11');
    outtextxy(307,117,'12');
    GetTime(h,m,s,hund);

  { Por Junior - falecom@dantonjr.com.br }
    Val(LeadingZero(s), X, Erro);
    Val(LeadingZero(m), Y, Erro);
    Val(LeadingZero(h), Z, Erro);
  { Fim Junior -> Eliminadas cerca de 420 Linhas }

    setlinestyle(0,3,3);
    setcolor(yellow);            {Muda a cor da linha}

  { Adicionado por Felipe e Alexandre em 10/11/2005 }
    totsec := (h * 60) + m;
    angle := (totsec / 720) * 2 * PI;
    angle := angle - (PI / 2);

    line(320 + 2, 240 + 2, trunc(320 + (70 * cos(angle))) + 2, trunc(240 + (70 * sin(angle) + 2)));

    angle := (m / 60) * 2 * PI;
    angle := angle - (PI / 2);

    line(320 + 2, 240 + 2, trunc(320 + (90 * cos(angle))) + 2, trunc(240 + (90 * sin(angle) + 2)));

    angle := (s / 60) * 2 * PI;
    angle := angle - (PI / 2);

    setlinestyle(0,1,1);
    setcolor(LIGHTRED);
    line(320 + 2, 240 + 2, trunc(320 + (80 * cos(angle))) + 2, trunc(240 + (80 * sin(angle) + 2)));

    setlinestyle(0,3,3);
    setcolor(lightblue);
    delay(1000);

    totsec := (h * 60) + m;
    angle := (totsec / 720) * 2 * PI;
    angle := angle - (PI / 2);

    line(320 + 2, 240 + 2, trunc(320 + (70 * cos(angle))) + 2, trunc(240 + (70 * sin(angle) + 2)));

    angle := (m / 60) * 2 * PI;
    angle := angle - (PI / 2);

    line(320 + 2, 240 + 2, trunc(320 + (90 * cos(angle))) + 2, trunc(240 + (90 * sin(angle) + 2)));

    angle := (s / 60) * 2 * PI;
    angle := angle - (PI / 2);

    setlinestyle(0,1,1);
    line(320 + 2, 240 + 2, trunc(320 + (80 * cos(angle))) + 2, trunc(240 + (80 * sin(angle) + 2)));
  { Fim modifica‡Æo - removido cerca de 400 lihas }

    until keypressed;{repete todo o ciclo acima ate que uma tecla seja pressionada}
  end;
  closegraph;                   {encerra o modo grafico}
end.