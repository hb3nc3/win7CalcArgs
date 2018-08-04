Dim objShell, arg
Set objShell = WScript.CreateObject("WScript.Shell")
On Error Resume Next
arg = WScript.Arguments.item(0)
If arg <> 0 And arg <> 1 And arg <> 2 Then
	arg = 0
End If
objShell.RegWrite "HKCU\Software\Microsoft\Calc\layout", arg, "REG_DWORD"
objShell.Run("calc.exe")
WScript.Quit
