; tpost2.g
; called after tool 2 has been selected

; Wait for extruder to heat up
M116 P2

; Part cooling fan based on Slicer/Filament settings
M106 R2