; tpost3.g
; called after tool 3 has been selected

; Wait for extruder to heat up
M116 P3

; Part cooling fan based on Slicer/Filament settings
M106 R2