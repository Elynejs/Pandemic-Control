if ((global.press_on_day + global.quarantine_timer) <= global.days) {
	global.quarantine_triggered = false;
	global.selected_region.quarantined = false;
	sprite_index = spr_button_quarantine;
	global.press_on_day = 100000;
	global.total_quarantined -= global.selected_region.population;
	
	global.selected_region = "none";
}