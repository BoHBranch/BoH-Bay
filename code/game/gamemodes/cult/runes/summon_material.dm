//Summon resources. 10 occult stone = 10 fellglass. Fairly self-explanatory.
//Needs defile glass.

/obj/effect/rune/summon_metal
	cultname = "summon occult stone"
	incantation = "Bak'ri elo fal'nil!"
	checks_floor = TRUE

/obj/effect/rune/summon_metal/cast(var/mob/living/user)
	..()
	new /obj/item/stack/material/cult/ten(get_turf(src))


/obj/effect/rune/summon_glass
	cultname = "summon fellglass"
	incantation = "Bak'ri ralo fal'nar!"
	checks_floor = TRUE

/obj/effect/rune/summon_glass/cast(var/mob/living/user)
	..()
	var/obj/item/stack/material/cult/target
	for(var/obj/item/stack/material/cult/S in get_turf(src))
		if(S.get_amount() >= 10)
			target = S
			break

	if(!target)
		return fizzle(user, SPAN_WARNING("You need ten sheets of occult stone to fold them into fellglass.") )

	target.use(10)
	new /obj/item/stack/material/glass/cult/ten(get_turf(src))