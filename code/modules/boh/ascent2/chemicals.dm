/////////
// Cryo Chem
/////////

/datum/reagent/cryobromide
	name = "Hydrocarthime-Bromine"
	description = "A golden, near magical looking fluid designed to manipulate inhuman organs. Trying this on a Human probably isn't a good idea."
	taste_description = "paint chips"
	reagent_state = LIQUID
	color = "#e6d819"
	metabolism = REM * 0.5
	scannable = 1
	flags = IGNORE_MOB_SIZE
	heating_products = list(/datum/reagent/potassium, /datum/reagent/water)
	heating_point = 50 CELSIUS
	heating_message = "violently explodes!"
	value = 12

/datum/reagent/cryobromide/affect_blood(var/mob/living/carbon/M, var/alien, var/removed)
	if(alien == IS_MANTID)
		M.add_chemical_effect(CE_CRYO, 1)
		if(M.bodytemperature < 170)
			M.adjustCloneLoss(-100 * removed)
			M.add_chemical_effect(CE_OXYGENATED, 2)
			M.heal_organ_damage(85 * removed, 85 * removed)
			M.add_chemical_effect(CE_PULSE, -2)
	else
		M.make_jittery(3)
		M.make_dizzy(3)
		M.seizure()

//beaker
/obj/item/weapon/reagent_containers/glass/beaker/cryobromide
	New()
		..()
		reagents.add_reagent(/datum/reagent/cryobromide, 60)
		update_icon()

/////////
// General Healing
/////////
/datum/reagent/crystaltram
	name = "Crystal Brothime"
	description = "A golden, near magical looking bit of crystal designed to manipulate inhuman organs. Trying this on a Human probably isn't a good idea."
	taste_description = "paint chips"
	reagent_state = LIQUID
	color = "#e6d819"
	metabolism = REM * 0.5
	flags = IGNORE_MOB_SIZE
	heating_products = list(/datum/reagent/potassium, /datum/reagent/water)
	heating_point = 80 CELSIUS
	heating_message = "violently explodes!"
	value = 6

/datum/reagent/cryobromide/affect_blood(var/mob/living/carbon/M, var/alien, var/removed)
	if(alien == IS_MANTID)
		M.add_chemical_effect(CE_STABLE)
		M.add_chemical_effect(CE_PAINKILLER, 5)
		M.add_chemical_effect(CE_OXYGENATED, 2)
		M.add_chemical_effect(CE_BLOODRESTORE, 1)
		M.heal_organ_damage(5 * removed, 5 * removed)
	else
		M.make_jittery(1)
		M.make_dizzy(1)
		M.seizure()

//hypo
/obj/item/weapon/reagent_containers/hypospray/autoinjector/ascent
	name = "autoinjector (Crystal Brothime)"
	band_color = COLOR_GOLD
	starts_with = list(/datum/reagent/crystaltram = 5)