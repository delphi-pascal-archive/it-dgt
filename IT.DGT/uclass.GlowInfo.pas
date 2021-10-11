unit uclass.GlowInfo;

interface

Type
  PGlowInfo = ^TGlowInfo;
  TGlowInfo = record
    giWidth: Integer;
    giColor: Cardinal;
    giAlpha: Byte;
    giEnabled: Boolean;
  end;

implementation

end.
