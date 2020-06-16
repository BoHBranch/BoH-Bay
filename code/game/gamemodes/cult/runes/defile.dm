//Primary cult point gainer. Corrupts the environment around them. See ../gamemodes/cult/cultify/ for the effects on various things it interacts with. 
//Does not corrupt mobs.
/obj/effect/rune/defile
	cultname = "defile"
	var/corruption_range = 1 //The distance in range() that this corrupts, the rune at the center.
	incantation = "Ia! Ia! Zasan therium viortia!"

/obj/effect/rune/defile/cast(var/mob/living/user)
	..()
	for(var/turf/T in range(corruption_range, src))
		if(T.holy)
			T.holy = 0
		else
			T.cultify()
	for(var/obj/O in range(corruption_range, src))
		O.cultify()
	visible_message(SPAN_OCCULT("\The [src] embeds into the floor and walls around it, changing them!"), "You hear liquid flow.")
	qdel(src)

//Greater defile -- Greater range.
/obj/effect/rune/defile/greater 
	cultname = "greater defile"
	corruption_range = 2
	incantation = "Ia! Ia! Zeswa nalia!"