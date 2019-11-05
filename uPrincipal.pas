unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    mmoChat: TMemo;
    mmoInput: TMemo;
    btnSend: TButton;
    procedure mmoInputKeyPress(Sender: TObject; var Key: Char);
    procedure btnSendClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uChatBoot;

{$R *.dfm}

procedure TForm1.btnSendClick(Sender: TObject);
begin
    mmoChat.Lines.Add(CriaChat(mmoInput.Text));
    mmoInput.Clear;
end;

procedure TForm1.mmoInputKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
      btnSendClick(Sender);
    end;

end;

end.
