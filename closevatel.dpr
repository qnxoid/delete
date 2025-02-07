program closevatel_2;

uses

  Windows
  ,Messages;

{$R *.res}

var
Timer: WORD = 0;
// you can delete it
{$INCLUDE inc.inc}
//------------------
hw: HWND;
hE: THandle;   




procedure OnTimer;
begin
hw:=Findwindow(nil,'Отключение расширений в режиме разработчика');
                                        // ^ NBSP symbol

if hw=0 then
  hw:=Findwindow(nil,'Отключение расширений в режиме разработчика');
                                                                                
if hw=0 then
  hw:=Findwindow(nil,'Disable developer mode extensions');

if hw=0 then
  hw:=Findwindow(nil,'Disable developer mode extensions');
                                         // ^ NBSP symbol
if hw<>0 then
  begin
  SetForegroundWindow(hw);
  Windows.SetFocus(hw);
  SendMessage(hw, WM_KEYDOWN, VK_ESCAPE, 0);
  SendMessage(hw, WM_KEYUP, VK_ESCAPE, 0);
  end;
end;

begin
PostMessage(0,Srcdata[0],0,0);

while true do
  begin
  OnTimer;
  Sleep(200);
  end;

end.
