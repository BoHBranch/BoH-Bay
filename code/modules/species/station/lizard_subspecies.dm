/datum/species/unathi/yeosa
	name = SPECIES_YEOSA
	name_plural = SPECIES_YEOSA

	genders = list(MALE, FEMALE, PLURAL)

	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/tail, /datum/unarmed_attack/claws, /datum/unarmed_attack/punch, /datum/unarmed_attack/punch/venom, /datum/unarmed_attack/bite/sharp, /datum/unarmed_attack/bite/venom)
	darksight_range = 5
	darksight_tint = DARKTINT_GOOD
	slowdown = 0.4
	brute_mod = 0.85
	flash_mod = 1.4
	blood_volume = 700
	water_soothe_amount = 5
	description = "The rarer, quieter, and more aquatic counterpart to Sinta, Yeosa'Unathi are smaller and softer than Sinta,   \
	preferring socialization and trade to combat and development. Still, they spend much of their time fishing or exploring the ocean. \
	Though following many traditional unathi beliefs, Yeosa are much fairer to each other to account for their low numbers and \
	often worship beasts of the sea as if they're the same as their ancestors.\
	<br/><br/>Their biology is heavily attuned to surviving Moghes' dangerous waters, including gills, fins, and a venomous bite."

	base_auras = list(
		/obj/aura/regenerating/human/unathi/yeosa
		)

	additional_available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_UNATHI_YEOSA_ABYSS,
			CULTURE_UNATHI_YEOSA_LITTORAL
		)
	)



	override_organ_types = list(
		BP_LUNGS =  /obj/item/organ/internal/lungs/gills
	)

	override_limb_types = list(
		BP_HEAD =   /obj/item/organ/external/head/yeosa
	)
