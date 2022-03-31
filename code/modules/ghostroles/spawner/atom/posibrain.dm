/datum/ghostspawner/posibrain
	short_name = "posibrain"
	name = "Positronic Brain"
	desc = "Enter a synthetic brain, capable of piloting a spiderbrain, operating an android, becoming an AI, or being a pocketbuddy."
	show_on_job_select = FALSE
	tags = list("Stationbound")

	jobban_job = "Cyborg"
	loc_type = GS_LOC_ATOM
	atom_add_message = "A posibrain has started its boot process!"

	spawn_mob = /mob/living/carbon/brain