#SingleInstance Force
SendMode("Input")



; F9 => escreve "/inv d" e aperta Enter
F9::
{
    SendText("/inv d")
    Send("{Enter}")
}

; F10 => escreve "/inv u" e aperta Enter
F10::
{
    SendText("/inv u")
    Send("{Enter}")
}


; ======================================================
;   Autoclickers Mutual Exclusives (F7 = slow, F8 = fast)
; ======================================================

global activeMode := ""   ; "", "slow", "fast"
global clickInterval := 0

; F7 → 2000ms (slow)
F7::
{
    ToggleMode("slow", 2000)
}

; F8 → 50ms (fast)
F8::
{
    ToggleMode("fast", 50)
}

; F6 → Desliga qualquer um
F6::
{
    TurnOffClicker()
}

; ------------------ Funções principais ------------------

ToggleMode(mode, interval) {
    global activeMode, clickInterval

    ; Se o modo atual é o mesmo → desliga
    if (activeMode = mode) {
        TurnOffClicker()
        return
    }

    ; Se outro modo estava ativo → troca
    activeMode := mode
    clickInterval := interval

    SetTimer(AutoClick, clickInterval)
}

TurnOffClicker() {
    global activeMode
    SetTimer(AutoClick, 0)
    activeMode := ""
}

AutoClick() {
    if WinActive("ArkAscended") {
        Click()
    }
}

