; tpost0.g
; called after tool 0 has been selected

; Wait for extruder to heat up
M116 P0

; Part cooling fan based on Slicer/Filament settings
M106 R2