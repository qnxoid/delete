program closevatel_2;

uses

  Windows
  ,Messages;

{$R *.res}

var
Timer: WORD = 0;
{$INCLUDE inc.inc}
a: Byte;
hw: HWND;

procedure OnTimer;
begin
hw:=Findwindow(nil,'Отключение расширений в режиме разработчика');
if hw<>0 then
  begin
  SetForegroundWindow(hw);
  Windows.SetFocus(hw);
  SendMessage(hw, WM_KEYDOWN, VK_ESCAPE, 0);
  SendMessage(hw, WM_KEYUP, VK_ESCAPE, 0);    
  end;
end;

begin
a:=Srcdata[0];
PostMessage(hw,a,0,0);
while true do
  begin
  OnTimer;
  Sleep(200);
  end;

end.
