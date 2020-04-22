switch(sprite_index) {
	case spr_speed1_hover:
		sprite_index = spr_speed2_hover;
		audio_play_sound(sound_click, 1, false);
		game_set_speed(global.gameSpeed/2, gamespeed_microseconds);
		break;
	case spr_speed2_hover:
		sprite_index = spr_speed3_hover;
		audio_play_sound(sound_click, 1, false);
		game_set_speed(global.gameSpeed/4, gamespeed_microseconds);
		break;
	case spr_speed3_hover:
		sprite_index = spr_speed1_hover;
		audio_play_sound(sound_click, 1, false);
		game_set_speed(global.gameSpeed/1, gamespeed_microseconds);
		break;
}