// Handfuls, basically ammo boxes that single load and delete on hitting 0. //
// They're spawned from ammo boxes with handfuls in them. //

// Handfuls themselves, ported over from IS12, mostly. //

/obj/item/ammo_magazine/handful
	name = "handful"
	desc = "If you see this something fucked something up."
	mag_type = SINGLE_LOAD
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_magazine/handful/New()
	..()
	update_icon()

/obj/item/ammo_magazine/handful/on_update_icon()
	if(!stored_ammo.len)//There's no more ammo here, so delete the handful.
		qdel(src)
		return
	icon_state = "[initial(icon_state)]-[stored_ammo.len]"//If there is ammo then we take our initial icon_state and add the ammount of ammo in the stack to it.

/obj/item/ammo_magazine/handful/attack_self(mob/user)//We want to override the normal attack self with makes us "empty" our "clip".
	return

// Ammo boxes themselves. //

/obj/item/ammo_box
	name = "\improper box of ammo"
	desc = "You get bullets out of this."
	icon = 'icons/obj/ammo.dmi'
	icon_state = "rbox"
	w_class = ITEM_SIZE_SMALL //So you can put it in your pocket.
	var/handful_type = null
	var/list/stored_handfuls = list()
	var/max_stacks = 4
	var/handful_verb = "handful"

/obj/item/ammo_box/Initialize()
	. = ..()
	for(var/i in 1 to max_stacks)
		stored_handfuls += new handful_type(src)
	update_icon()

/obj/item/ammo_box/examine(mob/user)
	. = ..()
	if(stored_handfuls.len)
		to_chat(user, "It has [stored_handfuls.len] [handful_verb]s left.")
	else
		to_chat(user, "It is empty.")


/obj/item/ammo_box/attack_hand(var/mob/living/carbon/human/user)
	if(!istype(user))
		..()
		return
	if((src != user.r_store) && (src != user.l_store) && (src != user.belt) && (src != user.get_inactive_hand()))
		..()//If it's not in any of these slots then just return normally.
		return
	if(!stored_handfuls.len)//If there's no more handfuls then don't divide by 0 please.
		return
	var/obj/item/ammo_magazine/handful/A = src.stored_handfuls[1]//If it is in one of these slots though put it in our hand.
	if(A)
		stored_handfuls.Cut(1, 2)
		user.put_in_hands(A)
		user.visible_message("[user] takes [A] out.")
	update_icon()

/obj/item/ammo_box/attackby(obj/item/C, mob/user)
	if(!istype(C, handful_type))
		to_chat(user, "\The [src] does not accept this [handful_verb].")
		return
	if(stored_handfuls.len == max_stacks)
		to_chat(user, "There's too many [handful_verb]s in there already.")
		return
	user.remove_from_mob(C)
	C.forceMove(src)
	stored_handfuls.Add(C)
	user.visible_message("[user] adds [C] to the box.")
	update_icon()


/obj/item/ammo_box/MouseDrop(var/obj/over_object)
	if (!over_object || !(ishuman(usr) || issmall(usr)))
		return

	if (!(src.loc == usr))
		return

	if (usr.incapacitated(INCAPACITATION_STUNNED|INCAPACITATION_RESTRAINED|INCAPACITATION_KNOCKOUT))
		return

	if (!usr.unEquip(src))
		return

	switch(over_object.name)
		if("r_hand")
			usr.put_in_r_hand(src)
		if("l_hand")
			usr.put_in_l_hand(src)

	src.add_fingerprint(usr)

// Shotgun shell box //

/obj/item/ammo_box/shotgun
	name = "\improper 12g shells box"
	icon_state = "shotgun_ammo"
	desc = "A box holidng a neat pile of 12 gauge shells. You get them out of here."
	max_stacks = 2
	handful_type = /obj/item/ammo_magazine/handful/shotgun/shotgun_handful

/obj/item/ammo_box/shotgun/slug
	name = "\improper 12g slug box"
	desc = "A box holidng a neat pile of 12 gauge slugs. You get them out of here."
	handful_type = /obj/item/ammo_magazine/handful/shotgun/shotgun_handful/slug

/obj/item/ammo_box/shotgun/beanbag
	name = "\improper 12g beanbag box"
	desc = "A box holidng a neat pile of 12 gauge beanbags. You get them out of here."
	handful_type = /obj/item/ammo_magazine/handful/shotgun/shotgun_handful/beanbag

/obj/item/ammo_box/shotgun/birdshot
	name = "\improper 12g birdshot box"
	desc = "A box holidng a neat pile of 12 gauge birdshot. You get them out of here."
	handful_type = /obj/item/ammo_magazine/handful/shotgun/shotgun_handful/birdshot


// Shotguns, why do we even use gauges anymore?

/obj/item/ammo_magazine/handful/shotgun/shotgun_handful
	name = "\improper handful of shells"
	desc = "A handful of shotgun shells for a shotgun."
	max_ammo = 6
	icon_state = "gshell_handful"
	caliber =  CALIBER_SHOTGUN
	ammo_type = /obj/item/ammo_casing/shotgun/pellet

// This exists because you're technically making a new item when making handfuls. Not combining ammos. Putting this here since this is the first example.
/obj/item/ammo_magazine/handful/shotgun/shotgun_handful/two
	initial_ammo = 2

/obj/item/ammo_magazine/handful/shotgun/shotgun_handful/slug
	icon_state = "slshell_handful"
	ammo_type = /obj/item/ammo_casing/shotgun

/obj/item/ammo_magazine/handful/shotgun/shotgun_handful/slug/two
	initial_ammo = 2

/obj/item/ammo_magazine/handful/shotgun/shotgun_handful/beanbag
	icon_state = "bshell_handful"
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag

/obj/item/ammo_magazine/handful/shotgun/shotgun_handful/beanbag/two
	initial_ammo = 2

/obj/item/ammo_magazine/handful/shotgun/shotgun_handful/birdshot
	icon_state = "bdshell_handful"
	ammo_type = /obj/item/ammo_casing/shotgun/birdshot

/obj/item/ammo_magazine/handful/shotgun/shotgun_handful/birdshot/two
	initial_ammo = 2

/obj/item/ammo_magazine/handful/shotgun/shotgun_handful/sabot
	icon_state = "slshell_handful"
	ammo_type = /obj/item/ammo_casing/sabot

/obj/item/ammo_magazine/handful/shotgun/shotgun_handful/sabot/two
	initial_ammo = 2


// Handguns, low caliber.. Sticks?

// 10mm.

/obj/item/ammo_magazine/handful/pistol_handful
	name = "\improper handful of handgun rounds"
	desc = "A handful of rounds for some kind of handgun, 10mm."
	max_ammo = 6
	icon_state = "handful_pistol"
	caliber = CALIBER_PISTOL
	ammo_type = /obj/item/ammo_casing/pistol

/obj/item/ammo_magazine/handful/pistol_handful/two
	initial_ammo = 2

/obj/item/ammo_magazine/handful/pistol_handful/rubber
	name = "\improper handful of rubber handgun rounds"
	ammo_type = /obj/item/ammo_casing/pistol/rubber

/obj/item/ammo_magazine/handful/pistol_handful/rubber/two
	initial_ammo = 2


// .454.

/obj/item/ammo_magazine/handful/magnum_handful
	name = "\improper handful of high caliber revolver rounds"
	desc = "A handful of rounds for a high caliber revolver. .454."
	max_ammo = 6
	icon_state = "handful_magnum"
	caliber = CALIBER_PISTOL_MAGNUM_LARGE
	ammo_type = /obj/item/ammo_casing/pistol/magnum/large

/obj/item/ammo_magazine/handful/magnum_handful/two
	initial_ammo = 2

/obj/item/ammo_magazine/handful/magnum_handful/small
	desc = "A handful of rounds for a high caliber revolver. 15mm."
	caliber = CALIBER_PISTOL_MAGNUM
	ammo_type = /obj/item/ammo_casing/pistol/magnum

/obj/item/ammo_magazine/handful/magnum_handful/small/two
	initial_ammo = 2
