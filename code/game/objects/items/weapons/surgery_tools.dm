/* Surgery Tools
 * Contains:
 *		Retractor
 *		Hemostat
 *		Cautery
 *		Surgical Drill
 *		Scalpel
 *		Circular Saw
 */

/*
 * Retractor
 */
/obj/item/weapon/retractor
	name = "retractor"
	desc = "Retracts stuff."
	icon = 'icons/obj/surgery.dmi'
	icon_state = "retractor"
	matter = list(MATERIAL_STEEL = 300, MATERIAL_GLASS = 100)
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	w_class = ITEM_SIZE_SMALL
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)

/*
 * Hemostat
 */
/obj/item/weapon/hemostat
	name = "hemostat"
	desc = "You think you have seen this before."
	icon = 'icons/obj/surgery.dmi'
	icon_state = "hemostat"
	matter = list(MATERIAL_STEEL = 250, MATERIAL_GLASS = 150)
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	w_class = ITEM_SIZE_SMALL
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)
	attack_verb = list("attacked", "pinched")

/*
 * Cautery
 */
/obj/item/weapon/cautery
	name = "cautery"
	desc = "This stops bleeding."
	icon = 'icons/obj/surgery.dmi'
	icon_state = "cautery"
	matter = list(MATERIAL_STEEL = 300, MATERIAL_GLASS = 250, MATERIAL_ALUMINIUM = 100)
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	w_class = ITEM_SIZE_SMALL
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)
	attack_verb = list("burnt")

/*
 * Surgical Drill
 */
/obj/item/weapon/surgicaldrill
	name = "surgical drill"
	desc = "You can drill using this item. You dig?"
	icon = 'icons/obj/surgery.dmi'
	icon_state = "drill"
	hitsound = 'sound/weapons/circsawhit.ogg'
	matter = list(MATERIAL_STEEL = 2000, MATERIAL_PLASTIC = 1500, MATERIAL_ALUMINIUM = 800)
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	force = 15.0
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)
	attack_verb = list("drilled")

/*
 * Scalpel
 */
/obj/item/weapon/scalpel
	name = "scalpel"
	desc = "Cut, cut, and once more cut."
	icon = 'icons/obj/surgery.dmi'
	icon_state = "scalpel"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	force = 10.0
	sharp = 1
	edge = 1
	w_class = ITEM_SIZE_TINY
	slot_flags = SLOT_EARS
	throwforce = 5.0
	throw_speed = 3
	throw_range = 5
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)
	matter = list(MATERIAL_STEEL = 200, MATERIAL_ALUMINIUM = 100)
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")

/*
 * Researchable Scalpels
 */
/obj/item/weapon/scalpel/laser1
	name = "laser scalpel"
	desc = "A scalpel augmented with a directed laser, for more precise cutting without blood entering the field.  This one looks basic and could be improved."
	icon_state = "scalpel_laser1_on"
	damtype = "fire"

/obj/item/weapon/scalpel/laser2
	name = "laser scalpel"
	desc = "A scalpel augmented with a directed laser, for more precise cutting without blood entering the field.  This one looks somewhat advanced."
	icon_state = "scalpel_laser2_on"
	damtype = "fire"
	force = 12.0

/obj/item/weapon/scalpel/laser3
	name = "laser scalpel"
	desc = "A scalpel augmented with a directed laser, for more precise cutting without blood entering the field.  This one looks to be the pinnacle of precision energy cutlery!"
	icon_state = "scalpel_laser3_on"
	damtype = "fire"
	force = 15.0

/obj/item/weapon/scalpel/manager
	name = "incision management system"
	desc = "A true extension of the surgeon's body, this marvel instantly and completely prepares an incision allowing for the immediate commencement of therapeutic steps."
	icon_state = "scalpel_manager_on"
	force = 7.5

/*
 * Circular Saw
 */
/obj/item/weapon/circular_saw
	name = "circular saw"
	desc = "For heavy duty cutting."
	icon = 'icons/obj/surgery.dmi'
	icon_state = "saw3"
	hitsound = 'sound/weapons/circsawhit.ogg'
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	force = 15.0
	w_class = ITEM_SIZE_NORMAL
	throwforce = 9.0
	throw_speed = 3
	throw_range = 5
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)
	matter = list(MATERIAL_STEEL = 3000, MATERIAL_ALUMINIUM = 1000, MATERIAL_PLASTIC = 500)
	attack_verb = list("attacked", "slashed", "sawed", "cut")
	sharp = 1
	edge = 1

//misc, formerly from code/defines/weapons.dm
/obj/item/weapon/bonegel
	name = "bone gel"
	icon = 'icons/obj/surgery.dmi'
	icon_state = "bone-gel"
	force = 0
	w_class = ITEM_SIZE_SMALL
	throwforce = 1.0

/obj/item/weapon/FixOVein
	name = "FixOVein"
	icon = 'icons/obj/surgery.dmi'
	icon_state = "fixovein"
	force = 0
	throwforce = 1.0
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 3)
	w_class = ITEM_SIZE_SMALL
	var/usage_amount = 10

/obj/item/weapon/bonesetter
	name = "bone setter"
	icon = 'icons/obj/surgery.dmi'
	icon_state = "bone setter"
	force = 8.0
	throwforce = 9.0
	throw_speed = 3
	throw_range = 5
	w_class = ITEM_SIZE_SMALL
	attack_verb = list("attacked", "hit", "bludgeoned")

// Sutures, ported from credit to Matt I guess.

/obj/item/weapon/suture
	name = "needle and sutures"
	icon = 'icons/obj/surgery.dmi'
	icon_state = "suture"
	gender = PLURAL
	slot_flags = SLOT_EARS
	force = 0
	throwforce = 1
	w_class = 2
	var/doing_something = FALSE //Prevents spam suturing.

/obj/item/weapon/suture/attack(mob/living/carbon/human/H as mob, mob/living/userr, var/target_zone)//All of this is snowflake because surgery is broken.
	//Checks if they're human, have a limb, and have the skill to fix it.
	if(!ishuman(H))
		return ..()
	if(!ishuman(userr))
		return ..()

	var/mob/living/carbon/human/user = userr
	var/obj/item/organ/external/affected = H.get_organ(target_zone)

	if(!affected)
		return ..()


	if(!(affected.status & ORGAN_ARTERY_CUT) && !affected.wounds.len)//There is nothing to fix don't fix anything.
		return

	//Ok all the checks are over let's do the quick fix.
	if(doing_something == FALSE)
		doing_something = TRUE
		if(affected.status & ORGAN_ARTERY_CUT)//Fix arteries first,
			user.visible_message(SPAN_NOTICE("[user] begins to suture [H]'s arteries."))
			playsound(src, 'sound/weapons/suture.ogg', 50, FALSE)
			if(user.do_skilled(5 SECONDS, SKILL_MEDICAL, H))
				if((H == user && prob(75)) || prob(user.skill_fail_chance(SKILL_MEDICAL,50, SKILL_ADEPT)))
					user.visible_message(SPAN_DANGER("\The [user] fumbles [src]."), SPAN_DANGER("You fumble [src]."), SPAN_DANGER("You hear something being knit."))
					doing_something = FALSE
					return
				user.visible_message("<span class='notice'>[user] has patched the [affected.artery_name] in [H]'s [affected.name] with \the [src.name].</span>", \
				"<span class='notice'>You have patched the [affected.artery_name] in [H]'s [affected.name] with \the [src.name].</span>")
				affected.status &= ~ORGAN_ARTERY_CUT

		else//Then fix wounds if they do it again.
			for(var/datum/wound/W in affected.wounds)
				if(W.damage) // Are they even damaged?
					user.visible_message(SPAN_NOTICE("[user] begins to suture up [H]'s wounds."))
					playsound(src, 'sound/weapons/suture.ogg', 65, FALSE)
					H.custom_pain("The pain in your [affected.name] is unbearable!",rand(50, 65),affecting = affected)
					if(user.do_skilled(5 SECONDS, SKILL_MEDICAL, H))
						if((H == user && prob(75)) || prob(user.skill_fail_chance(SKILL_MEDICAL,50, SKILL_ADEPT)))
							user.visible_message(SPAN_DANGER("\The [user] fumbles [src]."), SPAN_DANGER("You fumble [src]."), SPAN_DANGER("You hear something being knit."))
							doing_something = FALSE
							return
						// Close it up to a point that it can be bandaged and heal naturally!
						W.heal_damage(rand(5,20)+10)
						if(W.damage >= W.autoheal_cutoff)
							user.visible_message("<span class='notice'>\The [user] partially closes a wound on [H]'s [affected.name] with \the [src.name].</span>", \
							"<span class='notice'>You partially close a wound on [H]'s [affected.name] with \the [src.name].</span>")
						else
							user.visible_message("<span class='notice'>\The [user] closes a wound on [H]'s [affected.name] with \the [src.name].</span>", \
							"<span class='notice'>You close a wound on [H]'s [affected.name] with \the [src.name].</span>")
							if(!W.damage)
								affected.wounds -= W
								qdel(W)
							else if(W.damage <= 10)
								W.clamped = 1
				else // There's not enough damage or any at all to suture. No wounds to patch up here.
					to_chat(user, "Nothing to fix here with this.")
				break

		affected.update_damages()
		doing_something = FALSE
	else
		to_chat(user, "You're already trying to suture them.")
