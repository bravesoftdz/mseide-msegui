program ${%PROJECTNAME%};
{$ifdef FPC}{$mode objfpc}{$h+}{$endif}
{$ifdef FPC}
 {$ifdef mswindows}{$apptype gui}{$endif}
{$endif}
uses
 {$ifdef FPC}{$ifdef unix}cthreads,{$endif}{$endif}
 msegui,mseforms,main,
 mseconsts,mseconsts_ru,mseconsts_fr,mseconsts_uzcyr,mseconsts_es,mseconsts_id,mseconsts_zh,mseconsts_de;
begin
 setlangconsts(''); //set system default
 application.createform(tmainfo,mainfo);
 application.run;
end.
