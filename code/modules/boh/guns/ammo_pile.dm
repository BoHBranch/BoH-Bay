/obj/item/weapon/ammo_pile
	name = "ammo pile"
	desc = "A handful of some kind of ammunition."

	var/list/ammo = list()
	var/ammo_type //the type of ammo this ammo pile accepts.
	var/max_ammo = 4 //+1 because ....

/obj/item/weapon/ammo_pile/prespawned/slug
	name = "shotgun slug ammo pile"
	ammo_type = /obj/item/ammo_casing/shotgun

/obj/item/weapon/ammo_pile/prespawned/New()
	CreatePile(max_ammo)

/obj/item/weapon/ammo_pile/proc/CreatePile(var/ammoamt)
	for(var/i = 1, i <= ammoamt, i++)
		var/obj/C = new ammo_type(get_turf(src))
		C.forceMove(src)
		ammo += C
	update_appearance()

/obj/item/weapon/ammo_pile/examine(mob/user)
	. = ..()
	to_chat(user, SPAN_NOTICE("It has the following shells in it:"))
	var/list/bullet_text = list()
	for(var/obj/item/ammo_casing/C in ammo)
		to_chat(user, SPAN_NOTICE("\icon[src] [C.name]"))

/obj/item/weapon/ammo_pile/afterattack(atom/A, mob/living/user)
	if(istype(A, ammo_type))
		if(LAZYLEN(ammo) >= max_ammo)
			return
		var/obj/item/ammo_casing/C = A
		ammo += C
		C.forceMove(src)
		update_appearance()

/obj/item/weapon/ammo_pile/attack_hand(mob/user)
	if(user.get_inactive_hand() == src)
		var/obj/item/ammo_casing/C = get_next_ammo(user)
		user.put_in_hands(C)
		ammo -= C
		check_ammo()

/obj/item/weapon/ammo_pile/proc/get_next_ammo(var/mob/living/carbon/user) //Returns the next shell to be used.
	if(!LAZYLEN(ammo))
		to_chat(user, SPAN_WARNING("There's no more ammo left in the pile ... somehow."))
		qdel(src)
		return null
	var/obj/item/ammo_casing/to_load = ammo[1]
	return to_load

/obj/item/weapon/ammo_pile/proc/check_ammo()
	if(!LAZYLEN(ammo))
		qdel(src)
		return
	update_appearance()

/obj/item/weapon/ammo_pile/proc/update_appearance()
	for(var/image/I in overlays)
		qdel(I)
	overlays.Cut()
	for(var/atom/movable/AM in contents)
		var/image/ammo_picture = image(AM.icon, AM.icon_state)
		ammo_picture.pixel_x = rand(-8,8)
		ammo_picture.pixel_y = rand(-8,8)
		overlays += ammo_picture
