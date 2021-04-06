; **** FlashForge Creator Pro 2 end.gcode ****
M104 S0 T0 ; turn off right extruder heat.
M104 S0 T1 ; turn off left extruder heat
M140 S0 T0 ; turn off bed heat
G162 Z F1800  ; drop bed to bottom of machine
G28 X Y   ; move to home
M132 X Y A B  ;get current extruder positions
M652  ; unknown but required
M18; stepper motors off 
M107 ; shut off extruder fan
; **** end of end.gcode **** 
