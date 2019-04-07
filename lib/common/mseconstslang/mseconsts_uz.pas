{ MSEgui Copyright (c) 1999-2018 by Martin Schreiber

    See the file COPYING.MSE, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
} 

unit mseconsts_uz;

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
'uz',
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
'&Бекор қилиш',
'&Узиб қўйиш',
'&Тайёр',
'&Ҳа',
'&Йўк',
'Ба&рча',
'Yes &all',
'Ҳе&ч бири',
'&Ман этиш',
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
'Бекор қилиш',
'Узиб қўйиш',
'Тайёр',
'Ҳа',
'Йўк',
'Барча',
'Yes all',
'Ҳеч бири',
'Ман этиш',
'Skip',
'Skip all',
'Continue'
 );

 stockcaption: stockcaptionaty = (
'',
'- ноаниқ',
'Формат нотўғри',
'Ҳеч нарса керак эмас',
'Нотўғри',
'Мин.',
'Макс.',
'Нотўғри диапазон',
'&Олдинги',
'&Redo',
'&Кўчириш',
'Ол&иб ташлаш',
'&Ёзиб қўйиш',
'Select &all',
'&Insert Row',
'&Append Row',
'&Delete Row',
'&Каталог',
'&Home',
'&Теппага',
'&Янги кат.',
'&Номи',
'&Беритилган файларни қурсатиш',
'&Фильтр',
'Саклаш',
'Очиш',
'Номи',
'Create new directory',
'Back',
'Forward',
'Теппага',
'File',
'exists, do you want to overwrite?',
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
'График формат таъминланмаган',
'Нотўғри график формати',
'BMP-расми',
'ICO-расми',
'JPEG-расми',
'PNG-расми',
'XPM-расми',
'PNM-расми',
'TARGA-расми',
'TIFF-расми',
'Барча',
'Тасдиқлаш',
'Ёзувни ўчириш?',
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
'Бекор қилиш',
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
'Кўчириш',
'Ёзиб қўйиш',
'Row insert',
'Row append',
'Row delete',
'Олдинги',
'Redo',
'Олиб ташлаш',
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
 registerlangconsts(extendedconst[ex_lang],@stockcaption,@modalresulttext, 
        @modalresulttextnoshortcut,@textgenerator);
                               
end.
