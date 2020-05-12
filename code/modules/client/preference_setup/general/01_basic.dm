datum/preferences
	var/gender = MALE					//gender of character (well duh)
	var/age = 30						//age of character
	var/spawnpoint = "Default" 			//where this character will spawn (0-2).
	var/metadata = ""
	var/real_name						//our character's name
	var/be_random_name = 0				//whether we are a random name every round

/datum/category_item/player_setup_item/physical/basic
	name = "Basic"
	sort_order = 1

/datum/category_item/player_setup_item/physical/basic/load_character(var/savefile/S)
	from_file(S["gender"],                pref.gender)
	from_file(S["age"],                   pref.age)
	from_file(S["spawnpoint"],            pref.spawnpoint)
	from_file(S["OOC_Notes"],             pref.metadata)
	from_file(S["real_name"],             pref.real_name)
	from_file(S["name_is_always_random"], pref.be_random_name)

/datum/category_item/player_setup_item/physical/basic/save_character(var/savefile/S)
	to_file(S["gender"],                  pref.gender)
	to_file(S["age"],                     pref.age)
	to_file(S["spawnpoint"],              pref.spawnpoint)
	to_file(S["OOC_Notes"],               pref.metadata)
	to_file(S["real_name"],               pref.real_name)
	to_file(S["name_is_always_random"],   pref.be_random_name)

/datum/category_item/player_setup_item/physical/basic/sanitize_character()
	var/datum/species/S = all_species[pref.species ? pref.species : SPECIES_HUMAN]
	if(!S) S = all_species[SPECIES_HUMAN]
	pref.age                = sanitize_integer(pref.age, S.min_age, S.max_age, initial(pref.age))
	pref.gender             = sanitize_inlist(pref.gender, S.genders, initial(pref.gender))
	pref.spawnpoint         = sanitize_inlist(pref.spawnpoint, spawntypes(), initial(pref.spawnpoint))
	pref.be_random_name     = sanitize_integer(pref.be_random_name, 0, 1, initial(pref.be_random_name))
	// This is a bit noodly. If pref.cultural_info[TAG_CULTURE] is null, then we haven't finished loading/sanitizing, which means we might purge
	// numbers or w/e from someone's name by comparing them to the map default. So we just don't bother sanitizing at this point otherwise.
	if(pref.cultural_info[TAG_CULTURE])
		var/decl/cultural_info/check = SSculture.get_culture(pref.cultural_info[TAG_CULTURE])
		if(check)
			pref.real_name = check.sanitize_name(pref.real_name, pref.species)
			if(!pref.real_name)
				pref.real_name = "Urist Mc[capitalize(pick(GLOB.last_names))]"
				if(S == all_species[SPECIES_HUMAN])
					pref.f_style = "Dwarf Beard"
					pref.r_facial = 172
					pref.g_facial = 86
					pref.r_hair = 172
					pref.g_hair = 86

/datum/category_item/player_setup_item/physical/basic/content()
	. = list()
	. += "<b>Nombre:</b> "
	. += "<a href='?src=\ref[src];rename=1'><b>[pref.real_name]</b></a><br>"
	. += "<a href='?src=\ref[src];random_name=1'>Cambiar a nombre aleatorio</A><br>"
	. += "<a href='?src=\ref[src];always_random_name=1'>Always Random Name: [pref.be_random_name ? "Si" : "No"]</a>"
	. += "<hr>"
	. += "<b>Genero:</b> <a href='?src=\ref[src];gender=1'><b>[gender2text(pref.gender)]</b></a><br>"
	. += "<b>Edad:</b> <a href='?src=\ref[src];age=1'>[pref.age]</a><br>"
	. += "<b>Punto de partida:</b> <a href='?src=\ref[src];spawnpoint=1'>[pref.spawnpoint]</a>"
	if(config.allow_Metadata)
		. += "<br><b>OOC Notes:</b> <a href='?src=\ref[src];metadata=1'> Edit </a>"
	. = jointext(.,null)

/datum/category_item/player_setup_item/physical/basic/OnTopic(var/href,var/list/href_list, var/mob/user)
	var/datum/species/S = all_species[pref.species]

	if(href_list["rename"])
		var/raw_name = input(user, "Elige el nombre de tu personaje:", "Nombre de personaje")  as text|null
		if (!isnull(raw_name) && CanUseTopic(user))

			var/decl/cultural_info/check = SSculture.get_culture(pref.cultural_info[TAG_CULTURE])
			var/new_name = check.sanitize_name(raw_name, pref.species)
			if(new_name)
				pref.real_name = new_name
				return TOPIC_REFRESH
			else
				to_chat(user, "<span class='warning'>Nombre Invalido. Tu nombre debe poseer entre 2 y [MAX_NAME_LEN] letras. Y solo puede poseer letras de la A-Z, a-z, -, ' y .</span>")
				return TOPIC_NOACTION

	else if(href_list["random_name"])
		pref.real_name = random_name(pref.gender, pref.species)
		return TOPIC_REFRESH

	else if(href_list["always_random_name"])
		pref.be_random_name = !pref.be_random_name
		return TOPIC_REFRESH

	else if(href_list["gender"])
		var/new_gender = input(user, "Cambia el genero de tu personaje:", CHARACTER_PREFERENCE_INPUT_TITLE, pref.gender) as null|anything in S.genders
		S = all_species[pref.species]
		if(new_gender && CanUseTopic(user) && (new_gender in S.genders))
			pref.gender = new_gender
			if(!(pref.f_style in S.get_facial_hair_styles(pref.gender)))
				ResetFacialHair()
		return TOPIC_REFRESH_UPDATE_PREVIEW

	else if(href_list["age"])
		var/new_age = input(user, "Selecciona la edad de tu personaje:\n([S.min_age]-[S.max_age])", CHARACTER_PREFERENCE_INPUT_TITLE, pref.age) as num|null
		if(new_age && CanUseTopic(user))
			pref.age = max(min(round(text2num(new_age)), S.max_age), S.min_age)
			pref.skills_allocated = pref.sanitize_skills(pref.skills_allocated)		// The age may invalidate skill loadouts
			return TOPIC_REFRESH

	else if(href_list["spawnpoint"])
		var/list/spawnkeys = list()
		for(var/spawntype in spawntypes())
			spawnkeys += spawntype
		var/choice = input(user, "A donde te gustaria aparecer cuando entras tarde?") as null|anything in spawnkeys
		if(!choice || !spawntypes()[choice] || !CanUseTopic(user))	return TOPIC_NOACTION
		pref.spawnpoint = choice
		return TOPIC_REFRESH

	else if(href_list["metadata"])
		var/new_metadata = sanitize(input(user, "Escribe cualquier informacion que otros personajes puedan leer, como tus preferencias de roleo:", "Preferencias de juego" , pref.metadata) as message|null)
		if(new_metadata && CanUseTopic(user))
			pref.metadata = new_metadata
			return TOPIC_REFRESH

	return ..()