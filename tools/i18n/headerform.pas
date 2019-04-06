unit headerform;
{$ifdef FPC}{$mode objfpc}{$h+}{$endif}
interface
uses
 msetypes,mseglob,mseguiglob,mseguiintf,mseapplication,msestat,msemenus,msegui,
 msegraphics,msegraphutils,mseevent,mseclasses,msewidgets,mseforms,mseact,
 msedataedits,msedropdownlist,mseedit,mseificomp,mseificompglob,mseifiglob,
 msememodialog,msestatfile,msestream,sysutils,msesimplewidgets, mseconsts, msefileutils,
 msebitmap,msedatanodes,msedragglob,msefiledialog,msegrids,msegridsglob,LazUTF8,
 mselistbrowser,msesys;
type
 theaderfo = class(tmseform)
   memopoheader: tmemodialogedit;
   memopotheader: tmemodialogedit;
   tgroupbox1: tgroupbox;
   mseconstheader: tmemodialogedit;
   pofilename: tfilenameedit;
   initunit: tmemoedit;
   modalresulttext: tmemoedit;
   modalresultsnoshort: tmemoedit;
   stockcaptionmemo: tmemoedit;
   endmemo: tmemoedit;
   tbutton2: tbutton;
   procedure createnew(const sender: TObject);
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
    
   while (y < length(constvaluearray) -1) and (hasfound = false) do begin
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

procedure theaderfo.createnew(const sender: TObject);
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

if 1 = 1 then begin // read from po

if fileexists(pofilename.value) then begin

file1:= ttextdatastream.create(pofilename.value,fm_read);

filename1 := copy(filename(pofilename.value),1, length(filename(pofilename.value))-3);
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
         //  writeln(str2);
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
    str2 := str4 + ';' + str2 + ';' + str3 ; 
    constvaluearray[length(constvaluearray)-1] := str2;
     
     file1.free;
      end;
    end;
    
    if 1 = 1 then begin // create mesconst_xx.pas

setlength(defmodalresulttext,length(en_modalresulttext));
defmodalresulttext := en_modalresulttext;

 setlength(defmodalresulttextnosc,length(en_modalresulttextnoshortcut));
defmodalresulttextnosc := en_modalresulttextnoshortcut;

  setlength(defaultstockcaption,length(en_stockcaption));
defaultstockcaption := en_stockcaption;

  setlength(defaultextendedconst,length(en_extendedconst));
defaultextendedconst := en_extendedconst;

  file1:= ttextdatastream.create('mseconsts_' + strlang + '.pas',fm_create);

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
