unit commands;
interface
{$mode objfpc}
uses
  aSistem, podcrtano, crt, sysutils;
  procedure quit();
  procedure run();
  procedure task();
  procedure list();
  procedure clear();
  procedure help();
  procedure source();

implementation
  procedure list();
   var
    f:textfile;
    l:string;
   begin
    clrscr;
    assignfile(f, 'List.txt');
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

  procedure clear();
   begin
   	clrscr;
   end;

  procedure help();
   var
    f:textfile;
    l:string;
   begin
    clrscr;
    assignfile(f, 'Help.txt');
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

  procedure run();
   var z3:string;
   begin
    z3:='';
    clrscr;
    list();
    write('Run> ');
    readln(z3);
    if z3 = '1a' then
     begin
      clrscr;
      aSistem.aSistem;
     end
    else if z3 = '1b' then
     begin
      clrscr;
      podcrtano.podcrtano;
     end
    else
      writeln('Unknown program');     	
   end;

  procedure task();
   var z3:string;
   begin
    clrscr;
    list();
    write('Program task> ');
    readln(z3);
    if z3 = '1a' then
     begin
      clrscr;
      aSistemTask();
     end
    else if z3 = '1b' then
     begin
      clrscr;
      podcrtanoTask();
     end
    else
      writeln('Unknown program'); 
   end;

  procedure source();
   var z3:string;
   begin
    clrscr;
    list();
    write('Program source> ');
    readln(z3);
    if z3 = '1a' then
     begin
      clrscr;
      aSistemSource();
     end
    else if z3 = '1b' then
     begin
      clrscr;
      podcrtanoSource();
     end
    else
      writeln('Unknown program');
    end;

  procedure quit();
   var
     z1:boolean;
     z2,z3:string;
   begin
   	 z1:=false;
     while z1 = false do
	  begin
	   write('Command> ');
	   readln(z2);
	   if z2 = 'q!' then
	         z1:=true
     else if z2 = 'c' then
       clear()
     else if z2 = 'l' then
	 		   list()
 		 else if z2 = 'h' then
 		   help()
 		 else if z2 = 'r' then
 		   run()
 		 else if z2 = 't' then
 		   task()
 		 else if z2 = 's' then
 		   source()
	   else
  	     writeln('Unknown command!');
     end;
   end;
end.
