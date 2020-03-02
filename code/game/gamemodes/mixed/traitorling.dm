/datum/game_mode/traitorling
	name = "Traitorling"
	round_description = "There are traitors and alien changelings. Do not let the changelings succeed!"
	extended_round_description = "Traitors and changelings both spawn during this mode."
	config_tag = "traitorling"
	required_players = 7
	required_enemies = 3
	end_on_antag_death = FALSE
	antag_tags = list(MODE_CHANGELING, MODE_TRAITOR, MODE_RENEGADE)
	require_all_templates = TRUE
	antag_scaling_coeff = 4
	latejoin_antag_tags = list(MODE_TRAITOR)
