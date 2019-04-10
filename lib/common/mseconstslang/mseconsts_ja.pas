{ MSEgui Copyright (c) 1999-2018 by Martin Schreiber

    See the file COPYING.MSE, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
} 

unit mseconsts_ja;

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
'キャンセル',
'中止する',
'ＯＫ',
'&Yes',
'&No',
'全て',
'Yes &all',
'N&o all',
'無視する',
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
'キャンセル',
'中止する',
'ＯＫ',
'Yes',
'No',
'全て',
'Yes all',
'No all',
'無視する',
'Skip',
'Skip all',
'続ける'
 );

 stockcaption: stockcaptionaty = (
'',
'is invalid',
'Format error',
'Value is required',
'エラー',
'Min',
'Max',
'Range error',
'元に戻す',
'やり直す',
'コピー',
'切り取り',
'貼り付け',
'全てを選択',
'&Insert Row',
'&Append Row',
'&Delete Row',
'&Dir',
'ホーム',
'&Up',
'&New dir',
'名前',
'&Show hidden files',
'フィルター',
'保存',
'開く',
'名前',
'Create new directory',
'Back',
'Forward',
'Up',
'ファイル',
'exists‚ do you want to overwrite?',
'is modified. Save?',
'WARNING',
'ERROR',
'例外',
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
'全て',
'Confirmation',
'Delete record?',
'Copy record?',
'Close page',
'First',
'Prior',
'次へ',
'Last',
'Append',
'削除',
'編集',
'Post',
'キャンセル',
'Refresh',
'Edit filter',
'Edit filter minimum',
'Edit filter maximum',
'Reset filter',
'Filter on',
'検索',
'Auto edit',
'Copy record',
'Dialog',
'Insert',
'コピー',
'貼り付け',
'Row insert',
'Row append',
'Row delete',
'元に戻す',
'やり直す',
'切り取り',
'全てを選択',
'Filter off',
'Portrait',
'Landscape',
'Delete row?',
'selected rows?',
'Single item only',
'Copy Cells',
'Paste Cells',
'閉じる',
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
'メニュー',
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
registerlangconsts(langnames[la_ja],@stockcaption,@modalresulttext,@modalresulttextnoshortcut,@textgenerator);

end.

