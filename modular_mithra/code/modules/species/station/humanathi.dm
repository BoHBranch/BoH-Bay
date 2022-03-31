/datum/species/humanathi //I want to make this a subtype of unathi but I don't want to corrupt saves
	name = SPECIES_OLDUNATHI
	name_plural = SPECIES_OLDUNATHI
	icon_template = 'icons/mob/human_races/species/template.dmi'
	icobase = 'modular_mithra/icons/mob/human_races/species/humanathi/body.dmi'
	deform = 'modular_mithra/icons/mob/human_races/species/humanathi/deformed_body.dmi'
	husk_icon = 'modular_mithra/icons/mob/human_races/species/humanathi/husk.dmi'
	preview_icon = 'modular_mithra/icons/mob/human_races/species/humanathi/preview.dmi'
	bandages_icon = 'icons/mob/bandage.dmi'
	tail = "sogtail"
	modular_tail = 'modular_mithra/icons/mob/human_races/species/humanathi/tail.dmi'
	tail_animation = null //TODO: Add animated tails.
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	hidden_from_codex = FALSE
	skin_material =   MATERIAL_SKIN_LIZARD

	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick,/datum/unarmed_attack/tail, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp)
	primitive_form = "Stok"
	darksight_range = 3
	darksight_tint = DARKTINT_MODERATE
	gluttonous = GLUT_TINY | GLUT_ITEM_TINY | GLUT_PROJECTILE_VOMIT //Used to eating ash.
	strength = STR_HIGH
	breath_pressure = 16 //Smaller, needs less air.
	slowdown = 0.5
	brute_mod = 0.9
	burn_mod = 0.8
	flash_mod = 1.2
	radiation_mod = 0.75
	metabolism_mod = 0.8 //Lower metabolism.
	blood_volume = SPECIES_BLOOD_DEFAULT // Lower blood than unathi.

	health_hud_intensity = 2
	hunger_factor = DEFAULT_HUNGER_FACTOR //Less hungry than Unathi
	thirst_factor = DEFAULT_THIRST_FACTOR * 2 //Thirstier than Unathi
	taste_sensitivity = TASTE_SENSITIVE

	min_age = 18
	max_age = 260

	body_temperature = null // cold-blooded, implemented the same way nabbers do it
	description = "Known as the Veteris'Unathi, this subspecies of Unathi evolved to survive in the land down under, \
	clanless ash-ridden islands of Moghes' world sea, opposite the Sinta, and too inhospitable for Yeosa. \
	These regions usually contain dangerous and hostile fauna and megafauna, an atmosphere filled with a high concentration of ash particles, and little to no \
	plant life to snack on. Most Veteris'Unathi have left the dangerous Ash Plains on passing ships, however generations of exposure to this wasteland have adapted \
	them to eat meat, bones, and bone marrow exclusively, with some eating rocks to assist with digestion of bones. The usual lack of nutrition and slow metabolism, \
	this subspecies of Unathi are generally shorter than their cousins, however they are still excellent candidates for physical activity due to their resilient and efficient lungs. \
	Their clanless nature leaves them with no place in society on the main continent, so many Veteris look to space for chances to bring meaning to their lives."

	cold_level_1 = 280 //Default 260 - Lower is better
	cold_level_2 = 220 //Default 200
	cold_level_3 = 130 //Default 120

	heat_level_1 = 420 //Default 360 - Higher is better
	heat_level_2 = 480 //Default 400
	heat_level_3 = 1100 //Default 1000

	spawn_flags = SPECIES_CAN_JOIN | SPECIES_NO_FBP_CONSTRUCTION | SPECIES_NO_FBP_CHARGEN | SPECIES_NO_ROBOTIC_INTERNAL_ORGANS
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	flesh_color = "#34af10"

	reagent_tag = IS_OLDUNATHI
	base_color = "#066000"
	blood_color = "#f24b2e"
	organs_icon = 'icons/mob/human_races/species/unathi/organs.dmi'

	move_trail = /obj/effect/decal/cleanable/blood/tracks/footprints // What marks are left when walking

	heat_discomfort_level = 320
	heat_discomfort_strings = list(
		"You feel soothingly warm.",
		"You feel the heat sink into your bones.",
		"You feel warm enough to take a nap."
		)

	cold_discomfort_level = 285
	cold_discomfort_strings = list(
		"You feel chilly.",
		"You feel sluggish and cold.",
		"Your scales bristle against the cold."
		)
	breathing_sound = 'sound/voice/lizard.ogg'

	base_auras = list(
		/obj/aura/regenerating/human/unathi/veteris
		)

	inherent_verbs = list(
		/mob/living/carbon/human/proc/diona_heal_toggle
		)

	prone_overlay_offset = list(0, 0) // amount to shift overlays when lying

	override_organ_types = list(
		BP_BRAIN = /obj/item/organ/internal/brain/unathi
	)

	descriptors = list(
		/datum/mob_descriptor/height = 0,
		/datum/mob_descriptor/build = 2
	)

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_UNATHI_ADOPTED,
			CULTURE_OTHER,
			CULTURE_UNATHI_SPACE
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_MOGHES,
			HOME_SYSTEM_OUERE,
			HOME_SYSTEM_UNATHI_TERSTEN,
			HOME_SYSTEM_OFFWORLD
		),
		TAG_FACTION = list(
			FACTION_UNATHI_CLAN,
			FACTION_UNATHI_KRUKZUZ,
			FACTION_UNATHI_SOL,
			FACTION_UNATHI_INDEPENDENT
		),
		TAG_RELIGION =  list(
			RELIGION_UNATHI_STRATAGEM,
			RELIGION_UNATHI_VINE,
			RELIGION_UNATHI_LIGHTS,
			RELIGION_UNATHI_MARKESHELI,
			RELIGION_UNATHI_ANCESTORS,
			RELIGION_UNATHI_PRECURSOR,
			RELIGION_UNATHI_OTHER
		)
	)

	pain_emotes_with_pain_level = list(
		list(/decl/emote/audible/wheeze, /decl/emote/audible/roar, /decl/emote/audible/bellow, /decl/emote/audible/howl) = 80,
		list(/decl/emote/audible/grunt, /decl/emote/audible/groan, /decl/emote/audible/wheeze, /decl/emote/audible/hiss) = 50,
		list(/decl/emote/audible/grunt, /decl/emote/audible/groan, /decl/emote/audible/hiss) = 20,
	)

	autohiss_basic_map = list(
			"s" = list("ss", "sss", "ssss")
		)
	autohiss_extra_map = list(
			"x" = list("ks", "kss", "ksss")
		)
	autohiss_exempt = list(
					LANGUAGE_UNATHI_SINTA,
					LANGUAGE_UNATHI_YEOSA
	)

/datum/species/humanathi/get_bodytype(var/mob/living/carbon/human/H)
	return SPECIES_OLDUNATHI
