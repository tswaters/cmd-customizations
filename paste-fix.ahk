; ctrl-v / shift insert support in cmd.exe
#IfWinActive ahk_class ConsoleWindowClass
  ^V::
  +INS::
  SendInput {Raw}%clipboard%
  return
#IfWinActive