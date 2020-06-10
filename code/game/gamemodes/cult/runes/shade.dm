//Summons a shade. Can make multiple shades. Not much else to mention.
/obj/effect/rune/summon_shade
	cultname = "summon shade"
	var/mob/living/simple_animal/shade/myshade
	required_cultists = 2
	incantation = "Ar mana il solus! Mi'a ik det!"

obj/effect/rune/summon_shade/Initialize()
	. = ..()
	myshade = new(src)

obj/effect/rune/summon_shade/Destroy()
	QDEL_NULL(myshade)
	. = ..()

obj/effect/rune/summon_shade/cast(user)
	set waitfor = FALSE
	..()
	var/datum/ghosttrap/cult/shade/S = get_ghost_trap("Lesser shade")
	to_chat(user, SPAN_NOTICE("Now wait a while for the ritual to be completed."))
	S.request_player(myshade, "The shade summon ritual has been performed. ", 30 SECONDS)
	sleep(30 SECONDS)
	if(myshade.client)
		visible_message(src, SPAN_OCCULT("A shade rises from its slumber!"))
		myshade.forceMove(get_turf(src))
		myshade = new(src)
	else
		return fizzle(user, SPAN_WARNING("The spirits are unwilling! Wait a while for more willing spirits, or get to killing some new spirits!"))
