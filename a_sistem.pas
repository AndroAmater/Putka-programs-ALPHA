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
    writeln('  Klinika torej potrebuje program, ki zna sifrirati stevilke'#13#10'  tako, da jih zapise z velikimi crkami angleske abecede od "A" do "Z"'#13#10'  (skupno 26 moznih crk) po naslednjem pravilu: Prvih 26 stevilk'#13#10'  (vkljucno s stevilko 0) nadomesti z eno crko; naslednjih 25 * 26'#13#10'  stevilk nadomesti z dvema crkama in tako dalje, podobno kot je'#13#10'  zgrajen stevilski sistem. Namesto 0 pisemo "A", namesto 1 pisemo "B"'#13#10'  itd. Namesto 25 pisemo "Z", namesto 26 pisemo "BA", namesto 27 pisemo'#13#10'  "BB", namesto 28 pisemo "BC", itn. Program naj prebere stevilko, vrne'#13#10'  pa naj s crkami zapisano stevilo.');
    writeln;
    writeln;
    writeln('Vhodni podatki');
    writeln('  V edini vrstici je celo število M, ki ga je potrebno prešifrirati.'#13#10'Omejitve vhodnih podatkov'#13#10'0 =< M =< 2 * 10^9');
    writeln;
    writeln;
    writeln('Izhodni podatki');
    writeln('  Izpiše niz črk, ki ustreza šifri števila M po gornjih pravilih.');
    writeln;
    writeln;
    writeln('Primeri');
    writeln('Vhod     Izhod');
    writeln('0        A');
    writeln('1        B');
    writeln('26       BA');
    writeln('52       CA');
  end;
end.
