; tpre3.g
; called before tool 3 is selected

;Ensure no tool is selected
;T-1

;Unlock Coupler
M98 P/macros/Coupler - Unlock

;Move to location
;Hemera Upgrade
G1 X300.6 Y200 F50000

;Move in
;Hemera Upgrade
G1 X300.6 Y220 F50000

;Collect
;Hemera Upgrade
G1 X300.6 Y225.35 F2500

;Close Coupler
M98 P/macros/Coupler - Lock

;WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING!
;if you are using non-standard length hotends ensure the bed is lowered enough BEFORE undocking the tool!
G91
G1 Z10 F1000
G90

;Move Out
;Hemera Upgrade
G1 X300.6 Y150 F4000