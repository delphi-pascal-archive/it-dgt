unit uclass.FontInfo;

interface

Uses
  Windows;

Type
  TFontStyle = record
    fsBold, fsUnderline, fsItalic: Boolean;
  end;

  PFontInfo = ^TFontInfo;
  TFontInfo = record
    fiName: PWideChar;
    fiSize: Integer;
    fiStyle: TFontStyle;
    fiColor: Cardinal;
  end;

implementation

end.
