/obj/item/clothing/accessory/cloak
	name = "cloak"
	desc = "A simple, bland cloak."
	icon_state = "cloak"
	icon = 'icons/boh/obj/clothing/obj_cloak.dmi'
	icon_override = 'icons/boh/mob/onmob/onmob_cloak.dmi'
	accessory_icons = list(slot_tie_str = 'icons/boh/mob/onmob/onmob_cloak.dmi', slot_w_uniform_str = 'icons/boh/mob/onmob/onmob_cloak.dmi', slot_wear_suit_str = 'icons/boh/mob/onmob/onmob_cloak.dmi')
	var/fire_resist = T0C+100
	allowed = list(/obj/item/weapon/tank/emergency)
	slot_flags = SLOT_OCLOTHING | SLOT_TIE
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	siemens_coefficient = 0.9
	w_class = ITEM_SIZE_NORMAL
	slot = ACCESSORY_SLOT_OVER
