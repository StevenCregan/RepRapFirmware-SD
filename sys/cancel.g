; Disable Mesh Compensation.
G29 S2

; purge tool
;M98 Ppurge.g

; Move tool Front and Center(ish) to avoid collisions with Z leadscrew
G53 G1 X150 Y20 F3000

; Wait for move to finish
M400

; park tool
T-1

; Heaters off
;M0

