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
  gettext,msei18nutils,msestrings,mseconsts,

  {  // All lang registered
  mseconsts_af,mseconsts_am,mseconsts_an,mseconsts_ar,mseconsts_as,
  mseconsts_ast,mseconsts_az,mseconsts_be,mseconsts_bg,mseconsts_bn,
  mseconsts_br,mseconsts_bs,mseconsts_ca,mseconsts_crh,mseconsts_cs,
  mseconsts_cy,mseconsts_da,mseconsts_de,mseconsts_dz,mseconsts_el,
  mseconsts_eo,mseconsts_es,mseconsts_et,mseconsts_eu,mseconsts_fa,
  mseconsts_fi,mseconsts_fr,mseconsts_ga,mseconsts_gd,mseconsts_gl,
  mseconsts_gu,mseconsts_he,mseconsts_hi,mseconsts_hr,mseconsts_hu,
  mseconsts_hy,mseconsts_id,mseconsts_is,mseconsts_it,mseconsts_ja,
  mseconsts_ka,mseconsts_kk,mseconsts_km,mseconsts_kn,mseconsts_ko,
  mseconsts_ku,mseconsts_lb,mseconsts_ln,mseconsts_lo,mseconsts_lt,
  mseconsts_lv,mseconsts_mg,mseconsts_mi,mseconsts_mk,mseconsts_ml,
  mseconsts_mn,mseconsts_mr,mseconsts_ms,mseconsts_my,mseconsts_nb,
  mseconsts_nds,mseconsts_ne,mseconsts_nl,mseconsts_nn,mseconsts_oc,
  mseconsts_or,mseconsts_pa,mseconsts_pl,mseconsts_ps,mseconsts_pt,
  mseconsts_pt_BR,mseconsts_ro,mseconsts_ru,mseconsts_rw,mseconsts_si,
  mseconsts_sk,mseconsts_sl,mseconsts_sq,mseconsts_sr,mseconsts_sr_latin,
  mseconsts_sv,mseconsts_ta,mseconsts_te,mseconsts_tg,mseconsts_th,
  mseconsts_tk,mseconsts_tr,mseconsts_ug,mseconsts_uk,mseconsts_uz,
  mseconsts_uz_Latn,mseconsts_vi,mseconsts_wa,mseconsts_xh,mseconsts_zh,
  mseconsts_zh_HK,mseconsts_zh_TW,
  //}

  mseconsts_de, mseconsts_es, mseconsts_fr, mseconsts_ru,
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
 
 // MSEFallbackLang := 'fr';
 
 if not loadlangunit('.' + directoryseparator + 'lang' + directoryseparator+
  'lang_' + MSEFallbackLang + directoryseparator+
   'mseide_i18n_'+splitstring((MSELang),'.')[0],true) then
   loadlangunit('.' + directoryseparator + 'lang' + directoryseparator+ 'lang_'
    + MSEFallbackLang + directoryseparator+'mseide_i18n_'+MSEFallbackLang,true);
    
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
