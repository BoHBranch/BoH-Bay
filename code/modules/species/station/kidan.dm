/datum/species/kidan
	name = SPECIES_KIDAN
	name_plural = "Kida"
	icon_template = 'icons/mob/human_races/species/template.dmi'
	icobase = 'icons/mob/human_races/species/kidan/body.dmi'
	deform = 'icons/mob/human_races/species/kidan/body.dmi'
	bandages_icon = 'icons/mob/bandage.dmi'


	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/claws, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite)
	darksight_range = 3
	darksight_tint = DARKTINT_MODERATE
	gluttonous = GLUT_TINY
	strength = STR_HIGH
	breath_pressure = 18
	slowdown = 0.2
	burn_mod = 1.10
	oxy_mod = 1.10
	flash_mod = 1.6
	natural_armour_values = list(
		melee = ARMOR_MELEE_SMALL,
		bullet = ARMOR_BALLISTIC_MINOR
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_STRONG, 
		rad = 0.5*ARMOR_RAD_SMALL
		)
	blood_volume = 360
	health_hud_intensity = 2

	min_age = 18
	max_age = 60
	skin_material = MATERIAL_SKIN_CHITIN

	description = "This is Placeholder. It means Kidan works!"

	cold_level_1 = 260 //Default 260 - Lower is better
	cold_level_2 = 200 //Default 200
	cold_level_3 = 120 //Default 120

	heat_level_1 = 360 //Default 360 - Higher is better
	heat_level_2 = 400 //Default 400
	heat_level_3 = 1000 //Default 1000

	spawn_flags = SPECIES_CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_EYE_COLOR

	flesh_color = "#ba7814"
	reagent_tag = IS_HERBIVORE
	base_color = "#5a3908"
	blood_color = "#FB9800"

	move_trail = /obj/effect/decal/cleanable/blood/tracks/claw

	override_organ_types = list(
		BP_EYES = /obj/item/organ/internal/eyes/kidan
	)

	descriptors = list(
		/datum/mob_descriptor/height = 1,
		/datum/mob_descriptor/build = 1
		)

	available_cultural_info = list(
	
	)

	pain_emotes_with_pain_level = list(
			list(/decl/emote/audible/wheeze,) = 75,
			list(/decl/emote/audible/grunt, /decl/emote/audible/groan, /decl/emote/audible/wheeze, /decl/emote/audible/hiss) = 50,
			list(/decl/emote/audible/grunt, /decl/emote/audible/groan, /decl/emote/audible/hiss) = 25,
		)

/datum/species/kidan/equip_survival_gear(var/mob/living/carbon/human/H)
	..()
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sandal(H),slot_shoes)

/datum/species/kidan/get_bodytype(var/mob/living/carbon/human/H)
	return SPECIES_KIDAN
