//global.previous_room = room_main;

audio_play_sound(sound_click, 1, false);

//room_goto(room_economics);

if (!global.paused) {
	global.paused = true;
	instance_deactivate_object(o_social);
	global.currently_paused[0] = o_social;
	instance_deactivate_object(o_medical);
	global.currently_paused[1] = o_medical;
	o_room_economics.visible = true;
} else {
	global.paused = false;
	instance_activate_object(o_social);
	instance_activate_object(o_medical);
	global.currently_paused[0] = 0;
	global.currently_paused[1] = 0;
	o_room_economics.visible = false;
}