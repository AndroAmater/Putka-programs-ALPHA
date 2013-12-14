unit commands;
//uses
//  Help, list, a_sistem, podcrtano, ctr;

interface
uses
  Help, list, a_sistem, podcrtano, crt;
  procedure quit();
  procedure run();
  procedure task();
  procedure list();
  procedure clear();
  procedure help();
  procedure source();

implementation
  procedure list();
   begin
   	clrscr;
    List1();
   end;

  procedure clear();
   begin
   	clrscr;
   end;

  procedure help();
   begin
      clrscr;  
      ShowHelp();   	
   end;

  procedure run();
   var z3:string;
   begin
    z3:='';
    clrscr;
    List1();
    write('Run> ');
    readln(z3);
    if z3 = '1a' then
     begin
      clrscr;
      aSistem();
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
    List1();
    write('Program task> ');
    readln(z3);
    if z3 = '1a' then
     begin
      clrscr;
      aSistem_Task();
     end
    else if z3 = '1b' then
     begin
      clrscr;
      podcrtano_Task();
     end
    else
      writeln('Unknown program'); 
   end;

  procedure source();
   var z3:string;
   begin
    clrscr;
    List1();
    write('Program source> ');
    readln(z3);
    if z3 = '1a' then
     begin
      clrscr;
      aSistem_Source();
     end
    else if z3 = '1b' then
     begin
      clrscr;
      podcrtano_Source();
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
