//equips the user with a predetermined outfit as determined by the outfit datums system. See ../datums/outfits/cult.dm
//Might drop a Vox's gas tank but honestly who cares. Fuck the Vox.
/obj/effect/rune/equip
	cultname = "summon robes"
	strokes = 3
	checks_floor = TRUE
	incantation = "N'ath reth sh'yro eth d'raggathnor!"
	var/outfit_to_equip = /decl/hierarchy/outfit/cultrobes

/obj/effect/rune/equip/cast(var/mob/living/user)
	..()
	if(!ishuman(user))
		return fizzle(user, SPAN_NOTICE("Your nonhuman form does not interest your Lord. This boon shall not come.") )
	visible_message( SPAN_WARNING("The [src] disappears with a flash of red light, and a set of armor appears on \the [user]."), SPAN_WARNING("You are blinded by the flash of red light. After you're able to see again, you see that you are now wearing a set of armor.") )

	var/mob/living/carbon/human/H = user
	var/decl/hierarchy/outfit/outfit = outfit_by_type(outfit_to_equip)
	outfit.equip(H, OUTFIT_ADJUSTMENT_SKIP_SURVIVAL_GEAR)

	user.update_icons()

	qdel(src)

/obj/effect/rune/equip/space
	cultname = "summon armor"
	strokes = 4
	incantation = "N'ath reth nelraeth d'raggathnor!"
	outfit_to_equip = /decl/hierarchy/outfit/cultarmor