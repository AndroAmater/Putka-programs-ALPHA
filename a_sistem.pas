unit a_sistem;
interface
procedure aSistem();
procedure aSistem_Source();
//procedure aSistem_Task();

implementation
  procedure aSistem();
    var
      a,i,d:integer;
      b,c:string;
      e:array[1..10000] of integer;
  begin
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

  procedure aSistem_Source();
  begin
    writeln('program a_sistem;');
    writeln('var');
    writeln('  a, i, d:integer;');
    writeln('  b, c:string;');
    writeln('  e:array[1..30] of integer;');
    writeln('begin');
    writeln('  readln(a);');
    writeln('  d:=1;');
    writeln('  e[1]:=a;');
    writeln('  while e[1] > 25 do');
    writeln('  begin');
    writeln('    for i := 1 to d do');
    writeln('    begin');
    writeln('      if e[i] > 25 then');
    writeln('      begin');
    writeln('        e[i+1]:=e[i+1]+1;');
    writeln('        e[i]:=e[i]-26;');
    writeln('      end;');
    writeln('      if e[d+1] > 0 then');
    writeln('      begin');
    writeln('        d:=d+1;');
    writeln('      end;');
    writeln('    end;');
    writeln('  end;');
    writeln('  for i := d downto 1 do');
    writeln('  begin');
    writeln('    write(chr(e[i]+65));');
    writeln('  end;');   
    writeln('end.');
  end;
end.
