{ MSEgui Copyright (c) 1999-2018 by Martin Schreiber

    See the file COPYING.MSE, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
} 

unit mseconsts_id;

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
'&Batal',
'&Gagalkan',
'&OK',
'&Ya',
'&Tidak',
'&Semua',
'Yes &all',
'Tid&ak Semua',
'&Abaikan',
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
'Gagal',
'Batal',
'OK',
'Ya',
'Tidak',
'Semua',
'Yes all',
'Tidak Semua',
'Abaikan',
'Skip',
'Skip all',
'Continue'
 );

 stockcaption: stockcaptionaty = (
'',
'adalah salah',
'Format salah',
'Nilai dibutuhkan',
'Salah',
'Min',
'Max',
'Range salah',
'&Batal',
'Jadi &Lagi',
'&Salin',
'Po&tong',
'&Tempel',
'Pilih semu&a',
'&Sisipkan Baris',
'&Tambah Baris',
'&Hapus Baris',
'&Direktori',
'&Basis',
'&Naik',
'Dir &Baru',
'&Nama',
'&File tersembunyi',
'&Penyaring',
'Simpan',
'Buka',
'Nama',
'Buat Direktori Baru',
'Back',
'Forward',
'Naik',
'Berkas',
'sudah ada  akan ditimpa?',
'is modified. Save?',
'PERINGATAN',
'SALAH',
'Kekecualian',
'System',
'tidak ada',
'PASSWORD',
'Enter password',
'Invalid password!',
'Tidak dapat membaca direktori',
'Format grafik tidak didukung',
'Format grafik salah',
'MS Bitmap',
'MS Icon',
'JPEG Image',
'PNG Image',
'XPM Image',
'PNM Image',
'TARGA Image',
'TIFF Image',
'Semua',
'Konfirmasi',
'Hapus Rekaman?',
'Salin record?',
'Tutup',
'Awal',
'Sebelum',
'Sesudah',
'Akhir',
'Tambah',
'Hapus',
'Rubah',
'Simpan',
'Gagal',
'Refresh',
'Rubah filter',
'Rubah filter minimum',
'Rubah filter maximum',
'Reset filter',
'Filter hidup',
'Cari',
'Rubah Otomatis',
'Salin record',
'Dialog',
'Sisipkan',
'Salin',
'Tempel',
'Row insert',
'Row append',
'Row delete',
'Batal',
'Redo',
'Potong',
'Pilih semua',
'Filter mati',
'Berdiri',
'Rebah',
'Hapus baris?',
'baris yang terpilih?',
'Hanya satu item',
'Salin Cell',
'Tempel Cell',
'Tutup',
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
registerlangconsts('id',@stockcaption,@modalresulttext,@modalresulttextnoshortcut,@textgenerator);

end.

