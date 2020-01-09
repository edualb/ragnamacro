#RequireAdmin
#include <Misc.au3>

$hWnd = WinGetHandle("[CLASS:Ragnarok]")
WinActivate($hWnd)

Local $break = False

While(1)
HotKeySet("{ESC}", "_Exit")
HotKeySet("{q}", "_ComboGarraDeTigre")
HotKeySet("{w}", "_AgiAndBless")
HotKeySet("{e}", "_RecoverSP")
HotKeySet("{s}", "_Heal")
HotKeySet("{a}", "_BreakWhile")
WEnd

Func _Exit()
    Sleep(100)
    Exit
EndFunc ;==> _Exit()

Func _BreakWhile()
    $break = True
EndFunc ;==> _BreakWhile()

Func _Heal()
    $break = False
    While($break == False)
        ControlSend($hWnd, "", "", "{F7 DOWN}")
        ControlSend($hWnd, "", "", "{F7 UP}")
        MouseClick("left", @DesktopWidth / 2, @DesktopHeight / 2)
        Sleep(100)
    WEnd
EndFunc

Func _RecoverSP()
    $break = False
    While($break == False)

        ControlSend($hWnd, "", "", "{F1 DOWN}")
        ControlSend($hWnd, "", "", "{F1 UP}")
        $i = 0
        While($i < 20)
            Sleep(100)
            ControlSend($hWnd, "", "", "{F9 DOWN}")
            ControlSend($hWnd, "", "", "{F9 UP}")
            $i = $i + 1
        WEnd
    WEnd
EndFunc ;==> _RecoverSP()

Func _AgiAndBless()

    ControlSend($hWnd, "", "", "{y DOWN}")
    ControlSend($hWnd, "", "", "{y UP}")
    $i = 0
    While($i < 5)
        MouseClick("left", @DesktopWidth / 2, @DesktopHeight / 2)
        $i = $i + 1
    WEnd

    Sleep(200)

    ControlSend($hWnd, "", "", "{t DOWN}")
    ControlSend($hWnd, "", "", "{t UP}")
    $i = 0
    While($i < 5)
        MouseClick("left", @DesktopWidth / 2, @DesktopHeight / 2)
        $i = $i + 1
    WEnd
EndFunc ;==> _AgiAndBless()

Func _ComboGarraDeTigre()

    $aPos = MouseGetPos()

    ControlSend($hWnd, "", "", "{u DOWN}")
    ControlSend($hWnd, "", "", "{u UP}")
    MouseClick("left", $aPos[0], $aPos[1])

    $i = 0
    While($i < 8)
        ControlSend($hWnd, "", "", "{i DOWN}")
        ControlSend($hWnd, "", "", "{i UP}")
        $i = $i + 1
        Sleep(100)
    WEnd

    $i = 0
    While($i < 20)
        Sleep(10)
        $aPos = MouseGetPos()
        ControlSend($hWnd, "", "", "{o DOWN}")
        ControlSend($hWnd, "", "", "{o UP}")
        MouseClick("left", $aPos[0], $aPos[1])
        $i = $i + 1
    WEnd
EndFunc ;==> _ComboGarraDeTigre()