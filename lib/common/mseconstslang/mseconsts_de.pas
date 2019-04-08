{ MSEgui Copyright (c) 1999-2018 by Martin Schreiber

    See the file COPYING.MSE, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
} 

unit mseconsts_de;

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
'Gewählte Zeile löschen?',
'%s gewählte Zeilen löschen?'
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
'&Abbrechen',
'&Abbrechen',
'&OK',
'&Ja',
'&Nein',
'A&lle',
'Ja a&lle',
'N&ein alle',
'&Ignorieren',
'Übers&pringen',
'Alles ü&berspringen',
'&Fortfahren'
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
'Abbrechen',
'Abbrechen',
'OK',
'Ja',
'Nein',
'Alle',
'Ja alle',
'Nein alle',
'Ignorieren',
'Überspringen',
'Alles überspringen',
'Fortfahren'
 );

 stockcaption: stockcaptionaty = (
'',
'ist ungültig',
'Format Fehler',
'Wert wird benötigt',
'Fehler',
'Min',
'Max',
'Bereichs Fehler',
'&Rückgängig',
'&Redo',
'&Kopieren',
'&Ausschneiden',
'&Einfügen',
'Alles &markieren',
'Zeile e&infügen',
'Zeile a&nfügen',
'Zeile &löschen',
'&Dir',
'&Home',
'&Auf',
'Dir &neu',
'&Name',
'&Verst.Dat.anzeigen',
'&Filter',
'Speichern',
'Öffnen',
'Name',
'Verzeichnis erstellen',
'Zurück',
'Forwärts',
'Aufwärts',
'Datei',
'existiert  wollen Sie überschreiben?',
'wurde geändert  wollen Sie speichern?',
'WARNUNG',
'FEHLER',
'Exception',
'System',
'existiert nicht',
'PASSWORT',
'Passworteingabe',
'Ungültiges Passwort!',
'Verzeichnis kann nicht gelesen werden',
'Grafik Format nicht unterstützt',
'Grafik Format Fehler',
'MS Bitmap',
'MS Icon',
'JPEG Bild',
'PNG Bild',
'XPM Bild',
'PNM Bild',
'TARGA Bild',
'TIFF Bild',
'Alle',
'Bestätigung',
'Datensatz löschen?',
'Datensatz kopieren?',
'Seite schliessen',
'Erster',
'Vorheriger',
'Nächster',
'Letzter',
'Anfügen',
'Löschen',
'Bearbeiten',
'Eintragen',
'Abbrechen',
'Auffrischen',
'Filter bearbeiten',
'Filter Minimum bearbeiten',
'Filter Maximum bearbeiten',
'Filter rückstellen',
'Filter ein',
'Suchen',
'Automatisch bearbeiten',
'Datensatz kopieren',
'Dialog',
'Einfügen',
'Kopieren',
'Einfügen',
'Zeile einfügen',
'Zeile anfügen',
'Zeile löschen',
'Rückgängig',
'Wiederherstellen',
'Ausschneiden',
'Alles markieren',
'Filter aus',
'Hochformat',
'Querformat',
'Zeile löschen?',
'gewählte Zeilen?',
'Nur Einzeleintrag erlaubt',
'Zellen kopieren',
'Zellen einfügen',
'Schliessen',
'Maximieren',
'Normalisieren',
'Minimieren',
'Feste Grösse',
'Lösen',
'Im Fordergrund',
'Im Hintergrund',
'Blockiere Unterfenster',
'Kein Blockieren',
'Eingabe',
'Schaltfeld',
'Ein',
'Aus',
'Linker Rand',
'Oberer Rand',
'Rechter Rand',
'Unterer Rand',
'Text start',
'Text ende',
'Eingabe Modus',
'Überschreiben',
'Gelöscht',
'Kopiert',
'Eingefügt',
'Eingefügt',
'Rückgängig',
'Fenster aktiviert',
'Menü',
'Datei Beginn',
'Datei Ende',
'Sprachausgabe',
'Wiederhole Sprachausgabe',
'Erste Spalte',
'Erste Zeile',
'Letzte Spalte',
'Letzte Zeile',
'Auswahl',
'Spreche Pfad',
'Deaktiviertes Schaltfeld',
'Erstes Feld',
'Letztes Feld',
'Erstes Element',
'Letztes Element',
'Langsamer',
'Schneller',
'Fenster',
'Bereich',
'Bereich aktiviert',
'Leiser',
'Lauter',
'Ansage abbrechen'
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
registerlangconsts('de',@stockcaption,@modalresulttext,@modalresulttextnoshortcut,@textgenerator);

end.

