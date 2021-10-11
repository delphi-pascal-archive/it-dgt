program Test;

uses
  Forms,
  MainForm in 'MainForm.pas' {Form7},
  head.DGT in 'IT.DGT\head.DGT.pas',
  uclass.FontInfo in 'IT.DGT\uclass.FontInfo.pas',
  uclass.GlowInfo in 'IT.DGT\uclass.GlowInfo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
