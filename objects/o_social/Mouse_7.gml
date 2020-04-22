//global.previous_room = room_main;

audio_play_sound(sound_click, 1, false);

//room_goto(room_social);

if (!global.paused) {
	global.paused = true;
	instance_deactivate_object(o_medical);
	global.currently_paused[0] = o_medical;
	instance_deactivate_object(o_economics);
	global.currently_paused[1] = o_economics;
	o_room_social.visible = true;
	instance_activate_object(o_lockdown);
	instance_activate_object(o_quarantine);
} else {
	global.paused = false;
	instance_activate_object(o_medical);
	instance_activate_object(o_economics);
	global.currently_paused[0] = 0;
	global.currently_paused[1] = 0;
	o_room_social.visible = false;
	instance_deactivate_object(o_lockdown);
	instance_deactivate_object(o_quarantine);
}