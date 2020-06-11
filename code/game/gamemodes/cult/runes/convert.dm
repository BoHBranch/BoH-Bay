//Spell for converting people to the cult. Hold a person on the top for ten seconds to force them in. Doesn't work on clientless mobs
/obj/effect/rune/convert
	cultname = "convert"
	incantation = "Mah'weyh pleggh at e'ntrath!"
	var/spamcheck = 0

/obj/effect/rune/convert/cast(var/mob/living/user)
	..()
	if(spamcheck)
		return

	var/mob/living/carbon/target = null
	for(var/mob/living/carbon/M in get_turf(src))
		if(!iscultist(M) && M.stat != DEAD)
			target = M
			break

	if(!target)
		return fizzle(user, SPAN_WARNING("There's nobody to convert.") )

	target.visible_message(SPAN_WARNING("The markings below [target] glow a bloody red.") )

	to_chat(target, SPAN_OCCULT("Your blood pulses. Your head throbs. The world goes red. All at once you are aware of a horrible, horrible truth. The veil of reality has been ripped away and in the festering wound left behind something sinister takes root.") )
	if(!GLOB.cult.can_become_antag(target.mind, 1))
		to_chat(target, SPAN_OCCULT("Are you going insane?") )
	else
		to_chat(target, SPAN_OCCULT("Do you want to join the cult of Nar'Sie? You can choose to ignore offer... But he might just force you if you don't leave fast! <a href='?src=\ref[src];join=1'>Join the cult</a>.") )

	spamcheck = 1
	if(do_after(target, 10 SECONDS, src)) // If they don't get away, and the cult holds them down, they won't be able to deny the cult. 
		to_chat(target, SPAN_OCCULT("You never had a chance. Your mind frays as you fail to resist, His grasp engulfing it. Suddenly everything stops. Everything makes sense. Sadness is a faraway memory now. You feel one singular urge: To aid the cult.") )
		GLOB.cult.add_antagonist(usr.mind, ignore_role = 1, do_not_equip = 1)
		spamcheck = 0
	else
		spamcheck = 0
		if(!iscultist(target) && target.loc == get_turf(src)) // They hesitated, resisted, or can't join, and they are still on the rune - burn them
			if(target.stat == CONSCIOUS)
				target.take_overall_damage(0, 10)
				switch(target.getFireLoss())
					if(0 to 25)
						to_chat(target, SPAN_DANGER("Your blood boils as you force yourself to resist the corruption invading every corner of your mind.") )
					if(25 to 45)
						to_chat(target, SPAN_DANGER("Your blood boils and your body burns as the corruption further forces itself into your body and mind.") )
						target.take_overall_damage(0, 3)
					if(45 to 75)
						to_chat(target, SPAN_DANGER("You begin to hallucinate images of a dark and incomprehensible being and your entire body feels like its engulfed in flame as your mental defenses crumble.") )
						target.take_overall_damage(0, 5)
					if(75 to 100)
						to_chat(target, SPAN_OCCULT("Your mind turns to ash as the burning flames engulf your very soul and images of an unspeakable horror begin to bombard the last remnants of mental resistance.") )
						target.take_overall_damage(0, 10)

/obj/effect/rune/convert/Topic(href, href_list)
	if(href_list["join"])
		if(usr.loc == loc && !iscultist(usr))
			GLOB.cult.add_antagonist(usr.mind, ignore_role = 1, do_not_equip = 1)
