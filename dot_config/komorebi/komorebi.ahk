#Requires AutoHotkey v2.0.2
#SingleInstance Force

Komorebic(cmd) {
    RunWait(format("komorebic.exe {}", cmd), , "Hide")
}

; Focus windows
!h::Komorebic("focus left")
!t::Komorebic("focus down")
!n::Komorebic("focus up")
!s::Komorebic("focus right")

!+[::Komorebic("cycle-focus previous")
!+]::Komorebic("cycle-focus next")

; Move windows
!+h::Komorebic("move left")
!+t::Komorebic("cycle-move next")
!+n::Komorebic("cycle-move previous")
!+s::Komorebic("move right")
!+Enter::Komorebic("promote")

; Stack windows
!Left::Komorebic("stack left")
!Down::Komorebic("stack down")
!Up::Komorebic("stack up")
!Right::Komorebic("stack right")
!;::Komorebic("unstack")
![::Komorebic("cycle-stack previous")
!]::Komorebic("cycle-stack next")

; Resize
!/::Komorebic("resize-axis horizontal increase")
!-::Komorebic("resize-axis horizontal decrease")
!+/::Komorebic("resize-axis vertical increase")
!+-::Komorebic("resize-axis vertical decrease")
!WheelDown::
{
    MouseGetPos(, , &mouse_hwnd)
    WinActivate(Integer(mouse_hwnd))
    Komorebic("resize-axis horizontal decrease")
}
!WheelUp::
{
    MouseGetPos(, , &mouse_hwnd)
    WinActivate(Integer(mouse_hwnd))
    Komorebic("resize-axis horizontal increase")
}
!^WheelDown::
{
    MouseGetPos(, , &mouse_hwnd)
    WinActivate(Integer(mouse_hwnd))
    Komorebic("resize-axis vertical decrease")
}
!^WheelUp::
{
    MouseGetPos(, , &mouse_hwnd)
    WinActivate(Integer(mouse_hwnd))
    Komorebic("resize-axis vertical increase")    
}

; Manipulate windows
!f::Komorebic("toggle-float")
!+f::Komorebic("toggle-monocle")
!q::Komorebic("close")
!+m::Komorebic("toggle-maximize")
!m::Komorebic("minimize")

; Window manager options
!+r::Komorebic("retile")
!p::Komorebic("toggle-pause")

; Layouts
!x::Komorebic("flip-layout horizontal")
!y::Komorebic("flip-layout vertical")

; Workspaces
!1::Komorebic("focus-workspace 0")
!2::Komorebic("focus-workspace 1")
!3::Komorebic("focus-workspace 2")
!4::Komorebic("focus-workspace 3")
!5::Komorebic("focus-workspace 4")
!6::Komorebic("focus-workspace 5")
!7::Komorebic("focus-workspace 6")
!8::Komorebic("focus-workspace 7")

; Move windows across monitors
!+1::Komorebic("move-to-monitor 0")
!+2::Komorebic("move-to-monitor 1")
!+3::Komorebic("move-to-monitor 2")

