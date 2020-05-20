/*
		All neutral traits go here. They are automagically sorted based off their cost, but seperating em this way is easier to search through.
*/

/datum/trait/glowing_eyes
	name = "Ojos brillantes"
	desc = "Your eyes glow in the dark."	//MY VISION IS AUGMENTED
	cost = 0

	apply(var/datum/species/S,var/mob/living/carbon/human/H)
		..(S,H)
		for(var/obj/item/organ/external/head/O in H.organs)
			O.glowing_eyes = TRUE

/datum/trait/cold_blooded
	name = "Ectotermia"
	desc = "Tu cuerpo no regula bien el frio del calor, forzandote a que estes cerca del calor para sobrevivir."
	cost = 0
	var_changes = list("body_temperature" = 285, "cold_discomfort_level" = 292)
	excludes = list(/datum/trait/hot_blooded)

/datum/trait/hot_blooded
	name = "Sangre caliente"
	desc = "Su cuerpo es capaz de una endoregulación térmica mas vigorosa, lo que hace que su temperatura corporal promedio sea mas alta de lo normal."
	cost = 0
	var_changes = list("body_temperature" = 313, "heat_discomfort_level" = 320)
	excludes = list(/datum/trait/cold_blooded)

/datum/trait/nitrogen_breath
	name = "Espirometria nitrogenada"
	desc = "Tu proceso metabolico hace que en vez de exhalar dioxido de carbono exhales nitrogeno."
	cost = 0
	var_changes = list("exhale_type" = "nitrogen")

/datum/trait/fast_meta
	name = "Metabolismo rapido"
	desc = "Tu metabolismo es mas rapido de lo normal, haciendo que te de mas hambre y proceces los quimicos de tu cuerpo el doble de rapido."
	cost = 0
	var_changes = list("hunger_factor" = DEFAULT_HUNGER_FACTOR * 2.5, "metabolism_mod" = 2.5)
	excludes = list(/datum/trait/slow_meta)

/datum/trait/slow_meta
	name = "Metabolismo lento"
	desc = "Tu metabolismo es mas lentro de lo normal, haciendo que te de hambre mas lento y proceces los quimicos en tu cuerpo menos rapido."
	cost = 0
	var_changes = list("hunger_factor" = DEFAULT_HUNGER_FACTOR * 0.5, "metabolism_mod" = 0.5)
	excludes = list(/datum/trait/fast_meta)

/datum/trait/carnivore
	name = "Carnivoro"
	desc = "Por alguna razon u otra solo eres capaz de comer carne. Los vegetables no te mataran, pero no te daran nutrientes como la carne."
	cost = 0
	var_changes = list(reagent_tag = IS_CARNIVORE)

/datum/trait/herbivore
	name = "Herbivoro"
	desc = "Solo eres capaz de comer plantas. Comer carne o productos de animales te envenenara."
	cost = 0
	var_changes = list(reagent_tag = IS_HERBIVORE)