if !global.quarantine_triggered {
	audio_play_sound(sound_click, 1, false);
	global.selecting_region = true;
	global.press_on_day = global.days;
	instance_deactivate_object(o_social);
	layer_set_visible("selecting_region_bkg", true);
	instance_deactivate_object(o_lockdown);
	o_room_social.visible = false;
	global.paused = false;
}