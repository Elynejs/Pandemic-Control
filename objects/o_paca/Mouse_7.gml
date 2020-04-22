if global.selecting_region {
	audio_play_sound(sound_click, 1, false);
	global.selected_region = self;
	
	global.selecting_region = false;
	instance_activate_object(o_social);
	instance_activate_object(o_lockdown);
	o_room_social.visible = true;
	layer_set_visible("selecting_region_bkg", false);
	global.paused = true;
	self.quarantined = true;
	
	o_quarantine.triggered = true;
	o_quarantine.sprite_index = spr_button_quarantine_unavailable;
	global.total_quarantined += self.population;
	global.DP -= floor((global.total_quarantined/global.population)*100);
	global.popularity -= floor(((global.total_quarantined/global.population)*100)/2);
	
	sprite_index = spr_paca_quarantined;
}