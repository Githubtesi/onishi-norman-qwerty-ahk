; =========================================================
;  QWERTY / 大西 / Norman 3モード切替
;  AutoHotkey v2.0.19 用
; =========================================================

SendMode "Input"
SetWorkingDir(A_ScriptDir)

global layoutMode := 0 ; 0=QWERTY, 1=大西, 2=Norman

ExecuteToggle() {
    global layoutMode
    layoutMode := Mod(layoutMode + 1, 3)

    if (layoutMode = 1)
        ShowModernMsg("大西配列", "🈶")
    else if (layoutMode = 2)
        ShowModernMsg("Norman配列", "🇺🇸")
    else
        ShowModernMsg("QWERTY配列", "🔤")
}

^!Space:: ExecuteToggle()

; ---------------------------------------------------------
; q + w 同時押し
; ---------------------------------------------------------
$q:: {
    if KeyWait("w", "D T0.075") {
        SendInput "{vkF3}"
        KeyWait("w")
        Send("{Backspace}")
    } else {
        Send("q")
    }
}

; ---------------------------------------------------------
; モダン通知
; ---------------------------------------------------------
ShowModernMsg(text, icon := "") {
    monitorW := A_ScreenWidth
    monitorH := A_ScreenHeight
    g := Gui("+AlwaysOnTop -Caption +ToolWindow")
    g.BackColor := "202020"
    g.Add("Text", "x20 y15 cWhite", icon)
    g.Add("Text", "x60 y15 w250 cWhite", text)
    g.Show("NoActivate x" monitorW - 320 " y" monitorH - 120 " AutoSize")
    Loop 10 {
        WinSetTransparent(25 * A_Index, "ahk_id " g.Hwnd)
        Sleep 20
    }
    SetTimer(() => g.Destroy(), -1500)
}

; =========================================================
; 大西配列
; =========================================================
#HotIf (layoutMode = 1) && !(GetKeyState("Ctrl","P") || GetKeyState("Alt","P"))

sc079 & Space:: Send("{Enter}")
sc07B & Space:: Send("{Backspace}")

sc079 & k:: Send("{Down}")
sc079 & i:: Send("{Up}")
sc079 & j:: Send("{Left}")
sc079 & l:: Send("{Right}")

-::/
w::l
e::u
r::,
t::.
y::f
u::w
i::r
o::y
a::e
s::i
d::a
f::o
g::-
h::k
j::t
k::n
l::s
sc027::h 
b::sc027 
n::g
m::d
,::m
.::j
/::b

#HotIf

#HotIf (layoutMode = 2) && !(GetKeyState("Ctrl","P") || GetKeyState("Alt","P"))

q::q
w::w
e::d
r::f
t::k
y::j
u::u
i::r
o::l
p::Send(";")

a::a
s::s
d::e
f::t
g::g
h::y
j::n
k::i
l::o
`;::Send("h")

z::z
x::x
c::c
v::v
b::b
n::p
m::m
,::,
.::.
/::/

#HotIf
