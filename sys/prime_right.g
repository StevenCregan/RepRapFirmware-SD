; Brush
M98 P"brush_right.g"

;Park for prime/purge
G53 G1 X311 Y57 F10000

;Prime
G1 E15 F350
M400

; Dwell for back-pressure
G4 S6

; Brush
M98 P"brush_right.g"

; Dwell a moment to avoid reattaching hot filament
G4 S4

; Brush
M98 P"brush_right.g"
M98 P"brush_right.g"
M98 P"brush_right.g"