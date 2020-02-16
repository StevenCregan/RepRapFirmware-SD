; tfree3.g
; called when tool 3 is freed

;Drop the bed
G91
G1 Z4 F1000
G90

;mesh levelling off
G29 S2

;Purge nozzle
;M98 Ppurge.g

;Hemera Upgrade
;Move In
G53 G1 X300.6 Y150 F50000
G53 G1 X300.6 Y200 F50000
G53 G1 X300.6 Y220 F50000

;Drop Off
G53 G1 X300.6 Y225.35 F50000

;Open Coupler
M98 P/macros/Coupler - Unlock

;fan off
M106 P8 S0

;Move Out
;G53 G1 X302.6 Y175 F50000
;Hemera Upgrade
G53 G1 X300.6 Y175 F50000