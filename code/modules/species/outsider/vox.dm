/datum/species/vox
	name = SPECIES_VOX
	name_plural = SPECIES_VOX
	icobase =         'icons/mob/human_races/species/vox/body.dmi'
	deform =          'icons/mob/human_races/species/vox/body.dmi'
	husk_icon =       'icons/mob/human_races/species/vox/husk.dmi'
	damage_overlays = 'icons/mob/human_races/species/vox/damage_overlay.dmi'
	damage_mask =     'icons/mob/human_races/species/vox/damage_mask.dmi'
	blood_mask =      'icons/mob/human_races/species/vox/blood_mask.dmi'

	unarmed_types = list(
		/datum/unarmed_attack/stomp,
		/datum/unarmed_attack/kick,
		/datum/unarmed_attack/claws/strong/gloves,
		/datum/unarmed_attack/punch,
		/datum/unarmed_attack/bite/strong
	)
	rarity_value = 4
	description = "The Vox are the broken remnants of a once-proud race, now reduced to little more than \
	scavenging vermin who prey on isolated stations, ships or planets to keep their own ancient arkships \
	alive. They are four to five feet tall, reptillian, beaked, tailed and quilled; human crews often \
	refer to them as 'shitbirds' for their violent and offensive nature, as well as their horrible \
	smell. \
	<br/><br/> \
	Most humans will never meet a Vox raider, instead learning of this insular species through \
	dealing with their traders and merchants; those that do rarely enjoy the experience."
	codex_description = "The Vox are a hostile, deeply untrustworthy species from the edges of human space. They prey \
	on isolated stations, ships or settlements without any apparent logic or reason, and tend to refuse communications \
	or negotiations except when their backs are to the wall or they are in dire need of resources. They are four to five \
	feet tall, reptillian, beaked, tailed and quilled."
	hidden_from_codex = FALSE

	taste_sensitivity = TASTE_DULL
	speech_sounds = list('sound/voice/shriek1.ogg')
	speech_chance = 25

	warning_low_pressure = 50
	hazard_low_pressure = 0

	cold_level_1 = 80
	cold_level_2 = 50
	cold_level_3 = -1

	min_age = 18
	max_age = 100

	gluttonous = GLUT_TINY|GLUT_ITEM_NORMAL
	stomach_capacity = 12

	breath_type = GAS_NITROGEN
	poison_types = list(GAS_OXYGEN = TRUE)
	siemens_coefficient = 0.2

	species_flags = SPECIES_FLAG_NO_SCAN
	spawn_flags = SPECIES_CAN_JOIN | SPECIES_NO_FBP_CONSTRUCTION// | SPECIES_IS_WHITELISTED
	appearance_flags = HAS_EYE_COLOR | HAS_HAIR_COLOR

	blood_color = "#2299fc"
	flesh_color = "#808d11"

	reagent_tag = IS_VOX
	maneuvers = list(/decl/maneuver/leap/grab)
	standing_jump_range = 5

	override_limb_types = list(
		BP_GROIN = /obj/item/organ/external/groin/vox
	)

	has_organ = list(
		BP_STOMACH =    /obj/item/organ/internal/stomach/vox,
		BP_HEART =      /obj/item/organ/internal/heart/vox,
		BP_LUNGS =      /obj/item/organ/internal/lungs/vox,
		BP_LIVER =      /obj/item/organ/internal/liver/vox,
		BP_KIDNEYS =    /obj/item/organ/internal/kidneys/vox,
		BP_BRAIN =      /obj/item/organ/internal/brain,
		BP_EYES =       /obj/item/organ/internal/eyes/vox,
		BP_STACK =      /obj/item/organ/internal/voxstack,
		BP_HINDTONGUE = /obj/item/organ/internal/hindtongue
		)

	genders = list(NEUTER)
	descriptors = list(
		/datum/mob_descriptor/height = -1,
		/datum/mob_descriptor/build = 1,
		/datum/mob_descriptor/vox_markings = 0
		)

	available_cultural_info = list(
		TAG_CULTURE =   list(
			CULTURE_VOX_ARKSHIP,
			CULTURE_VOX_SALVAGER,
			CULTURE_VOX_RAIDER
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_VOX_ARK,
			HOME_SYSTEM_VOX_SHROUD,
			HOME_SYSTEM_VOX_SHIP
		),
		TAG_FACTION = list(
			FACTION_VOX_RAIDER,
			FACTION_VOX_CREW,
			FACTION_VOX_APEX
		),
		TAG_RELIGION =  list(
			RELIGION_VOX
		)
	)

/datum/species/vox/equip_survival_gear(var/mob/living/carbon/human/H)
	H.equip_to_slot_or_del(new /obj/item/clothing/mask/gas/vox(H), slot_wear_mask)

	if(istype(H.get_equipped_item(slot_back), /obj/item/weapon/storage/backpack))
		H.equip_to_slot_or_del(new /obj/item/weapon/tank/nitrogen(H), slot_r_hand)
		H.equip_to_slot_or_del(new /obj/item/weapon/storage/box/vox(H.back), slot_in_backpack)
		H.set_internals(H.r_hand)
	else
		H.equip_to_slot_or_del(new /obj/item/weapon/tank/nitrogen(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/weapon/storage/box/vox(H), slot_r_hand)
		H.set_internals(H.back)

/datum/species/vox/disfigure_msg(var/mob/living/carbon/human/H)
	var/datum/gender/T = gender_datums[H.get_gender()]
	return "<span class='danger'>[T.His] beak-segments are cracked and chipped! [T.He] [T.is] not even recognizable.</span>\n"

/datum/species/vox/skills_from_age(age)
	. = 8

/datum/species/vox/pariah
	name = SPECIES_VOXPARIAH
	description = "Sickly biproducts of Vox society, these creatures are vilified by their own kind \
	and taken advantage of by enterprising companies for cheap, disposable labor. \
	They aren't very smart, smell worse than a vox, and vomit constantly, \
	earning them the true title of 'shitbird'."
	rarity_value = 0.1
	speech_chance = 60        // No volume control.
	siemens_coefficient = 0.5 // Ragged scaleless patches.
	unarmed_types = list(
		/datum/unarmed_attack/stomp,
		/datum/unarmed_attack/kick,
		/datum/unarmed_attack/claws/,
		/datum/unarmed_attack/punch,
		/datum/unarmed_attack/bite/
	)

	oxy_mod = 1.4
	brute_mod = 1.3
	burn_mod = 1.4
	toxins_mod = 1.3

	cold_level_1 = 130
	cold_level_2 = 100
	cold_level_3 = 60

	warning_low_pressure = WARNING_LOW_PRESSURE
	hazard_low_pressure = HAZARD_LOW_PRESSURE

	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick,  /datum/unarmed_attack/claws, /datum/unarmed_attack/bite)

	// Pariahs have no stack.
	has_organ = list(
		BP_STOMACH =    /obj/item/organ/internal/stomach/vox,
		BP_HEART =      /obj/item/organ/internal/heart/vox,
		BP_LUNGS =      /obj/item/organ/internal/lungs/vox,
		BP_LIVER =      /obj/item/organ/internal/liver/vox,
		BP_KIDNEYS =    /obj/item/organ/internal/kidneys/vox,
		BP_BRAIN =      /obj/item/organ/internal/pariah_brain,
		BP_EYES =       /obj/item/organ/internal/eyes/vox,
		BP_HINDTONGUE = /obj/item/organ/internal/hindtongue
		)

	descriptors = list(
		/datum/mob_descriptor/height = -1,
		/datum/mob_descriptor/build = 1,
		/datum/mob_descriptor/pariah_stink = 0
	)

	species_flags = SPECIES_FLAG_NO_SCAN//shouldn't be needed, but in game happenings have shown otherwise. For some reason.
	spawn_flags = SPECIES_CAN_JOIN | SPECIES_NO_FBP_CONSTRUCTION | SPECIES_NO_LACE
	appearance_flags = HAS_EYE_COLOR | HAS_HAIR_COLOR

/datum/species/vox/pariah/get_bodytype(var/mob/living/carbon/human/H)
	return SPECIES_VOX

// No combat skills for you.
/datum/species/vox/pariah/can_shred(var/mob/living/carbon/human/H, var/ignore_intent)
	return 0

/datum/species/vox/armalis
	name = SPECIES_VOX_ARMALIS
	name_plural = SPECIES_VOX_ARMALIS
	icon_template =   'icons/mob/human_races/species/template_tall.dmi'
	icobase =         'icons/mob/human_races/species/vox/armalis_body.dmi'
	deform =          'icons/mob/human_races/species/vox/armalis_body.dmi'
	husk_icon =       'icons/mob/human_races/species/vox/armalis_husk.dmi'
	damage_overlays = 'icons/mob/human_races/species/vox/damage_overlay_armalis.dmi'
	damage_mask =     'icons/mob/human_races/species/vox/damage_mask_armalis.dmi'
	blood_mask =      'icons/mob/human_races/species/vox/blood_mask_armalis.dmi'

	slowdown = 1.5
	hidden_from_codex = TRUE
	spawn_flags = SPECIES_CAN_JOIN | SPECIES_NO_FBP_CONSTRUCTION
	brute_mod = 0.5
	burn_mod = 0.5
	strength = STR_HIGH
	mob_size = MOB_LARGE

	speech_sounds = list('sound/voice/shriek1.ogg')
	speech_chance = 25

	override_organ_types = list(BP_EYES = /obj/item/organ/internal/eyes/vox/armalis)

	descriptors = list(
		/datum/mob_descriptor/height = 2,
		/datum/mob_descriptor/build = 2,
		/datum/mob_descriptor/vox_markings = 0
	)

/datum/species/vox/armalis/New()
	..()
	equip_adjust = list(
		slot_l_hand_str = list("[NORTH]" = list("x" = 0, "y" = 4), "[EAST]" = list("x" = -3, "y" = 4), "[SOUTH]" = list("x" = 0, "y" = 4), "[WEST]" = list("x" =  3, "y" = 4)),
		slot_r_hand_str = list("[NORTH]" = list("x" = 0, "y" = 4), "[EAST]" = list("x" =  3, "y" = 4), "[SOUTH]" = list("x" = 0, "y" = 4), "[WEST]" = list("x" = -3, "y" = 4)),
		slot_back_str =   list("[NORTH]" = list("x" = 0, "y" = 8), "[EAST]" = list("x" = -3, "y" = 8), "[SOUTH]" = list("x" = 0, "y" = 8), "[WEST]" = list("x" =  3, "y" = 8)),
		slot_belt_str =   list("[NORTH]" = list("x" = 0, "y" = 8), "[EAST]" = list("x" = -4, "y" = 8), "[SOUTH]" = list("x" = 0, "y" = 8), "[WEST]" = list("x" =  4, "y" = 8))
	)

/datum/species/vox/armalis/attempt_grab(var/mob/living/carbon/human/grabber, var/mob/living/target)
	if(grabber != target)
		grabber.unEquip(grabber.l_hand)
		grabber.unEquip(grabber.r_hand)
		to_chat(grabber, SPAN_WARNING("You drop everything in a rage as you seize \the [target]!"))
		playsound(grabber.loc, 'sound/weapons/pierce.ogg', 25, 1, -1)
	. = ..(grabber, target, GRAB_NAB)