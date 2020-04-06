var/datum/species/shapeshifter/promethean/prometheans

// Species definition follows.
/datum/species/shapeshifter/promethean

	name =             SPECIES_PROMETHEAN
	name_plural =      "Prometheans"
	description =      "Prometheans, also known as slime people by most, have mutated naturally, or in laboratory conditions, and have achieved sentience."
	show_ssd =         "totally quiescent"
	death_message =    "rapidly loses form, splattering across the ground in a congealed mess..."
	knockout_message = "collapses inwards, forming a congealed mess of goo."
	remains_type = /obj/effect/decal/cleanable/ash

	meat_type = null
	bone_material = null
	skin_material = null

	blood_color = "#05ff9b"
	flesh_color = "#05fffb"

	hunger_factor =    DEFAULT_HUNGER_FACTOR
	reagent_tag =      IS_SLIME
	bump_flag =        SLIME
	swap_flags =       MONKEY|SLIME|SIMPLE_ANIMAL
	push_flags =       MONKEY|SLIME|SIMPLE_ANIMAL
	species_flags =    SPECIES_FLAG_NO_SCAN | SPECIES_FLAG_NO_SLIP | SPECIES_FLAG_NO_MINOR_CUT
	appearance_flags = HAS_SKIN_COLOR | HAS_EYE_COLOR | HAS_HAIR_COLOR | RADIATION_GLOWS
	spawn_flags =      SPECIES_CAN_JOIN | SPECIES_NO_FBP_CONSTRUCTION | SPECIES_NO_FBP_CHARGEN | SPECIES_NO_ROBOTIC_INTERNAL_ORGANS | SPECIES_NO_LACE

	breath_type = null
	poison_types = null

	gluttonous =          GLUT_TINY | GLUT_SMALLER | GLUT_ITEM_ANYTHING | GLUT_PROJECTILE_VOMIT
	blood_volume =        600
	min_age =             18
	max_age =             125
	brute_mod =           0.8
	burn_mod =            1.2
	toxins_mod =          0.1
	oxy_mod =             0
	total_health =        400
	siemens_coefficient = -1
	rarity_value =        5
	slowdown = 0.5
	darksight_range = 3
	darksight_tint = DARKTINT_MODERATE
	limbs_are_nonsolid =  TRUE

	unarmed_types = list(/datum/unarmed_attack/slime_glomp)
	has_organ =     list(BP_SLIMECORE = /obj/item/organ/internal/brain/slime) // Slime core.
	has_limbs = list(
		BP_CHEST =  list("path" = /obj/item/organ/external/chest/unbreakable/slime),
		BP_GROIN =  list("path" = /obj/item/organ/external/groin/unbreakable/slime),
		BP_HEAD =   list("path" = /obj/item/organ/external/head/unbreakable/slime),
		BP_L_ARM =  list("path" = /obj/item/organ/external/arm/unbreakable/slime),
		BP_R_ARM =  list("path" = /obj/item/organ/external/arm/right/unbreakable/slime),
		BP_L_LEG =  list("path" = /obj/item/organ/external/leg/unbreakable/slime),
		BP_R_LEG =  list("path" = /obj/item/organ/external/leg/right/unbreakable/slime),
		BP_L_HAND = list("path" = /obj/item/organ/external/hand/unbreakable/slime),
		BP_R_HAND = list("path" = /obj/item/organ/external/hand/right/unbreakable/slime),
		BP_L_FOOT = list("path" = /obj/item/organ/external/foot/unbreakable/slime),
		BP_R_FOOT = list("path" = /obj/item/organ/external/foot/right/unbreakable/slime)
		)
	heat_discomfort_strings = list("You feel too warm.")
	cold_discomfort_strings = list("You feel too cool.")

	inherent_verbs = list(
		/mob/living/carbon/human/proc/shapeshifter_select_shape,
		/mob/living/carbon/human/proc/shapeshifter_select_colour,
		/mob/living/carbon/human/proc/shapeshifter_select_hair,
		/mob/living/carbon/human/proc/shapeshifter_select_gender,
		/mob/living/carbon/human/proc/shapeshifter_select_hair_colors,
		/mob/living/carbon/human/proc/diona_heal_toggle,
		/mob/living/carbon/human/proc/discharge_energy
		)
	base_auras = list(
		/obj/aura/regenerating/human/promethean
	)

	descriptors = list(
		/datum/mob_descriptor/height = 1,
		/datum/mob_descriptor/build = 1
		)

	available_cultural_info = list(
		TAG_CULTURE = list(
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
			CULTURE_HUMAN_OTHER
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
			HOME_SYSTEM_TERRA,
			HOME_SYSTEM_TERSTEN,
			HOME_SYSTEM_LORRIMAN,
			HOME_SYSTEM_CINU,
			HOME_SYSTEM_YUKLID,
			HOME_SYSTEM_LORDANIA,
			HOME_SYSTEM_KINGSTON,
			HOME_SYSTEM_GAIA,
			HOME_SYSTEM_MAGNITKA,
			HOME_SYSTEM_STATELESS,
			HOME_SYSTEM_OTHER
		),
		TAG_FACTION = list(
			FACTION_SOL_CENTRAL,
			FACTION_FLEET,
			FACTION_CORPORATE,
			FACTION_INDIE_CONFED,
			FACTION_EXPEDITIONARY,
			FACTION_MARINES,
			FACTION_SPACECOPS,
			FACTION_NANOTRASEN,
			FACTION_XYNERGY,
			FACTION_HEPHAESTUS,
			FACTION_FREETRADE,
			FACTION_PCRC,
			FACTION_DAIS,
			FACTION_OTHER
		),
		TAG_RELIGION =  list(
			RELIGION_JUDAISM,
			RELIGION_HINDUISM,
			RELIGION_BUDDHISM,
			RELIGION_JAINISM,
			RELIGION_SIKHISM,
			RELIGION_ISLAM,
			RELIGION_CHRISTIANITY,
			RELIGION_BAHAI_FAITH,
			RELIGION_AGNOSTICISM,
			RELIGION_DEISM,
			RELIGION_ATHEISM,
			RELIGION_THELEMA,
			RELIGION_SPIRITUALISM,
			RELIGION_SHINTO,
			RELIGION_TAOISM,
			RELIGION_OTHER
		)
	)

	valid_transform_species = list(SPECIES_HUMAN,SPECIES_UNATHI,SPECIES_OLDUNATHI,SPECIES_SKRELL,SPECIES_VULP,SPECIES_AKULA,SPECIES_TAJ,SPECIES_DIONA,"Monkey")
	monochromatic = 1

/datum/species/shapeshifter/promethean/New()
	..()
	prometheans = src

/datum/species/shapeshifter/promethean/hug(var/mob/living/carbon/human/H,var/mob/living/target) //unarmed attack already applies shock - this is just cute
	var/datum/gender/G = gender_datums[target.gender]
	H.visible_message("<span class='notice'>\The [H] glomps [target] to make [G.him] feel better!</span>", \
					"<span class='notice'>You glomp [target] to make [G.him] feel better!</span>")

/datum/species/shapeshifter/promethean/handle_environment_special(var/mob/living/carbon/human/H)
	if(H.InStasis() || H.stat == DEAD)
		return
	var/turf/T = H.loc
	if(istype(T))
		var/obj/effect/decal/cleanable/C = locate() in T
		if(C)
			if(H.nutrition < 500)
				H.adjust_nutrition(rand(20,30))
			if(H.hydration < 500)
				H.adjust_hydration(rand(20,30))
			qdel(C)

/datum/species/shapeshifter/promethean/get_blood_colour(var/mob/living/carbon/human/H)
	return (H ? rgb(H.r_skin, H.g_skin, H.b_skin) : ..())

/datum/species/shapeshifter/promethean/get_flesh_colour(var/mob/living/carbon/human/H)
	return (H ? rgb(H.r_skin, H.g_skin, H.b_skin) : ..())

/datum/species/shapeshifter/promethean/get_additional_examine_text(var/mob/living/carbon/human/H)

	if(!stored_shock_by_ref["\ref[H]"])
		return
	var/datum/gender/G = gender_datums[H.gender]

	switch(stored_shock_by_ref["\ref[H]"])
		if(1 to 75)
			return " [G.He] [G.is] flickering gently with a little electrical activity."
		if(75 to 150)
			return " [G.He] [G.is] glowing gently with moderate levels of electrical activity.\n"
		if(150 to 225)
			return "<span class='warning'> [G.He] [G.is] glowing brightly with high levels of electrical activity.</span>"
		if(225 to INFINITY)
			return "<span class='danger'> [G.He] [G.is] radiating massive levels of electrical activity!</span>"
