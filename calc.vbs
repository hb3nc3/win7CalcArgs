Dim argOne
argOne = WScript.Arguments.item(0)

If argOne <> 0 And argOne <> 1 And argOne <> 2 Then
  argOne = 0
End If

Dim objShell, RegLocate, RegLocate1
Set objShell = WScript.CreateObject("WScript.Shell")
On Error Resume Next
RegLocate = "HKCU\Software\Microsoft\Calc\layout"
objShell.RegWrite RegLocate,argOne,"REG_DWORD"
objShell.Run("calc.exe")
WScript.Quit