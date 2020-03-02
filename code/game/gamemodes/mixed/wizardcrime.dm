/datum/game_mode/wizardcrime
	name = "Wizard Crime"
	round_description = "Magic, mischief, and malice abound - and somebody won't have it today!"
	extended_round_description = "Traitors, renegades, and wizards spawn during this mode."
	config_tag = "wizardcrime"
	required_players = 7
	required_enemies = 3
	end_on_antag_death = FALSE
	antag_tags = list(MODE_TRAITOR, MODE_RENEGADE, MODE_WIZARD)
	require_all_templates = TRUE
	antag_scaling_coeff = 5
	latejoin_antag_tags = list(MODE_TRAITOR)
