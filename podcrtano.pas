unit podcrtano;
{$mode objfpc}
interface
uses
  sysutils;
procedure podcrtano();
procedure podcrtanoSource();
procedure podcrtanoTask();

implementation
  procedure podcrtano();
  var
    a:string;
    b:char;
    c, i:integer;
  begin
    writeln('Enter some text and I will underline it:');
    a:='';
    c:=0;
    i:=0;
    readln(a);
    c:=length(a);
  
    for i:= 1 to c do
    begin
      b:=a[i];
      write(b, ' ');
    end;
    writeln;
  
    for i:= 1 to (c*2)-1 do
      write('=');
    writeln;
    writeln;
  end;

  procedure podcrtanoSource();
   var
    f:textfile;
    l:string;
   begin
    assignfile(f, 'podcrtanoSource.txt');
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
  procedure podcrtanoTask();
   var
    f:textfile;
    l:string;
   begin
    assignfile(f, 'podcrtanoTask.txt');
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
