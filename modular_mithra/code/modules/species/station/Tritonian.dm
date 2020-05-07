/datum/species/tritonian
	name = SPECIES_TRITONIAN
	name_plural = "Tritonians"
	description = "Of all human gene-adapts, the Tritonian genotype is probably the most wildly divergent from \
	baseline humanity. Conceived alongside dolphin and octopus genetic engineering projects, this genotype \
	is adapted for amphibious life on flooded ocean moons like Triton, but is equally comfortable in a range \
	of aquatic and non-aquatic environments. Their heavy, seal-like bodies have sharp teeth, recessed eyes, \
	and thick blue-grey skin with a layer of dense blubber for insulation and protection, but they find \
	it difficult to move quickly on land due to their bulk."
	icobase =     'icons/mob/human_races/species/human/subspecies/tritonian_body.dmi'
	preview_icon= 'icons/mob/human_races/species/human/subspecies/tritonian_preview.dmi'
	slowdown = 1

	oxy_mod =             0.5
	brute_mod =           0.8
	toxins_mod =          1.15
	radiation_mod =       1.15
	body_temperature =    302
	water_soothe_amount = 5

	heat_level_1 = 350
	heat_level_2 = 380
	heat_level_3 = 900

	cold_level_1 = 220
	cold_level_2 = 160
	cold_level_3 = 100

	unarmed_types = list(
		/datum/unarmed_attack/stomp,
		/datum/unarmed_attack/kick,
		/datum/unarmed_attack/punch,
		/datum/unarmed_attack/bite/sharp
	)
	override_organ_types = list(BP_LUNGS = /obj/item/organ/internal/lungs/gills)

	descriptors = list(
		/datum/mob_descriptor/height,
		/datum/mob_descriptor/build = 1
		)

	spawn_flags = SPECIES_IS_RESTRICTED | SPECIES_IS_ICONBASE
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_TONE_TRITON | HAS_LIPS | HAS_UNDERWEAR | HAS_EYE_COLOR
