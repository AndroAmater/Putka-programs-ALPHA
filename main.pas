program main;

uses a_sistem, list, help, crt;

var
  a, b, c, d:integer;
  e, f, g, h:string;
  i:array[1..10000] of integer;

(*---SYSTEM---*)
var
// :q Command
  z:boolean;
  z2:string;

// :r Command
  z3:string;

(*---SYSTEM---*)

begin
  clrscr;
 
  writeln('Putka programs ALPHA');
  writeln('By AndroAmater');
  writeln;
  writeln('For help type ":h"');
  writeln;
  writeln;

// :q Command
  z:=false;
  while z = false do
  begin
    write('Command> ');
    readln(z2);
    if z2 = ':q' then
      z:=true

// :l Command
    else if z2 = ':l' then
    begin
      clrscr;
      List1();
    end

// :r Command
    else if z2 = ':r' then
    begin
      write('Run> ');
      readln(z3);
      if z3 = '1a' then
      begin
        clrscr;
        aSistem();
      end
      else
        writeln('Unknown program');
    end

// :c Command
    else if z2 = ':c' then
      clrscr

// :h Command
    else if z2 = ':h' then
    begin
      clrscr;  
      ShowHelp();
    end

// :src Command
    else if z2 = ':src' then
    begin
      write('Program source> ');
      readln(z3);
      if z3 = '1a' then
      begin
        clrscr;
        aSistem_Source();
      end
      else
        writeln('Unknown program');
    end

// :t Command
    else if z2 = ':t' then
    begin
      write('Program task> ');
      readln(z3);
      if z3 = '1a' then
      begin
        clrscr;
        aSistem_Task();
      end
      else
        writeln('Unknown program');
    end  

 
    else
      writeln('Unknown command!');
  end;
end.
