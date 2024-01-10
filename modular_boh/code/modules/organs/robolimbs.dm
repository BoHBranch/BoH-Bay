/datum/robolimb
	//Cyberlimbs dmi includes a tail sprite to wear.
	//var/includes_wing			//Cyberlimbs dmi includes a wing sprite to wear.
	//var/list/whitelisted_to	//List of ckeys that are allowed to pick this in charsetup.

/datum/robolimb/c_tech
	company = "C-tech - Head"
	desc = "This head is covered in a wide, dark screen mostly referred to as a monitor."
	icon = 'modular_boh/icon/mob/human_races/cyberlimbs/c-tech/c_beast.dmi'
	unavailable_at_fab = 1
	applies_to_part = list(BP_HEAD)

/datum/robolimb/cybersolutions
	company = "Cyber Solutions"
	desc = "A bare chassis with dark tones."
	icon = 'modular_boh/icon/mob/human_races/cyberlimbs/cybersolutions/cybersolutions_main.dmi'
	unavailable_at_fab = 1

/datum/robolimb/cybersolutions/T1
	company = "Cyber Solutions T1"
	desc = "A sleeker varient with chest and head covers including green eyes"
	icon = 'modular_boh/icon/mob/human_races/cyberlimbs/cybersolutions/cybersolutions_alt1.dmi'
	skintone = null
	unavailable_at_fab = 1

/datum/robolimb/cybersolutions/T2
	company = "Cyber Solutions T2"
	desc = "A very medieval looking chassis with dark coloring. "
	icon = 'modular_boh/icon/mob/human_races/cyberlimbs/cybersolutions/cybersolutions_alt2.dmi'
	skintone = null
	unavailable_at_fab = 1

/datum/robolimb/cybersolutions/T3
	company = "Cyber Solutions T3"
	desc = "A varient of T2's head only but with antennae. "
	icon = 'modular_boh/icon/mob/human_races/cyberlimbs/cybersolutions/cybersolutions_alt3.dmi'
	skintone = null
	unavailable_at_fab = 1
	applies_to_part = list(BP_HEAD)