; tfree2.g
; called when tool 2 is freed

;Drop the bed
G91
G1 Z4 F1000
G90

;Hemera Upgrade
;Move In
G53 G1 X209.8 Y150 F50000
G53 G1 X209.8 Y200 F50000
G53 G1 X209.8 Y220 F50000

;Drop Off
G53 G1 X209.8 Y224.9 F5000

;Open Coupler
M98 P/macros/Coupler - Unlock

;fan off
M106 P6 S0

;Move Out
G53 G1 X209.8 Y175 F50000
