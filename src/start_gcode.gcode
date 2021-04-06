; FlashForge Creator Pro 2 start gcode 
M118 X70.00 Y65.00 Z17 T{initial_extruder_nr} ; Move extruders to home. Set bed to known postion.  Select extruder for job.
M140 S{material_bed_temperature} T0 ; set bed temperature
M104 S{material_print_temperature_layer_0, initial_extruder_nr} T{initial_extruder_nr} ; set left or right extruder temperature 
M107 ; FAN OFF
G90  ; SET TO Absolute positioning 
G28  ; Move to home 
M132 X Y Z A B  ; load axis offsets from eeprom 
G1 Z50.000 F420  ; move head 
G161 X Y F3300 
M7 T0 ; starts a fan which does not exist. Always there do not remove 
M6 T{initial_extruder_nr} ; select the active extruder. 0 (right)  or 1(left) note does not work if M118 above not set as well.  
M651  ; Not sure but it needs to be there.  
M108 T{initial_extruder_nr}  ; maybe what makes sure the extruder is up to temp.
M106  ; make sure fan is on.  Cura will not turn it on later.
**** end of start.gcode ****
