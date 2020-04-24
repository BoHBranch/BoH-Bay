/datum/species/vox
	name = SPECIES_VOX
	name_plural = SPECIES_VOX
	icobase =         'icons/mob/human_races/species/vox/body.dmi'
	deform =          'icons/mob/human_races/species/vox/body.dmi'
	husk_icon =       'icons/mob/human_races/species/vox/husk.dmi'
	damage_overlays = 'icons/mob/human_races/species/vox/damage_overlay.dmi'
	damage_mask =     'icons/mob/human_races/species/vox/damage_mask.dmi'
	blood_mask =      'icons/mob/human_races/species/vox/blood_mask.dmi'

	limb_blend = ICON_MULTIPLY

	unarmed_types = list(
		/datum/unarmed_attack/stomp,
		/datum/unarmed_attack/kick,
		/datum/unarmed_attack/claws/strong/gloves,
		/datum/unarmed_attack/punch,
		/datum/unarmed_attack/bite/strong
	)
	rarity_value = 4
	description = "The Vox are a people most ancient, each one having existed well before the evolution of\
	humanity, led by the Auralis to guide the galaxy to a glorious evolution. Since the fall of the empire\
	and the disappearance of the Auralis, the Vox have struggled to reclaim their lost influence and territory.\
	Maintaining their remaining Arks are the revered Apex and their talons, the Ark-Admirals, and the Quill-Captains\
	fielded under their command.</BR></BR>\
	From battleship to corvette, Scavenger to Biotechnician, recent demand for action has seen new fleets formed\
	and territory claimed by the long-dormant nation.</BR></BR>\
	The Vox are a proud people, and face much distrust from the galactic community, but this does not seem to deter them."
	codex_description = "The Vox are a cautious, defensive species from the outer systems and beyond human space. They\
	reveal little to the outside world, but are known to trade and cooperate with those they find trustworthy. When\
	insulted or betrayed, Vox are quick to defend the honor of their kin and ensure it is known they are not to be trifled\
	with. They are commonly four to five feet tall, with sectioned-beaks and long scaled tails. They commonly decorate their\
	head-quills for noteworthy events or individuals."
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
	spawn_flags = SPECIES_CAN_JOIN // | SPECIES_IS_WHITELISTED
	appearance_flags = HAS_EYE_COLOR | HAS_HAIR_COLOR | HAS_SKIN_COLOR

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
	spawn_flags = SPECIES_CAN_JOIN | SPECIES_NO_FBP_CONSTRUCTION | SPECIES_FLAG_NO_MINOR_CUT
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
