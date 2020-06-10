//Summons an EMP. Self explanatory. Good for removing nullglass implants.
/obj/effect/rune/emp
	cultname = "emp"
	strokes = 4
	incantation = "Ta'gh fara'qha fel d'amar det!"

/obj/effect/rune/emp/cast(var/mob/living/user)
	..()
	empulse(get_turf(src), 4, 2, 1)
	qdel(src)