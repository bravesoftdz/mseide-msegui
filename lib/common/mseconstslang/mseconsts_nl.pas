{ MSEgui Copyright (c) 1999-2018 by Martin Schreiber

    See the file COPYING.MSE, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
} 

unit mseconsts_nl;

{$ifdef FPC}{$mode objfpc}{$h+}{$endif}
interface
uses
 mseconsts;
 
implementation
uses
 msetypes{msestrings},sysutils,mseformatstr;
 
const 
extendedconst: extendedaty =
 (
'Delete selected row?',
'Delete %s selected rows?'
); 

 modalresulttext: defaultmodalresulttextty =
 (
'',
'',
'',
'',
'',
'',
'',
'&Annuleren',
'&Afbreken',
'&Oké',
'&Yes',
'&No',
'&Alle',
'Yes &all',
'N&o all',
'&Ignore',
'&Skip',
'Skip a&ll',
'Co&ntinue'
);

 modalresulttextnoshortcut: defaultmodalresulttextty =
 (
'',
'',
'',
'',
'',
'',
'',
'Annulere',
'Afbreken',
'Oké',
'Yes',
'No',
'Alle',
'Yes all',
'No all',
'Ignore',
'Skip',
'Skip all',
'Continue'
 );

 stockcaption: stockcaptionaty = (
'',
'is invalid',
'Format error',
'Value is required',
'Fout',
'Min',
'Max',
'Range error',
'&Ongedaan maken',
'Op&nieuw uitvoeren',
'&Kopiëren',
'K&nippen',
'&Plakken',
'&Alles selecteren',
'&Insert Row',
'&Append Row',
'&Delete Row',
'&Dir',
'&Thuis',
'&Up',
'&New dir',
'&Naam',
'&Show hidden files',
'&Filter',
'Opslaan',
'Openen',
'Naam',
'Create new directory',
'Back',
'Forward',
'Up',
'Bestand ',
'exists‚ do you want to overwrite?',
'is modified. Save?',
'WARNING',
'ERROR',
'Fout',
'System',
'bestaat niet',
'PASSWORD',
'Enter password',
'Invalid password!',
'Can not read directory',
'Graphic format not supported',
'Graphic format error',
'MS Bitmap',
'MS Icon',
'JPEG Image',
'PNG Image',
'XPM Image',
'PNM Image',
'TARGA Image',
'TIFF Image',
'Alle',
'Bevestiging',
'Delete record?',
'Copy record?',
'Close page',
'First',
'Prior',
'Volgende',
'Last',
'Append',
'Verwijderen',
'Bewerken',
'Post',
'Annulere',
'Refresh',
'Edit filter',
'Edit filter minimum',
'Edit filter maximum',
'Reset filter',
'Filter on',
'Zoeken',
'Auto edit',
'Copy record',
'Dialog',
'Insert',
'Kopiëren',
'Plakken',
'Row insert',
'Row append',
'Row delete',
'Ongedaan maken',
'Opnieuw uitvoeren',
'Knippen',
'Alles selecteren',
'Filter off',
'Portrait',
'Landscape',
'Delete row?',
'selected rows?',
'Single item only',
'Copy Cells',
'Paste Cells',
'Sluiten',
'Maximize',
'Normalize',
'Minimize',
'Fix size',
'Float',
'Stay on top',
'Stay in background',
'Lock children',
'No lock',
'Input',
'Button',
'On',
'Off',
'Left border',
'Top border',
'Right border',
'Bottom border',
'Begin of text',
'End of text',
'Inputmode',
'Overwrite',
'Deleted',
'Copied',
'Inserted',
'Pasted',
'Withdrawn',
'Window activated',
'Menu',
'Beginning of file',
'End of file',
'Voice output',
'Speak again',
'First column',
'First row',
'Last column',
'Last row',
'Selection',
'Speak path',
'Disabled button',
'First field',
'Last field',
'First element',
'Last element',
'Slower',
'Faster',
'Window',
'Area',
'Area activated',
'Volume down',
'Volume up',
'Cancel speech'
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
registerlangconsts(langnames[la_nl],@stockcaption,@modalresulttext,@modalresulttextnoshortcut,@textgenerator);

end.

