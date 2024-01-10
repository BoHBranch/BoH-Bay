/datum/reagent/kompoton
	name = "Kompoton"
	description = "Used to completely regenerate internal organs and the nervous systems. Suffering guaranteed."
	taste_description = "bitterness"
	reagent_state = LIQUID
	color = "#d82e2e"
	overdose = 15
	scannable = 1
	flags = IGNORE_MOB_SIZE
	var/agony_amount = 1
	value = 6

/datum/reagent/kompoton/affect_blood(mob/living/carbon/M, alien, removed)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		for(var/obj/item/organ/internal/I in H.internal_organs)
			if(!BP_IS_ROBOTIC(I))
				if(I.organ_tag == BP_BRAIN)
					if(I.damage >= I.max_damage)
						continue
					H.mod_confused(1)
					H.drowsyness++
				I.heal_damage(removed*7)
				M.apply_effect(agony_amount, DAMAGE_PAIN, 0)
				if(prob(5))
					M.custom_emote(2, "[pick("dry heaves!","twists and spasms erratically!","wails in agony!")]")
					to_chat(M, "<span class='danger'>You feel like your insides are disintegrating!</span>")
				for(var/obj/item/organ/external/E in H.organs)
					if(E.status & ORGAN_ARTERY_CUT)
						E.status &= ~ORGAN_ARTERY_CUT

//Antag Agents
/datum/reagent/hypeross
	name = "Hypeross-7"
	description = "A complex, alien compound that stimulates rapid bone growth."
	taste_description = "spoiled milk"
	reagent_state = LIQUID
	color = "#990033"
	overdose = 5
	value = 50

/datum/reagent/hypeross/affect_blood(mob/living/carbon/M, alien, removed)
	if(M.species == SPECIES_DIONA)
		return
	if(ishuman(M) && M.chem_doses[type] >= 2)
		M.add_chemical_effect(CE_SLOWDOWN, 2)
		M.make_dizzy(10)
		M.heal_organ_damage(2 * removed, 0)
		M.add_chemical_effect(CE_PAINKILLER, 20)
		var/mob/living/carbon/human/H = M
		var/in_progress = 0
		var/fix_delay = 300
		for(var/obj/item/organ/external/E in H.organs)
			if((E.status & ORGAN_BROKEN || E.is_stump()) && in_progress == 0 && !(BP_IS_ROBOTIC(E)))
				in_progress = 1
				to_chat(H, "<span class='notice'>You feel the jarring sensation of invisible hands forcing your [E.name] back together.</span>")
				H.make_dizzy(10)
				sleep(fix_delay)
				if(E.status || E.is_stump())
					to_chat(H, "<span class='notice'><font size = [rand(1,3)]>POP!</font></span>")
					playsound(H.loc, "fracture", 30, 1, -2)
					if(E.is_stump() && (E.limb_flags & ORGAN_FLAG_CAN_AMPUTATE))
						E.droplimb(1,DROPLIMB_EDGE)
					else
						E.status &= ~ORGAN_BROKEN
				in_progress = 0

/datum/reagent/hypeross/overdose(mob/living/carbon/M, alien)
	..()
	M.take_organ_damage(volume/2, 0)
	M.add_chemical_effect(CE_SLOWDOWN, 2)
	M.drowsyness = max(M.drowsyness - 5, 0)
	M.AdjustParalysis(-2) //we're going to be awake for most of this
	M.make_jittery(3)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		for(var/obj/item/organ/external/E in H.organs)
			if(prob(1) && !(BP_IS_ROBOTIC(E)))
				if(prob(75))
					var/S = new /obj/item/material/shard(material_key = MATERIAL_BONE_GENERIC)
					E.embed(S)
					H.visible_message(
						"<span class='danger'>A shard of bone breaks out of [H]'s [E.name]!</span>",
						"<span class='danger'>You feel something tearing out of your [E.name]!</span>"
						)
				else
					var/BS = new /obj/item/material/shard/shrapnel(material_key = MATERIAL_BONE_GENERIC)
					E.embed(BS, silent = 1)
					to_chat(H, "<span class='warning'>You feel something break loose inside your [E.name].</span>")

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

/datum/reagent/crystaltram/affect_blood(mob/living/carbon/M, alien, removed)
	if(M.species != SPECIES_MANTID_GYNE || M.species != SPECIES_MANTID_ALATE)
		M.make_jittery(1)
		M.make_dizzy(3)
		M.seizure()
	else
		M.add_chemical_effect(CE_STABLE)
		M.add_chemical_effect(CE_PAINKILLER, 5)
		M.add_chemical_effect(CE_OXYGENATED, 2)
		M.add_chemical_effect(CE_BLOODRESTORE, 1)
		M.heal_organ_damage(25 * removed)
		M.make_dizzy(1)
		M.Weaken(2)
