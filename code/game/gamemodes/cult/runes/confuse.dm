//hardstuns any non-cultists in sight. doesn't seem to work in the dark? Who cares. DView is expensive. Feel free to change that yourself.
/obj/effect/rune/confuse
	cultname = "confuse"
	strokes = 4
	incantation = "Fuu ma''jin!"

/obj/effect/rune/confuse/cast(var/mob/living/user)
	..()
	visible_message(SPAN_DANGER("\The [src] explodes in a bright flash.") ) 
	var/list/mob/affected = list()
	for(var/mob/living/M in viewers(src))
		if(iscultist(M))
			continue
		var/obj/item/weapon/nullrod/N = locate() in M
		if(N)
			continue
		affected |= M
		if(iscarbon(M))
			var/mob/living/carbon/C = M
			C.eye_blurry += 50
			C.Weaken(3)
			C.Stun(5)
		else if(issilicon(M))
			M.Weaken(10)

	admin_attacker_log_many_victims(user, affected, "Used a confuse rune.", "Was victim of a confuse rune.", "used a confuse rune on")
	qdel(src)