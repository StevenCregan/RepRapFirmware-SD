; tpost1.g
; called after tool 1 has been selected

; Wait for extruder to heat up
M116 P1

; Part cooling fan based on Slicer/Filament settings
M106 R2