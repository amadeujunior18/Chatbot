unit uChatBoot;

interface

uses
  Windows, SysUtils, Classes, Forms;

  function CriaChat(pMensagem : string) : string;

implementation


function CriaChat(pMensagem : string) : string;
begin
  Result := 'YOU: ->'+pMensagem;
end;

end.
