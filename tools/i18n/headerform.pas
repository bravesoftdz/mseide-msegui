unit headerform;
{$ifdef FPC}{$mode objfpc}{$h+}{$endif}
interface
uses
 msetypes,mseglob,mseguiglob,mseguiintf,mseapplication,msestat,msemenus,msegui,
 msegraphics,msegraphutils,mseevent,mseclasses,msewidgets,mseforms,mseact,
 msedataedits,msedropdownlist,mseedit,mseificomp,mseificompglob,mseifiglob,
 msememodialog,msestatfile,msestream,sysutils;
type
 theaderfo = class(tmseform)
   memopoheader: tmemodialogedit;
   memopotheader: tmemodialogedit;
 end;
var
 headerfo: theaderfo;
implementation
uses
 headerform_mfm;
end.
