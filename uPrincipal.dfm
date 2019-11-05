object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'ChatBoot Demo'
  ClientHeight = 405
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object mmoChat: TMemo
    Left = 8
    Top = 8
    Width = 621
    Height = 249
    TabStop = False
    ReadOnly = True
    TabOrder = 0
  end
  object mmoInput: TMemo
    Left = 8
    Top = 270
    Width = 621
    Height = 89
    TabOrder = 1
    OnKeyPress = mmoInputKeyPress
  end
  object btnSend: TButton
    Left = 520
    Top = 372
    Width = 109
    Height = 25
    Caption = '&Enviar (Enter)'
    TabOrder = 2
    OnClick = btnSendClick
  end
end
