//Summons the tome for the cultists to use for their spells.
/obj/effect/rune/tome
	cultname = "summon tome"
	incantation = "N'ath reth sh'yro eth d'raggathnor!"

/obj/effect/rune/tome/cast(var/mob/living/user)
	..()
	new /obj/item/weapon/book/tome(get_turf(src))
	visible_message("<span class='notice'>\The [src] disappears with a flash of red light, and in its place now a book lies.</span>", "You hear a pop.")
	qdel(src)
