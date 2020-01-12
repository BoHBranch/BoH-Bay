//////////
// Project Vial
/////////
/obj/item/weapon/reagent_containers/glass/beaker/vial/projectsecret
	name = "unmarked vial"
	New()
		..()
		reagents.add_reagent(/datum/reagent/random, 30)
		update_icon()

/////////
// HF
/////////
/datum/reagent/toxin/hfc
	name = "Heptafluoropropane"
	description = "Liquid HFC. You probably don't want to touch this!"
	taste_description = "freezing pain!"
	color = "#d3ebea"
	strength = 25
	overdose = REAGENTS_OVERDOSE / 1
	metabolism = REM * 0.5
	var/adj_temp = -80
	var/targ_temp = 190
	target_organ = BP_HEART

/datum/reagent/toxin/hfc/affect_blood(var/mob/living/carbon/M, var/alien, var/removed)
	..()
	M.confused += 1.5
	if(adj_temp > 0 && M.bodytemperature < targ_temp)
		M.bodytemperature = min(targ_temp, M.bodytemperature + (adj_temp * TEMPERATURE_DAMAGE_COEFFICIENT))
	if(adj_temp < 0 && M.bodytemperature > targ_temp)
		M.bodytemperature = min(targ_temp, M.bodytemperature - (adj_temp * TEMPERATURE_DAMAGE_COEFFICIENT))

/datum/reagent/toxin/hfc/overdose(var/mob/living/carbon/M, var/alien)
	..()
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(H.stat != UNCONSCIOUS)
			H.Weaken(2)
		M.add_chemical_effect(CE_PULSE, 15)

//tempcont
/obj/item/weapon/reagent_containers/glass/beaker/vial/hfc
	name = "cold vial"
	New()
		..()
		reagents.add_reagent(/datum/reagent/toxin/hfc, 30)
		update_icon()