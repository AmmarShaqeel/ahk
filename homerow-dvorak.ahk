; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; See http://duartes.org/gustavo/blog/home-row-computing for more information on this script
; See the AutoHotKey docs at http://www.autohotkey.com/docs/  for AutoHotKey documentation
; Most of the syntax is described at http://www.autohotkey.com/docs/Hotkeys.htm


; AppsKey + htns

Appskey & h::Send {Blind}{Up DownTemp}
AppsKey & h up::Send {Blind}{Up Up}

AppsKey & t::Send {Blind}{Down DownTemp}
AppsKey & t up::Send {Blind}{Down Up}

AppsKey & n::Send {Blind}{Left DownTemp}
AppsKey & n up::Send {Blind}{Left Up}

AppsKey & s::Send {Blind}{Right DownTemp}
AppsKey & s up::Send {Blind}{Right Up}


; AppsKey + gcrl

AppsKey & g::SendInput {Blind}{PgUp Down}
AppsKey & g up::SendInput {Blind}{PgUp Up}

AppsKey & c::SendInput {Blind}{PgDn Down}
AppsKey & c up::SendInput {Blind}{PgDn Up}

AppsKey & r::SendInput {Blind}{Home Down}
AppsKey & r up::SendInput {Blind}{Home Up}

AppsKey & l::SendInput {Blind}{End Down}
AppsKey & l up::SendInput {Blind}{End Up}


; AppsKey + aoeu

AppsKey & a::SendInput {Ctrl Down}{a Down}
AppsKey & a up::SendInput {Ctrl Up}{a Up}

AppsKey & o::SendInput {Ctrl Down}{x Down}
AppsKey & O up::SendInput {Ctrl Up}{x Up}

AppsKey & e::SendInput {Ctrl Down}{c Down}
AppsKey & e up::SendInput {Ctrl Up}{c Up}

AppsKey & u::SendInput {Ctrl Down}{v Down}
AppsKey & u up::SendInput {Ctrl Up}{v Up}
			
AppsKey::SendInput {AppsKey Down}
AppsKey up::SendInput {AppsKey Up}


; AppsKey + db,.

AppsKey & d::SendInput {Blind}{Del Down}
AppsKey & ,::SendInput {Ctrl down}{F4}{Ctrl up}
AppsKey & .::SendInput {Alt down}{F4}{Alt up}

AppsKey & b::SendInput {Blind}{BS Down}
AppsKey & BS::SendInput {Blind}{BS Down}
AppsKey & p::SendInput {Blind}{Esc Down}

; Make AppsKey & Enter equivalent to Control+Enter
AppsKey & Enter::SendInput {Ctrl down}{Enter}{Ctrl up}

; Make AppsKey & Alt Equivalent to Control+Alt
!AppsKey::SendInput {Ctrl down}{Alt Down}
!AppsKey up::SendInput {Ctrl up}{Alt up}

; Make Windows Key + Apps Key work like Caps Lock
#AppsKey::Capslock