//Sacrifice a carbon/human target. Yields cultiness.
//Victim needs to be unconscious to be sacrificed. Sometimes. This is extremely inconsistent. Needs a few cultists or pylons to work.
/obj/effect/rune/offering
	cultname = "offering"
	strokes = 3
	required_cultists = 2
	incantation = "Barhah hra zar'garis!"
	var/mob/living/victim


/obj/effect/rune/offering/cast(var/mob/living/user)
	..()
	if(victim)
		to_chat(user, SPAN_WARNING("You are already sacrificing \the [victim] on this rune.") )
		return

	var/turf/T = get_turf(src)
	for(var/mob/living/M in T)
		if(M.stat != DEAD && !iscultist(M))
			victim = M
			break

	if(!victim)
		return fizzle(user, SPAN_WARNING("Our sacrifice needs to be unconscious and alive. Consider building a pylon nearby..."))


	while(victim && victim.loc == T && victim.stat != DEAD)
		var/list/mob/living/casters = get_cultists()
		if(casters.len < 3 || QDELETED(src)) //Break this if the rune is deleted.
			break
		//T.turf_animation('icons/effects/effects.dmi', "rune_sac")
		victim.fire_stacks = max(2, victim.fire_stacks)
		victim.IgniteMob()
		victim.take_organ_damage(3 + casters.len, 3 + casters.len) // This is to speed up the process and also damage mobs that don't take damage from being on fire, e.g. borgs
		if(ishuman(victim))
			var/mob/living/carbon/human/H = victim
			if(H.is_asystole())
				H.adjustBrainLoss(3 + casters.len)
		sleep(40)

	if(victim && victim.loc == T && victim.stat == DEAD)
		GLOB.cult.add_cultiness(CULTINESS_PER_SACRIFICE)
		var/obj/item/device/soulstone/full/F = new(get_turf(src))
		for(var/mob/M in get_cultists())
			to_chat(M, SPAN_WARNING("The Geometer of Blood accepts this offering,") )

		visible_message(SPAN_NOTICE("\The [F] appears over \the [src]."))
		GLOB.cult.sacrificed += victim.mind
		if(victim.mind == GLOB.cult.sacrifice_target)
			for(var/datum/mind/H in GLOB.cult.current_antagonists)
				if(H.current)
					to_chat(H.current, SPAN_OCCULT("Your objective is now complete.") )
		to_chat(victim, SPAN_OCCULT("The Geometer of Blood claims your body.") )
		victim.dust()

	if(victim)
		victim.ExtinguishMob() // Technically allows them to put the fire out by sacrificing them and stopping immediately, but I don't think it'd have much effect
		victim = null