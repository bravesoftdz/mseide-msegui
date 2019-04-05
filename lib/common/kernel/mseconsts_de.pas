{ MSEgui Copyright (c) 1999-2018 by Martin Schreiber

    See the file COPYING.MSE, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
} 

unit mseconsts_de;
{$ifdef FPC}{$mode objfpc}{$h+}{$endif}
interface
uses
 mseconsts;
 
implementation
uses
 msetypes{msestrings},sysutils,mseformatstr;
 
const 
extendedconst: extendedaty =
 ('de',  // ex_lang
  'Gew'#0228'hlte Zeile l'#0246'schen?',    // ex_del_row_selected
  '%s gew'#0228'hlte Zeilen l'#0246'schen?' // ex_del_rows_selected
  );

modalresulttext: defaultmodalresulttextty =
 ('',            //mr_none
  '',            //mr_canclose
  '',            //mr_windowclosed
  '',            //mr_windowdestroyed
  '',            //mr_escape
  '',            //mr_f10
  '',            //mr_exception
  '&Abbrechen',  //mr_cancel
  '&Abbrechen',  //mr_abort
  '&OK',         //mr_ok
  '&Ja',         //mr_yes
  '&Nein',       //mr_no
  'A&lle',       //mr_all
  'Ja a&lle',    //mr_yesall
  'N&ein alle',  //mr_noall
  '&Ignorieren', //mr_ignore
  #0220'bers&pringen',         //mr_skip
  'Alles '#0252'&berspringen', //mr_skipall
  '&Fortfahren'  //mr_continue
  );

 modalresulttextnoshortcut: defaultmodalresulttextty =
 ('',                         //mr_none
  '',                         //mr_canclose
  '',                         //mr_windowclosed
  '',                         //mr_windowdestroyed
  '',                         //mr_escape
  '',                         //mr_f10
  '',                         //mr_exception
  'Abbrechen',                //mr_cancel
  'Abbrechen',                //mr_abort
  'OK',                       //mr_ok
  'Ja',                       //mr_yes
  'Nein',                     //mr_no
  'Alle',                     //mr_all
  'Ja alle',                  //mr_yesall
  'Nein alle',                //mr_noall
  'Ignorieren',               //mr_ignore
  #0220'berspringen',         //mr_skip
  'Alles '#0252'berspringen', //mr_skipall
  'Fortfahren'                //mr_continue
  );

 stockcaption: stockcaptionaty = (
  '',                        //sc_none
  'ist ung'#0252'ltig',       //sc_is_invalid
  'Format Fehler',           //sc_Format_error
  'Wert wird ben'#0246'tigt', //sc_Value_is_required
  'Fehler',                  //sc_Error
  'Min',                     //sc_Min
  'Max',                     //sc_Max
  'Bereichs Fehler',         //sc_Range_error  

  '&R'#0252'ckg'#0228'ngig', //sc_Undohk       ///         ///
  '&Redo',                   //sc_Redohk        //          //
  '&Kopieren',               //sc_Copyhk        // hotkeys  //
  '&Ausschneiden',           //sc_Cuthk         //          //
  '&Einf'#0252'gen',         //sc_Pastehk       //          // hotkeys
  'Alles &markieren',        //sc_Select_allhk ///          //
  'Zeile e&inf'#0252'gen',   //sc_insert_rowhk ///          //
  'Zeile a&nf'#0252'gen',    //sc_append_rowhk  // hotkeys  //
  'Zeile &l'#0246'schen',    //sc_delete_rowhk ///         ///

  '&Dir',                 //sc_Dirhk               /// 
  '&Home',                //sc_homehk               //
  '&Auf',                 //sc_Uphk                 //
  'Dir &neu',             //sc_New_dirhk            // hotkeys
  'N&ame',                //sc_Namehk               //
  '&Verst.Dat.anzeigen',  //sc_Show_hidden_fileshk  //
  '&Filter',              //sc_Filterhk            ///   
  'Speichern',            //sc_save 
  #0214'ffnen',            //sc_open
  'Name',                 //sc_name
  'Verzeichnis erstellen',//sc_create_new_directory
  'Zurück',               //sc_back
  'Forw'#0228'rts',        //sc_forward
  'Aufw'#0228'rts',        //sc_up
  'Datei',                //sc_file
  'existiert, wollen Sie '#0252'berschreiben?', //sc_exists_overwrite
  'wurde geändert, wollen Sie speichern?',     //sc_is_modified_save
  'WARNUNG',                                   //sc_warningupper
  'FEHLER',                                    //sc_errorupper
  'Exception',                                 //sc_exception
  'System',                                    //sc_system
  'existiert nicht',                           //sc_does_not_exist
  'PASSWORT',                 //sc_passwordupper
  'Passworteingabe',         //sc_enterpassword
  'Ung'#0252'ltiges Passwort!',//sc_invalidpassword
  'Verzeichnis kann nicht gelesen werden',     //sc_can_not_read_directory
  'Grafik Format nicht unterst'#0252'tzt', //sc_graphic_not_supported
  'Grafik Format Fehler', //sc_graphic_format_error
  'MS Bitmap',            //sc_MS_Icon
  'MS Icon',              //sc_MS_Icon
  'JPEG Bild',            //sc_JPEG_Image 
  'PNG Bild',             //sc_PNG_Image
  'XPM Bild',             //sc_XPM_Image
  'PNM Bild',             //sc_PNM_Image
  'TARGA Bild',           //sc_TARGA_image
  'TIFF Bild',            //sc_TIFF_image
  'Alle',                 //sc_All
  'Best'#0228'tigung',     //sc_Confirmation
  'Datensatz l'#0246'schen?', //sc_Delete_record_question
  'Datensatz kopieren?',     //sc_Copy_record_question
  'Seite schliessen',        //sc_close_page
  'Erster',                  //sc_first
  'Vorheriger',              //sc_prior
  'N'#0228'chster',           //sc_next
  'Letzter',                 //sc_last
  'Anf'#0252'gen',            //sc_append
  'L'#0246'schen',            //sc_delete
  'Bearbeiten',              //sc_edit
  'Eintragen',               //sc_post
  'Verwerfen',               //sc_cancel
  'Auffrischen',             //sc_refresh
  'Filter bearbeiten',        //sc_filter_filter
  'Filter Minimum bearbeiten',//sc_edit_filter_min
  'Filter Maximum bearbeiten',//sc_filter_edit_max
  'Filter r'#0252'ckstellen',  //sc_reset_filter
  'Filter ein',               //sc_filter_on
  'Suchen',                   //sc_search
  'Automatisch bearbeiten',   //sc_auto_edit
  'Datensatz kopieren',       //sc_copy_record
  'Dialog',                   //sc_dialog
  'Einf'#0252'gen',            //sc_insert
  'Kopieren',                 //sc_copy
  'Einf'#0252'gen',            //sc_paste
  'Zeile einf'#0252'gen',      //sc_row_insert
  'Zeile anf'#0252'gen',       //sc_row_append
  'Zeile l'#0246'schen',       //sc_row_delete
  'R'#0252'ckg'#0228'ngig',     //sc_undo
  'Wiederherstellen',         //sc_redo
  'Ausschneiden',             //sc_cut
  'Alles markieren',          //sc_select_all
  'Filter aus',               //sc_filter_off
  'Hochformat',               //sc_portrait print orientation
  'Querformat',               //sc_landscape print orientation
  'Zeile l'#0246'schen?',      //sc_Delete_row_question
  'gew'#0228'hlte Zeilen?',      //sc_selected_rows
  'Nur Einzeleintrag erlaubt', //sc_Single_item_only 
  'Zellen kopieren',           //sc_Copy_Cells
  'Zellen einf'#0252'gen',      //sc_Paste_Cells
  'Schliessen',                //sc_close
  'Maximieren',                //sc_maximize
  'Normalisieren',             //sc_normalize
  'Minimieren',                //sc_minimize
  'Feste Gr'#0246'sse',        //sc_fix_size
  'Lösen',                     //sc_float
  'Im Fordergrund',            //sc_stay_on_top
  'Im Hintergrund',            //sc_stay_in_background
  'Blockiere Unterfenster',    //sc_lock_children
  'Kein Blockieren',           //sc_no_lock
  'Eingabe',                   //sc_input
  'Schaltfeld',                //sc_button
  'Ein',                       //sc_on
  'Aus',                       //sc_off
  'Linker Rand',               //sc_leftborder
  'Oberer Rand',               //sc_topborder
  'Rechter Rand',              //sc_rightborder
  'Unterer Rand',              //sc_bottomborder
  'Text start',                //sc_beginoftext
  'Text ende',                 //sc_endoftext
  'Eingabe Modus',             //sc_inputmode
  #220'berschreiben',        //sc_overwrite
  'Gel'#246'scht',           //sc_deleted
  'Kopiert',                   //sc_copied
  'Eingef'#252'gt',          //sc_inserted
  'Eingef'#252'gt',          //sc_pasted
  'R'#252'ckg'#228'ngig',  //sc_withdrawn
  'Fenster aktiviert',         //sc_windowactivated
  'Men'#252,                 //sc_menu
  'Datei Beginn',              //sc_bof
  'Datei Ende',                //sc_eof
  'Sprachausgabe',             //sc_voiceoutput
  'Wiederhole Sprachausgabe',  //sc_speakagain
  'Erste Spalte',              //sc_firstcol
  'Erste Zeile',               //sc_firstrow
  'Letzte Spalte',             //sc_lastcol
  'Letzte Zeile',              //sc_lastrow
  'Auswahl',                   //sc_selection
  'Spreche Pfad',              //sc_speakpath
  'Deaktiviertes Schaltfeld',  //sc_disabledbutton
  'Erstes Feld',               //sc_firstfield
  'Letztes Feld',              //sc_lastfield
  'Erstes Element',            //sc_firstelement
  'Letztes Element',           //sc_lastelement
  'Langsamer',                 //sc_slower
  'Schneller',                 //sc_faster
  'Fenster',                   //sc_window
  'Bereich',                   //sc_area
  'Bereich aktiviert',         //sc_areaactivated
  'Leiser',                    //sc_volumedown
  'Lauter',                    //sc_volumeup
  'Ansage abbrechen'           //sc_cancelspeech
);

function delete_n_selected_rows(const params: array of const): msestring;
begin
 with params[0] do begin
  if vinteger = 1 then begin
   result:= extendedconst[ex_del_row_selected];
  end
  else begin
   result := StringReplace(extendedconst[ex_del_rows_selected], #37#115, inttostrmse(vinteger), [rfReplaceAll]);
  end;
 end;
end;

const
 textgenerator: defaultgeneratortextty = (
              {$ifdef FPC}@{$endif}delete_n_selected_rows
                                     );
initialization
 registerlangconsts(extendedconst[ex_lang],@stockcaption,@modalresulttext, 
        @modalresulttextnoshortcut,@textgenerator);
                               
end.
