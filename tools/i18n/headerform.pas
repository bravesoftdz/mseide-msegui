unit headerform;
{$ifdef FPC}{$mode objfpc}{$h+}{$endif}
interface
uses
 msetypes,mseglob,mseguiglob,mseguiintf,mseapplication,msestat,msemenus,msegui,
 msegraphics,msegraphutils,mseevent,mseclasses,msewidgets,mseforms,mseact,
 msedataedits,msedropdownlist,mseedit,mseificomp,mseificompglob,mseifiglob,
 msememodialog,msestatfile,msestream,sysutils,msesimplewidgets, mseconsts,
 msebitmap,msedatanodes,msedragglob,msefiledialog,msegrids,msegridsglob,LazUTF8,
 mselistbrowser,msesys;
type
 theaderfo = class(tmseform)
   memopoheader: tmemodialogedit;
   memopotheader: tmemodialogedit;
   tgroupbox1: tgroupbox;
   tbutton1: tbutton;
   newlang: tstringedit;
   functiondeleterow: tmemodialogedit;
   mseconstheader: tmemodialogedit;
   pofilename: tfilenameedit;
   initunit: tmemoedit;
   modalresulttext: tmemoedit;
   modalresultsnoshort: tmemoedit;
   stockcaptionmemo: tmemoedit;
   endmemo: tmemoedit;
   tbutton2: tbutton;
   procedure createnewlang(const sender: TObject);
 end;
 
 
var
 headerfo: theaderfo;
 
 implementation
uses
 headerform_mfm;
 
procedure theaderfo.createnewlang(const sender: TObject);
var
defaultresult, defmodalresulttext, defmodalresulttextnosc,
 defaultstockcaption, defaultextendedconst : array of msestring;
x : integer;
file1: ttextdatastream;
//file2: ttextdatastream;
str1, strinit : msestring;
 str2, str3, str4, strtemp : utf8String;
 
int1 : integer;
 isstring : boolean = false;
 isid : boolean = false;
 iscontext : boolean = false; 
 constvaluearray : Array of utf8String;
begin

if 1 = 2 then begin // read from po

file1:= ttextdatastream.create(pofilename.value,fm_read);

 //file2:= ttextdatastream.create('mseconsts_' + newlang.value + '.pas',fm_create);

//file1:= tmsefilestream.create(pofilename.value);
//file2:= tmsefilestream.create('mseconsts_' + newlang.value + '.pas' );

file1.encoding:= ce_utf8;

   setlength(constvaluearray,0); 
   
    file1.readln(str1); 
    
    str3 := '';
    str2 := '';
    str4 := '';
    
   
   while not file1.eof do begin
   str1 := '';
    file1.readln(str1); 
     strtemp := '';  

   if trim(str1) <> '' then begin
   if (utf8copy(str1,1,7) = 'msgctxt') then 
     begin
        str4 := '';
        str4 := (utf8copy(str1,10,length(str1)-10)) ;
        iscontext := true;
        isid := false;
        isstring := false;
      end     
       else   
       if (copy(str1,1,5) = 'msgid') then
        begin
         setlength(constvaluearray,length(constvaluearray)+1);  
         str2 := str4 + utf8String(';') + str2 + utf8String(';') + str3 ; 
          // writeln(str2);
         str2 := utf8StringReplace(str2, '\n', '', [rfReplaceAll]); 
         str2 := utf8StringReplace(str2, '\', '', [rfReplaceAll]);
         str2 := utf8StringReplace(str2, '"', '', [rfReplaceAll]);
         constvaluearray[length(constvaluearray)-1] := str2;
         
         str2 := utf8copy(str1,8,length(str1)-8) ;
         str3 := '';
         str4 := '';
         iscontext := false;
         isid := true;
         isstring := false;
         end
         else
          if (utf8copy(str1,1,6) = 'msgstr') then begin 
          str3 := (utf8copy(str1,9,length(str1)-9)) ;
          str3 := utf8StringReplace(str3, '\n', '', [rfReplaceAll]);
          iscontext := false;
          isid := false;
          isstring := true;
         end 
         else 
       if iscontext then
       begin
        strtemp := utf8copy(str1,2,length(str1)-2);
        if  (system.pos('\n',strtemp) > 0) then begin
        strtemp := utf8StringReplace(strtemp, '\n', '', [rfReplaceAll]);
        str4 := str4 + strtemp  + utf8String(sLineBreak) ;
        end else str4 := str4 + strtemp;
        end else
        if isid then
       begin
        strtemp := utf8copy(str1,2,length(str1)-2);
        if  (system.pos('\n',strtemp) > 0) then begin
        strtemp := utf8StringReplace(strtemp, '\n', '', [rfReplaceAll]);
        str2 := str2 + strtemp  + utf8String(sLineBreak) ;
        end else str2 := str2 + strtemp;
        end
        else 
       if isstring then 
       begin
        strtemp := utf8copy(str1,2,length(str1)-2);
        if  (system.pos('\n',strtemp) > 0) then begin   
         strtemp := utf8StringReplace(strtemp, '\n', '', [rfReplaceAll]); 
        str3 := (str3 + strtemp  + utf8String(sLineBreak)) ;
        end else str3 := str3 + strtemp;
        end;
       end;  
  
     end; 
     
    setlength(constvaluearray,length(constvaluearray)+1);  
    str2 := str4 + ';' + str2 + ';' + str3 ; 
    constvaluearray[length(constvaluearray)-1] := str2;
     
     file1.free;

    end;
    
    if 2 = 2 then begin // create mesconst_xx.pas

setlength(defmodalresulttext,length(en_modalresulttext));
defmodalresulttext := en_modalresulttext;

 setlength(defmodalresulttextnosc,length(en_modalresulttextnoshortcut));
defmodalresulttextnosc := en_modalresulttextnoshortcut;

  setlength(defaultstockcaption,length(en_stockcaption));
defaultstockcaption := en_stockcaption;

  setlength(defaultextendedconst,length(en_extendedconst));
defaultextendedconst := en_extendedconst;

 file1:= ttextdatastream.create('mseconsts_' + newlang.value + '.pas',fm_create);

file1.encoding:= ce_utf8;

   file1.writeln(mseconstheader.value); 
   file1.writeln();
   
   file1.writeln('unit mseconsts_' + newlang.value + #059);
   file1.writeln();
   file1.writeln(initunit.value); 
   
   for x := 0 to length(defaultextendedconst) -1 do
    if (x < length(defaultextendedconst) -1) and
    (length(defaultextendedconst) > 1 ) then
    file1.writeln(#039 + defaultextendedconst[x] + #039 + #044) else
    file1.writeln(#039 + defaultextendedconst[x] + #039);
   
   file1.writeln(modalresulttext.value); 
   
   for x := 0 to length(defmodalresulttext) -1 do
    if (x < length(defmodalresulttext) -1) and
    (length(defmodalresulttext) > 1 ) then
    file1.writeln(#039 + defmodalresulttext[x] + #039 + #044) else
    file1.writeln(#039 + defmodalresulttext[x] + #039);
   
   
   file1.writeln(modalresultsnoshort.value); 
   
   for x := 0 to length(defmodalresulttextnosc) -1 do
    if (x < length(defmodalresulttextnosc) -1) and
    (length(defmodalresulttextnosc) > 1 ) then
    file1.writeln(#039 + defmodalresulttextnosc[x] + #039 +#044) else
    file1.writeln(#039 + defmodalresulttextnosc[x] + #039);
  
   file1.writeln(stockcaptionmemo.value); 
   
   for x := 0 to length(defaultstockcaption) -1 do
   if (x < length(defaultstockcaption) -1) and
    (length(defaultstockcaption) > 1 ) then
    file1.writeln(#039 + defaultstockcaption[x] + #039+ #044) else
    file1.writeln(#039 + defaultstockcaption[x] + #039 + #10 + #41 + #059);
    
     file1.writeln();
    
    file1.writeln(functiondeleterow.value); 
    
     file1.writeln();
 
    file1.writeln(endmemo.value); 
 
   file1.free;
end;

end;

end.
