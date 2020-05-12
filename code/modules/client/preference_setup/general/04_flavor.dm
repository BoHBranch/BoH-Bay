/datum/preferences
	var/list/flavor_texts        = list()
	var/list/flavour_texts_robot = list()

/datum/category_item/player_setup_item/physical/flavor
	name = "Flavor"
	sort_order = 4

/datum/category_item/player_setup_item/physical/flavor/load_character(var/savefile/S)
	S["flavor_texts_general"]	>> pref.flavor_texts["general"]
	S["flavor_texts_head"]		>> pref.flavor_texts["head"]
	S["flavor_texts_face"]		>> pref.flavor_texts["face"]
	S["flavor_texts_eyes"]		>> pref.flavor_texts["eyes"]
	S["flavor_texts_torso"]		>> pref.flavor_texts["torso"]
	S["flavor_texts_arms"]		>> pref.flavor_texts["arms"]
	S["flavor_texts_hands"]		>> pref.flavor_texts["hands"]
	S["flavor_texts_legs"]		>> pref.flavor_texts["legs"]
	S["flavor_texts_feet"]		>> pref.flavor_texts["feet"]
	S["flavor_texts_naked"]		>> pref.flavor_texts["naked"]
	S["flavor_texts_NSFW/OOC"]	>> pref.flavor_texts["NSFW/OOC"]

	//Flavour text for robots.
	S["flavour_texts_robot_Default"] >> pref.flavour_texts_robot["Default"]
	for(var/module in SSrobots.all_module_names)
		S["flavour_texts_robot_[module]"] >> pref.flavour_texts_robot[module]

/datum/category_item/player_setup_item/physical/flavor/save_character(var/savefile/S)
	S["flavor_texts_general"]	<< pref.flavor_texts["general"]
	S["flavor_texts_head"]		<< pref.flavor_texts["head"]
	S["flavor_texts_face"]		<< pref.flavor_texts["face"]
	S["flavor_texts_eyes"]		<< pref.flavor_texts["eyes"]
	S["flavor_texts_torso"]		<< pref.flavor_texts["torso"]
	S["flavor_texts_arms"]		<< pref.flavor_texts["arms"]
	S["flavor_texts_hands"]		<< pref.flavor_texts["hands"]
	S["flavor_texts_legs"]		<< pref.flavor_texts["legs"]
	S["flavor_texts_feet"]		<< pref.flavor_texts["feet"]
	S["flavor_texts_naked"]		<< pref.flavor_texts["naked"]
	S["flavor_texts_NSFW/OOC"]	<< pref.flavor_texts["NSFW/OOC"]

	S["flavour_texts_robot_Default"] << pref.flavour_texts_robot["Default"]
	for(var/module in SSrobots.all_module_names)
		S["flavour_texts_robot_[module]"] << pref.flavour_texts_robot[module]

/datum/category_item/player_setup_item/physical/flavor/sanitize_character()
	if(!istype(pref.flavor_texts))        pref.flavor_texts = list()
	if(!istype(pref.flavour_texts_robot)) pref.flavour_texts_robot = list()

/datum/category_item/player_setup_item/physical/flavor/content(var/mob/user)
	. += "<b>Flavor:</b><br>"
	. += "<a href='?src=\ref[src];flavor_text=open'>Escribir caracteristicas corporales</a><br/>"
	. += "<a href='?src=\ref[src];flavour_text_robot=open'>Escribir caracteristicas corporales de robot</a><br/>"

/datum/category_item/player_setup_item/physical/flavor/OnTopic(var/href,var/list/href_list, var/mob/user)
	if(href_list["flavor_text"])
		switch(href_list["flavor_text"])
			if("open")
			if("general")
				var/msg = sanitize(input(usr,"Da una descripcion general sobre tu personaje. Esto se mostrara independientemente de la ropa que tu personaje lleve puesta. No incluyas informacion fuera de personaje o explicita aqui.","Caracteristicas corporales",html_decode(pref.flavor_texts[href_list["flavor_text"]])) as message, extra = 0)
				if(CanUseTopic(user))
					pref.flavor_texts[href_list["flavor_text"]] = msg
			if("NSFW/OOC")
				var/msg = sanitize(input(usr,"Actualiza tu informacion de fuera de personaje. Por favor, no escribas nada explicito aqui.", "Caracteristicas corporales",html_decode(pref.flavor_texts[href_list["flavor_text"]])) as message, extra = 0)
				if(CanUseTopic(user))
					pref.flavor_texts[href_list["flavor_text"]] = msg
			if("naked")
				var/msg = sanitize(input(usr,"Actualiza tu informacion desnuda. Sientete libre de colocar informacion fuera de personaje y explicita.", "Caracteristicas corporales",html_decode(pref.flavor_texts[href_list["flavor_text"]])) as message, extra = 0)
				if(CanUseTopic(user))
					pref.flavor_texts[href_list["flavor_text"]] = msg
			else
				var/msg = sanitize(input(usr,"Escribe las caracteristicas corporales para [href_list["flavor_text"]].","Caracteristicas corporales",html_decode(pref.flavor_texts[href_list["flavor_text"]])) as message, extra = 0)
				if(CanUseTopic(user))
					pref.flavor_texts[href_list["flavor_text"]] = msg
		SetFlavorText(user)
		return TOPIC_HANDLED

	else if(href_list["flavour_text_robot"])
		switch(href_list["flavour_text_robot"])
			if("open")
			if("Default")
				var/msg = sanitize(input(usr,"Escribe las caracteristicas corporales predeterminadas de robot. Va a ser utilizada independientemente del modulo que elijas.","Caracteristicas corporales",html_decode(pref.flavour_texts_robot["Default"])) as message, extra = 0)
				if(CanUseTopic(user))
					pref.flavour_texts_robot[href_list["flavour_text_robot"]] = msg
			else
				var/msg = sanitize(input(usr,"Escribe las caracteristicas corporales para tu robot con el modulo [href_list["flavour_text_robot"]]. Si dejas esto en blanco, las caracteristicas corporales predeterminadas se usaran para este modulo.","Caracteristicas corporales",html_decode(pref.flavour_texts_robot[href_list["flavour_text_robot"]])) as message, extra = 0)
				if(CanUseTopic(user))
					pref.flavour_texts_robot[href_list["flavour_text_robot"]] = msg
		SetFlavourTextRobot(user)
		return TOPIC_HANDLED

	return ..()

/datum/category_item/player_setup_item/physical/flavor/proc/SetFlavorText(mob/user)
	var/HTML = "<body>"
	HTML += "<tt><center>"
	HTML += "<b>Set Flavour Text</b> <hr />"
	HTML += "<br></center>"
	HTML += "<a href='?src=\ref[src];flavor_text=general'>General:</a> "
	HTML += TextPreview(pref.flavor_texts["general"])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];flavor_text=head'>Cabeza:</a> "
	HTML += TextPreview(pref.flavor_texts["head"])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];flavor_text=face'>Cara:</a> "
	HTML += TextPreview(pref.flavor_texts["face"])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];flavor_text=eyes'>Ojos:</a> "
	HTML += TextPreview(pref.flavor_texts["eyes"])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];flavor_text=torso'>Cuerpo:</a> "
	HTML += TextPreview(pref.flavor_texts["torso"])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];flavor_text=arms'>Brazos:</a> "
	HTML += TextPreview(pref.flavor_texts["arms"])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];flavor_text=hands'>Manos:</a> "
	HTML += TextPreview(pref.flavor_texts["hands"])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];flavor_text=legs'>Piernas:</a> "
	HTML += TextPreview(pref.flavor_texts["legs"])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];flavor_text=feet'>Pies:</a> "
	HTML += TextPreview(pref.flavor_texts["feet"])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];flavor_text=naked'>Desnudo (Explicito):</a> "
	HTML += TextPreview(pref.flavor_texts["naked"])
	HTML += "<br>"
	HTML += "<a href='?src=\ref[src];flavor_text=NSFW/OOC'>Fuera de personaje:</a> "
	HTML += TextPreview(pref.flavor_texts["NSFW/OOC"])
	HTML += "<br>"
	HTML += "<hr />"
	HTML += "<tt>"
	user << browse(HTML, "window=flavor_text;size=430x300")
	return

/datum/category_item/player_setup_item/physical/flavor/proc/SetFlavourTextRobot(mob/user)
	var/HTML = "<body>"
	HTML += "<tt><center>"
	HTML += "<b>Set Robot Flavour Text</b> <hr />"
	HTML += "<br></center>"
	HTML += "<a href='?src=\ref[src];flavour_text_robot=Default'>Default:</a> "
	HTML += TextPreview(pref.flavour_texts_robot["Default"])
	HTML += "<hr />"
	for(var/module in SSrobots.all_module_names)
		HTML += "<a href='?src=\ref[src];flavour_text_robot=[module]'>[module]:</a> "
		HTML += TextPreview(pref.flavour_texts_robot[module])
		HTML += "<br>"
	HTML += "<hr />"
	HTML += "<tt>"
	user << browse(HTML, "window=flavour_text_robot;size=430x300")
	return