; Config.g
; Configuration file for Duet WiFi / Ethernet
; executed by the firmware on start-up

; General preferences
M111 S0 				; Debugging off
G21 					; Work in millimetres
G90 					; Send absolute coordinates...
M83 					; ...but relative extruder moves
M555 P2 				; Set firmware compatibility to look like Marlin

; Network
M550 P"ToolChanger" 			; Set machine name
;M587 S"ssid" P"password"	; WiFi Settings
;M552 S1 P"ssid"			; Enable WiFi Networking
M552 S1					; Enable Networking
M586 P0 S1 				; Enable HTTP
M586 P1 S0 				; Disable FTP
M586 P2 S0 				; Disable Telnet

M667 S1 				; Select CoreXY mode	

; Endstops
M574 X1 Y1 S1				; Set X/Y use physical endstops
M574 Z1 S2 				; Set Z endstop probe
M558 P7 X0 Y0 Z2 H3 F360 I0 T20000	; Set Z probe type to switch, the axes for which it is used and the dive height + speeds
G31 P200 X0 Y0 Z0	 		; Set Z probe trigger value, offset and trigger height
M557 X0:280 Y0:180 S20	 		; Define mesh grid

; Drive direction
M569 P0 S0 				; Drive 0 X
M569 P1 S0 				; Drive 1 Y
M569 P2 S1 				; Drive 2 Z
M569 P3 S1 				; Drive 3 E0
M569 P4 S0 				; Drive 4 E1
M569 P5 S1 				; Drive 5 E2
M569 P6 S1 				; Drive 6 E3
M569 P7 S0 				; Drive 7 COUPLER
M569 P8 S0 				; Drive 8 UNUSED
M569 P9 S0 				; Drive 9 UNUSED

M584 X0 Y1 Z2 C7 E3:4:5:6 				; Apply custom drive mapping
M208 X-35:328.5 Y-49:243 Z0:275 C0:500 S0		; Set axis maxima & minima
M350 E8:8:8:8 C8 I0 					; Configure microstepping without interpolation
M350 X16 Y16 Z16 I1					; Configure microstepping with interpolation
M92 X100 Y100 Z1600 C100 E200:417:417:200		; Set steps per mm
M566 X400 Y400 Z8 C2 E2:2:2:2				; Set maximum instantaneous speed changes (mm/min)
M203 X35000 Y35000 Z1200 C5000 E5000:5000:5000:5000	; Set maximum speeds (mm/min)
M201 X6000 Y6000 Z400 C500 E2500:2500:2500:2500		; Set accelerations (mm/s^2)
M906 X2000 Y2000 Z1330 C400 E1330:1680:1680:1330 I30 	; Set motor currents (mA) and motor idle factor in percent
M84 S120 						; Set idle timeout

;Stall Detection
M915 C S5 F0 H200 R4700					; Coupler

;Stall Detection
M915 X Y S5 F0 H400 R4700				; X / Y Axes

; Heaters
M305 P0 T100000 B4138 C0 		; Set thermistor 
M143 H0 S225 				; Set temperature limit for heater 0 to 225C

M305 S"T0" P1 X200			; Set thermistor
M143 H1 S450 				; Set temperature limit for heater 1 to 450C

M305 S"T1" P2 X201			; Set thermistor
M143 H2 S450 				; Set temperature limit for heater 2 to 450C

M305 S"T2" P3 x204			;Set thermistor
M143 H3 S450 				; Set temperature limit for heater 3 to 450C

M305 S"T3" P4 X205	 		; Set thermistor 
M143 H4 S450 				; Set temperature limit for heater 4 to 450C

; Heater model parameters
M307 H0 A341.8 C197.6 D4.1 S1.00 V24.2 B0	; Set PID tune for Heated Bed
M307 H1 A319.8 C189.2 D2.9 S1.00 V24.2 B0	; Set PID tune for T0
M307 H2 A346.4 C210.3 D3.4 S1.00 V24.2 B0	; Set PID tune for T1
M307 H3 A363.5 C212.3 D3.9 S1.00 V24.2 B0	; Set PID tune for T2
M307 H4 A368.0 C211.5 D3.2 S1.00 V24.2 B0	; Set PID tune for T3

; Tools
M563 P0 S"T0" D0 H1 F2			; Define tool 0
G10 P0 X0 Y0 Z0 				; Reset tool 0 axis offsets
G10 P0 R0 S0 					; Reset initial tool 0 active and standby temperatures to 0C

M563 P1 S"T1" D1 H2 F4 			; Define tool 1
G10 P1 X0 Y0 Z0 				; Reset tool 1 axis offsets
G10 P1 R0 S0 					; Reset initial tool 1 active and standby temperatures to 0C

M563 P2 S"T2" D2 H3 F6			; Define tool 2
G10 P2 X0 Y0 Z0 				; Reset tool 2 axis offsets
G10 P2 R0 S0 					; Reset initial tool 2 active and standby temperatures to 0C

M563 P3 S"T3" D3 H4 F8			; Define tool 3
G10 P3 X0 Y0 Z0 				; Reset tool 3 axis offsets
G10 P3 R0 S0 					; Reset initial tool 3 active and standby temperatures to 0C

; Fans
M106 P0 S0				; UNUSED
M106 P1 S255 H1 T70			; T0 Hot End
M106 P2 S0				; T0 Part Cooling Fan
M106 P3 S255 H2 T70 			; T1 Hot End
M106 P4 S0				; T1 Part Cooling Fan 
M106 P5 S255 H3 T70 			; T2 Hot End
M106 P6 S0 				; T2 Part Cooling Fan
M106 P7 S255 H4 T70			; T3 Hot End
M106 P8 S0				; T3 Part Cooling Fan

M593 F50				; cancel ringing at 50Hz
;M376 H15				; bed compensation taper

;tool offsets
G10 P0 X-9.00 Y39.00 Z-5.84		; T0
G10 P1 X-9.18 Y38.79 Z-4.82		; T1
G10 P2 X-9.56 Y38.88 Z-4.80 		; T2
G10 P3 X-9.04 Y38.88 Z-5.84		; T3

;deselect tools
T-1

;M572 D0 S0.2 				; pressure advance T0
;M572 D1 S0.2 				; pressure advance T1
;M572 D2 S0.2 				; pressure advance T2
;M572 D3 S0.2 				; pressure advance T3
