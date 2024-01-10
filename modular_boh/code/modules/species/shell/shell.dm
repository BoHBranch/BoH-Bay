/datum/species/shell
	name = SPECIES_SHELL
	name_plural = "shells"

	description = "A relatively new generation of Integrated Positronic Chassis, Shell IPCs fill the niche for convincing mimicry of \
	humans at a glance. Mass-produced models are known to be similar to their predecessors in acting, with human-like articulation \
	but robotic personalities. Some high-end or custom made models (both of which are of ludicrous value), are nearly indistingishable \
	from humans in most regards, however still share the same ''logical'' thinking of a machine at their core."
	cyborg_noun = null

	preview_icon = 'icons/mob/human_races/species/human/preview.dmi'

	unarmed_types = list(/datum/unarmed_attack/punch, /datum/unarmed_attack/kick, /datum/unarmed_attack/stomp)
	rarity_value = 2
	strength = STR_HIGH

	min_age = 1
	max_age = 90

	warning_low_pressure = 50
	hazard_low_pressure = -1

	cold_level_1 = SYNTH_COLD_LEVEL_1
	cold_level_2 = SYNTH_COLD_LEVEL_2
	cold_level_3 = SYNTH_COLD_LEVEL_3

	heat_level_1 = SYNTH_HEAT_LEVEL_1		// Gives them about 25 seconds in space before taking damage
	heat_level_2 = SYNTH_HEAT_LEVEL_2
	heat_level_3 = SYNTH_HEAT_LEVEL_3

	body_temperature = 330.5 //Warmer than a normal human, but not 80C like a standard IPC

	species_flags = SPECIES_FLAG_NO_SCAN | SPECIES_FLAG_NO_PAIN | SPECIES_FLAG_NO_POISON
	spawn_flags = SPECIES_CAN_JOIN | SPECIES_NO_FBP_CONSTRUCTION | SPECIES_NO_LACE// | SPECIES_IS_WHITELISTED
	appearance_flags = SPECIES_APPEARANCE_HAS_HAIR_COLOR | SPECIES_APPEARANCE_HAS_UNDERWEAR | SPECIES_APPEARANCE_HAS_EYE_COLOR | SPECIES_APPEARANCE_HAS_A_SKIN_TONE | SPECIES_APPEARANCE_HAS_LIPS //IPCs can wear undies too :(

	blood_color = "#75c6f4"
	flesh_color = "#575757"

	has_organ = list(
		BP_POSIBRAIN = /obj/item/organ/internal/posibrain,
		BP_EYES = /obj/item/organ/internal/eyes/robot
		)

	heat_discomfort_level = 373.15
	heat_discomfort_strings = list(
		"Your CPU temperature probes warn you that you are approaching critical heat levels!"
		)
	genders = list(MALE, FEMALE)

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_POSITRONICS_GEN1,
			CULTURE_POSITRONICS_GEN2,
			CULTURE_POSITRONICS_GEN3
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_MARS,
			HOME_SYSTEM_EARTH,
			HOME_SYSTEM_LUNA,
			HOME_SYSTEM_VENUS,
			HOME_SYSTEM_CERES,
			HOME_SYSTEM_PLUTO,
			HOME_SYSTEM_TAU_CETI,
			HOME_SYSTEM_HELIOS,
			HOME_SYSTEM_SAFFAR,
			HOME_SYSTEM_PIRX,
			HOME_SYSTEM_TADMOR,
			HOME_SYSTEM_BRAHE,
			HOME_SYSTEM_IOLAUS,
			HOME_SYSTEM_FOSTER,
			HOME_SYSTEM_CASTILLA,
			HOME_SYSTEM_OTHER
		),
		TAG_FACTION = list(
			FACTION_SOL_CENTRAL,
			FACTION_INDIE_CONFED,
			FACTION_NANOTRASEN,
			FACTION_FREETRADE,
			FACTION_XYNERGY,
			FACTION_EXPEDITIONARY,
			FACTION_OTHER
		)
	)

	default_cultural_info = list(
		TAG_CULTURE = CULTURE_POSITRONICS_GEN1,
		TAG_HOMEWORLD = HOME_SYSTEM_MARS,
		TAG_FACTION = FACTION_SOL_CENTRAL
	)

	brute_mod =      1.2
	burn_mod =       1.6

/datum/species/shell/handle_death(mob/living/carbon/human/H)
	..()
	if(istype(H.wear_mask,/obj/item/clothing/mask/monitor))
		var/obj/item/clothing/mask/monitor/M = H.wear_mask
		M.monitor_state_index = "blank"
		M.update_icon()

/datum/species/shell/post_organ_rejuvenate(obj/item/organ/org, mob/living/carbon/human/H)
	var/obj/item/organ/external/E = org
	if(istype(E) && !BP_IS_ROBOTIC(E))
		E.robotize("Zeng Hu Shell MK3")

/datum/species/shell/get_blood_name()
	return "coolant"

/datum/species/shell/disfigure_msg(mob/living/carbon/human/H)
	var/datum/pronouns/T = H.choose_from_pronouns()
	return "<span class='danger'>[T.His] faceplate is dented and ruined!</span>\n"
