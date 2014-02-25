{ MSEgui Copyright (c) 2006-2014 by Martin Schreiber

    See the file COPYING.MSE, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
}
unit mseformatxpmread;
{$ifdef FPC}{$mode objfpc}{$h+}{$endif}
interface
const
 xpmlabel = 'xpm';
 
implementation
uses
 classes,mclasses,msegraphics,msebitmap,fpreadxpm,msegraphicstream,
 msestockobjects,fpimage;
 
type
 tmsefpreaderxpm = class(tfpreaderxpm)
  protected
   procedure InternalRead  (Str:TStream; Img:TFPCustomImage); override;
 end;
 
function readgraphic(const source: tstream; const index: integer; 
                const dest: tobject; var format: string): boolean;
begin
 if dest is tbitmap then begin
  result:= readfpgraphic(source,tmsefpreaderxpm,tbitmap(dest));
  if result then begin
   tbitmap(dest).change;
  end;
 end
 else begin
  result:= false;
 end;
end;

{ tmsefpreadertaxpm }

procedure tmsefpreaderxpm.InternalRead(Str: TStream; Img: TFPCustomImage);
begin
 img.usepalette:= true;
 inherited;
end;

initialization
 registergraphicformat(xpmlabel,{$ifdef FPC}@{$endif}readgraphic,nil,
         stockobjects.captions[sc_XPM_Image],['*.xpm']);
end.
