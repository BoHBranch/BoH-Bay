/obj/item/storage/backpack/mob_can_equip(mob/living/carbon/human/H, slot, disable_warning = 0, force = 0)
	if(istype(H.back, /obj/item/rig))
		if(istype(H.wear_suit, /obj/item/clothing/suit/space/rig))
			if(slot == slot_s_store)
				return 1
	return ..()
