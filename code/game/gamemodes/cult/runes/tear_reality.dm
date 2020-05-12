//Summons Nar-sie and initiates the endgame. Needs 5 cultists, and becomes faster with more cultists. Pylons don't work for this.
/obj/effect/rune/tearreality
	cultname = "tear reality"
	incantation = "Tok-lyr rqa'nap g'lt-ulotf!"
	checks_floor = TRUE
	var/the_end_comes = 0
	var/the_time_has_come = 300
	var/obj/singularity/narsie/large/HECOMES = null
	strokes = 9
	required_cultists = 5
	pylons_allowed = FALSE

/obj/effect/rune/tearreality/cast(var/mob/living/user)
	..()
	if(!GLOB.cult.allow_narsie)
		return
	if(the_end_comes)
		to_chat(user, "<span class='cult'>You are already summoning! Be patient!</span>")
		return
	var/list/mob/living/cultists = get_cultists()
	for(var/mob/living/M in cultists)
		
		to_chat(M, "<span class='cult'>You are staring to tear the reality to bring Him back... stay around the rune!</span>")
	log_and_message_admins_many(cultists, "started summoning Nar-sie.")

	var/area/A = get_area(src)
	command_announcement.Announce("High levels of bluespace interference detected at \the [A]. Suspected wormhole forming. Investigate it immediately.")
	while(cultists.len > 4 || the_end_comes)
		cultists = get_cultists(NO_PYLONS)
		if(cultists.len > 8)
			++the_end_comes
		if(cultists.len > 4)
			++the_end_comes
		else
			--the_end_comes
		if(the_end_comes >= the_time_has_come)
			break
		for(var/mob/living/M in cultists)
			if(prob(5))
				speak_incantation(M, pick("Hakkrutju gopoenjim.", "Nherasai pivroiashan.", "Firjji prhiv mazenhor.", "Tanah eh wakantahe.", "Obliyae na oraie.", "Miyf hon vnor'c.", "Wakabai hij fen juswix."))

		for(var/turf/T in range(min(the_end_comes, 15)))
			if(prob(the_end_comes / 3))
				T.cultify()
		sleep(10)

	if(the_end_comes >= the_time_has_come)
		HECOMES = new /obj/singularity/narsie/large(get_turf(src))
	else
		command_announcement.Announce("Bluespace anomaly has ceased.")
		qdel(src)

/obj/effect/rune/tearreality/attack_hand(var/mob/living/user)
	..()
	if(HECOMES && !iscultist(user))
		var/input = input(user, "Are you SURE you want to sacrifice yourself?", "DO NOT DO THIS") in list("Yes", "No")
		if(input != "Yes")
			return
		speak_incantation(user, "Uhrast ka'hfa heldsagen ver'lot!")
		to_chat(user, SPAN_WARNING("In the last moment of your humble life, you feel an immense pain as fabric of reality mends... with your blood.") )
		for(var/mob/M in GLOB.living_mob_list_)
			if(iscultist(M))
				to_chat(M, "You see a vision of \the [user] keeling over dead, his blood glowing blue as it escapes \his body and dissipates into thin air; you hear an otherwordly scream and feel that a great disaster has just been averted.")
			else
				to_chat(M, "You see a vision of [name] keeling over dead, his blood glowing blue as it escapes his body and dissipates into thin air; you hear an otherwordly scream and feel very weak for a moment.")
		log_and_message_admins("mended reality with the greatest sacrifice", user)
		user.dust()
		GLOB.cult.powerless = 1
		qdel(HECOMES)
		qdel(src)
		return

/obj/effect/rune/tearreality/attackby()
	if(the_end_comes)
		return
	..()
