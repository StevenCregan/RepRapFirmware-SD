;brush in
;G1 X-33.0 Y140.75 F50000
;G1 X-33.0 Y119 F50000
;G1 X-33.0 Y89 F50000
;G1 X-30.0 Y100 F50000
;G1 X-33.0 Y119 F50000
;G1 X-33.0 Y91 F50000
;G1 X-30.0 Y91 F50000
;G1 X-31.0 Y89 F50000

;Park for prime/purge
G1 X-32.0 Y140.75 F50000

;Prime
M120
M83
G1 E20 F300
M400
G1 E-0.2 F3000
M121
;G4 S2

;Run Out
G1 X-32.0 Y70 F50000
;Run Through
G1 X-32.0 Y140.75 F50000
;Run Out
G1 X-32.0 Y70 F50000
;Run Through
G1 X-32.0 Y140.75 F50000
;Run Out
G1 X-32.0 Y70 F50000
