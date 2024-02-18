#SingleInstance Force

; Load library
#Include komorebic.lib.ahk

; Focus windows
!h::Focus("left")
!t::Focus("down")
!n::Focus("up")
!s::Focus("right")
!+[::CycleFocus("previous")
!+]::CycleFocus("next")

; Move windows
!+h::Move("left")
!+t::Move("down")
!+n::Move("up")
!+s::Move("right")
!+Enter::Promote()

; Stack windows
!Left::Stack("left")
!Right::Stack("right")
!Up::Stack("up")
!Down::Stack("down")
!;::Unstack()
![::CycleStack("previous")
!]::CycleStack("next")

; Resize
!/::ResizeAxis("horizontal", "increase")
!-::ResizeAxis("horizontal", "decrease")
!+/::ResizeAxis("vertical", "increase")
!+-::ResizeAxis("vertical", "decrease")
!WheelDown::
{
    MouseGetPos(, , &mouse_hwnd)
    WinActivate(Integer(mouse_hwnd))
    ResizeAxis("horizontal", "decrease")
}
!WheelUp::
{
    MouseGetPos(, , &mouse_hwnd)
    WinActivate(Integer(mouse_hwnd))
    ResizeAxis("horizontal", "increase")
}
!^WheelDown::
{
    MouseGetPos(, , &mouse_hwnd)
    WinActivate(Integer(mouse_hwnd))
    ResizeAxis("vertical", "decrease")
}
!^WheelUp::
{
    MouseGetPos(, , &mouse_hwnd)
    WinActivate(Integer(mouse_hwnd))
    ResizeAxis("vertical", "increase")
}


; Manipulate windows
!f::ToggleFloat()
!+f::ToggleMonocle()
!q::Close()

; Window manager options
!+r::Retile()
!p::TogglePause()

; Layouts
!x::FlipLayout("horizontal")
!y::FlipLayout("vertical")

; Workspaces
!1::FocusWorkspace(0)
!2::FocusWorkspace(1)
!3::FocusWorkspace(2)

; Move windows across workspaces
!+1::MoveToWorkspace(0)
!+2::MoveToWorkspace(1)
!+3::MoveToWorkspace(2)
