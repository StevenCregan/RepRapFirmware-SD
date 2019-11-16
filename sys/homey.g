; homey.g
; called to home the Y axis

G91 			; use relative positioning

;G1 S2 X0.5 Y-0.5 F10000; energise
M400 			; make sure everything has stopped before we make changes
;M574 X1 Y1 S3 		; set endstops to use motor stall
;M913 X20 Y20 		; drop motor currents to 25%
;M915 H200 X Y S3 R0 F0 ; set X and Y to sensitivity 3, do nothing when stall, unfiltered

M574 X1 Y1 S1 		; Define endstop microswitches
G1 S2 Z5 F5000		; lift Z 5mm
M400			; wait for move to finish
G4 P100			; wait 100ms
G1 S1 Y-400 F3000 	; move to the front quickly, stopping at the endstop
M400			; wait for move to finish
G4 P100			; wait 100ms
G1 S0 Y5 F600 		; move away from end
M400			; wait for move to finish
G4 P100			; wait 100ms
G1 S1 Y-15 F600 	; move to the front slowly, stopping at the endstop
M400			; wait for move to finish
G4 P100			; wait 100ms
G1 S1 Y2 F600 		; move away from end
M400			; wait for move to finish
G4 P100			; wait 100ms
G1 S2 Z-5 F1200		; lower Z 5mm
M400			; wait for move to finish
G4 P100			; wait 100ms
G90 			; back to absolute positioning

M400 			; make sure everything has stopped before we reset the motor currents
G4 P100			; wait 400ms
;M913 X100 Y100 	; motor currents back to 100%

M574 X1 Y1 S1 		; Define active low and unused microswitches
