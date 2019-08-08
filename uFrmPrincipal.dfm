object Form1: TForm1
  Left = 0
  Top = 0
  ClientHeight = 243
  ClientWidth = 489
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PanelPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 489
    Height = 243
    Align = alClient
    TabOrder = 0
    object LValor: TLabel
      Left = 20
      Top = 19
      Width = 233
      Height = 21
      Caption = 'M'#250'ltiplo de 10(entre 100 e 1000):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LImparPar: TLabel
      Left = 120
      Top = 67
      Width = 133
      Height = 21
      Caption = 'Apresentar valores:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object SBProcessar: TSpeedButton
      Left = 259
      Top = 120
      Width = 115
      Height = 33
      Caption = 'Processar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = SBProcessarClick
    end
    object LTitulo: TLabel
      Left = 116
      Top = 167
      Width = 137
      Height = 28
      Caption = 'Valor calculado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LValorCalculado: TLabel
      Left = 260
      Top = 168
      Width = 114
      Height = 28
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object EdtValor: TEdit
      Left = 259
      Top = 16
      Width = 115
      Height = 29
      Hint = 'Valor obrigat'#243'riamente deve ser m'#250'ltiplo de 10, entre 100 e 1000'
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0'
      OnExit = EdtValorExit
      OnKeyPress = EdtValorKeyPress
    end
    object CBImparPar: TComboBox
      Left = 259
      Top = 64
      Width = 115
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = #205'mpares'
      Items.Strings = (
        #205'mpares'
        'Pares')
    end
  end
end
