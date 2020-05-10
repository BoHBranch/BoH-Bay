/obj/item/organ/internal/augment/active/polytool
	name = "Polytool embedded module"
	action_button_name = "Deploy Tool"
	icon_state = "multitool"
	allowed_organs = list(BP_AUGMENT_R_HAND, BP_AUGMENT_L_HAND)
	var/list/items = list()
	var/list/paths = list() //We may lose them
	augment_flags = AUGMENTATION_MECHANIC

/obj/item/organ/internal/augment/active/polytool/Initialize()
	. = ..()
	for(var/path in paths)
		var/obj/item/I = new path (src)
		I.canremove = FALSE
		items += I

/obj/item/organ/internal/augment/active/polytool/proc/holding_dropped(var/obj/item/I)
	//Stop caring
	GLOB.item_unequipped_event.unregister(I, src)

	if(I.loc != src) //something went wrong and is no longer attached/ it broke
		I.canremove = TRUE

/obj/item/organ/internal/augment/active/polytool/Destroy()
	QDEL_NULL_LIST(items)
	. = ..()

/obj/item/organ/internal/augment/active/polytool/activate()
	if(!can_activate())
		return
	var/slot = null

	if(limb.organ_tag in list(BP_L_ARM, BP_L_HAND))
		slot = slot_l_hand
	else if(limb.organ_tag in list(BP_R_ARM, BP_R_HAND))
		slot = slot_r_hand

	var/obj/I = slot == slot_l_hand ? owner.l_hand : owner.r_hand

	var/list/options = list()
	for(var/obj/item/IT in items - I)
		options[IT] = IT.appearance
	var/obj/item = RADIAL_INPUT(owner, options)
	if(I)
		if(!(I in items))
			to_chat(owner, SPAN_WARNING("You can't extend your [item], [I] is in the way!"))
			return
		if(!owner.drop_from_inventory(I, src))
			to_chat(owner, SPAN_WARNING("You are unable to retract [I] into your [limb.name]!"))
			return
		owner.visible_message(SPAN_WARNING("[owner] retracts \his [I] into \his [limb.name]."), SPAN_NOTICE("You retract your [I] into your [limb.name]."))

	if(!istype(item) || !src.loc in owner.organs)
		return
	if(owner.equip_to_slot_if_possible(item, slot))
		GLOB.item_unequipped_event.register(item, src, /obj/item/organ/internal/augment/active/polytool/proc/holding_dropped )
		owner.visible_message(
			SPAN_WARNING("[owner] extends \his [item.name] from \his [limb.name]."),
			SPAN_NOTICE("You extend your [item.name] from your [limb.name].")
		)