; homeall.g
; called to home all axes

G90			; Ensure use of Absolute Positioning

M98 Phomec.g		; Home C (ToolHead)

M98 Phomey.g		; Home Y

M98 Phomex.g		; Home X

M98 Phomez.g		; Home Z

G90			; Ensure use of Absolute Positioning

G1 X150 Y-49 F15000	; Park