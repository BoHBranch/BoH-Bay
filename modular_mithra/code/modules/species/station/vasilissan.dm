/datum/species/vasilissan
	name = SPECIES_VASS
	name_plural = "Vasilissans"
	icobase = 'modular_mithra/icons/mob/human_races/species/vasilissan/body.dmi'
	deform = 'modular_mithra/icons/mob/human_races/species/vasilissan/deformed_body.dmi'
	husk_icon = 'modular_mithra/icons/mob/human_races/species/vasilissan/husk.dmi'
	preview_icon = 'modular_mithra/icons/mob/human_races/species/vasilissan/preview.dmi'
	modular_tail = 'modular_mithra/icons/mob/human_races/species/vasilissan/tail.dmi'
	tail = "spidertail"
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	hidden_from_codex = FALSE

	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp, /datum/unarmed_attack/claws)

	description = "Los Vasilissans son una especie de personas ilustradas, se ven como gente araña. Son la unica especie que no ha sido victima de una guerra al ser descubiertas. Esto fue debido a que ya estaban en la era atomica cuando fueron encontrados por la ahora difunta NanoTrasen Surveyor Corps. Se han integrado muy bien a la sociedad interestelar, con algunos intercambios en relaciones politicas, principalmente por el hecho de que son arañas."

	spawn_flags = SPECIES_CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	sexybits_location = BP_GROIN //this is possibly my favorite variable just because of how out of place it is. - cebu | what the hell does it even do -tori | Basically it just defines where you can hit them for massive (pain) damage. An entire variable dedicated to nutshots. -cebu  | do these guys even have junk in their groin??? -cebu


	available_cultural_info = list( //I can do ANYTHING! Placeholder until the loreboys come and figure out what Vasilissans do | did it -bear
		TAG_CULTURE = list(
			CULTURE_HUMAN,
			CULTURE_HUMAN_VATGROWN,
			CULTURE_HUMAN_MARTIAN,
			CULTURE_HUMAN_MARSTUN,
			CULTURE_HUMAN_LUNAPOOR,
			CULTURE_HUMAN_LUNARICH,
			CULTURE_HUMAN_VENUSIAN,
			CULTURE_HUMAN_VENUSLOW,
			CULTURE_HUMAN_BELTER,
			CULTURE_HUMAN_PLUTO,
			CULTURE_HUMAN_EARTH,
			CULTURE_HUMAN_CETI,
			CULTURE_HUMAN_SPACER,
			CULTURE_HUMAN_SPAFRO,
			CULTURE_HUMAN_CONFED,
			CULTURE_HUMAN_OTHER,
			CULTURE_SYMBIOTIC
		)
	)