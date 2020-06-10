//Stunpaper and EMPaper.  Paper must not be written on.
//Stunpaper hardstuns people for a short period.
//EMPaper is good for removing implants.

/obj/effect/rune/imbue
	cultname = "otherwordly abomination that shouldn't exist and that you should report to your local god as soon as you see it, along with the instructions for making this"
	incantation = "H'drak v'loso, mir'kanas verbot!"
	var/papertype

/obj/effect/rune/imbue/cast(var/mob/living/user)
	..()
	var/obj/item/weapon/paper/target
	var/tainted = 0
	for(var/obj/item/weapon/paper/P in get_turf(src))
		if(!P.info)
			target = P
			break
		else
			tainted = 1
	if(!target)
		return fizzle(user, SPAN_WARNING("There is no paper to imbue."))
	if(tainted)
		return fizzle(user, SPAN_WARNING("The blank is tainted. It is unsuitable.") )
	visible_message(SPAN_WARNING("The rune forms into an arcane image on the paper.") )
	new papertype(get_turf(src))
	qdel(target)
	qdel(src)

/obj/effect/rune/imbue/stun
	cultname = "stun imbue"
	papertype = /obj/item/weapon/paper/talisman/stun

/obj/effect/rune/imbue/emp
	cultname = "destroy technology imbue"
	papertype = /obj/item/weapon/paper/talisman/emp
