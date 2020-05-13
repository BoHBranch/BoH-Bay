/*
		All positive traits go here. They are automagically sorted based off their cost, but seperating em this way is easier to search through.
*/

/datum/trait/speed_fast
	name = "Agil"
	desc = "Te mueves mas rapido que los demas."
	cost = 4
	var_changes = list("slowdown" = -0.5)

/datum/trait/darksight
	name = "Tapeta Lucida"
	desc = "Tus ojos tienen una pequeña capa retroreflectante dentro de su estructura, haciendo que puedas ver en la oscuridad un poco mejor."
	cost = 1
	var_changes = list("darksight_range" = 3, "darksight_tint" = DARKTINT_MODERATE)

/datum/trait/darksight/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	var/obj/item/organ/internal/eyes/I = H.internal_organs_by_name[S.vision_organ]
	if(istype(I))
		I.darksight_range = 3
		I.darksight_tint = DARKTINT_MODERATE

/datum/trait/darksight_plus
	name = "Tapeta Lucida Majoris"
	desc = "Tus ojos tienen una capa retroreflectante dentro de su estructura, haciendo que puedas ver en la oscuridad mejor."
	cost = 2
	var_changes = list("darksight_range" = 6, "darksight_tint" = DARKTINT_GOOD)

/datum/trait/darksight_plus/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	var/obj/item/organ/internal/eyes/I = H.internal_organs_by_name[S.vision_organ]
	if(istype(I))
		I.darksight_range = 6
		I.darksight_tint = DARKTINT_GOOD

/datum/trait/nonconductive
	name = "Piel resistiva"
	desc = "Su piel tiene una resistividad electrica mas alta de lo normal, lo que lo hace menos conductor."
	cost = 2 //This effects tasers!
	var_changes = list("siemens_coefficient" = 0.75)

/datum/trait/melee_attack
	name = "Garras"
	desc = "Tienes garras. Las usas en combate mano a mano."
	cost = 2
	var_changes = list("unarmed_types" = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/claws, /datum/unarmed_attack/bite/sharp))

	apply(var/datum/species/S,var/mob/living/carbon/human/H)
		..(S,H)
		for(var/u_type in S.unarmed_types)
			S.unarmed_attacks += new u_type()

/datum/trait/minor_brute_resist
	name = "Piel gruesa"
	desc = "Tu piel es mas gruesa de lo normal, haciendo que seas menos susceptible al daño fisico."
	cost = 2
	var_changes = list("brute_mod" = 0.85)

/datum/trait/minor_burn_resist
	name = "Piel insulada"
	desc = "Tu piel de alguna manera es insulada, haciendo que seas mas resistente al calor."
	cost = 2
	var_changes = list("burn_mod" = 0.85)

/datum/trait/photoresistant
	name = "Phototransductive Praesidium"
	desc = "Tus ojos son mas resistentes a las luces fuertes."
	cost = 1
	var_changes = list("flash_mod" = 0.85)

/datum/trait/oxy_resist
	name = "Haemoglobin Melior"
	desc = "Puedes aguantar mas la asfixia por la saturacion de oxigeno en tu torrente sanguineo."
	cost = 1
	var_changes = list("oxy_mod" = 0.75)

/datum/trait/toxin_resist
	name = "Higado de hierro"
	desc = "Tu metabolismo procesa las toxinas mas eficientemente, haciendo que seas mas resistente a las posiones o toxinas."
	cost = 1
	var_changes = list("toxins_mod" = 0.85)

/datum/trait/mussel
	name = "Hipertrofia muscular"
	desc = "Tienes mas masa muscular de lo normal, dejandote tener mas fuerza."
	cost = 4
	var_changes = list("strength" = STR_HIGH)

/////////////////////
// BoH Materials
/////////////////////

/datum/trait/commune
	name = "Telepatia"
	desc = "Tienes la habilidad de proyectar tus pensamientos en la mente de los demas."
	cost = 2
/datum/trait/commune/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	H.verbs |= /mob/living/carbon/human/proc/psychic_whisper

/datum/trait/venom
	name = "Venenoso"
	desc = "Tienes varios metodos para injectar veneno en combate mano a mano."
	cost = 4
	var_changes = list("unarmed_types" = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch/venom, /datum/unarmed_attack/bite/venom))

	apply(var/datum/species/S,var/mob/living/carbon/human/H)
		..(S,H)
		for(var/u_type in S.unarmed_types)
			S.unarmed_attacks += new u_type()