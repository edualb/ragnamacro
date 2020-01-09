#RequireAdmin

$hWnd = WinGetHandle("[CLASS:Ragnarok]")
WinActivate($hWnd)

While(1)
HotKeySet("{q}", "ComboGarraDeTigre")
WEnd

Func ComboGarraDeTigre()

    Local $aPos = MouseGetPos()

    ; PUNHO DO DRAGÃO
    ControlSend($hWnd, "", "", "{u DOWN}")
    ControlSend($hWnd, "", "", "{u UP}")
    MouseClick("left", $aPos[0], $aPos[1])

    ; RUINA
    $i = 0
    While($i < 8)
        ControlSend($hWnd, "", "", "{i DOWN}")
        ControlSend($hWnd, "", "", "{i UP}")
        $i = $i + 1
        Sleep(100)
    WEnd

    ; GARRA DE TIGRE
    $i = 0
    While($i < 20)
        Sleep(10)
        $aPos = MouseGetPos()
        ControlSend($hWnd, "", "", "{o DOWN}")
        ControlSend($hWnd, "", "", "{o UP}")
        MouseClick("left", $aPos[0], $aPos[1])
        $i = $i + 1
    WEnd
EndFunc