unit a_sistem;
interface
procedure aSistem();
procedure aSistem_Source();
procedure aSistem_Task();

implementation
  procedure aSistem();
    var
      a,i,d:integer;
      b,c:string;
      e:array[1..10000] of integer;
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

  procedure aSistem_Task();
  begin
    writeln('Naloga');
    writeln('Klinika torej potrebuje program, ki zna šifrirati številke tako,'#13#10'da jih zapiše z velikimi črkami angleške abecede od "A" do "Z"'#13#10'(skupno 26 možnih črk) po naslednjem pravilu:'#13#10'Prvih 26 številk (vključno s številko 0) nadomesti z eno črko; naslednjih 25 * 26 številk'#13#10'nadomesti z dvema črkama in tako dalje,'#13#10'podobno kot je zgrajen številski sistem. Namesto 0 pišemo "A",'#13#10'namesto 1 pišemo "B" itd. Namesto 25 pišemo "Z",'#13#10'namesto 26 pišemo "BA", namesto 27 pišemo "BB", namesto 28 pišemo "BC", itn.'#13#10'Program naj prebere številko, vrne pa naj s črkami zapisano število.');
  end;
end.
