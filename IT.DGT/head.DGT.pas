unit head.DGT;

interface

Uses
  Windows,
  uclass.FontInfo, uclass.GlowInfo;

  function CreateFont(const DC: HDC; FontInfo: PFontInfo): HFONT;

  function GetTextWidth(Text: string; FontInfo: PFontInfo): Integer;
  function GetTextHeight(Text: string; FontInfo: PFontInfo): Integer;

  procedure DrawString(const DC: HDC; const Left, Top: Integer;
    FontInfo: PFontInfo; GlowInfo: PGlowInfo; AString: string);

implementation

Const
  LibPath = 'C:\Windows\System32\ITEX\UMI9\DGT.dll'

function CreateFont; external LibPath name 'CreateFont';
function GetTextWidth; external LibPath name 'CreateFont';
function GetTextHeight; external LibPath name 'CreateFont';
procedure DrawString; external LibPath name 'DrawString';

end.
