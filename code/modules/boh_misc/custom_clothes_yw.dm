/obj/item/clothing/suit/storage/labcoat/fluff/gen_uni
	name = "Generic uniform"
	desc = "This looks like a generic uniform of most corporations."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "eioni_labcoat"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "eioni_labcoat_mob"

	var/unbuttoned = 0

	verb/toggle()
		set name = "Toggle coat buttons"
		set category = "Object"
		set src in usr

		if(usr.incapacitated() || usr.stat || usr.restrained())
			return 0

		switch(unbuttoned)
			if(0)
				icon_state = "[initial(icon_state)]_open"
				item_state = "[initial(item_state)]_open"
				unbuttoned = 1
				usr << "You unbutton the coat."
			if(1)
				icon_state = "[initial(icon_state)]"
				item_state = "[initial(item_state)]"
				unbuttoned = 0
				usr << "You button up the coat."
		usr.update_inv_wear_suit()


/obj/item/clothing/under/fluff/striped_coat
	name = "Fancy labcoat"
	desc = "A fancy looking labcoat, but nothing out of the ordinary"
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "eioni_uniform"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "eioni_uniform_mob"

/obj/item/clothing/suit/storage/hoodie/fluff/redax_1
	name = "Red gradient hoodie"
	desc = "A black hoodie with a red gradient pattern."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "rgradient_hoodie"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "rgradient_hoodie_mob"
	/////////////////////////////TODO//////////////////////
	var/unbuttoned = 0

	verb/toggle()
		set name = "Toggle coat buttons"
		set category = "Object"
		set src in usr

		if(usr.incapacitated() || usr.stat || usr.restrained())
			return 0

		switch(unbuttoned)
			if(0)
				icon_state = "[initial(icon_state)]_open"
				item_state = "[initial(item_state)]_open"
				unbuttoned = 1
				usr << "You unbutton the coat."
			if(1)
				icon_state = "[initial(icon_state)]"
				item_state = "[initial(item_state)]"
				unbuttoned = 0
				usr << "You button up the coat."
		usr.update_inv_wear_suit()

/obj/item/clothing/under/fluff/redax_2
	name = "Alarming outfit"
	desc = "No need to panic."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "alarming_outfit"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "alarming_outfit_mob"

/obj/item/clothing/under/fluff/formal_suit_liz
	name = "Formal Suit"
	desc = "Formal Attire."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "eviriik_suit"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "eviriik_suit_mob"

/obj/item/clothing/suit/storage/fluff/d_coat
	name = "Dark coat"
	desc = "A long and dark coat. Has a small, red button on the front."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "eviriik_coat"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "eviriik_coat_mob"
	body_parts_covered = UPPER_TORSO

/obj/item/clothing/suit/storage/fluff/dark_trench
	name = "Dark Trenchcoat"
	desc = "A dark trenchcoat lined with warm fleece."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "eravikcoat"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "eravikcoat_mob"
	body_parts_covered = UPPER_TORSO

/obj/item/clothing/under/fluff/formalsuit_liz
	name = "Formal suit"
	desc = "A formal dress shirt and waistcoat."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "eraviksuit"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "eraviksuit_mob"

/obj/item/clothing/under/fluff/striped_uni
	name = "Striped Uniform"
	desc = "A snazzy black and grey uniform with red stripes running along it's side."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "davidsuit"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "davidsuit_mob"

/obj/item/clothing/accessory/fluff/torn_scarf
	name = "Torn scarf"
	desc = "Such a sad display of fabric abuse. Has a single black stripe."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "zekescarf"
	item_state = "zekescarf_mob"
	overlay_state = "zekescarf_mob"
	slot_flags = SLOT_TIE | SLOT_OCLOTHING
	w_class = 2

/obj/item/clothing/under/fluff/r_suit
	name = "Rough suit"
	desc = "It's a little worse for wear, but it's alright."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "zekesuit"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "zekesuit_mob"

/obj/item/clothing/suit/storage/labcoat/fluff/Black_liz_jack
	name = "Black jacket"
	desc = "A black bomber jacket. Looks a little shady."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "zekebomber"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "zekebomber_mob"
	body_parts_covered = UPPER_TORSO

	var/unbuttoned = 0

	verb/toggle()
		set name = "Toggle coat buttons"
		set category = "Object"
		set src in usr

		if(usr.incapacitated() || usr.stat || usr.restrained())
			return 0

		switch(unbuttoned)
			if(0)
				icon_state = "[initial(icon_state)]_open"
				item_state = "[initial(item_state)]_open"
				unbuttoned = 1
				usr << "You unbutton the coat."
			if(1)
				icon_state = "[initial(icon_state)]"
				item_state = "[initial(item_state)]"
				unbuttoned = 0
				usr << "You button up the coat."
		usr.update_inv_wear_suit()

/obj/item/clothing/suit/storage/hoodie/fluff/pin_stripe
	name = "Striped Jacket"
	desc = "A somewhat dated looking jacket."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "striped_jacket"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "striped_jacket_mob"

/obj/item/clothing/under/fluff/worn_skirth
	name = "Hard worn skirt"
	desc = "It appears to have a regular suit, though instead of pants, it has a skirt."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "elianasuit"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "elianasuit_mob"

/*
/obj/item/clothing/accessory/fluff/zeta_blackwell_1
	name = "Shub-niggurath pendant"
	desc = "It is a black pendant with what looks like a wolf head with tentacles coming out from the sides."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "pendant_shubniggurath"
	item_state = "pendant_shubniggurath_mob"
	overlay_state = "pendant_shubniggurath_mob"
	slot_flags = SLOT_TIE | SLOT_OCLOTHING
	w_class = 2
*/

/obj/item/clothing/under/swimsuit/fluff/workout_undi
	name = "Female Workout Suit"
	desc = "A sports bra and pair of compression shorts made of a durable, stretchy material. Comfy and able to keep you warm."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "thermal_underwear"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "thermal_underwear"
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/head/fluff/red_bandana_b
	name = "Black and red Headband"
	desc = "A simple black headband with two red stripes that connect  in the middle."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "blackandredband"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "blackandredband_mob"

/obj/item/clothing/under/rank/security/corp/fluff/mech_bodysuit
	name = "Mech Pilot Bodysuit"
	desc = "A black jacket made of genuine leather with blue markings on each shoulder."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "pilotsuit"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "pilotsuit"
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0)

/obj/item/clothing/gloves/sterile/latex/fluff/mech_gloves
	name = "Mech Pilot Gloves"
	desc = "A pair of durable, thin combat gloves, perfect for someone working with exosuits."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "pilotgloves"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "pilotgloves_mob"

/obj/item/clothing/shoes/boots/jackboots/fluff/mech_boots
	name = "Reinforced Boots"
	desc = "A pair of tightly fitting boots, perfect for someone working with exosuits, seeing as they won't slip off fast."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "pilotboots"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "pilotboots_mob"

/obj/item/weapon/storage/belt/utility/fluff/mech_belt
	name = "Mech Pilot Belt"
	desc = "A white-blue toolbelt with many slots to hold tools in, seems to be made to literally be attached onto a suit."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "mechpilot"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "mechpilot_mob"

/obj/item/clothing/suit/storage/fluff/fedcoat/mech_jacket
	name = "Mech Pilot Jacket"
	desc = "A black jacket made of genuine leather with blue markings on each shoulder."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "mechjacket"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "mechjacket_mob"
	cold_protection = UPPER_TORSO|LOWER_TORSO|ARMS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/under/rank/security/corp/fluff/navy_pcrc
	name = "PCRC navy uniform"
	desc = "A pair of navy digital camo pants and a navy blue shirt. There also is a belt to keep the pants in place and kneepads for protection."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "lcpl"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "lcpl"
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0)

/obj/item/clothing/suit/storage/vest/officer/fluff/light_vest //added to the armory - carl
	name = "Light armor vest"
	desc = "An outdated looking armor vest with pouches on the front. Not as flexible as security gear of today, but still as protective as it and surprisingly also lighter."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "lcplvest_nobadge"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	icon_badge = "lcplvest_badge"
	icon_nobadge = "lcplvest_nobadge"

/obj/item/clothing/under/rank/security/corp/fluff/sec_dark
	name = "Security uniform"
	desc = "A black Dark red security uniform"
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "allyuniform"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "allyuniform"

/obj/item/weapon/storage/belt/utility/fluff/mech_engi_belt
	name = "Mech Engineer Belt"
	desc = "A black-golden toolbelt with many slots to hold tools in. Also comes with a blue buckle."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "mechengineer"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "mechengineer_mob"

/obj/item/clothing/suit/storage/hooded/wintercoat/fluff/mech_engi_coat
	name = "Mech Engineer Coat"
	desc = "A black winter coat made of genuine leather, decorated with blue markings and an interior made of genuine, white fur."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "coatmech"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "coatmech_mob"

/obj/item/clothing/under/rank/security/corp/fluff/pcrc_dress
	name = "PCRC dress uniform"
	desc = "A black skirt along with a navy blue sweater."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "sgt"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "sgt"
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0)

/obj/item/clothing/suit/storage/toggle/labcoat/fluff/pcrc_labcoat
	name = "PCRC labcoat"
	desc = "A white labcoat with the logo of the Proxima Centauri Risk Control logo on the back. The sleeves are rolled back too."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "labcoat_sgt"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "labcoat_sgt"

/obj/item/clothing/suit/storage/seromi/cloak/fluff/tesh_cd
 	name = "Colony Director Coat"
 	desc = "It drapes over a Teshari's shoulders and closes at the neck with pockets convienently placed inside. It bears the Colony Director's colors."
 	icon = 'icons/vore/custom_clothes_yw.dmi'
 	icon_state = "tesh_cloak_cd"
 	icon_override = 'icons/vore/custom_clothes_yw.dmi'
 	override = 1
 	item_state = "tesh_cloak_cd"

/obj/item/clothing/under/seromi/undercoat/fluff/tesh_cd
	name = "Colony Director Undercoat"
	desc = "Made of carbon nanofiber, it is light and billowy."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_override = 'icons/vore/custom_onmob_yw.dmi'
	icon_state = "tesh_uniform_cd"
	override = 1
	item_state = "tesh_uniform_cd"
	sprite_sheets = list(
					"Teshari" = 'icons/vore/custom_onmob_yw.dmi'
					)

/obj/item/clothing/suit/storage/seromi/cloak/fluff/tesh_cco
 	name = "Central Command Cloak"
 	desc = "It drapes over a Teshari's shoulders and closes at the neck with pockets convienently placed inside. It bears the Central Command's colors."
 	icon = 'icons/vore/custom_clothes_yw.dmi'
 	icon_state = "tesh_cloak_cco"
 	icon_override = 'icons/vore/custom_clothes_yw.dmi'
 	override = 1
 	item_state = "tesh_cloak_cco"

/obj/item/clothing/under/seromi/undercoat/fluff/tesh_cco
	name = "Central Command Undercoat"
	desc = "Made of carbon nanofiber, it is light and billowy."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_override = 'icons/vore/custom_onmob_yw.dmi'
	icon_state = "tesh_uniform_cco"
	override = 1
	item_state = "tesh_uniform_cco"
	sprite_sheets = list(
					"Teshari" = 'icons/vore/custom_onmob_yw.dmi'
					)
/*
MOVED FROM CLOTHING/SUITS/STORAGE.DM FOR EASY DISABLING
*/



/obj/item/clothing/suit/storage/vest
	var/icon_badge
	var/icon_nobadge
	verb/toggle()
		set name ="Adjust Badge"
		set category = "Object"
		set src in usr
		if(usr.incapacitated() || usr.stat || usr.restrained())
			return 0

		if(icon_state == icon_badge)
			icon_state = icon_nobadge
			usr << "You conceal \the [src]'s badge."
		else if(icon_state == icon_nobadge)
			icon_state = icon_badge
			usr << "You reveal \the [src]'s badge."
		else
			usr << "\The [src] does not have a badge."
			return
		update_clothing_icon()


/*
MOVEED FROM CLOTHING/SUITS/STORAGE.DM FOR EASY DISABLING
*/




/obj/item/clothing/suit/storage/vest/officer/fluff/pcrc_c_vest
	name = "PCRC security vest"
	desc = "A somewhat outdated, lightweight security vest with inbuilt pouches to carry security equipment. It is rather bulky, but nontheless still flexible."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "pfcvest_nobadge"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	icon_badge = "pfcvest_badge"
	icon_nobadge = "pfcvest_nobadge"

/obj/item/clothing/suit/storage/fluff/f_tench
	name = "Fancy Trenchcoat"
	desc = "A black trenchcoat with purplish pink material as the inside of the jacket. It's got some belts around the waist that are presumably used to seal the jacket, but it's never really used."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "Ivycoat"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "Ivycoat"
	body_parts_covered = UPPER_TORSO

/obj/item/clothing/suit/storage/seromi/cloak/fluff/magical
 	name = "Magical Cloak"
 	desc = "It drapes over a Teshari's shoulders and closes at the neck with pockets convienently placed inside. There's a long strope on the bottom that cycles through colors."
 	icon = 'icons/vore/custom_clothes_yw.dmi'
 	icon_state = "tesh_cloak_kita"
 	icon_override = 'icons/vore/custom_clothes_yw.dmi'
 	override = 1
 	item_state = "tesh_cloak_kita"

//For use in jackets with hoods. Doesn't have any sprites assigned but feel free to use it ~ Luke

/obj/item/clothing/suit/storage/toggle/hoodiebuttoned
	name = "labcoat"
	desc = "A suit that protects against minor chemical spills."
	icon_state = "labcoat"
	item_state_slots = list(slot_r_hand_str = "labcoat", slot_l_hand_str = "labcoat")
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|ARMS
	flags_inv = HIDEHOLSTER

/*
FIX THIS ASAP
*/

	allowed = list(/obj/item/device/scanner/gas,/obj/item/stack/medical,/* /obj/item/weapon/dnainjector,*//obj/item/weapon/reagent_containers/dropper,/obj/item/weapon/reagent_containers/syringe,/obj/item/weapon/reagent_containers/hypospray,/obj/item/device/scanner/health,/obj/item/device/flashlight/pen,/obj/item/weapon/reagent_containers/glass/bottle,/obj/item/weapon/reagent_containers/glass/beaker,/obj/item/weapon/reagent_containers/pill,/obj/item/weapon/storage/pill_bottle,/obj/item/weapon/paper)
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 50, rad = 0)
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_override = 'icons/vore/custom_onmob_yw.dmi'

	var/obj/item/clothing/head/hood
	var/hoodtype = null //so the chaplain hoodie or other hoodies can override this
	var/suittoggled = 0
	var/hooded = 0
	action_button_name = "Toggle Hood"
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_override = 'icons/vore/custom_onmob_yw.dmi'

/obj/item/clothing/suit/storage/toggle/hoodiebuttoned/New()
	MakeHood()
	..()

/obj/item/clothing/suit/storage/toggle/hoodiebuttoned/Destroy()
	qdel(hood)
	return ..()

/obj/item/clothing/suit/storage/toggle/hoodiebuttoned/proc/MakeHood()
	if(!hood)
		var/obj/item/clothing/head/hood/hoodiebuttoned/W = new hoodtype(src)
		hood = W

/obj/item/clothing/suit/storage/toggle/hoodiebuttoned/ui_action_click()
	ToggleHood()

/obj/item/clothing/suit/storage/toggle/hoodiebuttoned/equipped(mob/user, slot)
	if(slot != slot_wear_suit)
		RemoveHood()
	..()

/obj/item/clothing/suit/storage/toggle/hoodiebuttoned/proc/RemoveHood()
	suittoggled = 0
	hood.canremove = TRUE // This shouldn't matter anyways but just incase.
	if(ishuman(hood.loc))
		var/mob/living/carbon/H = hood.loc
		H.unEquip(hood, 1)
		H.update_inv_wear_suit()
	hood.forceMove(src)

/obj/item/clothing/suit/storage/toggle/hoodiebuttoned/dropped()
	RemoveHood()

/obj/item/clothing/suit/storage/toggle/hoodiebuttoned/proc/ToggleHood()
	if(!suittoggled)
		if(ishuman(loc))
			var/mob/living/carbon/human/H = src.loc
			if(H.wear_suit != src)
				to_chat(H, "<span class='warning'>You must be wearing [src] to put up the hood!</span>")
				return
			if(H.head)
				to_chat(H, "<span class='warning'>You're already wearing something on your head!</span>")
				return
			else
				H.equip_to_slot_if_possible(hood,slot_head,0,0,1)
				suittoggled = 1
				hood.canremove = FALSE
				H.update_inv_wear_suit()
	else
		RemoveHood()

/obj/item/clothing/head/hood/hoodiebuttoned
	name = "winter hood"
	desc = "A hood attached to a heavy winter jacket."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_override = 'icons/vore/custom_onmob_yw.dmi'
	icon_state = "generic_hood"
	body_parts_covered = HEAD
	cold_protection = HEAD
	flags_inv = HIDEEARS | BLOCKHAIR
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE




/obj/item/clothing/suit/storage/toggle/hoodiebuttoned/example
	name = "example"
	desc = "an example version."
	icon_state = "jiao_labcoat"

	hoodtype = /obj/item/clothing/head/hood/hoodiebuttoned/example

/obj/item/clothing/head/hood/hoodiebuttoned/example
	name = "example hood"
	desc = "An example hood."
	icon_state = "skinner_helm"

//end of hoodiebuttoned

/obj/item/clothing/suit/storage/toggle/labcoat/fluff/fancy_labcoat
	name = "Fluffy elongated labcoat"
	desc = "A white labcoat that seems to have been extended down to cover the legs as well, around the cuffs and bottom is a lay of fluff."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "jiao_labcoat"
	icon_override = 'icons/vore/custom_onmob_yw.dmi'

/obj/item/clothing/under/rank/medical/fluff/pcrc_b_uniform
	name = "A PCRC Navy Force medical doctor uniform"
	desc = "A slandered issue PCRC Navy Force medical doctor uniform, it has a a white base with blue ocean camo overlaying the shoulders, waist, and back, with deep blue accents, and light blue highlights. The uniform is loose fitting, and has a set of buttons running up the middle to take it on and off. This one seems to have the shoulder straps vacant of any epaulettes."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "jiao_uniform"
	icon_override = 'icons/vore/custom_onmob_yw.dmi'
	item_state = "jiao_uniform"
	rolled_sleeves = -1

/obj/item/clothing/head/beret/fluff/pcrc_b_beret
	name = "A PCRC Navy Beret"
	desc = "This camo beret has a white flash signifying the person as medical personnel, however, there is no rank or insignia on the flash, and it is left blank."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "jiao_beret"
	icon_override = 'icons/vore/custom_onmob_yw.dmi'

/obj/item/clothing/shoes/boots/jackboots/fluff/pcrc_b_boots
	name = "PCRC Boots"
	desc = "This is a set of boots from the PCRC navy, as denoted by the seal in the sole of the boot."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "jiao_boots"
	icon_override = 'icons/vore/custom_onmob_yw.dmi'

/obj/item/weapon/storage/belt/medical/fluff/pcrc_b_belt
	name = "Navy medical belt"
	desc = "A customized medical belt to sport the navy colors of the PCRC force."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "jiao_belt"
	icon_override = 'icons/vore/custom_onmob_yw.dmi'

/obj/item/clothing/gloves/sterile/fluff/pcrc_b_gloves
	name = "Padded Sterile Gloves"
	desc = "These light gray latex gloves have a blue, thick pad on the back of the hand, and on the back of the fingers, designed to survive all the life toughest that a field medic would face."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "jiao_gloves"
	icon_override = 'icons/vore/custom_onmob_yw.dmi'
	force = 2

//PCarrier, currently using the sprites and path for the navy version. will be changed with icon overrides once i have a hold of them. Here's to Izacs sanity.
/obj/item/clothing/suit/armor/pcarrier/navy/fluff/bsg_pccarrier
	name = "Blueshield officer's Place Carrier"
	desc = "A mostly blue striped armor carrier, geared up and ready to go. It looks well maintained, either its not seen much action yet, or any damage done is meticulously repaired, clearly made with high quality craftsmanship for the head guard."
	starting_accessories = list(/obj/item/clothing/accessory/armor/armguards/navy/fluff/bsg_arm, /obj/item/clothing/accessory/armor/legguards/navy/fluff/bsg_leg, /obj/item/clothing/accessory/armor/armorplate/tactical/fluff/bsg_plate, /obj/item/clothing/accessory/storage/pouches/navy/fluff/bsg, /obj/item/clothing/accessory/armor/tag/pcrc/fluff/bsg)

/obj/item/clothing/accessory/armor/armguards/navy/fluff/bsg_arm
	name = "Blueshield Armguards"
	desc = "Armguards for a Plate Carrier, painted in a deep hue of blue. Made for blueshield"

/obj/item/clothing/accessory/armor/legguards/navy/fluff/bsg_leg
	name = "Blueshield Legguards"
	desc = "A pair of Leg guards for a plate carrier set. Made for Blueshield."

/obj/item/clothing/accessory/armor/armorplate/tactical/fluff/bsg_plate
	name = "Blueshield Plate"
	desc = "A standard tactical plate for a carrier. Made for the blueshield."

/obj/item/clothing/accessory/storage/pouches/navy/fluff/bsg
	name = "Blueshield PCpouches"
	desc = "Standard pouches for a Plate Carrier. Made for Blueshield"

/obj/item/clothing/accessory/armor/tag/pcrc/fluff/bsg
	name = "BlueShield PCRC tag"
	desc = "A tag for a Plate Carrier, with the title 'Blueshield' written across it. Under that in small is written PCRC."

/obj/item/clothing/suit/storage/seromi/cloak/fluff/tesh_rd_cloak
 	name = "Research Director cloak"
 	desc = "It drapes over a Teshari's shoulders and closes at the neck with pockets conveniently placed inside. This one bears the colors of the science department with additional trimming to designate it as the research director's. The pockets seem slightly bigger on the inside than they appear on the outside."
 	icon = 'icons/vore/custom_clothes_yw.dmi'
 	icon_state = "tesh_cloak_saroth"
 	icon_override = 'icons/vore/custom_clothes_yw.dmi'
 	override = 1
 	item_state = "tesh_cloak_saroth"

/obj/item/clothing/accessory/poncho/cloak/fluff/plain_cloak
    name = "plain cloak"
    desc = "A plain cloak to be worn for warmth or comfort. Looks cozy."
    icon = 'icons/vore/custom_clothes_yw.dmi'
    icon_state = "jaree_cloak"
    icon_override = 'icons/vore/custom_onmob_yw.dmi'
    item_state = "jaree_cloak"
    override = 1

/obj/item/clothing/under/fluff/missy_skirt //needs to have it's sprite changed and relocated.
	name = "Blue Micro Skirt"
	desc = "Its a rather odd skirt it really does not cover much! Might as well not even have the thing on at this point. there is a tag on the back with writing on it. 'PROPERTY OF M.I.S.S.Y :3' just barely fitting on it."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "micro_skirt"
	icon_override = 'icons/vore/custom_onmob_yw.dmi'
	item_state = "micro_skirt"
	body_parts_covered = null

/obj/item/clothing/accessory/fluff/maxie_collar //Needs a sprite change and relocation.
	name = "Pink Wide Band Collar."
	desc = "A wide banded collar, made of a black band of fabric, with a pink band overlapping it over the center. On it is a small bit of circuitry that's out of the way. Inside the collar the name 'Maxie Drake' is stitched in it."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_override = 'icons/vore/custom_onmob_yw.dmi'
	icon_state = "maxie_collar_icon"
	item_state = "maxie_collar_mob"
	overlay_state = "maxie_collar_mob"
	slot_flags = SLOT_TIE | SLOT_OCLOTHING
	w_class = 2

/obj/item/clothing/suit/storage/toggle/hoodie/fluff/casu_hoodie
    name = "Casual hoodie"
    desc = "A blue faded black trimmed hoodie, it looks very simple and warm."
    icon = 'icons/vore/custom_clothes_yw.dmi'
    icon_state = "noel_hoodie"
    // "noel_hoodie_open" will be the open state
    icon_override = 'icons/vore/custom_onmob_yw.dmi'
    //override = 1 //What is this? VS does not have this
    item_state = null

/obj/item/clothing/ears/earings/fluff/noel_earings
	name = "Teardrop Earrings"
	desc = "A pair of simple earrings with diamonds set into a metal plate, they hang down from the ear by a small hook."
	var/ring_on = 0
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "noel_earings"
	icon_override = 'icons/vore/custom_onmob_yw.dmi'

/obj/item/clothing/ears/earings/fluff/noel_earings/verb/toggle_rings()
	set name = "Toggle right earring"
	set category = "Object"
	set src in usr
	if(!istype(usr, /mob/living)) return
	if(usr.stat) return

	var/base_icon = "noel_earings"

	if(ring_on)
		icon_state = "[base_icon]"
		ring_on = 0
		usr << "<span class='notice'>You remove the right earring.</span>"
	else
		icon_state = "[base_icon]_on"
		ring_on = 1
		usr << "<span class='notice'>You put on the right earring.</span>"

	update_clothing_icon()

/obj/item/clothing/gloves/ring/fluff/sundancer_ring
	name = "Sundancer Ring"
	desc = "A well crafted band made of trace Phoron elements, alongside majority Plasteel. Such a combination provides a wonderfully harmless 'glow' of sorts. Whether or not one could consider that a could thing, when you realize it's Phoron causing the glow and not a well polished sheen."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "plasma_ring"

/*
/obj/item/clothing/suit/storage/fluff/takirasuit
	name = "Old Vox Armor"
	desc = "The rusted and rather useless remains of a Vox Raider suit... Is this thing even safe to wear?"
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "takira_suit"
	icon_override = 'icons/vore/custom_onmob_yw.dmi'
	item_state = "takira_suit"
	body_parts_covered = UPPER_TORSO | LOWER_TORSO


/obj/item/clothing/mask/gas/fluff/takiramask
	name =	"Old Vox Mask"
	desc =  "Half-broken or completely broken? At least its breathing tubes work."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_override = 'icons/vore/custom_onmob_yw.dmi'
	icon_state = "takira_helmet"
	item_state = "takira_helmet"
*/

//GENERAL STUFF (Common - No specific ckey)

/obj/item/clothing/suit/storage/fluff/ru_techrobes
	name = "Ru tech chest piece"
	desc = "A advanced piece of technology designed to assist a Ru in day to day activities."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "tp_bodyrobes_onmob"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "tp_bodyrobes_onmob"
	body_parts_covered = UPPER_TORSO | LOWER_TORSO

/obj/item/clothing/under/fluff/ru_techrobesunder
	name = "Ru Tech leg pants"
	desc = "That's a pair of leg robes with cht'mant biology in mind."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "tp_bodyrobes"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "tp_bodyrobes_onmob"

/obj/item/clothing/head/helmet/fluff/ru_techrobeshead
	name = "Ru tech helmet"
	desc = "An Advanced helmet designed to not interfere with the delicate antennae of a Ru."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "tp_hat_onmob"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "tp_hat_onmob"

/obj/item/clothing/shoes/boots/jackboots/fluff/ru_techrobesboots
	name = "Ru tech boots"
	desc = "A pair of boots designed with insectoid feet in mind."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "tp_boots_onmob"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "tp_boots_onmob"

/obj/item/clothing/gloves/fluff/ru_techrobesgloves
	name = "Ru tech gloves"
	desc = "A pair of gloves that do not hinder those with four fingers."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "tp_gloves_onmob"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "tp_gloves_onmob"

//spaced out

/obj/item/clothing/accessory/collar/fluff/stellar_collar
	name = "Heart Collar"
	desc = "The collar appears to have a heart shaped pin on the front, the medical logo on visible from a distance. Closer inspection shows that the heart can be opened, revealing a picture. On the picture you can see Stellar and Rose close together, hands locked and facing the picture slightly sideways with beaming smiles."
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "stellarcollar"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "stellarcollar_mob"
	overlay_state = "stellarcollar_mob"
	slot_flags = SLOT_TIE | SLOT_OCLOTHING
	w_class = 2

/obj/item/clothing/under/fluff/srususoviet
	name = "Soviet Uniform"
	desc = "A standard issue Soviet Dress uniform"
	icon = 'icons/vore/custom_clothes_yw.dmi'
	icon_state = "srusuuniform"
	icon_override = 'icons/vore/custom_clothes_yw.dmi'
	item_state = "srusuuniform"