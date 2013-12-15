unit podcrtano;
interface
procedure podcrtano();
procedure podcrtano_Source();
procedure podcrtano_Task();

implementation
  procedure podcrtano();
  var
    a:string;
    b:char;
    c, i:integer;
  begin
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

  procedure podcrtano_Source();
  begin
    writeln('program podcrtano;');
    writeln;
    writeln('var');
    writeln('  a:string;');
    writeln('  b:char;');
    writeln;
    writeln('  c, i:integer;');
    writeln;
    writeln('begin');
    writeln('  a:='';');
    writeln('  c:=0;');
    writeln('  i:=0;');
    writeln('  readln(a);');
    writeln('  c:=length(a);');
    writeln;
    writeln('  for i:= 1 to c do');
    writeln('  begin');
    writeln('    b:=a[i];');
    writeln('    write(b, VSTAVIUNO);');
    writeln('  end; writeln;');
    writeln;
    writeln('  for i:= 1 to (c*2)-1 do');
    writeln('    write('=');');
    writeln('end.');
  end;

  procedure podcrtano_Task();
  begin
    writeln('Not implemented yet comming shortly.');
  end;
end.
