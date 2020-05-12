/datum/map/torch/setup_map()
	..()
	system_name = generate_system_name()
	minor_announcement = new(new_sound = sound('sound/AI/torch/commandreport.ogg', volume = 45))

/datum/map/torch/get_map_info()
	. = list()
	. += "Felicidades por tu nuevo empleo abordo del NTSS (NanoTrasen Solarian Ship) Dagon."
	. += "Es un buque de clase epsilon equipado con instalaciones medicas, de investigacion y seguridad de ultima generacion para todas tus necesidades, capaz tanto de responder como lidiar con la mayoria de las amenazas menores de manera rapida y eficiente, tanto como para tambien explorar algunos de los planetas olvidados de estos sectores"
	. += ""
	. += "Es un buque cientifico renovado para estar mas cerca de una fragata militar"
	. += "Capaz de responder tanto para lidiar con la mayoria de las amenazas insurrealistas menores de manera rapida como para explorar cualquier planeta 'olvidado' en estos sectores."
	return jointext(., "<br>")

/datum/map/torch/send_welcome()
	var/welcome_text = "<center><img src = bluentlogo.png /><br /><font size = 3><b>NTSS Dagon</b> Sensor Readings:</font><br>"
	welcome_text += "Reporte generado en [stationdate2text()] en [stationtime2text()]</center><br /><br />"
	welcome_text += "<hr>Sistema actual:<br /><b>[system_name()]</b><br /><br>"

	var/list/space_things = list()
	var/obj/effect/overmap/visitable/torch = map_sectors["1"]

	welcome_text += "Coordenadas actuales:<br /><b>[torch.x]:[torch.y]</b><br /><br>"
	welcome_text += "Siguiente sistema seleccionado para el salto:<br /><b>[generate_system_name()]</b><br /><br>"
	welcome_text += "Tiempo de viaje hacia Sol:<br /><b>[rand(15,45)] days</b><br /><br>"
	welcome_text += "Tiempo desde el ultimo puerto visitado:<br /><b>[rand(60,180)] days</b><br /><hr>"
	welcome_text += "Los resultados del escaner muestran los siguientes puntos de interes:<br />"

	for(var/zlevel in map_sectors)
		var/obj/effect/overmap/visitable/O = map_sectors[zlevel]
		if(O.name == torch.name)
			continue
		if(istype(O, /obj/effect/overmap/visitable/ship/landable)) //Don't show shuttles
			continue
		if (O.hide_from_reports)
			continue
		space_things |= O

	var/list/distress_calls
	for(var/obj/effect/overmap/visitable/O in space_things)
		var/location_desc = " en las presentes coordenadas."
		if(O.loc != torch.loc)
			var/bearing = round(90 - Atan2(O.x - torch.x, O.y - torch.y),5) //fucking triangles how do they work
			if(bearing < 0)
				bearing += 360
			location_desc = ", llevando [bearing]."
		if(O.has_distress_beacon)
			LAZYADD(distress_calls, "[O.has_distress_beacon][location_desc]")
		welcome_text += "<li>\A <b>[O.name]</b>[location_desc]</li>"

	if(LAZYLEN(distress_calls))
		welcome_text += "<br><b>Llamadas de socorro registradas:</b><br>[jointext(distress_calls, "<br>")]<br>"
	else
		welcome_text += "<br>Ninguna llamada de socorro registradas:<br />"
	welcome_text += "<hr>"

	post_comm_message("Lectura de sensores NTSS Dagon", welcome_text)
	minor_announcement.Announce(message = "New [GLOB.using_map.company_name] Actualizacion disponible en todas las consolas de comunicacion.")
