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
'id',
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
'&Batal',
'&Gagalkan',
'',
'&Ya',
'&Tidak',
'&Semua',
'',
'Tid&ak Semua',
'&Abaikan',
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
'Gagal',
'Batal',
'',
'Ya',
'Tidak',
'Semua',
'',
'Tidak Semua',
'Abaikan',
'',
'',
''
 );

 stockcaption: stockcaptionaty = (
'',
'adalah salah',
'Format salah',
'Nilai dibutuhkan',
'Salah',
'',
'',
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
'',
'',
'Naik',
'Berkas',
'sudah ada, akan ditimpa?',
'',
'PERINGATAN',
'SALAH',
'Kekecualian',
'',
'tidak ada',
'',
'',
'',
'Tidak dapat membaca direktori',
'Format grafik tidak didukung',
'Format grafik salah',
'',
'',
'',
'',
'',
'',
'',
'',
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
'',
'Rubah filter',
'Rubah filter minimum',
'Rubah filter maximum',
'',
'Filter hidup',
'Cari',
'Rubah Otomatis',
'Salin record',
'',
'Sisipkan',
'Salin',
'Tempel',
'',
'',
'',
'Batal',
'',
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
