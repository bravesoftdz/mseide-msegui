{ MSEgui Copyright (c) 1999-2018 by Martin Schreiber

    See the file COPYING.MSE, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
} 

unit mseconsts_uz_Latn;

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
'&Bekor qilish',
'&Uzib qoʻyish',
'&Tayyor',
'&Ha',
'&Yoʻk',
'Ba&rcha',
'Yes &all',
'He&ch biri',
'&Man etish',
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
'Bekor qilish',
'Uzib qoʻyish',
'Tayyor',
'Ha',
'Yoʻk',
'Barcha',
'Yes all',
'Hech biri',
'Man etish',
'Skip',
'Skip all',
'Continue'
 );

 stockcaption: stockcaptionaty = (
'',
'- noaniq',
'Format notoʻgʻri',
'Hech narsa kerak emas',
'Notoʻgʻri',
'Min.',
'Maks.',
'Notoʻgʻri diapazon',
'&Oldingi',
'&Redo',
'&Koʻchirish',
'Ol&ib tashlash',
'&Yozib qoʻyish',
'Select &all',
'&Insert Row',
'&Append Row',
'&Delete Row',
'&Katalog',
'&Home',
'&Teppaga',
'&Yangi kat.',
'&Nomi',
'&Beritilgan faylarni qursatish',
'&Filtr',
'Saklash',
'Ochish',
'Nomi',
'Create new directory',
'Back',
'Forward',
'Teppaga',
'File',
'exists‚ do you want to overwrite?',
'is modified. Save?',
'WARNING',
'ERROR',
'Exception',
'System',
'does not exist',
'PASSWORD',
'Enter password',
'Invalid password!',
'Can not read directory',
'Grafik format taʼminlanmagan',
'Notoʻgʻri grafik formati',
'BMP-rasmi',
'ICO-rasmi',
'JPEG-rasmi',
'PNG-rasmi',
'XPM-rasmi',
'PNM-rasmi',
'TARGA-rasmi',
'TIFF-rasmi',
'Barcha',
'Tasdiqlash',
'Yozuvni oʻchirish?',
'Copy record?',
'Close page',
'First',
'Prior',
'Next',
'Last',
'Append',
'Delete',
'Edit',
'Post',
'Bekor qilish',
'Refresh',
'Edit filter',
'Edit filter minimum',
'Edit filter maximum',
'Reset filter',
'Filter on',
'Search',
'Auto edit',
'Copy record',
'Dialog',
'Insert',
'Koʻchirish',
'Yozib qoʻyish',
'Row insert',
'Row append',
'Row delete',
'Oldingi',
'Redo',
'Olib tashlash',
'Select all',
'Filter off',
'Portrait',
'Landscape',
'Delete row?',
'selected rows?',
'Single item only',
'Copy Cells',
'Paste Cells',
'Close',
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
registerlangconsts('uz_Latn',@stockcaption,@modalresulttext,@modalresulttextnoshortcut,@textgenerator);

end.

