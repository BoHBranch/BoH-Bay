/obj/effect/rune/mech
	cultname = "summon mech"
	strokes = 4
	checks_floor = TRUE
	incantation = "Da A'ig Osk!"

/obj/effect/rune/shell/cast(var/mob/living/user)
	..()
	var/obj/item/stack/material/cult/target
	var/obj/item/stack/material/glass/cult
	for(var/obj/item/stack/material/cult/S in get_turf(src))
		if(S.get_amount() >= 20)
			target = S
			break
	for(/obj/item/stack/material/glass/cult/p in get_turf(src))
		if(P.get_amount() >= 20)
			target = P
			break

	if(!target)
		return fizzle(user, SPAN_WARNING("You need twenty sheets of both felglass and occult stone to form a daemonic exosuit.") )

	target.use(40)
	var/obj/O = new /mob/living/heavy_vehicle/premade/cult(get_turf(src))
	visible_message(SPAN_WARNING("You work the materials to form into \the [O], while blood from \the [src] imbues into it."), "You hear a metallic sound.")
	qdel(src)