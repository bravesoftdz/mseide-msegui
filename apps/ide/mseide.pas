{ MSEide Copyright (c) 1999-2016 by Martin Schreiber
   
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
}
program mseide;
{$ifdef FPC}
 {$mode objfpc}{$h+}
 {$ifdef mswindows}
  {$ifdef mse_debug}{$apptype console}{$else}{$apptype gui}{$endif}
 {$endif}
{$endif}
{$ifdef mswindows}
 {$R mseide.res}
{$endif}
{$ifndef mse_allwarnings}
 {$if fpc_fullversion >= 030100}
  {$warn 5089 off}
  {$warn 5090 off}
  {$warn 5093 off}
  {$warn 6058 off}
 {$endif}
{$endif}
uses
{$ifdef FPC}{$ifdef unix}cthreads,{$endif}{$endif}
//  mseopenglgdiinit,
  mseskindesign,menusdesign,
  
  {$ifdef mse_i18n}
  gettext,msei18nutils,mseconsts,mseconsts_ru,mseconsts_uzcyr,
  mseconsts_de,mseconsts_es,mseconsts_zh,mseconsts_id,mseconsts_fr,
  {$endif}

  msegui,msegraphics,actionsmodule,sourceform,debuggerform,
  componentpaletteform,componentstore,
  messageform,watchform,objectinspector,breakpointsform,watchpointsform,
  stackform,projecttreeform,findinfileform,cpuform,disassform,memoryform,
  threadsform,mseguiglob,symbolform,
  targetconsole,main,mseguiintf,{msestockobjects,}regunitgroups,guitemplates,
  msegraphutils,msefont,stringconsts;
  
 {$ifdef mse_i18n}
var
  MSELang,MSEFallbacklang:string;
  {$endif}

begin
 {$ifdef mse_i18n}
 Gettext.GetLanguageIDs(MSELang,MSEFallbackLang);
 //Ukrainian, Belarusian, Bashkir
 if (MSEFallbackLang='uk') or (MSEFallbackLang='be') or (MSEFallbackLang='ba')
 //Bulgarian, Chechen, Church Slavic
 or (MSEFallbackLang='bg') or (MSEFallbackLang='ce') or (MSEFallbackLang='cu')
 //Chuvash, Kazakh, Komi
 or (MSEFallbackLang='cv') or (MSEFallbackLang='kk') or (MSEFallbackLang='kv')
 //Moldavian, Tatar
 or (MSEFallbackLang='mo') or (MSEFallbackLang='tt')
                                                   then MSEFallbackLang:='ru';
 If loadlangunit('i18n_'+MSEFallbackLang,true) then
                                                   setlangconsts(MSEFallbackLang);
 {$endif}

 registerfontalias('mseide_source',gui_getdefaultfontnames[stf_courier],
                    fam_fixnooverwrite,16);
 application.createdatamodule(tguitemplatesmo,guitemplatesmo);
 if application.terminated then begin
  exit;
 end;
 application.createdatamodule(tstringconstsmo,s);
 application.createdatamodule(tactionsmo,actionsmo);
 application.createform(tsourcefo, sourcefo);
 application.createform(tdebuggerfo,debuggerfo);
 application.createform(tcomponentpalettefo,componentpalettefo);
 application.createform(tcomponentstorefo,componentstorefo);
 application.createform(tmessagefo,messagefo);
 application.createform(twatchfo, watchfo);
 application.createform(tsymbolfo, symbolfo);
 application.createform(tobjectinspectorfo, objectinspectorfo);
 application.createform(tbreakpointsfo, breakpointsfo);
 application.createform(twatchpointsfo, watchpointsfo);
 application.createform(tstackfo, stackfo);
 application.createform(tprojecttreefo, projecttreefo);
 application.createform(tfindinfilefo, findinfilefo);
// application.createform(tcpufo, cpufo);
 application.createform(tdisassfo, disassfo);
 application.createform(tmemoryfo, memoryfo);
 application.createform(tthreadsfo, threadsfo);
 application.createform(ttargetconsolefo,targetconsolefo);
 application.createform(tmainfo, mainfo);
 createcpufo;
 application.run;
end.
