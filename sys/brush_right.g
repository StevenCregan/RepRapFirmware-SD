; Drop Bed (Not Needed with Purge/Prime Calling)
;G91
;G1 Z2 F2000
;G90

; Move to Front of Brush (Purge Position)
G53 G1 X311 Y57 F10000

; Ensure Move Finished
M400

; Move to Back of Brush
G53 G1 X311 Y127 F8000

; Ensure Move Finished
M400