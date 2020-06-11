//Use a soulstone with a soul in it to revive someone. It doesn't actually care if they match. So have fun. Needs cult floor.

/obj/effect/rune/revive
	cultname = "revive"
	strokes = 4
	incantation = "Pasnar val'keriam usinar. Savrae ines amutan. Yam'toth remium il'tarat!"
	checks_floor = TRUE

/obj/effect/rune/revive/cast(var/mob/living/user)
	..()
	var/mob/living/carbon/human/target
	var/obj/item/device/soulstone/source
	for(var/mob/living/carbon/human/M in get_turf(src))
		if(M.stat == DEAD && M.key)
			target = M
			break
	if(!target)
		return fizzle(user, SPAN_NOTICE("You need a corpse in order to revive someone."))
	for(var/obj/item/device/soulstone/S in get_turf(src))
		if(S.full && !S.shade.key)
			source = S
			break
	if(!source)
		return fizzle(user, SPAN_NOTICE("There is no shard here. What is your plan?") )
	target.rejuvenate()
	source.set_full(0)
	target.visible_message(SPAN_WARNING("\The [target]'s eyes glow with a faint red as \he stands up, slowly starting to breathe again."), SPAN_OCCULT("Life... I'm alive again..."), "You hear liquid flow.")
