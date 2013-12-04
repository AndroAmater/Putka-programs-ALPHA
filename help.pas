unit help;
interface
  procedure ShowHelp();

implementation
  procedure ShowHelp();
  begin
    writeln('-------------------Help-------------------');
    writeln('Commands:');
    writeln(':l - List currently implemented programs');
    writeln(':r - Run a program. Enter ":r" then enter');
    writeln('     program number shown by list command');
    writeln(':c - Clear screen');
    writeln(':q - Quit program');
    writeln('------------------(>0_0>)-----------------');
  end;

end.
