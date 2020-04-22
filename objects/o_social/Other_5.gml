global.paused = false;
instance_activate_object(o_medical);
instance_activate_object(o_economics);
global.currently_paused[0] = 0;
global.currently_paused[1] = 0;
o_room_social.visible = false;
instance_deactivate_object(o_lockdown);
instance_deactivate_object(o_quarantine);
