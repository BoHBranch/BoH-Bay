#define GRIP_ATTACHMENT 1
#define SIGHTS_ATTACHMENT 2
#define BARREL_ATTACHMENT 3
#define MUZZLE_ATTACHMENT 4
#define STOCK_ATTACHMENT 5

/obj/item/attachable
	icon = 'icons/obj/guns/gun_attachments.dmi'
	icon_state = "grip"
	w_class = ITEM_SIZE_SMALL
	force = 0 //Don't try killing people with attachments please.
	var/attach_icon = null //the sprite to show when the attachment is attached when we want it different from the icon_state.
	var/pixel_shift_x = 16 //Determines the amount of pixels to move the icon state for the overlay.
	var/pixel_shift_y = 16 //Uses the bottom left corner of the item.
	var/slot = null //"muzzle", "rail", "under", "stock", "special"
	var/flags_attach_features = ATTACH_REMOVABLE
	var/light_mod = null

	var/accuracy_modifier = 0 //This number is added to your base accuracy. The higher this number is, the more accurate at range you will be.
	var/acc_power_mod = 0 //This will add to our acc_power.
	var/aim_slowdown_mod = 0 //Adds slowdown to the weapon when equipped in your hands.
	var/screen_shake_mod = 0 //Reduces the screenshake of the weapon, simulates more "recoil control".
	var/bulk_mod = 0 // reduces or increases accuracy on the move, negative means more accuracy, positive is bad.

/obj/item/attachable/proc/Attach(var/obj/item/weapon/gun/G, mob/user)
	if(!istype(G)) return //Guns only

	/*
	This does not check if the attachment can be removed.
	Instead of checking individual attachments, I simply removed
	the specific guns for the specific attachments so you can't
	attempt the process in the first place if a slot can't be
	removed on a gun. can_be_removed is instead used when they
	try to strip the gun.
	*/
	if(G.attachments[slot])
		var/obj/item/attachable/A = G.attachments[slot]
		A.Detach(G, user)

	if(flags_attach_features && ATTACH_ACTIVATION)
		verbs += /obj/item/attachable/proc/activate_attachable

	if(ishuman(loc))
		var/mob/living/carbon/human/M = src.loc
		M.drop_item(src)
	forceMove(G)

	G.attachments[slot] = src
	G.recalculate_attachment_bonuses()
	G.slowdown_per_slot[slot_l_hand] += aim_slowdown_mod
	G.slowdown_per_slot[slot_r_hand] += aim_slowdown_mod

/obj/item/attachable/proc/Detach(var/obj/item/weapon/gun/G, mob/user)
	if(!istype(G)) return //Guns only

	G.attachments[slot] = null
	G.recalculate_attachment_bonuses()


	if(flags_attach_features && ATTACH_ACTIVATION)
		activate_attachment(G, null, TRUE)

	forceMove(get_turf(G))
	user.put_in_hands(src)
	G.update_attachables()
	G.slowdown_per_slot[slot_l_hand] -= aim_slowdown_mod
	G.slowdown_per_slot[slot_r_hand] -= aim_slowdown_mod




/obj/item/weapon/gun/proc/update_attachables() //Updates everything. You generally don't need to use this.
	overlays.Cut()
	if(attachable_offset) //Even if the attachment doesn't exist, we're going to try and remove it.
		for(var/slot in attachments)
			var/obj/item/attachable/R = attachments[slot]
			if(!R) continue
			update_attachment_overlays(R, R.slot)

/obj/item/weapon/gun/proc/update_attachable(attachable) //Updates individually.
	if(attachable_offset && attachments[attachable])
		update_attachment_overlays(attachments[attachable], attachable)

/obj/item/weapon/gun/proc/update_attachment_overlays(var/obj/item/attachable/A, slot)
	var/image/I = attachable_overlays[slot]
	overlays -= I
	qdel(I)
	if(A) //Only updates if the attachment exists for that slot.
		var/item_icon = A.icon_state
		if(A.attach_icon)
			item_icon = A.attach_icon
		I = image(A.icon,src, item_icon)
		I.pixel_x = attachable_offset["[slot]_x"] - A.pixel_shift_x
		I.pixel_y = attachable_offset["[slot]_y"] - A.pixel_shift_y
		attachable_overlays[slot] = I
		overlays += I
	else attachable_overlays[slot] = null



/obj/item/weapon/gun/proc/can_attach_to_gun(mob/user, obj/item/attachable/attachment)
	if(attachable_allowed && !(attachment.type in attachable_allowed) )
		to_chat(user, SPAN_WARNING("[attachment] doesn't fit on [src]!"))
		return 0

	//Checks if they can attach the thing in the first place, like with fixed attachments.
	if(attachments[attachment.slot])
		var/obj/item/attachable/R = attachments[attachment.slot]
		if(R && !(R.flags_attach_features & ATTACH_REMOVABLE))
			to_chat(user, SPAN_WARNING("The attachment on [src]'s [attachment.slot] cannot be removed!"))
			return 0
	//to prevent headaches with lighting stuff
	if(attachment.light_mod)
		for(var/slot in attachments)
			var/obj/item/attachable/R = attachments[slot]
			if(!R)
				continue
			if(R.light_mod)
				to_chat(user, SPAN_WARNING("You already have a light source attachment on [src]."))
				return 0
	return 1

/obj/item/weapon/gun/proc/attach_to_gun(mob/user, obj/item/attachable/attachment)
	if(!can_attach_to_gun(user, attachment))
		return

	user.visible_message(SPAN_NOTICE("[user] begins attaching [attachment] to [src]."),
	SPAN_NOTICE("You begin attaching [attachment] to [src]."), null, 4)
	if(do_after(user, 20))
		if(attachment && attachment.loc)
			user.visible_message(SPAN_NOTICE("[user] attaches [attachment] to [src]."),
			SPAN_NOTICE("You attach [attachment] to [src]."), null, 4)
			user.drop_from_inventory(attachment)
			attachment.Attach(src, user)
			update_attachable(attachment.slot)
			playsound(user, 'sound/items/attachment_add.ogg', 25)

/obj/item/weapon/gun/proc/recalculate_attachment_bonuses()

	accuracy = initial(accuracy)
	screen_shake = initial(screen_shake)
	bulk = initial(bulk)
	acc_mod_base = initial(acc_mod_base)

	//Add attachment bonuses
	for(var/slot in attachments)
		var/obj/item/attachable/R = attachments[slot]
		if(!R) continue
		accuracy += R.accuracy_modifier
		screen_shake -= R.screen_shake_mod
		bulk += R.bulk_mod
		acc_mod_base +=R.acc_power_mod


/obj/item/attachable/verticalgrip
	name = "vertical grip"
	desc = "A vertical foregrip that offers less loss of accuracy while moving."
	icon_state = "vgrip"
	attach_icon = "vgrip_a"
	slot = "under"
	bulk_mod = -20 // removes all rifle bulk
	aim_slowdown_mod = -50

/obj/item/attachable/angledgrip
	name = "angled grip"
	desc = "A angled foregrip that faster movement speed while firing."
	icon_state = "agrip"
	attach_icon = "agrip_a"
	slot = "under"
	bulk_mod = -2 // removes all rifle bulk

/obj/item/attachable/holosight
	name = "holosight"
	desc = "Like a weird red dot sight. A zero magnification optic that offers faster, and more accurate target aquisition."
	icon_state = "holosight"
	attach_icon = "holosight_a"
	slot = "rail"
	accuracy_modifier = 6

// A stock that is unremoveable, this is used to make the gun more centered on the inventory and the ground!

/obj/item/attachable/unremoveable_stock
	name = "stock" // change this because it'll be the only seeable thing playerfacing, wise.
	desc = "If you see this, an admin spawned in an irremoveable stock or someone was dumb - MJP."
	icon_state = "tp19stock"
	attach_icon = "tp19stock_a"// And the icon, ofcourse.
	flags_attach_features = null // you can't remove this!
	slot = "stock"

// Activating attachments, stuff.


/obj/item/attachable/proc/activate_attachable(mob/living/user, obj/item/weapon/gun/G)
	set name = "Toggle-Attachment"
	set category = "Object"
	set src in usr

	activate_attachment(G, user) //success

/obj/item/attachable/proc/activate_attachment(atom/target, mob/user) //This is for activating stuff like flamethrowers, or switching weapon modes.
	return
