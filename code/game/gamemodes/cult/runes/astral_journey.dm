//Temporarily ghosts the user. They take mild damage while doing so.

/obj/effect/rune/ajorney
	cultname = "astral journey"
	incantation =  "Fwe'sh mah erl nyag r'ya!"

/obj/effect/rune/ajorney/cast(var/mob/living/user)
	..()
	var/tmpkey = user.key
	if(user.loc != get_turf(src))
		return
	user.visible_message("<span class='warning'>\The [user]'s eyes glow blue as \he freezes in place, absolutely motionless.</span>", "<span class='warning'>The shadow that is your spirit separates itself from your body. You are now in the realm beyond. While this is a great sight, being here strains your mind and body. Hurry...</span>", "You hear only complete silence for a moment.")
	announce_ghost_joinleave(user.ghostize(1), 1, "You feel that they had to use some [pick("dark", "black", "blood", "forgotten", "forbidden")] magic to [pick("invade", "disturb", "disrupt", "infest", "taint", "spoil", "blight")] this place!")
	var/mob/observer/ghost/soul
	for(var/mob/observer/ghost/O in GLOB.ghost_mob_list)
		if(O.key == tmpkey)
			soul = O
			break
	while(user)
		if(user.stat == DEAD)
			break
		if(user.key)
			break
		else if(user.loc != get_turf(src) && soul)
			soul.reenter_corpse()
		else
			user.take_organ_damage(0, 2)
		sleep(20)
	return fizzle(user, SPAN_OCCULT("It is time to return home, for now.") )
