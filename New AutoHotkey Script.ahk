#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#WinActivateForce
theWindowOppen := true
#Persistent
SetTimer, WatchCursor, 500
return

WatchCursor:
IfWinActive, ahk_class Chrome_WidgetWin_1
         {
          if (theWindowOppen){
        theWindowOppen:= false
       Send, {f5}
} 
      
          }
IfWinNotActive, ahk_class Chrome_WidgetWin_1
         {
         theWindowOppen:= true

          }

return
