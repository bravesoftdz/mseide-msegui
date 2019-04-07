{ MSEgui Copyright (c) 1999-2018 by Martin Schreiber

    See the file COPYING.MSE, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
} 

unit mseconsts_sk;

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
'sk',
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
'&Zrušiť',
'&Prerušiť',
'&OK',
'&Yes',
'&No',
'&All',
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
'Zrušiť',
'Prerušiť',
'OK',
'Yes',
'No',
'All',
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
'Chyba',
'Min',
'Max',
'Range error',
'&Vrátiť',
'&Znovu vykonať',
'&Kopírovať',
'Cu&t',
'&Vložiť',
'Select &all',
'&Insert Row',
'&Append Row',
'&Delete Row',
'&Dir',
'&Domov',
'&Up',
'&New dir',
'&Názov',
'&Show hidden files',
'&Filter',
'Uložiť',
'Otvoriť',
'Meno',
'Create new directory',
'Back',
'Forward',
'Up',
'Súbor',
'exists, do you want to overwrite?',
'is modified. Save?',
'WARNING',
'ERROR',
'Výnimka',
'System',
'does not exist',
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
'All',
'Potvrdenie',
'Delete record?',
'Copy record?',
'Close page',
'First',
'Prior',
'Ďalší',
'Last',
'Append',
'Zmazať',
'&Upraviť',
'Post',
'Zrušiť',
'Refresh',
'Edit filter',
'Edit filter minimum',
'Edit filter maximum',
'Reset filter',
'Filter on',
'&Hľadať',
'Auto edit',
'Copy record',
'Dialog',
'Insert',
'Kopírovať',
'Vložiť',
'Row insert',
'Row append',
'Row delete',
'Vrátiť',
'Znovu vykonať',
'Cut',
'Select all',
'Filter off',
'Portrait',
'Landscape',
'Delete row?',
'selected rows?',
'Single item only',
'Copy Cells',
'Paste Cells',
'Zavrieť',
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
 registerlangconsts(extendedconst[ex_lang],@stockcaption,@modalresulttext, 
        @modalresulttextnoshortcut,@textgenerator);
                               
end.
