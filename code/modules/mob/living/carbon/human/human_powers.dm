/****************
 true human verbs
****************/
/mob/living/carbon/human/proc/tie_hair()
	set name = "Tie Hair"
	set desc = "Style your hair."
	set category = "IC"

	if(incapacitated())
		to_chat(src, "<span class='warning'>You can't mess with your hair right now!</span>")
		return

	if(h_style)
		var/datum/sprite_accessory/hair/hair_style = GLOB.hair_styles_list[h_style]
		var/selected_string
		if(!(hair_style.flags & HAIR_TIEABLE))
			to_chat(src, "<span class ='warning'>Your hair isn't long enough to tie.</span>")
			return
		else
			var/list/datum/sprite_accessory/hair/valid_hairstyles = list()
			for(var/hair_string in GLOB.hair_styles_list)
				var/list/datum/sprite_accessory/hair/test = GLOB.hair_styles_list[hair_string]
				if(test.flags & HAIR_TIEABLE)
					valid_hairstyles.Add(hair_string)
			selected_string = input("Select a new hairstyle", "Your hairstyle", hair_style) as null|anything in valid_hairstyles
		if(incapacitated())
			to_chat(src, "<span class='warning'>You can't mess with your hair right now!</span>")
			return
		else if(selected_string && h_style != selected_string)
			h_style = selected_string
			regenerate_icons()
			visible_message("<span class='notice'>[src] pauses a moment to style their hair.</span>")
		else
			to_chat(src, "<span class ='notice'>You're already using that style.</span>")

/****************
 misc alien verbs
****************/
/mob/living/carbon/human/proc/commune()
	set category = "Abilities"
	set name = "Commune with creature"
	set desc = "Send a telepathic message to an unlucky recipient."

	var/list/targets = list()
	var/target = null
	var/text = null

	targets += getmobs() //Fill list, prompt user with list
	target = input("Select a creature!", "Speak to creature", null, null) as null|anything in targets

	if(!target) return

	text = input("What would you like to say?", "Speak to creature", null, null)

	text = sanitize(text)

	if(!text) return

	var/mob/M = targets[target]

	if(isghost(M) || M.stat == DEAD)
		to_chat(src, "<span class='warning'>You cannot can speak to the dead.</span>")
		return

	log_say("[key_name(src)] communed to [key_name(M)]: [text]")

	to_chat(M, "<span class='notice'>Like lead slabs crashing into the ocean, alien thoughts drop into your mind: <i>[text]</i></span>")
	if(istype(M,/mob/living/carbon/human))
		var/mob/living/carbon/human/H = M
		if(H.species.name == src.species.name)
			return
		if(prob(75))
			to_chat(H, "<span class='warning'>Your nose begins to bleed...</span>")
			H.drip(1)

/mob/living/carbon/human/proc/psychic_whisper(mob/M as mob in oview())
	set name = "Psychic Whisper"
	set desc = "Whisper silently to someone over a distance."
	set category = "Abilities"

	if(stat != CONSCIOUS || disrupts_psionics()) //Do not use it while unconscious or disrupted.
		to_chat(src, SPAN_WARNING("You can't focus enough to do this!") )
		return

	if(isghost(M) || M.stat == DEAD)
		to_chat(src, "<span class='warning'>You cannot can speak to the dead.</span>")
		return

	var/msg = sanitize(input("Message:", "Psychic Whisper") as text|null)
	if(msg)
		log_and_message_admins("PsychicWhisper: [key_name(src)]->[M.key] : [msg]")
		to_chat(M, "<span class='alium'>You hear a strange, alien voice in your head... <i>[msg]</i></span>")
		to_chat(src, "<span class='alium'>You channel a message: \"[msg]\" to [M]</span>")
	return

/mob/living/carbon/human/proc/discharge_energy()
	set name = "Discharge Energy"
	set desc = "Releases all the energy you've stored up."
	set category = "Abilities"

	if(stored_shock_by_ref["\ref[src]"] >= 1 && src.stat == CONSCIOUS)
		var/spark_amount = max(1, min(12, stored_shock_by_ref["\ref[src]"]/25))
		switch(spark_amount)
			if(1 to 4)
				visible_message("<span class='notice'>[src] releases their stored electric energy with a few pops and arcs.</span>")
			if(4 to 8)
				visible_message("<span class='warning'>[src] releases their stored electric energy in a hissing aura of charged particles.</span>")
			if(8 to 11)
				visible_message("<span class='danger'>[src] releases their stored electric energy with a burst of jumping arcs and loud pops.</span>")
				playsound(src, 'sound/effects/snap.ogg', 30)
			if(11 to INFINITY)
				visible_message("<span class='danger'>[src] releases their stored electric energy in a massive cloud of charged plasma!</span>")
				playsound(src, 'sound/weapons/wave.ogg', 30)

		var/datum/effect/effect/system/spark_spread/s = new
		s.set_up(spark_amount, spark_amount, src.loc)
		s.start()

		stored_shock_by_ref["\ref[src]"] = 0

/***********
 diona verbs
***********/
/mob/living/carbon/human/proc/diona_heal_toggle()
	set name = "Toggle Heal"
	set desc = "Turn your innate healing on or off."
	set category = "Abilities"
	var/obj/aura/regenerating/human/aura = locate() in auras
	if(!aura)
		to_chat(src, SPAN_WARNING("You don't possess an innate healing ability."))
		return
	if(!aura.can_toggle())
		to_chat(src, SPAN_WARNING("You can't toggle the healing at this time!"))
		return
	aura.toggle()
	if (aura.innate_heal)
		to_chat(src, "<span class='alium'>You are now using nutrients to regenerate.</span>")
	else
		to_chat(src, "<span class='alium'>You are no longer using nutrients to regenerate.</span>")

/mob/living/carbon/human/proc/change_colour()
	set category = "Abilities"
	set name = "Change Colour"
	set desc = "Choose the colour of your skin."

	var/new_skin = input(usr, "Choose your new skin colour: ", "Change Colour", rgb(r_skin, g_skin, b_skin)) as color|null
	change_skin_color(hex2num(copytext(new_skin, 2, 4)), hex2num(copytext(new_skin, 4, 6)), hex2num(copytext(new_skin, 6, 8)))
