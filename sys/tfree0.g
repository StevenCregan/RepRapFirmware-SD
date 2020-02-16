; tfree0.g
; called when tool 0 is freed

;Drop the bed
G91
G1 Z4 F1000
G90

;mesh leveling off
G29 S2

;Purge nozzle
;M98 Ppurge.g

;Move In
;Hemera Upgrade
G53 G1 X-15.9 Y150 F50000
G53 G1 X-15.9 Y200 F50000
G53 G1 X-15.9 Y220 F50000

;Drop Off
G53 G1 X-15.9 Y225 F5000

;Open Coupler
M98 P/macros/Coupler - Unlock

;fan off
M106 P2 S0

;Move Out
G53 G1 X-15.9 Y175 F50000
