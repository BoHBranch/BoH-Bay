#define POSITIVE_MODE 1
#define NEUTRAL_MODE 2
#define NEGATIVE_MODE 3

/datum/preferences
	var/custom_species	// Custom species name, can't be changed due to it having been used in savefiles already.
	var/custom_base		// What to base the custom species on
	var/blood_color = "#f5e400"

	var/list/pos_traits	= list()	// What traits they've selected for their custom species
	var/list/neu_traits = list()
	var/list/neg_traits = list()

	var/traits_cheating = 0 //Varedit by admins allows saving new maximums on people who apply/etc
	var/starting_trait_points = STARTING_SPECIES_POINTS
	var/max_traits = MAX_SPECIES_TRAITS

/datum/category_item/player_setup_item/vore/traits
	name = "Traits"
	sort_order = 2

/datum/category_item/player_setup_item/vore/traits/load_character(var/savefile/S)
	from_file(S["custom_species"], pref.custom_species)
	from_file(S["custom_base"], pref.custom_base)
	from_file(S["pos_traits"], pref.pos_traits)
	from_file(S["neu_traits"], pref.neu_traits)
	from_file(S["neg_traits"], pref.neg_traits)
	from_file(S["blood_color"], pref.blood_color)

	from_file(S["traits_cheating"], pref.traits_cheating)
	from_file(S["max_traits"], pref.max_traits)
	from_file(S["trait_points"], pref.starting_trait_points)

/datum/category_item/player_setup_item/vore/traits/save_character(var/savefile/S)
	to_file(S["custom_species"], pref.custom_species)
	to_file(S["custom_base"], pref.custom_base)
	to_file(S["pos_traits"], pref.pos_traits)
	to_file(S["neu_traits"], pref.neu_traits)
	to_file(S["neg_traits"], pref.neg_traits)
	to_file(S["blood_color"], pref.blood_color)

	to_file(S["traits_cheating"], pref.traits_cheating)
	to_file(S["max_traits"], pref.max_traits)
	to_file(S["trait_points"], pref.starting_trait_points)

/datum/category_item/player_setup_item/vore/traits/sanitize_character()
	if(!pref.pos_traits) pref.pos_traits = list()
	if(!pref.neu_traits) pref.neu_traits = list()
	if(!pref.neg_traits) pref.neg_traits = list()

	pref.blood_color = sanitize_hexcolor(pref.blood_color, default="#f5e400")

	if(!pref.traits_cheating)
		pref.starting_trait_points = STARTING_SPECIES_POINTS
		pref.max_traits = MAX_SPECIES_TRAITS

	if(pref.species != SPECIES_CUSTOM)
		pref.pos_traits.Cut()
		pref.neu_traits.Cut()
		pref.neg_traits.Cut()
	else
		// Clean up positive traits
		for(var/path in pref.pos_traits)
			if(!(path in positive_traits))
				pref.pos_traits -= path
		//Neutral traits
		for(var/path in pref.neu_traits)
			if(!(path in neutral_traits))
				pref.neu_traits -= path
		//Negative traits
		for(var/path in pref.neg_traits)
			if(!(path in negative_traits))
				pref.neg_traits -= path

	var/datum/species/selected_species = all_species[pref.species]
	if(selected_species.selects_bodytype)
		// Allowed!
	else if(!pref.custom_base || !(pref.custom_base in custom_species_bases))
		pref.custom_base = SPECIES_HUMAN2

obj/item/organ/external
	var/custom_species_override

datum/preferences/copy_to(mob/living/carbon/human/character, is_preview_copy = FALSE)
	..()

	character.custom_species	= custom_species

	var/datum/species/selected_species = all_species[species]
	if(selected_species.selects_bodytype)
		var/datum/species/custom/CS = character.species
		var/S = custom_base ? custom_base : "Human"
		var/datum/species/custom/new_CS = CS.produceCopy(S, pos_traits + neu_traits + neg_traits, character)

		//Any additional non-trait settings can be applied here
		new_CS.blood_color = blood_color

	for(var/obj/item/organ/external/E in character.organs)	//Forces the base species stuff onto the limbs
		E.custom_species_override = character.species.base_species	//Kludge to make the icon cache key proper
		E.species = character.species	//Secondary kludge
		if(!BP_IS_ROBOTIC(E))	//Check if the limb is robotic
			E.force_icon = character.species.get_icobase()	//If not, force the species limb icons onto the limb because update_icons won't actually use the icon cache key stuff

	character.force_update_limbs()
	character.update_sight()
	character.update_body(0)
	character.update_hair()
	character.update_icons()

/datum/category_item/player_setup_item/vore/traits/content(var/mob/user)
	. += "<b>Custom Species</b> "
	. += "<a href='?src=\ref[src];custom_species=1'>[pref.custom_species ? pref.custom_species : "-Ingresar Nombre-"]</a><br>"

	var/datum/species/selected_species = all_species[pref.species]
	if(selected_species.selects_bodytype)
		. += "<b>Icon Base: </b> "
		. += "<a href='?src=\ref[src];custom_base=1'>[pref.custom_base ? pref.custom_base : "Humano Personalizado"]</a><br>"

	if(pref.species == SPECIES_CUSTOM)
		var/points_left = pref.starting_trait_points
		var/traits_left = pref.max_traits
		for(var/T in pref.pos_traits + pref.neg_traits)
			points_left -= traits_costs[T]
			traits_left--

		. += "<b>Points Left:</b> [points_left]<br>"
		. += "<b>Traits Left:</b> [traits_left]<br>"
		if(points_left < 0 || traits_left < 0 || !pref.custom_species)
			. += "<span style='color:red;'><b>^ Arregla esto! ^</b></span><br>"

		. += "<a href='?src=\ref[src];add_trait=[POSITIVE_MODE]'>Positive Trait +</a><br>"
		. += "<ul>"
		for(var/T in pref.pos_traits)
			var/datum/trait/trait = positive_traits[T]
			. += "<li>- <a href='?src=\ref[src];clicked_pos_trait=[T]'>[trait.name] ([trait.cost])</a></li>"
		. += "</ul>"

		. += "<a href='?src=\ref[src];add_trait=[NEUTRAL_MODE]'>Neutral Trait +</a><br>"
		. += "<ul>"
		for(var/T in pref.neu_traits)
			var/datum/trait/trait = neutral_traits[T]
			. += "<li>- <a href='?src=\ref[src];clicked_neu_trait=[T]'>[trait.name] ([trait.cost])</a></li>"
		. += "</ul>"

		. += "<a href='?src=\ref[src];add_trait=[NEGATIVE_MODE]'>Negative Trait +</a><br>"
		. += "<ul>"
		for(var/T in pref.neg_traits)
			var/datum/trait/trait = negative_traits[T]
			. += "<li>- <a href='?src=\ref[src];clicked_neg_trait=[T]'>[trait.name] ([trait.cost])</a></li>"
		. += "</ul>"
	. += "<b>Blood Color: </b>" //People that want to use a certain species to have that species traits (xenochimera/promethean/spider) should be able to set their own blood color.
	. += "<a href='?src=\ref[src];blood_color=1'>Set Color</a>"
	. += "<a href='?src=\ref[src];blood_reset=1'>R</a><br>"

/datum/category_item/player_setup_item/vore/traits/OnTopic(var/href,var/list/href_list, var/mob/user)
	if(!CanUseTopic(user))
		return TOPIC_NOACTION

	else if(href_list["custom_species"])
		/*if(pref.species != "Especie Personalizada")
			alert("No puedes poner un nombre a la especie personalizada a menos de que coloques tu personaje \
			como 'Especie Personalizada' en especies en la ventana 'General'. Si tienes esto configurado a algo, es probablemente que \
			lo configurastes antes de que el sistema de Rasgos fue implementado.")
			return TOPIC_REFRESH*/ //There was no reason to have this.
		var/raw_choice = sanitize(input(user, "Coloca el nombre de tu especie:",
			"Character Preference", pref.custom_species) as null|text, MAX_NAME_LEN)
		if (CanUseTopic(user))
			pref.custom_species = raw_choice
		return TOPIC_REFRESH

	else if(href_list["custom_base"])
		var/list/choices = custom_species_bases
		if(pref.species != SPECIES_CUSTOM)
			choices = (choices | pref.species)
		var/text_choice = input("Selecciona un icono para la base de tu especie:","Base de Icono") in choices
		if(text_choice in choices)
			pref.custom_base = text_choice
		return TOPIC_REFRESH_UPDATE_PREVIEW

	else if(href_list["blood_color"])
		var/color_choice = input("Selecciona un color de sangre (No sirve para los sinteticos)","Color de sangre",pref.blood_color) as color
		if(color_choice)
			pref.blood_color = sanitize_hexcolor(color_choice, default="#f5e400")
		return TOPIC_REFRESH

	else if(href_list["blood_reset"])
		var/choice = alert("Reiniciar el color de la sangre a su color determinado? (#A10808)?","Reiniciar color de sangre","Reiniciar","Cancelar")
		if(choice == "Reiniciar")
			pref.blood_color = "#f5e400"
		return TOPIC_REFRESH

	else if(href_list["clicked_pos_trait"])
		var/datum/trait/trait = text2path(href_list["clicked_pos_trait"])
		var/choice = alert("Remove [initial(trait.name)] and regain [initial(trait.cost)] points?","Remover rasgo","Remover","Cancelar")
		if(choice == "Remover")
			pref.pos_traits -= trait
		return TOPIC_REFRESH

	else if(href_list["clicked_neu_trait"])
		var/datum/trait/trait = text2path(href_list["clicked_neu_trait"])
		var/choice = alert("Remove [initial(trait.name)]?","Remover rasgo","Remover","Cancelar")
		if(choice == "Remover")
			pref.neu_traits -= trait
		return TOPIC_REFRESH

	else if(href_list["clicked_neg_trait"])
		var/datum/trait/trait = text2path(href_list["clicked_neg_trait"])
		var/choice = alert("Remover [initial(trait.name)] y perder [initial(trait.cost)] puntos?","Remover rasgo","Remover","Cancelar")
		if(choice == "Remover")
			pref.neg_traits -= trait
		return TOPIC_REFRESH

	else if(href_list["add_trait"])
		var/mode = text2num(href_list["add_trait"])
		var/list/picklist
		var/list/mylist
		switch(mode)
			if(POSITIVE_MODE)
				picklist = positive_traits.Copy() - pref.pos_traits
				mylist = pref.pos_traits
			if(NEUTRAL_MODE)
				picklist = neutral_traits.Copy() - pref.neu_traits
				mylist = pref.neu_traits
			if(NEGATIVE_MODE)
				picklist = negative_traits.Copy() - pref.neg_traits
				mylist = pref.neg_traits
			else

		if(isnull(picklist))
			return TOPIC_REFRESH

		if(isnull(mylist))
			return TOPIC_REFRESH

		var/list/nicelist = list()
		for(var/P in picklist)
			var/datum/trait/T = picklist[P]
			nicelist[T.name] = P

		var/points_left = pref.starting_trait_points
		for(var/T in pref.pos_traits + pref.neu_traits + pref.neg_traits)
			points_left -= traits_costs[T]

		var/traits_left = pref.max_traits - (pref.pos_traits.len + pref.neg_traits.len)

		var/trait_choice
		var/done = FALSE
		while(!done)
			var/message = "\[Restante: [points_left] puntos, [traits_left] traits\] Selecciona un rasgo para ver su descripcion y ver su costo."
			trait_choice = input(message,"Trait List") as null|anything in nicelist
			if(!trait_choice)
				done = TRUE
			if(trait_choice in nicelist)
				var/datum/trait/path = nicelist[trait_choice]
				var/choice = alert("\[Cost:[initial(path.cost)]\] [initial(path.desc)]",initial(path.name),"Tomar rasgo","Cancelar","Ir hacia atras")
				if(choice == "Cancelar")
					trait_choice = null
				if(choice != "Ir hacia atras")
					done = TRUE

		if(!trait_choice)
			return TOPIC_REFRESH
		else if(trait_choice in nicelist)
			var/datum/trait/path = nicelist[trait_choice]
			var/datum/trait/instance = all_traits[path]

			var/conflict = FALSE

			if(trait_choice in pref.pos_traits + pref.neu_traits + pref.neg_traits)
				conflict = instance.name

			varconflict:
				for(var/P in pref.pos_traits + pref.neu_traits + pref.neg_traits)
					var/datum/trait/instance_test = all_traits[P]
					if(path in instance_test.excludes)
						conflict = instance_test.name
						break varconflict

					for(var/V in instance.var_changes)
						if(V in instance_test.var_changes)
							conflict = instance_test.name
							break varconflict

			if(conflict)
				alert("No puedes tomar este rasgo y [conflict] al mismo tiempo. \
				Porfavor remueve ese rasgo, o toma otro rasgo para añadirlo.","Error")
				return TOPIC_REFRESH

			mylist += path
			return TOPIC_REFRESH

	return ..()

#undef POSITIVE_MODE
#undef NEUTRAL_MODE
#undef NEGATIVE_MODE