switch (sprite_index) {
	case spr_play_hover:
		audio_play_sound(sound_click, 1, false);
		sprite_index = spr_pause_hover;
		instance_deactivate_all(true);
		layer_set_visible("paused", true);
		break;
	case spr_pause_hover:
		audio_play_sound(sound_click, 1, false);
		sprite_index = spr_play_hover;
		layer_set_visible("paused", false);
		instance_activate_all()
		if global.currently_paused[0] != 0 {
			instance_deactivate_object(global.currently_paused[0]);
			instance_deactivate_object(global.currently_paused[1]);
		}
		break;
}