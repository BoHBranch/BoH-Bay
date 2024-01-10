/datum/species/tajaran
	name = SPECIES_TAJ
	name_plural = "Tajara"
	icobase = 'modular_mithra/icons/mob/human_races/species/tajaran/body.dmi'
	deform = 'modular_mithra/icons/mob/human_races/species/tajaran/deformed_body.dmi'
	husk_icon = 'modular_mithra/icons/mob/human_races/species/tajaran/husk.dmi'
	preview_icon = 'modular_mithra/icons/mob/human_races/species/tajaran/preview.dmi'
	modular_tail = 'modular_mithra/icons/mob/human_races/species/tajaran/tail.dmi'
	tail = "tajtail_master"
	default_ears = /datum/sprite_accessory/ears/tajhc //Variable seems to not work anyway. //This is one of the problems that plagues Tajara to this day... - HTG
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	hidden_from_codex = FALSE


	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp, /datum/unarmed_attack/claws)

	min_age = 18

	description = "The Tajaran are a mammalian species resembling roughly felines, hailing from Meralar in the Rarkajar system. \
	While reaching to the stars independently from outside influences, the humans engaged them in peaceful trade contact \
	and have accelerated the fledgling culture into the interstellar age. Their history is full of war and highly fractious \
	governments, something that permeates even to today's times. They prefer colder, tundra-like climates, much like their \
	home worlds and speak a variety of languages, especially Siik and Akhani."

	spawn_flags = SPECIES_CAN_JOIN
	appearance_flags = SPECIES_APPEARANCE_HAS_HAIR_COLOR | SPECIES_APPEARANCE_HAS_UNDERWEAR | SPECIES_APPEARANCE_HAS_SKIN_COLOR | SPECIES_APPEARANCE_HAS_EYE_COLOR

	sexybits_location = BP_GROIN


	available_cultural_info = list( //Language is dependent on culture. Giving them human cultures will spawn them without the Tajaran language
		TAG_CULTURE = list(
			CULTURE_TAJARAN
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_OTHER,
			HOME_SYSTEM_MARS,
			HOME_SYSTEM_EARTH,
			HOME_SYSTEM_LUNA,
			HOME_SYSTEM_VENUS,
			HOME_SYSTEM_CERES,
			HOME_SYSTEM_PLUTO,
			HOME_SYSTEM_HELIOS,
			HOME_SYSTEM_TERRA,
			HOME_SYSTEM_GAIA,
			HOME_SYSTEM_MAGNITKA,
			HOME_SYSTEM_STATELESS
		)
	)

/datum/species/tajaran/proc/handle_coco(mob/living/carbon/human/M, datum/reagent/nutriment/coco, efficiency = 1)
	var/effective_dose = efficiency * M.chem_doses[coco.type]
	if(effective_dose < 5)
		return
	M.druggy = max(M.druggy, 10)
	M.add_chemical_effect(CE_PULSE, -1)
	if(effective_dose > 15 && prob(7))
		M.emote(pick("twitch", "drool"))
	if(effective_dose > 20 && prob(10))
		M.SelfMove(pick(GLOB.cardinal))
