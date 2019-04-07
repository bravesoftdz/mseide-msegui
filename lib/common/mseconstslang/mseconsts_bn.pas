{ MSEgui Copyright (c) 1999-2018 by Martin Schreiber

    See the file COPYING.MSE, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
} 

unit mseconsts_bn;

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
'bn',
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
'বাতিল করুন',
'&Abort',
'ঠিক অাছে',
'&Yes',
'&No',
'ছোটো',
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
'বাতিল করুন',
'Abort',
'ঠিক অাছে',
'Yes',
'No',
'ছোটো',
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
'পূর্বাবস্থা',
'পুনরাবৃত্তি',
'কপি করুন',
'Cu&t',
'লেপন',
'Select &all',
'&Insert Row',
'&Append Row',
'&Delete Row',
'&Dir',
'&Home',
'&Up',
'&New dir',
'নাম',
'&Show hidden files',
'ফিল্টার',
'সংরক্ষণ',
'খুলুন',
'নাম',
'Create new directory',
'Back',
'Forward',
'Up',
'ফাইল',
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
'ছোটো',
'Confirmation',
'Delete record?',
'Copy record?',
'Close page',
'First',
'Prior',
'Next',
'Last',
'Append',
'মুছে ফেলুন',
'সম্পাদনা',
'Post',
'বাতিল করুন',
'Refresh',
'Edit filter',
'Edit filter minimum',
'Edit filter maximum',
'Reset filter',
'Filter on',
'অনুসন্ধান',
'Auto edit',
'Copy record',
'Dialog',
'Insert',
'কপি করুন',
'লেপন',
'Row insert',
'Row append',
'Row delete',
'পূর্বাবস্থা',
'পুনরাবৃত্তি',
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
