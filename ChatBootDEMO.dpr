program ChatBootDEMO;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uChatBoot in 'uChatBoot.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
