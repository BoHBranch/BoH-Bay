/////////
// Cryo Chem
/////////

/datum/reagent/cryobromide
	name = "Hydrocarthime-Bromine"
	description = "A golden, near magical looking fluid designed to manipulate inhuman organs."
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
	M.add_chemical_effect(CE_CRYO, 1)
	if(M.bodytemperature < 170)
		M.adjustCloneLoss(-100 * removed)
		M.add_chemical_effect(CE_OXYGENATED, 2)
		M.heal_organ_damage(85 * removed, 85 * removed)
		M.add_chemical_effect(CE_PULSE, -2)

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
	description = "A golden, near magical looking bit of crystal designed to manipulate inhuman organs."
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
	if(alien != IS_DIONA)
		M.heal_organ_damage(24 * removed, 24 * removed)
		M.add_chemical_effect(CE_PAINKILLER, 45)

//hypo
/obj/item/weapon/reagent_containers/hypospray/autoinjector/ascent
	name = "autoinjector (Crystal Brothime)"
	band_color = COLOR_GOLD
	starts_with = list(/datum/reagent/crystaltram = 5)

//pouch
/obj/item/weapon/storage/med_pouch/ascent
	name = "chemical pouch"
	injury_type = "ascent"
	color = COLOR_PURPLE

	startswith = list(
	/obj/item/weapon/reagent_containers/hypospray/autoinjector/ascent,
	/obj/item/weapon/reagent_containers/hypospray/autoinjector/ascent,
	/obj/item/weapon/reagent_containers/hypospray/autoinjector/ascent,
	/obj/item/weapon/reagent_containers/hypospray/autoinjector/ascent,
	/obj/item/weapon/reagent_containers/hypospray/autoinjector/ascent,
	/obj/item/stack/medical/resin/large
		)
	instructions = {"
	1) Tear open the emergency medical pack using the easy open tab at the top.\n\
	\t2) Carefully try not to die.\n\
	\t3) Don't overdose yourself, use one injector at a time.\n\
		"}