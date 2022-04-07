/obj/effect/rune/gun
	cultname = "summon gun"
	strokes = 4
	incantation = "N'ath reth sh'yro eth d'raggathnor!"
	checks_floor = TRUE

/obj/effect/rune/gun/cast(var/mob/living/user)
	..()
	if(!istype(user.get_equipped_item(slot_head), /obj/item/clothing/head/culthood) || !istype(user.get_equipped_item(slot_wear_suit), /obj/item/clothing/suit/cultrobes) || !istype(user.get_equipped_item(slot_shoes), /obj/item/clothing/shoes/cult))
		to_chat(user, SPAN_WARNING("You need to be wearing your robes to use this rune.") )
	var/obj/item/stack/material/glass/cult/target
	for(var/obj/item/stack/material/glass/cult/S in get_turf(src))
		if(S.get_amount() >= 5)
			target = S
			break

	if(!target)
		return fizzle(user, SPAN_WARNING("You need five sheets of felglass to form a bloodpike.") )

	target.use(5)
	var/obj/O = new /obj/item/gun/energy/rifle/cult(get_turf(src))
	visible_message(SPAN_WARNING("The glass melts into the form of \a [O], and \the [src] imbues into it."), "You hear a melting sound.")
	qdel(src)