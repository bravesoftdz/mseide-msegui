{ MSEtools Copyright (c) 1999-2014 by Martin Schreiber
   
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
program msei18n;
{$ifdef FPC}
 {$mode objfpc}{$h+}
 {$ifdef mswindows}{$apptype gui}{$endif}
{$endif}
{$ifdef mswindows}
 {$R msei18n.res}
{$endif}

uses
  {$ifdef FPC}{$ifdef unix} cthreads,{$endif}{$endif}msegui,

  {$ifdef mse_i18n}
  gettext,msei18nutils,mseconsts,mseconsts_ru,mseconsts_uzcyr,
  mseconsts_de,mseconsts_fr,mseconsts_es,mseconsts_zh,mseconsts_id,
  {$endif}
  
  main,messagesform,project, headerform;

{$ifdef mse_i18n}
var
  MSELang,MSEFallbacklang:string;
{$endif}

begin
{$ifdef mse_i18n}
 Gettext.GetLanguageIDs(MSELang,MSEFallbackLang);
 If loadlangunit('i18n_'+MSEFallbackLang,true) then
   setlangconsts(MSEFallbackLang);
{$endif}                                               
 application.createForm(tmainfo,mainfo);
 application.createForm(tmessagesfo,messagesfo);
 application.createForm(theaderfo,headerfo);
 application.run;
end.
 
