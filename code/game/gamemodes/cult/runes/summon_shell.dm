//Summons a construct shell. Needs 10 occult stone. 
//They need a filled soulstone. Check ../wizard/soulstone.dm for a confusing, anomalous file that is relevant to their creation.
/obj/effect/rune/shell
	cultname = "summon shell"
	strokes = 4
	checks_floor = TRUE
	incantation = "Da A'ig Osk!"

/obj/effect/rune/shell/cast(var/mob/living/user)
	..()
	var/obj/item/stack/material/cult/target
	for(var/obj/item/stack/material/cult/S in get_turf(src))
		if(S.get_amount() >= 10)
			target = S
			break

	if(!target)
		return fizzle(user, SPAN_WARNING("You need ten sheets of occult stone to fold them into a construct shell.") )

	target.use(10)
	var/obj/O = new /obj/structure/constructshell/cult(get_turf(src))
	visible_message(SPAN_WARNING("The stone bends into \the [O], and \the [src] imbues into it."), "You hear a metallic sound.")
	qdel(src)