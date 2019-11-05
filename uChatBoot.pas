unit uChatBoot;

interface

uses
  Windows, SysUtils, Classes, Forms,Vcl.ComCtrls;

  //private
    function getTreeNodes(pTreeNodes : TTreeNodes): string;
    function getTreeNode(pTreeNodes : TTreeNodes): string;
    function talkBoot(pTalk : string) : string;
    function listenBoot(pInput : string ; Tree : TTreeView) : string;

  //public
    function chatBoot(pMensagem : string ;Tree : TTreeView) : string;


  var
    LevelTree : Integer = 0;

implementation


function getTreeNodes(pTreeNodes : TTreeNodes): string;
begin
 Result := pTreeNodes[LevelTree].Text;
end;

function getTreeNode(pTreeNodes : TTreeNodes): string;
var
  StringList : TStringList;
  I : Integer;
  vRetorno : string;
begin
  StringList := TStringList.Create;
  for I := 0 to pTreeNodes[LevelTree].Count - 1 do
  begin
    StringList.Add(pTreeNodes[LevelTree].Item[i].Text);
  end;
   vRetorno := StringList.Text;
   StringList.Free;
   Result := vRetorno;
end;

function talkBoot(pTalk : string) : string;
begin
  Result := 'BOT: -> '+pTalk;
end;

function listenBoot(pInput : string; Tree : TTreeView) : string;
var
  StringList : TStringList;
  vRetorno : string;
begin
  StringList := TStringList.Create;

  if LevelTree = 0 then
    begin
      StringList.Add(getTreeNodes(Tree.Items));
      StringList.Add(getTreeNode(Tree.Items));
    end;

  vRetorno := StringList.Text;
  StringList.Free;



  Result :=  talkBoot(vRetorno);
end;

function chatBoot(pMensagem : string; Tree : TTreeView) : string;
var
  StringList : TStringList;
begin
  StringList := TStringList.Create;

  StringList.Add('YOU: ->'+pMensagem);

  //StringList.Add('BOT: ->'+getTreeNodes(Tree.Items));
  //StringList.Add(getTreeNode(Tree.Items));

  StringList.Add(listenBoot(pMensagem, Tree));

  pMensagem := StringList.Text;
  StringList.Free;
  Result := pMensagem;
end;

end.
