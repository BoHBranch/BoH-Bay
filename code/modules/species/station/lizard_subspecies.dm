/datum/species/unathi/yeosa
	name = SPECIES_YEOSA
	name_plural = SPECIES_YEOSA

	genders = list(MALE, FEMALE, PLURAL)

	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/tail, /datum/unarmed_attack/claws, /datum/unarmed_attack/punch, /datum/unarmed_attack/punch/venom, /datum/unarmed_attack/bite/sharp, /datum/unarmed_attack/bite/venom)
	darksight_range = 5
	darksight_tint = DARKTINT_GOOD
	breath_pressure = 14
	slowdown = 0.5
	brute_mod = 0.9
	oxy_mod = 0.8
	flash_mod = 1.4
	metabolism_mod = 0.75
	blood_volume = 700
	hunger_factor = DEFAULT_HUNGER_FACTOR * 1.5
	thirst_factor = DEFAULT_THIRST_FACTOR * 1.5
	water_soothe_amount = 5
	description = "The rarer, quieter, and more aquatic counterpart to Sinta, Yeosa'Unathi are smaller and softer than Sinta,   \
	preferring socialization and trade to combat and development. Still, they spend much of their time fishing or exploring the ocean. \
	Though following many traditional unathi beliefs, Yeosa are much fairer to each other to account for their low numbers. \
	<br/><br/>Their biology is heavily attuned to surviving Moghes' dangerous waters, including gills, fins, and a venomous bite. \
	<br/><br/>Naming format: Personalname Clanname Nickname"

	base_auras = list(
		/obj/aura/regenerating/human/unathi/yeosa
		)

	additional_available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_UNATHI_YEOSA_ABYSS,
			CULTURE_UNATHI_YEOSA_LITTORAL
		),
		TAG_RELIGION = list(
			RELIGION_UNATHI_AGA_EAKHE
		)
	)
	default_cultural_info = list(TAG_CULTURE = CULTURE_UNATHI_YEOSA_LITTORAL)


	override_organ_types = list(
		BP_LUNGS =  /obj/item/organ/internal/lungs/gills
	)

	override_limb_types = list(
		BP_HEAD =   /obj/item/organ/external/head/yeosa
	)
