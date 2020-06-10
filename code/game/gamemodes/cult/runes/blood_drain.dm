//Take blood from the victim to heal yourself.

/obj/effect/rune/drain
	cultname = "blood drain"
	strokes = 3
	incantation = "Yu'gular faras desdae. Havas mithum javara. Umathar uf'kal thenar!"

/obj/effect/rune/drain/cast(var/mob/living/user)
	..()
	var/mob/living/carbon/human/victim
	for(var/mob/living/carbon/human/M in get_turf(src))
		if(iscultist(M))
			continue
		victim = M
	if(!victim)
		return fizzle(user, SPAN_WARNING("There is nothing to sacrifice.") )

	if(!victim.vessel.has_reagent(/datum/reagent/blood, 20))
		return fizzle(user, SPAN_WARNING("This body has no blood in it.") )
		
	victim.vessel.remove_reagent(/datum/reagent/blood, 20)
	admin_attack_log(user, victim, "Used a blood drain rune.", "Was victim of a blood drain rune.", "used a blood drain rune on")
	user.visible_message( SPAN_WARNING("Blood flows from \the [src] into \the [user]!") , SPAN_OCCULT("The blood starts flowing from \the [src] into your frail mortal body. [capitalize(english_list(heal_user(user), nothing_text = "you feel no different"))].") , "You hear liquid flow.")
	user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)

/obj/effect/rune/drain/proc/heal_user(var/mob/living/carbon/human/user)
	if(!istype(user))
		return list("you feel no different")
	var/list/statuses = list()
	var/charges = 20
	var/use
	use = min(charges, user.species.blood_volume - user.vessel.total_volume)
	if(use > 0)
		user.vessel.add_reagent(/datum/reagent/blood, use)
		charges -= use
		statuses += "you regain lost blood"
		if(!charges)
			return statuses
	if(user.getBruteLoss() || user.getFireLoss())
		var/healbrute = user.getBruteLoss()
		var/healburn = user.getFireLoss()
		if(healbrute < healburn)
			healbrute = min(healbrute, charges / 2)
			charges -= healbrute
			healburn = min(healburn, charges)
			charges -= healburn
		else
			healburn = min(healburn, charges / 2)
			charges -= healburn
			healbrute = min(healbrute, charges)
			charges -= healbrute
		user.heal_organ_damage(healbrute, healburn, 1)
		statuses += "your wounds mend"
		if(!charges)
			return statuses
	if(user.getToxLoss())
		use = min(user.getToxLoss(), charges)
		user.adjustToxLoss(-use)
		charges -= use
		statuses += "your body stings less"
		if(!charges)
			return statuses
	if(charges >= 15)
		for(var/obj/item/organ/external/e in user.organs)
			if(e && e.status & ORGAN_BROKEN)
				e.status &= ~ORGAN_BROKEN
				statuses += "bones in your [e.name] snap into place"
				charges -= 15
				if(charges < 15)
					break
	if(!charges)
		return statuses
	var/list/obj/item/organ/damaged = list()
	for(var/obj/item/organ/I in user.internal_organs)
		if(I.damage)
			damaged += I
	if(damaged.len)
		statuses += "you feel pain inside for a moment that passes quickly"
		while(charges && damaged.len)
			var/obj/item/organ/fix = pick(damaged)
			fix.damage = max(0, fix.damage - min(charges, 1))
			charges = max(charges - 1, 0)
			if(fix.damage == 0)
				damaged -= fix
	return statuses