unit datatypeform;
{$ifdef FPC}{$mode objfpc}{$h+}{$endif}
interface
uses
 msetypes,mseglob,mseguiglob,mseguiintf,mseapplication,msestat,msemenus,msegui,
 msegraphics,msegraphutils,mseevent,mseclasses,msewidgets,mseforms,
 msesimplewidgets,msegraphedits,mseificomp,mseificompglob,mseifiglob,
 msescrollbar;
type
 tdatatypefo = class(tmseform)
   tgroupbox1: tgroupbox;
   tbutton1: tbutton;
   tbutton2: tbutton;
   trdbo: tbooleaneditradio;
   pobo: tbooleaneditradio;
   procedure onexecdatatype(const sender: TObject);
   procedure oncanceldatatype(const sender: TObject);
 end;
var
 datatypefo: tdatatypefo;
 importtype: integer = -1;
implementation
uses
 datatypeform_mfm;
 
procedure tdatatypefo.onexecdatatype(const sender: TObject);
begin
if trdbo.value then importtype:=0 else
if pobo.value then importtype:=1;
datatypefo.visible := false;
end;

procedure tdatatypefo.oncanceldatatype(const sender: TObject);
begin
importtype:=-1;
datatypefo.visible := false;
end;

end.
