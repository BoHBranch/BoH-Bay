/*
		All neutral traits go here. They are automagically sorted based off their cost, but seperating em this way is easier to search through.
*/

/datum/trait/glowing_eyes
	name = "Glowing Eyes"
	desc = "Your eyes glow in the dark."	//MY VISION IS AUGMENTED
	cost = 0

	apply(var/datum/species/S,var/mob/living/carbon/human/H)
		..(S,H)
		for(var/obj/item/organ/external/head/O in H.organs)
			O.glowing_eyes = TRUE

/datum/trait/cold_blooded
	name = "Ectothermy"
	desc = "You have diminished means of internal thermoregulation, forcing you to rely on external heat to stay alive."
	cost = 0
	var_changes = list("body_temperature" = null, "cold_discomfort_level" = 292)
	excludes = list(/datum/trait/hot_blooded)

/datum/trait/hot_blooded
	name = "Hot-blooded"
	desc = "Your body is capable of more vigourous endothermoregulation, causing your average body temperature to be higher than normal."
	cost = 0
	var_changes = list("body_temperature" = 313, "heat_discomfort_level" = 320)
	excludes = list(/datum/trait/cold_blooded)

/datum/trait/nitrogen_breath
	name = "Nitrogenous Spirometry"
	desc = "Your metabolic processes causes you to exhale nitrogen rather than carbon dioxide."
	cost = 0
	var_changes = list("exhale_type" = "nitrogen")

/datum/trait/fast_meta
	name = "Faster Metabolism"
	desc = "Your metabolism rate is absurdly high, causing you to get hungry and process chemicals at twice the normal rate."
	cost = 0
	var_changes = list("hunger_factor" = DEFAULT_HUNGER_FACTOR * 2, "metabolism_mod" = 2)
	excludes = list(/datum/trait/slow_meta)

/datum/trait/slow_meta
	name = "Slower Metabolism"
	desc = "Your metabolism rate is absurdly low, causing you to get hungry and process chemicals at half the normal rate."
	cost = 0
	var_changes = list("hunger_factor" = DEFAULT_HUNGER_FACTOR * 0.5, "metabolism_mod" = 0.5)
	excludes = list(/datum/trait/fast_meta)