unit aSistem;
interface
{$mode objfpc}
uses Sysutils;
procedure aSistem();
procedure aSistemSource();
procedure aSistemTask();

implementation
  procedure aSistem();
    var
      a,i,d:longint;
      b,c:string;
      e:array[1..10000] of longint;
  begin
    a:=0;
    d:=0;
    b:='';
   c:='';
    for i:=1 to 10000 do
    begin
      e[i]:=0;
    end;
    i:=0;
    writeln('Enter an integer and it will be encoded into a string.');
    write('Raw input: ');
    readln(a);
    d:=1;
    e[1]:=a;
    while e[1] > 25 do
    begin
      for i := 1 to d do
      begin
        if e[i] > 25 then
        begin
          e[i+1]:=e[i+1]+1;
          e[i]:=e[i]-26;
        end;
        if e[d+1] > 0 then
        begin
          d:=d+1;
        end;
      end;
    end;
    write('Encoded output: ');
    for i := d downto 1 do
    begin
      write(chr(e[i]+65));
    end;
    writeln;
    writeln;
  end;

  procedure aSistemSource();
   var
    f:textfile;
    l:string;
   begin
    assignfile(f, 'aSistemSource.txt');
    reset(f);
    while not eof(f) do
     begin
      readln(f, l);
      writeln(l);
     end;
    writeln;
    writeln;
    close(f);
   end;

  procedure aSistemTask();
   var
    f:textfile;
    l:string;
   begin
    assignfile(f, 'aSistemTask.txt');
    reset(f);
    while not eof(f) do
     begin
      readln(f, l);
      writeln(l);
     end;
     closeFile(f);
     writeln;
     writeln;
   end;
end.
