// Values to help calculate, changed manually or by player action
global.PIPPC = 3; // Patient Infecté par patient contaminé
global.DP = 100; // Pourcentage de la population qui se déplace chaque jour
global.Inc_contamination = 1; // Nombre de jours avant qu'un patient contaminé soit contagieux
global.Inc_outcome = 3; // Nombre de jours avant que le patient n'arrive à termes (soit il guérit, soit il meurt)
global.D = 34; // Pourcentage de chance de décès d'un patient contaminé

// Calculated values, changed automatically by the game
global.new_cases = 1;
global.new_dead = 0;
global.new_cured = 0;
global.total_dead = 0;
global.total_cured = 0;
global.total_cases = 1;
global.total_quarantined = 0;
global.currently_infected = 0;
global.mild_cases = 0;
global.severe_cases = 0;
global.contaminated_day[0] = 1;
