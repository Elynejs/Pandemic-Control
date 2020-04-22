if !global.paused {
	if inside {	
		draw_set_font(font_mouse_hover);
		draw_set_color(c_black);
		draw_text(mouse_x + 10, mouse_y - 15, region);
		if self.quarantined {
			draw_text(mouse_x + 10, mouse_y - 5, "Quarantined until " + string((global.press_on_day + global.quarantine_timer) - global.days) + " Days.");
		}
	}
}