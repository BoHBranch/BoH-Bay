/obj/item/pill_pack
	name = "foil pill package"
	desc = "A package of pills."
	icon = 'icons/boh/medical.dmi'
	icon_state = "pill_pack"
	w_class = ITEM_SIZE_SMALL

	var/list/pills = list()
	var/pill_type
	var/marking_color

/obj/item/pill_pack/prefilled/New()
	CreatePack(pill_type)

/obj/item/pill_pack/prefilled/test
	name = "test pill pack"
	pill_type = /obj/item/weapon/reagent_containers/pill/dermaline
	marking_color = COLOR_SEDONA

/obj/item/pill_pack/examine(mob/user)
	. = ..()
	to_chat(user, SPAN_NOTICE("It has the following pills in it:"))
	for(var/obj/item/weapon/reagent_containers/pill/C in pills)
		to_chat(user, SPAN_NOTICE("\icon[C] [C.name]"))

/obj/item/pill_pack/proc/CreatePack(var/pill_type)
	for(var/i = 1, i <= 4, i++)
		var/obj/C = new pill_type(get_turf(src))
		C.forceMove(src)
		pills += C
	update_icon()

/obj/item/pill_pack/proc/CreatePackmarks()
	if(marking_color)
		var/image/I = image('icons/boh/medical.dmi', "pack_mark")
		I.color = marking_color
		overlays += I

/obj/item/pill_pack/on_update_icon()
	if(!LAZYLEN(pills))
		underlays.Cut()
		overlays.Cut()
		CreatePackmarks()
		return
	overlays.Cut()
	underlays.Cut()
	CreatePackmarks()
	var/index = 1
	var/img_pixely
	for(var/obj/item/weapon/reagent_containers/pill/P in contents)
		switch(index)
			if(1)
				img_pixely = -6
			if(2)
				img_pixely = 0
			if(3)
				img_pixely = 6
			if(4)
				img_pixely = 12
		var/image/I = image(P.icon, P.icon_state)
		I.color = P.color
		I.pixel_y = img_pixely
		I.pixel_x = 0
		underlays += I
		index++

	var/pill_amt = LAZYLEN(pills)
	switch(pill_amt)
		if(1)
			overlays += image('icons/boh/medical.dmi', "pill_1")
		if(2)
			overlays += image('icons/boh/medical.dmi', "pill_2")
		if(3)
			overlays += image('icons/boh/medical.dmi', "pill_3")
		if(4)
			overlays += image('icons/boh/medical.dmi', "pill_4")


/obj/item/pill_pack/attack_self(mob/user)
	if(LAZYLEN(pills))
		var/obj/item/weapon/reagent_containers/pill/P = pills[1]
		to_chat(user, SPAN_NOTICE("You pop [P] out of [src]."))
		P.forceMove(get_turf(user))
		user.put_in_hands(P)
		pills -= P
		playsound(src.loc, 'sound/effects/pop.ogg', 25, 0, 10)
		update_icon()