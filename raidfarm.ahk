; Set initial state to off
shouldStop := false

; Toggle loop on/off when 'o' is pressed
o::
	shouldStop:= false
	; Infinite loop until shouldStop is set
	while (!shouldStop) {
		; move into position for lever
		Send, {a down}{s down}
		Sleep, 1000
		Send, {a up}{s up}
		
		; right click lever to turn off water
		send, k
		
		; jump down
		Send, {w down}{a down}
		Sleep, 1000
		Send, {a up}{w up}
		Send, {d down}
		Sleep, 500
		Send, {d up}
		Sleep, 1000
		
		; go into bubble column
		Send, {s down}{d down}
		Sleep, 7000
		Send, {s up}{d up}
		
		; eat
		send {k down}
		Sleep, 4000
		send {k up}
		
		; check inventory
		send e
		sleep, 2000
		send e
		
		; get into lever position
		Send, {a down}{s down}
		Sleep, 10000
		Send, {a up}{s up}
		
		; wait for horn to stop
		Sleep, 9000
		
		; flip lever to turn on water
		Send, k
		
		; get back into killing position
		Send, {d down}
		Sleep, 2000
		Send, {d up}
		Send, {w down}
		Sleep, 1000
		Send, {w up}
		
		; attack 45 times
		Loop, 45 {
			Send, j
			Sleep, 1000
		}
	}
	
p::
	shouldStop := true
