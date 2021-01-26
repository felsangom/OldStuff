program grafico;

uses
 crt,
 graph;

var
 x,
 y,
 cor,
 driver,
 errorcode,
 mode: integer;

begin
 cor:=1;
 driver:=detect;
 initgraph(driver,mode,' ');
 errorcode:=graphresult;
 if errorcode=grOk then
 begin
 repeat
  line(320,0,320,480);
  line(80,240,560,240);
  x:=80;
  y:=228;
  while ((x<=308) and (y>=0)) do
  begin
   line(x,239,319,y);
   delay(35);
   x:=x+12;
   y:=y-12;
  end;
  x:=332;
  y:=0;
  while ((x<=560) and (y<=228)) do
  begin
   line(321,y,x,239);
   delay(35);
   x:=x+12;
   y:=y+12;
  end;
  x:=560;
  y:=252;
  while ((x>=332) and (y<=480)) do
  begin
   line(x,241,321,y);
   delay(35);
   x:=x-12;
   y:=y+12;
  end;
  x:=308;
  y:=480;
  while ((x>=80) and (y>=252)) do
  begin
   line(319,y,x,241);
   delay(35);
   x:=x-12;
   y:=y-12;
  end;
  setcolor(black);
  x:=80;
  y:=228;
  while ((x<=308) and (y>=0)) do
  begin
   line(x,239,319,y);
   delay(35);
   x:=x+12;
   y:=y-12;
  end;
  x:=332;
  y:=0;
  while ((x<=560) and (y<=228)) do
  begin
   line(321,y,x,239);
   delay(35);
   x:=x+12;
   y:=y+12;
  end;
  x:=560;
  y:=252;
  while ((x>=332) and (y<=480)) do
  begin
   line(x,241,321,y);
   delay(35);
   x:=x-12;
   y:=y+12;
  end;
  x:=308;
  y:=480;
  while ((x>=80) and (y>=252)) do
  begin
   line(319,y,x,241);
   delay(35);
   x:=x-12;
   y:=y-12;
  end;
  if cor=16 then
  begin
   setcolor(cor);
   cor:=1;
  end
  else
  begin
   setcolor(cor);
   cor:=cor+1;
  end;
 until keypressed;
 end
 else
 begin
  write('Erro grafico: ',grapherrormsg(errorcode));
  write('Pressione qualquer tecla para terminar.');
  exit;
 end;
 readkey;
 closegraph;
end.