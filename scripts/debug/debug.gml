switch(argument0) {
	case "popularity": 
		global.popularity = real(argument1);
		break;
	case "PIPPC":
		global.PIPPC = real(argument1);
		break;
	case "Inc":
		if (argument1 == "contamination") {
			global.Inc_contamination = real(argument2);
		} else if argument1 == "outcome" {
			global.Inc_outcome = real(argument2);
		}
		break;
	case "deathrate":
		global.D = real(argument1);
		break;
}