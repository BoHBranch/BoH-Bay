//Summon swords for judgement cuts.  Needs a cult floor. 
//Should probably genericize the the robes check.
/obj/effect/rune/weapon
	cultname = "summon weapon"
	strokes = 4
	incantation = "N'ath reth sh'yro eth d'raggathnor!"
	checks_floor = TRUE

/obj/effect/rune/weapon/cast(var/mob/living/user)
	..()
	if(!istype(user.get_equipped_item(slot_head), /obj/item/clothing/head/culthood) || !istype(user.get_equipped_item(slot_wear_suit), /obj/item/clothing/suit/cultrobes) || !istype(user.get_equipped_item(slot_shoes), /obj/item/clothing/shoes/cult))
		to_chat(user, SPAN_WARNING("You need to be wearing your robes to use this rune.") )
		return fizzle(user)
	user.put_in_hands(new /obj/item/weapon/melee/cultblade(user))
	qdel(src)
