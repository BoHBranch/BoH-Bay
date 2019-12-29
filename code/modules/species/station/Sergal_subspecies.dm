/datum/species/sergal/northern
	name = SPECIES_NORTHERN
	name_plural = SPECIES_NORTHERN
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/claws, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp)
	darksight_range = 3
	darksight_tint = DARKTINT_MODERATE
	gluttonous = GLUT_TINY
	breath_pressure = 20
	slowdown = -0.25
	brute_mod = 1.15
	burn_mod = 1.15
	blood_volume = 560
	description = "WIP"

	descriptors = list(
		/datum/mob_descriptor/height = 1,
		/datum/mob_descriptor/build = 1
		)

	additional_available_cultural_info = list(
		TAG_FACTION = list(
			FACTION_SERGAL_SHIGU
		)
	)

	default_cultural_info = list(TAG_FACTION = FACTION_SERGAL_SHIGU)

/datum/species/sergal/eastern
	name = SPECIES_EASTERN
	name_plural = SPECIES_EASTERN
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/claws, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp)
	darksight_range = 3
	darksight_tint = DARKTINT_MODERATE
	gluttonous = GLUT_TINY
	breath_pressure = 20
	brute_mod = 1
	burn_mod = 1
	blood_volume = 560
	description = "WIP"

	descriptors = list(
		/datum/mob_descriptor/height = 2,
		/datum/mob_descriptor/build = 2
		)

	additional_available_cultural_info = list(
		TAG_FACTION = list(
			FACTION_SERGAL_REONO
		)
	)

	default_cultural_info = list(TAG_FACTION = FACTION_SERGAL_REONO)