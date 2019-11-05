unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    mmoChat: TMemo;
    mmoInput: TMemo;
    btnSend: TButton;
    tv1: TTreeView;
    btn1: TButton;
    procedure mmoInputKeyPress(Sender: TObject; var Key: Char);
    procedure btnSendClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uChatBoot;

{$R *.dfm}

procedure TfrmPrincipal.btn1Click(Sender: TObject);
begin
   ShowMessage(IntToStr(tv1.Items[0].Item[2].Item[0].Level));
end;

procedure TfrmPrincipal.btnSendClick(Sender: TObject);
begin
    mmoChat.Lines.Add(chatBoot(mmoInput.Text, tv1));
    mmoInput.Clear;
end;

procedure TfrmPrincipal.mmoInputKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
      btnSendClick(Sender);
    end;
end;

end.
