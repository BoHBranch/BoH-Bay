//Holds the files for the obscure and reveal family. 
//Obscure sets runes other than itself to total invisibility. 
//Reveal does the reverse.

/obj/effect/rune/obscure
	cultname = "obscure"
	incantation = "Kla'atu barada nikt'o!"

/obj/effect/rune/obscure/cast(var/mob/living/user)
	..()
	var/runecheck = 0
	for(var/obj/effect/rune/R in orange(1, src))
		if(R != src)
			R.set_invisibility(INVISIBILITY_OBSERVER)
		runecheck = 1
	if(runecheck)
		visible_message("<span class='warning'>\ The rune turns into gray dust that conceals the surrounding runes.</span>")
		qdel(src)

/obj/effect/rune/reveal
	cultname = "reveal"
	incantation = "Nikt'o barada kla'atu!"

/obj/effect/rune/reveal/cast(var/mob/living/user)
	..()
	var/irunecheck = 0
	for(var/obj/effect/rune/R in orange(1, src))
		if(R != src)
			R.set_invisibility(SEE_INVISIBLE_NOLIGHTING)
		irunecheck = 1
	if(irunecheck)
		visible_message("<span class='warning'>\ The rune turns into red dust that reveals the surrounding runes.</span>")
		qdel(src)