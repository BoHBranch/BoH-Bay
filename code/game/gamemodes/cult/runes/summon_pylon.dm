//Mild light source. Usable in the place of a cultist for most spells.
/obj/effect/rune/summon_pylon
	cultname = "summon pylon"
	strokes = 5
	checks_floor = TRUE
	incantation = "Da A'ig Osk!"

/obj/effect/rune/summon_pylon/cast(var/mob/living/user)
	..()
	var/obj/item/stack/material/glass/cult/target
	for(var/obj/item/stack/material/glass/cult/G in get_turf(src))
		if(G.get_amount() >= 30)
			target = G
			break

	if(!target)
		return fizzle(user, SPAN_WARNING("You need thirty sheets of fellglass to form a pylon. Assure they're all stacked together.") )

	target.use(30)
	var/obj/O = new /obj/structure/cult/pylon(get_turf(src))
	visible_message(SPAN_WARNING("The glass spills into \the [O]'s form, and \the [src] imbues into it."), "You hear the sound of shattering glass.")
	qdel(src)
