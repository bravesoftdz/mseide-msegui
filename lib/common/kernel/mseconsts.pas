{ MSEgui Copyright (c) 1999-2018 by Martin Schreiber

    See the file COPYING.MSE, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
}
unit mseconsts;
{$ifdef FPC}{$mode objfpc}{$h+}{$endif}
interface

uses
 msestockobjects,mseglob,msestrings,mseapplication,msetypes;
 
 
type
 stockcaptionaty = array[stockcaptionty] of msestring;
 pstockcaptionaty = ^stockcaptionaty;
 defaultmodalresulttextty = array[modalresultty] of msestring;
 pdefaultmodalresulttextty = ^defaultmodalresulttextty;
 defaultgeneratortextty = array[textgeneratorty] of textgeneratorfuncty;
 pdefaultgeneratortextty = ^defaultgeneratortextty;
 
 extendedty = (ex_del_row_selected,ex_del_rows_selected);
 
 extendedaty = array[extendedty] of msestring;
 pextendeadty = ^extendedaty;
 
 langty = (la_none,la_en,la_af,la_am,la_an,la_ar,la_as,la_ast,la_az,la_be,
 la_bg,la_bn,la_br,la_bs,la_ca,la_crh,la_cs,la_cy,la_da,la_de,la_dz,la_el,
 la_eo,la_es,la_et,la_eu,la_fa,la_fi,la_fr,la_ga,la_gd,la_gl,la_gu,la_he,
 la_hi,la_hr,la_hu,la_hy,la_id,la_is,la_it,la_ja,la_ka,la_kk,la_km,la_kn,
 la_ko,la_ku,la_lb,la_ln,la_lo,la_lt,la_lv,la_mg,la_mi,la_mk,la_ml,la_mn,
 la_mr,la_ms,la_my,la_nb,la_nds,la_ne,la_nl,la_nn,la_oc,la_or,la_pa,la_pl,
 la_ps,la_pt,la_pt_BR,la_ro,la_ru,la_rw,la_si,la_sk,la_sl,la_sq,la_sr,
 la_sr_latin,la_sv,la_ta,la_te,la_tg,la_th,la_tk,la_tr,la_ug,la_uk,la_uz,
 la_uz_Latn,la_vi,la_wa,la_xh,la_zh,la_zh_HK,la_zh_TW);

const
 langnames: array[langty] of string = ('','en','af','am','an','ar','as','ast',
 'az','be','bg','bn','br','bs','ca','crh','cs','cy','da','de','dz','el','eo',
 'es','et','eu','fa','fi','fr','ga','gd','gl','gu','he','hi','hr','hu','hy',
 'id','is','it','ja','ka','kk','km','kn','ko','ku','lb','ln','lo','lt','lv',
 'mg','mi','mk','ml','mn','mr','ms','my','nb','nds','ne','nl','nn','oc','or',
 'pa','pl','ps','pt','pt_br','ro','ru','rw','si','sk','sl','sq','sr',
 'sr@latin','sv','ta','te','tg','th','tk','tr','ug','uk','uz','uz@latn','vi',
 'wa','xh','zh','zh_hk','zh_tw');

const 
en_extendedconst: extendedaty =
 ('Delete selected row?',    // ex_del_row_selected
  'Delete %s selected rows?' // ex_del_rows_selected
  );           

 const
 en_modalresulttext: defaultmodalresulttextty =
 ('',          //mr_none
  '',          //mr_canclose
  '',          //mr_windowclosed
  '',          //mr_windowdestroyed
  '',          //mr_escape
  '',          //mr_f10
  '',          //mr_exception
  '&Cancel',   //mr_cancel
  '&Abort',    //mr_abort
  '&OK',       //mr_ok
  '&Yes',      //mr_yes
  '&No',       //mr_no
  '&All',      //mr_all
  'Yes &all',  //mr_yesall
  'N&o all',   //mr_noall
  '&Ignore',   //mr_ignore
  '&Skip',     //mr_skip
  'Skip a&ll', //mr_skipall
  'Co&ntinue'  //mr_continue
  );
  
  en_modalresulttextnoshortcut: defaultmodalresulttextty =
 ('',         //mr_none
  '',         //mr_canclose
  '',         //mr_windowclosed
  '',         //mr_windowdestroyed
  '',         //mr_esc
  '',         //mr_f10
  '',         //mr_exception
  'Cancel',   //mr_cancel
  'Abort',    //mr_abort
  'OK',       //mr_ok
  'Yes',      //mr_yes
  'No',       //mr_no
  'All',      //mr_all
  'Yes all',  //mr_yesall
  'No all',   //mr_noall
  'Ignore',   //mr_ignore
  'Skip',     //mr_skip
  'Skip all', //mr_skipall
  'Continue'  //mr_continue
  );

 en_stockcaption: stockcaptionaty = (
  '',                   //sc_none
  'is invalid',         //sc_is_invalid
  'Format error',       //sc_Format_error
  'Value is required',  //sc_Value_is_required
  'Error',              //sc_Error
  'Min',                //sc_Min
  'Max',                //sc_Max
  'Range error',        //sc_Range_error  

  '&Undo',              //sc_Undohk       ///         ///
  '&Redo',              //sc_Redohk        //          //
  '&Copy',              //sc_Copyhk        // hotkeys  //
  'Cu&t',               //sc_Cuthk         //          //
  '&Paste',             //sc_Pastehk       //          // hotkeys
  'Select &all',        //sc_Select_allhk ///          //
  '&Insert Row',        //sc_insert_rowhk ///          //
  '&Append Row',        //sc_append_rowhk  // hotkeys  //
  '&Delete Row',        //sc_delete_rowhk ///         ///

  '&Dir',               //sc_Dirhk               /// 
  '&Home',              //sc_homehk               //
  '&Up',                //sc_Uphk                 //
  '&New dir',           //sc_New_dirhk            // hotkeys
  '&Name',              //sc_Namehk               //
  '&Show hidden files', //sc_Show_hidden_fileshk  //
  '&Filter',            //sc_Filterhk            /// 
  'Save',               //sc_save 
  'Open',               //sc_open
  'Name',                //sc_name
  'Create new directory',//sc_create_new_directory
  'Back',                //sc_back
  'Forward',             //sc_forward
  'Up',                  //sc_up
  'File',                //sc_file
  'exists, do you want to overwrite?', //sc_exists_overwrite
  'is modified. Save?',  //sc_is_modified_save
  'WARNING',               //sc_warningupper
  'ERROR',                 //sc_errorupper
  'Exception',             //sc_exception
  'System',                //sc_system
  'does not exist',        //sc_does_not_exist
  'PASSWORD',              //sc_passwordupper
  'Enter password',        //sc_enterpassword
  'Invalid password!',     //sc_invalidpassword
  'Can not read directory', //sc_can_not_read_directory
  'Graphic format not supported', //sc_graphic_not_supported
  'Graphic format error', //sc_graphic_format_error
  'MS Bitmap',          //sc_MS_Bitmap
  'MS Icon',            //sc_MS_Icon
  'JPEG Image',         //sc_JPEG_Image 
  'PNG Image',          //sc_PNG_Image
  'XPM Image',          //sc_XPM_Image
  'PNM Image',          //sc_PNM_Image
  'TARGA Image',        //sc_TARGA_image
  'TIFF Image',         //sc_TIFF_image
  'All',                //sc_All
  'Confirmation',       //sc_Confirmation
  'Delete record?',     //sc_Delete_record_question
  'Copy record?',       //sc_Copy_record_question
  'Close page',         //sc_close_page
  'First',              //sc_first
  'Prior',              //sc_prior
  'Next',               //sc_next
  'Last',               //sc_last
  'Append',             //sc_append
  'Delete',             //sc_delete
  'Edit',               //sc_edit
  'Post',               //sc_post
  'Cancel',             //sc_cancel
  'Refresh',            //sc_refresh
  'Edit filter',        //sc_filter_filter
  'Edit filter minimum',//sc_edit_filter_min
  'Edit filter maximum',//sc_filter_edit_max
  'Reset filter',       //sc_reset_filter
  'Filter on',          //sc_filter_on
  'Search',             //sc_search
  'Auto edit',          //sc_auto_edit
  'Copy record',        //sc_copy_record
  'Dialog',             //sc_dialog
  'Insert',             //sc_insert
  'Copy',               //sc_copy
  'Paste',              //sc_paste
  'Row insert',         //sc_row_insert
  'Row append',         //sc_row_append
  'Row delete',         //sc_row_delete
  'Undo',               //sc_undo
  'Redo',               //sc_redo
  'Cut',                //sc_cut
  'Select all',         //sc_select_all
  
  'Filter off',         //sc_filter_off
  'Portrait',           //sc_portrait print orientation
  'Landscape',          //sc_landscape print orientation
  'Delete row?',        //sc_Delete_row_question
  'selected rows?',     //sc_selected_rows
  'Single item only',    //sc_Single_item_only
  'Copy Cells',          //sc_Copy_Cells
  'Paste Cells',         //sc_Paste_Cells
  'Close',               //sc_close
  'Maximize',            //sc_maximize
  'Normalize',           //sc_normalize
  'Minimize',            //sc_minimize
  'Fix size',            //sc_fix_size
  'Float',               //sc_float
  'Stay on top',         //sc_stay_on_top
  'Stay in background',  //sc_stay_in_background
  'Lock children',       //sc_lock_children
  'No lock',             //sc_no_lock
  'Input',               //sc_input
  'Button',              //sc_button
  'On',                  //sc_on
  'Off',                 //sc_off
  'Left border',         //sc_leftborder
  'Top border',          //sc_topborder
  'Right border',        //sc_rightborder
  'Bottom border',       //sc_bottomborder
  'Begin of text',       //sc_beginoftext
  'End of text',         //sc_endoftext
  'Inputmode',           //sc_inputmode
  'Overwrite',           //sc_overwrite
  'Deleted',             //sc_deleted
  'Copied',              //sc_copied
  'Inserted',            //sc_inserted
  'Pasted',              //sc_pasted
  'Withdrawn',           //sc_withdrawn
  'Window activated',    //sc_windowactivated
  'Menu',                //sc_menu
  'Beginning of file',   //sc_bof
  'End of file',         //sc_eof
  'Voice output',        //sc_voiceoutput
  'Speak again',         //sc_speakagain
  'First column',        //sc_firstcol
  'First row',           //sc_firstrow
  'Last column',         //sc_lastcol
  'Last row',            //sc_lastrow
  'Selection',           //sc_selection
  'Speak path',          //sc_speakpath
  'Disabled button',     //sc_disabledbutton
  'First field',         //sc_firstfield
  'Last field',          //sc_lastfield
  'First element',       //sc_firstelement
  'Last element',        //sc_lastelement
  'Slower',              //sc_slower
  'Faster',              //sc_faster
  'Window',              //sc_window
  'Area',                //sc_area
  'Area activated',      //sc_areaactivated
  'Volume down',         //sc_volumedown
  'Volume up',           //sc_volumeup
  'Cancel speech'        //sc_cancelspeech
);

            
 function modalresulttext(const index: modalresultty): msestring;
 function modalresulttextnoshortcut(const index: modalresultty): msestring;
 function stockcaptions(const index: stockcaptionty): msestring;
 function stocktextgenerators(const index: textgeneratorty): textgeneratorfuncty;
 function uc(const index: integer): msestring; //get user caption

 procedure registeruserlangconsts(name: string;
                                      const caption: array of msestring);
 procedure registerlangconsts(const name: string;
               const stockcaptionpo: pstockcaptionaty;
            const modalresulttextpo: pdefaultmodalresulttextty;
            const modalresulttextnoshortcutpo: pdefaultmodalresulttextty;
            const textgeneratorpo: pdefaultgeneratortextty);
 function setlangconsts(const name: string): boolean;
                 //true if ok, no change otherwise
 function getcurrentlangconstsname: string;
 procedure setuserlangconsts(const name: string);
                 //called by setlangconsts automatically
type
 langchangeprocty = procedure(const langname: ansistring);
  
 procedure registerlangchangeproc(const aproc: langchangeprocty); 
 procedure unregisterlangchangeproc(const aproc: langchangeprocty); 
 
implementation
uses
 sysutils,msesysintf,msearrayutils,mseformatstr;
 
type
 langinfoty = record
  name: string;
  stockcaption: pstockcaptionaty;
  modalresulttext: pdefaultmodalresulttextty;
  modalresulttextnoshortcut: pdefaultmodalresulttextty;
  textgenerator: pdefaultgeneratortextty;
 end;
 userlanginfoty = record
  name: string;
  caption: msestringarty;
 end;
 
var
 langs: array of langinfoty;
 lang: langinfoty;
 langbefore: ansistring;
 userlangs: array of userlanginfoty;
 userlang: userlanginfoty;
 langchangeprocs: array of langchangeprocty;
 
function delete_n_selected_rows(const params: array of const): msestring;
begin
 with params[0] do begin
  if vinteger = 1 then begin
   result:= en_extendedconst[ex_del_row_selected];
  end
  else begin
   result := StringReplace(en_extendedconst[ex_del_rows_selected], #37#115, inttostrmse(vinteger), [rfReplaceAll]);
  end;
 end;
end;

const
 en_textgenerator: defaultgeneratortextty = (
              {$ifdef FPC}@{$endif}delete_n_selected_rows //tg_delete_n_selected_rows
                                             );

procedure setitem(var item: langinfoty;
           const name: string;
           const stockcaptionpo: pstockcaptionaty;
           const modalresulttextpo: pdefaultmodalresulttextty;
           const modalresulttextnoshortcutpo: pdefaultmodalresulttextty;
           const textgeneratorpo: pdefaultgeneratortextty);
begin
 item.name:= name;
 item.stockcaption:= stockcaptionpo;
 item.modalresulttext:= modalresulttextpo;
 item.modalresulttextnoshortcut:= modalresulttextnoshortcutpo;
 item.textgenerator:= textgeneratorpo;
end;

procedure registerlangconsts(const name: string;
            const stockcaptionpo: pstockcaptionaty;
            const modalresulttextpo: pdefaultmodalresulttextty;
            const modalresulttextnoshortcutpo: pdefaultmodalresulttextty;
            const textgeneratorpo: pdefaultgeneratortextty);
            
 
var
 int1: integer;
begin
 for int1:= 0 to high(langs) do begin
  if langs[int1].name = name then begin
   setitem(langs[int1],name,stockcaptionpo,modalresulttextpo,
                               modalresulttextnoshortcutpo,textgeneratorpo);
   exit;
  end;
 end;
 setlength(langs,high(langs)+2);
 setitem(langs[high(langs)],name,stockcaptionpo,modalresulttextpo,
                               modalresulttextnoshortcutpo,textgeneratorpo);
end;

procedure registeruserlangconsts(name: string; 
                                      const caption: array of msestring);
 procedure setitem(var item: userlanginfoty);
 var
  int1: integer;
 begin
  item.name:= name;
  setlength(item.caption,length(caption));
  for int1:= 0 to high(caption) do begin
   item.caption[int1]:= caption[int1];
  end;
 end;
 
var
 int1: integer;
begin
 name:= lowercase(name);
 for int1:= 0 to high(userlangs) do begin
  if userlangs[int1].name = name then begin
   setitem(userlangs[int1]);
   exit;
  end;
 end;
 setlength(userlangs,high(userlangs)+2);
 setitem(userlangs[high(userlangs)]);
end;

procedure setuserlangconsts(const name: string);
var
 int1: integer;
begin
 if name = '' then begin
  if high(userlangs) >= 0 then begin
   userlang:= userlangs[0];
  end;
 end
 else begin
  if name <> userlang.name then begin
   for int1:= 0 to high(userlangs) do begin
    if userlangs[int1].name = name then begin
     userlang:= userlangs[int1];
     break;
    end;
   end;
  end;
 end;
end;

function getcurrentlangconstsname: string;
begin
 result:= lang.name;
end;

function setlangconsts(const name: string): boolean;
var
 int1: integer;
 bo1: boolean;
 str1: string;
begin
 if name = '' then begin
  str1:= lowercase(sys_getlangname);
  if str1 = '' then begin
   str1:= langnames[la_en];
  end;
 end
 else begin  
  str1:= lowercase(name);
 end;
 setuserlangconsts(str1);
 result:= false;
 bo1:= lang.name = '';
 if lang.name <> str1 then begin
  for int1:= 0 to high(langs) do begin
   if langs[int1].name = str1 then begin
    lang:= langs[int1];
    result:= true;
    break;
   end;
  end;
  if bo1 then begin
   if lang.name = '' then begin
    setitem(lang,langnames[la_en],@en_stockcaption,@en_modalresulttext,
               @en_modalresulttextnoshortcut,@en_textgenerator);
{
    with lang do begin
     name:= langnames[la_en];
     stockcaption:= @en_stockcaption;
     modalresulttext:= @en_modalresulttext;  
     modalresulttextnoshortcut:= @en_modalresulttextnoshortcut;
     textgenerator:= @en_textgenerator;
    end;
}
   end;
  end;
 end;
 if lowercase(str1) <> langbefore then begin
  for int1:= 0 to high(langchangeprocs) do begin
   langchangeprocs[int1](str1);
  end;
  application.langchanged;
 end;
end;

procedure checklang;
begin
 if lang.name = '' then begin
  setlangconsts('');
 end;
end;
  
function uc(const index: integer): msestring;
begin
 if userlang.name = '' then begin
  setuserlangconsts('');
 end;
 if (index < 0) or (index > high(userlang.caption)) then begin
  raise exception.create('Invalid user caption index: '+inttostr(index)+'.');
 end;
 result:= userlang.caption[index];
end;

function modalresulttext(const index: modalresultty): msestring;
begin
 checklang;
 result:= lang.modalresulttext^[index];
end;

function modalresulttextnoshortcut(const index: modalresultty): msestring;
begin
 checklang;
 result:= lang.modalresulttextnoshortcut^[index];
end;

function stocktextgenerators(const index: textgeneratorty): textgeneratorfuncty;
begin
 checklang;
 result:= lang.textgenerator^[index];
end;

function stockcaptions(const index: stockcaptionty): msestring;
begin
 checklang;
 result:= lang.stockcaption^[index];
end;

procedure registerlangchangeproc(const aproc: langchangeprocty); 
begin
 additem(pointerarty(langchangeprocs),{$ifndef FPC}@{$endif}aproc);
end;

procedure unregisterlangchangeproc(const aproc: langchangeprocty);
begin
 removeitem(pointerarty(langchangeprocs),{$ifndef FPC}@{$endif}aproc);
end;

initialization
 registerlangconsts(langnames[la_en],@en_stockcaption,@en_modalresulttext,
                               @en_modalresulttextnoshortcut,@en_textgenerator);
 langbefore:= langnames[la_en];
end.
