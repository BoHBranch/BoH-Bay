/*
		All negative traits go here. They are automagically sorted based off their cost, but seperating em this way is easier to search through.
*/

/datum/trait/speed_slow
	name = "Lentitud"
	desc = "Te mueves mas lento que una persona comun."
	cost = -2
	var_changes = list("slowdown" = 1.5)

/datum/trait/endurance_low
	name = "Fragil"
	desc = "Tu cuerpo es muy, mucho mas fragil que una persona comun."
	cost = -2
	var_changes = list("total_health" = 65)

	apply(var/datum/species/S,var/mob/living/carbon/human/H)
		..(S,H)
		H.setMaxHealth(S.total_health)


/datum/trait/minor_brute_weak
	name = "Piel delicada"
	desc = "Tu piel es mas delicada de lo normal, haciendote un poco mas suseptible al daño bruto."
	cost = -2
	var_changes = list("brute_mod" = 1.50)

/datum/trait/minor_burn_weak
	name = "Piel inflamable"
	desc = "Tu piel de alguna manera es inflamable, haciendote un poco mas suseptible al daño por quemaduras."
	cost = -2
	var_changes = list("burn_mod" = 1.50)

/datum/trait/conductive
	name = "Piel conductiva"
	desc = "Tu piel tiene una resistencia electrica mas baja de lo normal, haciendote mas conductivo."
	cost = -1
	var_changes = list("siemens_coefficient" = 1.5) //This makes you a lot weaker to tasers.


/datum/trait/photosensitive
	name = "Fotosensible"
	desc = "Tus ojos son especialmente sensitivos a luces fuertes."
	cost = -1
	var_changes = list("flash_mod" = 2.0)

/datum/trait/hollow
	name = "Huesos de vidrio"
	desc = "Tus extremidades son mas fragiles de lo normal, haciendo que sean mucho mas facil de que se rompan."
	cost = -2

/datum/trait/hollow/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	for(var/obj/item/organ/external/O in H.organs)
		O.min_broken_damage *= 0.5

/datum/trait/oxy_weak
	name = "Haemoglobin Improbus"
	desc = "Tienes una saturacion muy baja de oxigeno en tu torrente sanguineo, significa que la asfixia es un problama mas grande para ti."
	cost = -1
	var_changes = list("oxy_mod" = 1.50)

/datum/trait/toxin_weak
	name = "Higado de papel"
	desc = "Tu metabolismo no es muy bueno procesando toxinas, haciendo que las toxinas o posiones sean mas letales."
	cost = -1
	var_changes = list("toxins_mod" = 1.50)

/datum/trait/noodlyarms
	name = "Atrofia muscular"
	desc = "Tienes menos masa muscular de lo normal, dandote fuerza inferior."
	cost = -2
	var_changes = list("strength" = STR_LOW)

/////////////////////
// BoH Materials
/////////////////////

/datum/trait/toxification_junky
	name = "Weak Immune System"
	desc = "Tu sistema inmunologico es increiblemente debil, y hasta la gripe mas comun te puede matar. Notificale a los doctores que esten pendiente de no darte una sobredosis!"
	cost = -3
	var_changes = list("toxins_mod" = 5.0)

/datum/trait/hemophilia
	name = "Hemophilia"
	desc = "Tu cuerpo no deja de sangrar. Necesitas tratamiento inmediato para todo, hasta los daños menores o se podria tornar muy mal para ti."
	cost = -4
	var_changes = list("blood_volume" = 105) //The bare minimum before it becomes critical.

/datum/trait/stick_human
	name = "Increiblemente fragil"
	desc = "Tus huesos, piel y mente son muy fragiles. Trata de que no te golpeen, o vas a tener que visitar la enfermeria."
	cost = -4
	var_changes = list("brute_mod" =2.50)