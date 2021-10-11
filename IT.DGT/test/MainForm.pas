unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm7 = class(TForm)
    CheckBox1: TCheckBox;
    Button1: TButton;
    Label1: TLabel;
    procedure FormPaint(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses
  head.DGT, uclass.FontInfo, uclass.GlowInfo;

{$R *.dfm}

var
  FI: TFontInfo;
  GI: TGlowInfo;

procedure TForm7.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm7.CheckBox1Click(Sender: TObject);
begin
  Form7.DoubleBuffered:= CheckBox1.Checked;
end;

procedure TForm7.FormPaint(Sender: TObject);
begin
  with FI, fiStyle do
  begin
    fsBold:= False;
    fsUnderline:= False;
    fsItalic:= False;
    fiName:= 'Segoe UI';
    fiSize:= 9;
    fiColor:= $000000;
  end;
  with GI do
  begin
    giWidth:= 7;
    giColor:= $FFFFFF;
    giAlpha:= 100;
    giEnabled:= True;
  end;
  DrawString(Canvas.Handle, 10, 10, @FI, @GI, 'Выводим текст на облако');
  GI.giEnabled:= False;
  DrawString(Canvas.Handle, 10, 30, @FI, @GI, 'Классический вывод текста ');
  FI.fiColor:= $006000;
  GI.giColor:= $FFFFFF;
  GI.giEnabled:= True;
  FI.fiSize:= 32;
  GI.giWidth:= 12;
  DrawString(Canvas.Handle, 50, 70, @FI, @GI, 'IT.DGT');
  FI.fiSize:= 14;
  FI.fiColor:= $000000;
  GI.giColor:= $00FFFF;
  DrawString(Canvas.Handle, 20, 120, @FI, @GI, 'пример работы');
end;
end.
