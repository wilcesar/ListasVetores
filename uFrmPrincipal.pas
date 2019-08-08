unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    PanelPrincipal: TPanel;
    EdtValor: TEdit;
    LValor: TLabel;
    CBImparPar: TComboBox;
    LImparPar: TLabel;
    SBProcessar: TSpeedButton;
    LTitulo: TLabel;
    LValorCalculado: TLabel;
    procedure EdtValorKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValorExit(Sender: TObject);
    procedure SBProcessarClick(Sender: TObject);
  private
    arrayValores: array [1 .. 10] of Double;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  System.SysUtils;

{$R *.dfm}

procedure TForm1.EdtValorExit(Sender: TObject);
var
  i: Integer;
begin
  if (StrToInt(EdtValor.Text) mod 10) <> 0 then
  begin
    Application.MessageBox('Valor informado não é multiplo de 10(dez)', 0);
    EdtValor.SetFocus;
    Exit;
  end;
  if (StrToInt(EdtValor.Text) < 100) OR (StrToInt(EdtValor.Text) > 1000) then
  begin
    Application.MessageBox
      ('Valor deve ser maior que 100(cem) e menor que 1000(mil)', 0);
    EdtValor.SetFocus;
    Exit;
  end;
  for i := 1 to 10 do
  begin
    if ((i mod 3) = 0) then
      arrayValores[i] := (i * (30 / 100) * StrToInt(EdtValor.Text))
    else
      arrayValores[i] := (i * (10 / 100) * StrToInt(EdtValor.Text));
  end;
end;

procedure TForm1.EdtValorKeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key in ['0' .. '9'] = false) and (word(Key) <> vk_back)) then
    Key := #0;
end;

procedure TForm1.SBProcessarClick(Sender: TObject);
var
  i: Integer;
  resultado: Double;
begin
  resultado := 0;
  if CBImparPar.ItemIndex = 0 then
  begin
    for i := 1 to 10 do
    begin
      if ((i mod 2) <> 0) then
        resultado := resultado + arrayValores[i];
    end;
  end
  else
  begin
    for i := 1 to 10 do
    begin
      if ((i mod 2) = 0) then
        resultado := resultado + arrayValores[i];
    end;
  end;
  LValorCalculado.Caption := FloatToStr(resultado);
end;

end.
