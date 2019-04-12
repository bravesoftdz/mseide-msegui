{ MSEgui Copyright (c) 1999-2018 by Martin Schreiber

    See the file COPYING.MSE, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

    This file was auto generated by MSEi18n Tools.
} 

unit mseconsts_ca;

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
'&Cancel·la',
'&Cancel·la',
'D‘ac&ord',
'&Yes',
'&No',
'&Tot',
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
'Cancel·la',
'Cancel·la',
'Accepta',
'Yes',
'No',
'Tot',
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
'Error',
'Min',
'Max',
'Range error',
'&Desfés',
'&Refés',
'&Copia',
'Re&talla',
'&Enganxa',
'Seleccionar &tot',
'&Insert Row',
'&Append Row',
'&Delete Row',
'&Carpeta',
'&Inici',
'&Up',
'&Carpeta nova',
'&Nom',
'&Show hidden files',
'&Filtre',
'Guarda',
'Obri',
'Nom',
'Create new directory',
'Back',
'Forward',
'Up',
'Fitxer',
'exists‚ do you want to overwrite?',
'is modified. Save?',
'WARNING',
'ERROR',
'Excepció',
'System',
'no existeix',
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
'Tot',
'Confirmació',
'Delete record?',
'Copy record?',
'Close page',
'First',
'Prior',
'Següent',
'Last',
'Append',
'Suprimeix',
'Edita',
'Post',
'Cancel·la',
'Refresh',
'Edit filter',
'Edit filter minimum',
'Edit filter maximum',
'Reset filter',
'Filter on',
'Cerca',
'Auto edit',
'Copy record',
'Dialog',
'Insereix',
'Copia',
'Enganxa',
'Row insert',
'Row append',
'Row delete',
'Desfés',
'Refés',
'Retalla',
'Seleccionar tot',
'Filter off',
'Portrait',
'Landscape',
'Delete row?',
'selected rows?',
'Single item only',
'Copy Cells',
'Paste Cells',
'Tanca',
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
'Menú',
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
registerlangconsts(langnames[la_ca],@stockcaption,@modalresulttext,@modalresulttextnoshortcut,@textgenerator);

end.

