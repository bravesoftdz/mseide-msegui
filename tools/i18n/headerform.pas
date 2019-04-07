unit headerform;
{$ifdef FPC}{$mode objfpc}{$h+}{$endif}
interface
uses
 msetypes,mseglob,mseguiglob,mseguiintf,mseapplication,msestat,msemenus,msegui,
 msegraphics,msegraphutils,mseevent,mseclasses,msewidgets,mseforms,mseact,
  mclasses,msedataedits,msedropdownlist,mseedit,mseificomp,mseificompglob,
 mseifiglob,msememodialog,msestatfile,msestream,sysutils,msesimplewidgets,
  mseconsts,msefileutils,msebitmap,msedatanodes,msedragglob,msefiledialog,
 msegrids,msegridsglob,LazUTF8,mselistbrowser,msesys,msegraphedits,msescrollbar;
type
 theaderfo = class(tmseform)
   memopoheader: tmemodialogedit;
   memopotheader: tmemodialogedit;
   initunit: tmemoedit;
   modalresulttext: tmemoedit;
   modalresultsnoshort: tmemoedit;
   stockcaptionmemo: tmemoedit;
   endmemo: tmemoedit;
   mseconstheader: tmemodialogedit;
   tbutton3: tbutton;
   tbutton2: tbutton;
   impexpfiledialog: tfiledialog;
   alldir: tbooleanedit;
   tstatfile1: tstatfile;
   procedure createnew(const sender: TObject);
   procedure createnewconst(const sender: TObject; fn : msestring);
   procedure createnewpo(const sender: TObject; fn : msestring);
   procedure dosearch(thearray : array of msestring; theindex : integer);
 end;

var
 headerfo: theaderfo;
 astro, astrt, acomp : utf8String;
 hasfound : boolean = false;
 defaultresult, defmodalresulttext, defmodalresulttextnosc,
 defaultstockcaption, defaultextendedconst, constvaluearray : array of msestring;
 
 implementation
uses
 headerform_mfm;
 
 procedure theaderfo.dosearch(thearray : array of msestring; theindex : integer);
 var
 str2 :utf8String;
 y : integer;
 begin
    y := 0;
    hasfound := false;
    
   while (y < length(constvaluearray)) and (hasfound = false) do begin
       str2 := (constvaluearray[y]);
       acomp :=  utf8copy(str2,1, system.pos(';',str2)-1) ;
       // writeln('---acomp:' + acomp);
       str2 := (utf8copy(str2,system.pos(';',str2)+1,length(str2)-system.pos(';',str2)+1)) ;
       astro := (utf8copy(str2,1,system.pos(';',str2)-1)) ;  
       astro := utf8StringReplace(astro,  '\"', '"', [rfReplaceAll]);  
        //  writeln('---astro:' + astro);  
       str2 := (utf8copy(str2,system.pos(';',str2)+1,length(str2)-system.pos(';',str2)+1)) ;
       astrt := utf8copy(str2,1,length(str2)) ;  
       astrt := utf8StringReplace(astrt,  '\"', '"', [rfReplaceAll]);  
    
      if thearray[theindex] = astro then begin
        hasfound := true;
        //  writeln('---astrt:' + astrt);   
      end; 
    inc(y);
   end; 
  end;  

procedure theaderfo.createnewpo(const sender: TObject; fn : msestring);
var
x, y: integer;
file1: ttextdatastream;
//file2: ttextdatastream;
str1, strinit, strlang, filename1 : msestring;
 str2, str3, str4, strtemp : utf8String;
 
int1 : integer;
 isarray1 : boolean = false;
 isarray2 : boolean = false;
 isarray3 : boolean = false; 
 isarray4 : boolean = false;
 theend : boolean = false;
begin
str1 := fn;

if fileexists(str1) then begin

file1:= ttextdatastream.create(str1,fm_read);

filename1 := copy(filename(str1),1, length(filename(str1))-4);
 strlang := trim(copy(filename1,system.pos('_',filename1)+1,length(filename1)-system.pos('_',filename1))) ;
 
  file1.encoding:= ce_utf8;

 setlength(constvaluearray,0); 
   
    file1.readln(str1); 
    
    str3 := '';
    str2 := '';
    str4 := '';
    
   while (not file1.eof) and (theend = false) do begin
   str1 := '';
    file1.readln(str1); 
     strtemp := '';  

   if system.pos('extendedconst',str1) > 0 then isarray1 := true;
   if (isarray1 = true) and (system.pos(#039,str1) > 0) then
   begin
    setlength(constvaluearray,length(constvaluearray)+1);  
    str1 := utf8StringReplace(str1, #039, '', [rfReplaceAll]); 
    str1 := utf8StringReplace(str1, #044, '', [rfReplaceAll]); 
    constvaluearray[length(constvaluearray)-1] := str1;  
   end;
   
   if system.pos('modalresulttext',str1) > 0 then isarray2 := true;
   if (isarray2 = true) and (system.pos(#039,str1) > 0) then
   begin
    isarray1 := false;
    setlength(constvaluearray,length(constvaluearray)+1);  
    str1 := utf8StringReplace(str1, #039, '', [rfReplaceAll]); 
    str1 := utf8StringReplace(str1, #044, '', [rfReplaceAll]); 
    constvaluearray[length(constvaluearray)-1] := str1;  
   end;
   
  if system.pos('modalresulttextnoshortcut',str1) > 0 then isarray3 := true;
  if (isarray3 = true) and (system.pos(#039,str1) > 0) then
   begin
    isarray2 := false;
    setlength(constvaluearray,length(constvaluearray)+1);  
    str1 := utf8StringReplace(str1, #039, '', [rfReplaceAll]); 
    str1 := utf8StringReplace(str1, #044, '', [rfReplaceAll]); 
    constvaluearray[length(constvaluearray)-1] := str1;  
   end;
   
  if system.pos('stockcaption',str1) > 0 then isarray3 := true;

   if (isarray3 = true) and (system.pos(#039,str1) > 0) then
   begin
    isarray3 := false;
    setlength(constvaluearray,length(constvaluearray)+1);  
    str1 := utf8StringReplace(str1, #039, '', [rfReplaceAll]); 
    str1 := utf8StringReplace(str1, #044, '', [rfReplaceAll]); 
    constvaluearray[length(constvaluearray)-1] := str1;  
   end;
   
   if system.pos('delete_n_selected_rows',str1) > 0 then theend := true;
   end;
   
   file1.free;
   
 // writeln(length(constvaluearray));
    
  setlength(defaultextendedconst,length(en_extendedconst));
defaultextendedconst := en_extendedconst;

setlength(defaultresult,length(defaultextendedconst));
for x := 0 to length(defaultextendedconst) -1 do
begin
 defaultresult[x] := defaultextendedconst[x];    
 //writeln(defaultresult[x]); 
end;
setlength(defmodalresulttext,length(en_modalresulttext));
defmodalresulttext := en_modalresulttext;

y := length(defaultresult);

setlength(defaultresult,length(defmodalresulttext)+y);
for x := 0 to length(defmodalresulttext) -1 do
begin
 defaultresult[x+y] := defmodalresulttext[x];    
// writeln(defaultresult[x+y]); 
end;

 setlength(defmodalresulttextnosc,length(en_modalresulttextnoshortcut));
defmodalresulttextnosc := en_modalresulttextnoshortcut;

y := length(defaultresult);

setlength(defaultresult,length(defmodalresulttextnosc)+y);
for x := 0 to length(defmodalresulttextnosc) -1 do
begin
 defaultresult[x+y] := defmodalresulttextnosc[x];    
// writeln(defaultresult[x+y]); 
end;

  setlength(defaultstockcaption,length(en_stockcaption));
defaultstockcaption := en_stockcaption;

y := length(defaultresult);

setlength(defaultresult,length(defaultstockcaption)+y);
for x := 0 to length(defaultstockcaption) -1 do
begin
 defaultresult[x+y] := defaultstockcaption[x];    
// writeln(defaultresult[x+y]); 
end;

 // writeln(length(defaultresult));
  
  file1:= ttextdatastream.create('.' + directoryseparator +'output' + directoryseparator +
   'mseconsts_' + strlang + '.po',fm_create);

  file1.encoding:= ce_utf8;

   file1.writeln(memopoheader.value); 
   file1.writeln();
   
   for x := 0 to length(defaultresult) -1 do
begin
if trim(defaultresult[x]) <> '' then begin
 file1.writeln('msgid "' + defaultresult[x] + '"');
 if trim(constvaluearray[x]) <> '' then
 file1.writeln( 'msgstr "' + constvaluearray[x] + '"')
 else  file1.writeln( 'msgstr "' + defaultresult[x] + '"');
 file1.writeln(''); 
 end;
end;
 
  file1.free;
end;

end;

procedure theaderfo.createnew(const sender: TObject);
var
x: integer;
 filterlista : msestringarty;
 filterlistb : msestringarty;
 str1, str2 : msestring;
 dirfiles: TStringList;
 Info : TSearchRec;
begin

setlength(filterlista,1);
setlength(filterlistb,1);

if tbutton(sender).tag = 0 then 
begin
filterlista[0]:= 'mseconsts_xx.po';
filterlistb[0]:= '*.po';
impexpfiledialog.controller.filter := '*.po';
if alldir.value then
impexpfiledialog.controller.options := [fdo_directory,fdo_savelastdir] else
impexpfiledialog.controller.options := [fdo_savelastdir];
end else
begin
filterlista[0]:= 'mseconsts_xx.pas';
filterlistb[0]:= '*.pas';
impexpfiledialog.controller.filter := '*.pas';
if alldir.value then
impexpfiledialog.controller.options := [fdo_directory,fdo_savelastdir] else
impexpfiledialog.controller.options := [fdo_savelastdir];
end;
 
  with impexpfiledialog.controller.filterlist do begin
    asarraya:= filterlista;
    asarrayb:= filterlistb;
    end; 

 impexpfiledialog.controller.filterindex := 0;  
 application.processmessages;

if impexpfiledialog.controller.execute(str1,fdk_open) then 
begin
if alldir.value = false then begin
if tbutton(sender).tag = 0 then
createnewconst(sender, str1) else createnewpo(sender, str1);
end else
begin

if tbutton(sender).tag = 0 then str2 := '*.po' else str2 := '*.pas';

    if FindFirst(filedir(str1)+DirectorySeparator+str2, faAnyFile , Info)=0 then begin
                repeat
              if tbutton(sender).tag = 0 then
  createnewconst(sender, filedir(str1) + Info.Name) else
   createnewpo(sender,  filedir(str1) + Info.Name); 
      
                until FindNext(Info) <> 0;
        end;
        FindClose(Info);
 
end;
end;

end;


///////////////

procedure theaderfo.createnewconst(const sender: TObject; fn : msestring);
var
x: integer;
file1: ttextdatastream;
//file2: ttextdatastream;
str1, strinit, strlang, filename1 : msestring;
 str2, str3, str4, strtemp : utf8String;
 
 int1 : integer;
 isstring : boolean = false;
 isid : boolean = false;
 iscontext : boolean = false; 
 ispocontext : boolean = false;
begin
str1 := fn;
if fileexists(str1) then begin

file1:= ttextdatastream.create(str1,fm_read);

filename1 := copy(filename(str1),1, length(filename(str1))-3);
 strlang := trim(copy(filename1,system.pos('_',filename1)+1,length(filename1)-system.pos('_',filename1))) ;
 
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

   if (trim(str1) <> '') and (utf8copy(str1,1,1) <> '#') then begin
  
   if (utf8copy(str1,1,7) = 'msgctxt') then 
     begin
        ispocontext := true;
       
        setlength(constvaluearray,length(constvaluearray)+1);  
         str2 := str4 + utf8String(';') + str2 + utf8String(';') + str3 ; 
         str2 := utf8StringReplace(str2, '\n', '', [rfReplaceAll]); 
         str2 := utf8StringReplace(str2, '\', '', [rfReplaceAll]);
         constvaluearray[length(constvaluearray)-1] := str2;
         // writeln(str2);
        str3 := '';
        str4 := '';
        str4 := (utf8copy(str1,10,length(str1)-10)) ;
        iscontext := true;
        isid := false;
        isstring := false;
      end     
       else   
       if (copy(str1,1,5) = 'msgid') then
        begin
        if ispocontext = false then begin
         setlength(constvaluearray,length(constvaluearray)+1);  
         str2 := str4 + utf8String(';') + str2 + utf8String(';') + str3 ; 
         str2 := utf8StringReplace(str2, '\n', '', [rfReplaceAll]); 
         str2 := utf8StringReplace(str2, '\', '', [rfReplaceAll]);
         constvaluearray[length(constvaluearray)-1] := str2;
         // writeln(str2);
          str3 := '';
         str4 := '';
         end;
         str2 := utf8copy(str1,8,length(str1)-8) ;
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
         str2 := str4 + utf8String(';') + str2 + utf8String(';') + str3 ; 
         str2 := utf8StringReplace(str2, '\n', '', [rfReplaceAll]); 
         str2 := utf8StringReplace(str2, '\', '', [rfReplaceAll]);
         constvaluearray[length(constvaluearray)-1] := str2;
     // writeln(str2);
   
     file1.free;
  
setlength(defmodalresulttext,length(en_modalresulttext));
defmodalresulttext := en_modalresulttext;

 setlength(defmodalresulttextnosc,length(en_modalresulttextnoshortcut));
defmodalresulttextnosc := en_modalresulttextnoshortcut;

  setlength(defaultstockcaption,length(en_stockcaption));
defaultstockcaption := en_stockcaption;

  setlength(defaultextendedconst,length(en_extendedconst));
defaultextendedconst := en_extendedconst;

  file1:= ttextdatastream.create('.' + directoryseparator +'output' + directoryseparator + 
  'mseconsts_' + strlang + '.pas',fm_create);

  file1.encoding:= ce_utf8;

   file1.writeln(mseconstheader.value); 
   file1.writeln();
   
   file1.writeln('unit mseconsts_' + strlang + #059);
   file1.writeln();
   file1.writeln(initunit.value); 
   
     if (length(defaultextendedconst) > 1 ) then
    file1.writeln(#039 + strlang + #039 + #044) else
    file1.writeln(#039 + strlang + #039);
   
   for x := 1 to length(defaultextendedconst) -1 do
   begin
    
    dosearch(defaultextendedconst,x);
     
    if hasfound then else astrt := defaultextendedconst[x];
    
    if trim(astrt) = '' then astrt := defaultextendedconst[x]; 
   
    if (x < length(defaultextendedconst) -1) and
    (length(defaultextendedconst) > 1 ) then
    file1.writeln(#039 + astrt + #039 + #044) else
    file1.writeln(#039 + astrt + #039);
   end; 
   
   file1.writeln(modalresulttext.value); 
   
   for x := 0 to length(defmodalresulttext) -1 do
   begin
     dosearch(defmodalresulttext,x);
     
     if hasfound then else astrt := defmodalresulttext[x];
     if trim(astrt) = '' then astrt := defmodalresulttext[x]; 
     
    if (x < length(defmodalresulttext) -1) and
    (length(defmodalresulttext) > 1 ) then
    file1.writeln(#039 + astrt + #039 + #044) else
    file1.writeln(#039 + astrt + #039);
   end;
   
   file1.writeln(modalresultsnoshort.value); 
   
   for x := 0 to length(defmodalresulttextnosc) -1 do
   begin
    dosearch(defmodalresulttextnosc,x);
    
     if hasfound then else astrt := defmodalresulttextnosc[x];
    if trim(astrt) = '' then astrt := defmodalresulttextnosc[x]; 
    if (x < length(defmodalresulttextnosc) -1) and
    (length(defmodalresulttextnosc) > 1 ) then
    file1.writeln(#039 + astrt + #039 +#044) else
    file1.writeln(#039 + astrt + #039);
    end;
  
   file1.writeln(stockcaptionmemo.value); 
   
   for x := 0 to length(defaultstockcaption) -1 do
    begin
    dosearch(defaultstockcaption,x);
    
     if hasfound then else astrt := defaultstockcaption[x];
    if trim(astrt) = '' then astrt := defaultstockcaption[x]; 
   if (x < length(defaultstockcaption) -1) and
    (length(defaultstockcaption) > 1 ) then
    file1.writeln(#039 + astrt + #039+ #044) else
    file1.writeln(#039 + astrt + #039 + #10 + #41 + #059);
    end;
    
     file1.writeln();
    
     file1.writeln(endmemo.value); 
 
   file1.free;
   
end;
end;

end.
