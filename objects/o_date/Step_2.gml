steps++

while steps >= 60 {
	if (global.mins == ":00") {
		global.mins = ":30";
		steps = 0;
	} else {
		global.mins = ":00";
		global.hours += 1;
		steps = 0;
}}

while global.hours >= 24 {
	global.hours = 0;
	
	// Time in takes for contaminated patients to spread the disease
	if ((global.days % global.Inc_contamination) == 0) {
		global.new_cases = floor(global.new_cases*(global.PIPPC*(global.DP/100))-(global.total_dead+global.total_cured));
		global.total_cases = floor(global.total_dead + global.total_cured + global.new_cases);
		// If the disease reached an outcome, calculate it
		if outcome {
			global.new_dead = floor(global.contaminated_day[global.days-global.Inc_outcome]*(global.D/100));
			global.total_dead += global.new_dead;
			global.new_cured = global.contaminated_day[global.days-global.Inc_outcome] - global.new_dead;
			global.total_cured += global.new_cured;
		}
	}
	
	// Time it takes for the disease to produce an outcome (either die or get cured)
	if ((global.days % global.Inc_outcome) == 0) {
			outcome = true;
	}
	
	// Calculate popularity decrease as disease progress - WIP
	global.popularity -= floor(exp(((global.total_dead*2)+global.total_cases)/(global.population-global.total_quarantined)));
	
	// Link each day to it's corresponding number of cases to better calculate outcomes
	global.contaminated_day[global.days] = global.new_cases;
	
	global.currently_infected = global.total_cases - (global.total_dead + global.total_cured);
	global.days += 1;
}
