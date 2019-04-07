{ MSEgui Copyright (c) 1999-2018 by Martin Schreiber

    See the file COPYING.MSE, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
} 

unit mseconsts_uzcyr;

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
'',
''
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
'',
'Ҳе&ч бири',
'&Ман этиш',
'',
'',
''
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
'',
'Ҳеч бири',
'Ман этиш',
'',
'',
''
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
'',
'&Кўчириш',
'Ол&иб ташлаш',
'&Ёзиб қўйиш',
'',
'',
'',
'',
'&Каталог',
'',
'&Теппага',
'&Янги кат.',
'&Номи',
'&Беритилган файларни қурсатиш',
'&Фильтр',
'Саклаш',
'Очиш',
'Номи',
'',
'',
'',
'Теппага',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
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
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'Бекор қилиш',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'Кўчириш',
'Ёзиб қўйиш',
'',
'',
'',
'Олдинги',
'',
'Олиб ташлаш',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
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
