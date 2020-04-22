if !global.lockdown_triggered {
	audio_play_sound(sound_click, 1, false);
	global.lockdown_triggered = true;
	sprite_index = spr_button_lockdown_unavailable;
	global.popularity -= 20;
	global.DP -= 30;
}