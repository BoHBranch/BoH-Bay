/datum/game_mode/traitornin
	name = "Traitor-Nin"
	round_description = "Foreign agents of chaos work towards mysterious goals in the shadows. Who do they really serve?"
	extended_round_description = "Traitors and ninja both spawn during this mode."
	config_tag = "traitornin"
	required_players = 6
	required_enemies = 3
	antag_tags = list(MODE_TRAITOR, MODE_NINJA)
	require_all_templates = TRUE
	antag_scaling_coeff = 5
	end_on_antag_death = FALSE
	latejoin_antag_tags = list(MODE_TRAITOR)
