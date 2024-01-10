//////////
// Project Vial
/////////
/obj/item/reagent_containers/glass/beaker/vial/projectsecret
	name = "unmarked vial"

/obj/item/reagent_containers/glass/beaker/vial/projectsecret/New()
	..()
	reagents.add_reagent(/datum/reagent/random, 30)
	update_icon()


/////////
// HF
/////////
/datum/reagent/toxin/hfp
	name = "Heptafluoropropane"
	description = "Liquid heptafluoropropane. You probably don't want to touch this!"
	taste_description = "freezing pain"
	color = "#d3ebea"
	strength = 25
	overdose = REAGENTS_OVERDOSE / 1
	metabolism = REM * 0.5
	var/adj_temp = -80
	var/targ_temp = 190
	target_organ = BP_HEART

/datum/reagent/toxin/hfp/affect_blood(mob/living/carbon/M, alien, removed)
	..()
	M.mod_confused(1.5)
	if(adj_temp > 0 && M.bodytemperature < targ_temp)
		M.bodytemperature = min(targ_temp, M.bodytemperature + (adj_temp * TEMPERATURE_DAMAGE_COEFFICIENT))
	if(adj_temp < 0 && M.bodytemperature > targ_temp)
		M.bodytemperature = min(targ_temp, M.bodytemperature - (adj_temp * TEMPERATURE_DAMAGE_COEFFICIENT))

/datum/reagent/toxin/hfp/overdose(mob/living/carbon/M, alien)
	..()
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(H.stat != UNCONSCIOUS)
			H.Weaken(2)
		M.add_chemical_effect(CE_PULSE, 15)

//tempcont
/obj/item/reagent_containers/glass/beaker/vial/hfp
	name = "cold vial"

/obj/item/reagent_containers/glass/beaker/vial/hfp/New()
	..()
	reagents.add_reagent(/datum/reagent/toxin/hfp, 30)
	update_icon()

/////////
// stable slime toxin
/////////
/datum/reagent/stableslimetoxin
	name = "Thick Sludge"
	description = "A thick viscous substance that probably wouldn't taste too great."
	taste_description = "sludge"
	reagent_state = LIQUID
	color = "#1d633c"
	metabolism = REM * 1
	value = 5

/datum/reagent/stableslimetoxin/affect_blood(mob/living/carbon/human/H, alien, removed)
	if(ishuman(H))
		to_chat(H, "<span class='danger'>Your flesh rapidly mutates!</span>")
		H.set_species(SPECIES_PROMETHEAN)
		H.shapeshifter_set_colour("#05ff9b")
		H.verbs -= /mob/living/carbon/human/proc/shapeshifter_select_colour
	H.update_body()

/obj/item/reagent_containers/glass/beaker/vial/sludge
	name = "sticky vial"

/obj/item/reagent_containers/glass/beaker/vial/sludge/New()
	..()
	reagents.add_reagent(/datum/reagent/stableslimetoxin, 1)
	update_icon()

/////////
// Zombie Vial (MISSING FOR NOW)
/////////
/*
/obj/item/reagent_containers/glass/beaker/vial/zombie
	name = "odd vial"

/obj/item/reagent_containers/glass/beaker/vial/zombie/New()
	..()
	reagents.add_reagent(/datum/reagent/toxin/zombie, 30)
	update_icon()
*/
/////////
// Enfluroprobine
/////////

/datum/reagent/enfluroprobine
	name = "Enfluroprobine"
	description = "A light substance that probably wouldn't taste too great."
	taste_description = "rage"
	reagent_state = LIQUID
	color = "#a62c2b"
	metabolism = REM * 1
	value = 2

//vial
/obj/item/reagent_containers/glass/beaker/vial/enfluroprobine
	name = "odd vial"

/obj/item/reagent_containers/glass/beaker/vial/enfluroprobine/New()
	..()
	reagents.add_reagent(/datum/reagent/enfluroprobine, 30)
	update_icon()

/////////
// VB Vial
/////////
/obj/item/reagent_containers/glass/beaker/vial/vecuronium_bromide
	name = "odd vial"

/obj/item/reagent_containers/glass/beaker/vial/vecuronium_bromide/New()
	..()
	reagents.add_reagent(/datum/reagent/vecuronium_bromide, 30)
	update_icon()

/////////
// Coffee OLD
/////////
/datum/reagent/drink/coffee/old
	name = "old coffee"
	description = "This smells funny."
	taste_description = "something awful"
	color = "#6e4525"
	adj_temp = 85
	overdose = 15

	glass_name = "coffee"
	glass_desc = "This smells funny, and seems incredibly hot."

/////////
// SF4
/////////
/datum/reagent/acid/sf4
	name = "Sulfur Tetrafluoride"
	description = "A highly corrosive gas."
	taste_description = "rotten eggs"
	color = "#debd45"
	touch_met = 100
	power = 85
	meltdose = 5 // How much is needed to melt
	max_damage = 65

//hf
/datum/reagent/acid/hf
	name = "Hydrofluoric acid"
	description = "A highly corrosive acid."
	taste_description = "acid"
	reagent_state = LIQUID
	color = "#619494"

//psyker
/datum/reagent/jerraman
	name = "Jerraman"
	taste_description = "liquid starlight"
	description = "A rare and expensive drug used legally by professionals to awaken psionic latencies in those who possess them, dangerous in higher doses."
	reagent_state = LIQUID
	color = "#d0ff00"
	metabolism = 1
	overdose = 5

	var/global/list/dose_messages = list(
		"Your name is called. It is your time.",
		"It all runs together. It all mixes.",
		"You won't forget. Don't forget. Don't forget.",
		"Everything is ending. Everything is beginning."
	)

	var/global/list/overdose_messages = list(
		"THE SIGNAL THE SIGNAL THE SIGNAL THE SIGNAL",
		"IT CRIES IT CRIES IT WAITS IT CRIES",
		"NOT YOURS NOT YOURS NOT YOURS NOT YOURS",
		"IT RUNS IT RUNS IT RUNS IT RUNS",
		"THE BLOOD THE BLOOD THE BLOOD THE BLOOD",
		"GET IT OUT GET IT OUT GET IT OUT",
		"THE LIGHT THE DARK A STAR IN CHAINS"
	)

/datum/reagent/jerraman/affect_blood(mob/living/carbon/M, alien, removed)
	M.add_chemical_effect(CE_THIRDEYE, 1)
	M.add_chemical_effect(CE_MIND, -2)
	M.make_dizzy(5)
	if(prob(30))
		to_chat(M, SPAN_WARNING("<font size = [rand(1,2)]>[pick(dose_messages)]</font>"))
	if(M.psi)
		M.psi.check_latency_trigger(100, "a Jerraman dose", redactive = TRUE)

/datum/reagent/jerraman/overdose(mob/living/carbon/M, alien)
	..()
	to_chat(M, SPAN_DANGER("You feel like the voices are tearing you apart, you lose control over your body and mind, going into a berserk."))
	M.hallucination(50, 50)
	M.make_jittery(5)
	M.adjustBrainLoss(rand(5, 10))
	if(ishuman(M) && prob(20))
		var/mob/living/carbon/human/H = M
		H.seizure()
	if(prob(10))
		to_chat(M, SPAN_DANGER("<font size = [rand(3,4)]>[pick(overdose_messages)]</font>"))
