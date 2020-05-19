/obj/machinery/artifact_analyser
	name = "Analizador de anomalias"
	desc = "Estudia las emisiones de materiales anomalos para descubrir sus usos."
	icon = 'icons/obj/xenoarchaeology.dmi'
	icon_state = "xenoarch_console"
	anchored = 1
	density = 1
	var/scan_in_progress = 0
	var/scan_num = 0
	var/obj/scanned_obj
	var/obj/machinery/artifact_scanpad/owned_scanner = null
	var/scan_completion_time = 0
	var/scan_duration = 50
	var/obj/scanned_object
	var/report_num = 0

/obj/machinery/artifact_analyser/Initialize()
	. = ..()
	reconnect_scanner()

/obj/machinery/artifact_analyser/proc/reconnect_scanner()
	//connect to a nearby scanner pad
	owned_scanner = locate(/obj/machinery/artifact_scanpad) in get_step(src, dir)
	if(!owned_scanner)
		owned_scanner = locate(/obj/machinery/artifact_scanpad) in orange(1, src)

/obj/machinery/artifact_analyser/DefaultTopicState()
	return GLOB.physical_state

/obj/machinery/artifact_analyser/interface_interact(var/mob/user)
	interact(user)
	return TRUE

/obj/machinery/artifact_analyser/interact(mob/user)
	var/dat = "<B>Analizador de material anomalo</B><BR>"
	dat += "<HR>"
	if(!owned_scanner)
		reconnect_scanner()

	if(!owned_scanner)
		dat += "<b><font color=red>No se puede localizar el panel de analisis.</font></b><br>"
	else if(scan_in_progress)
		dat += "Por favor espera, analisis en progreso...<br>"
		dat += "<a href='?src=\ref[src];halt_scan=1'>Detener escaneo.</a><br>"
	else
		dat += "Scanner is ready.<br>"
		dat += "<a href='?src=\ref[src];begin_scan=1'>Comenzar escaneo.</a><br>"

	dat += "<br>"
	dat += "<hr>"
	dat += "<a href='?src=\ref[src]'>Actualizar</a> <a href='?src=\ref[src];close=1'>Close</a>"
	user << browse(dat, "window=artanalyser;size=450x500")
	user.set_machine(src)
	onclose(user, "artanalyser")

/obj/machinery/artifact_analyser/Process()
	if(scan_in_progress && world.time > scan_completion_time)
		scan_in_progress = 0
		updateDialog()

		var/results = ""
		if(!owned_scanner)
			reconnect_scanner()
		if(!owned_scanner)
			results = "Error al comunicarse con el escaner."
		else if(!scanned_object || scanned_object.loc != owned_scanner.loc)
			results = "No se puede localizar el objeto escaneado. Asegurese de que no se movio durante el proceso."
		else
			results = get_scan_info(scanned_object)

		src.visible_message("<b>[name]</b> states, \"Escaneo completado.\"")
		var/obj/item/weapon/paper/P = new(src.loc)
		P.SetName("[src] report #[++report_num]")
		P.info = "<b>[src] reporte de analisis #[report_num]</b><br>"
		P.info += "<br>"
		P.info += "\icon[scanned_object] [results]"
		P.stamped = list(/obj/item/weapon/stamp)
		P.queue_icon_update()

		if(scanned_object && istype(scanned_object, /obj/machinery/artifact))
			var/obj/machinery/artifact/A = scanned_object
			A.anchored = 0
			A.being_used = 0
			scanned_object = null

/obj/machinery/artifact_analyser/OnTopic(user, href_list)
	if(href_list["begin_scan"])
		if(!owned_scanner)
			reconnect_scanner()
		if(owned_scanner)
			var/artifact_in_use = 0
			for(var/obj/O in owned_scanner.loc)
				if(O == owned_scanner)
					continue
				if(O.invisibility)
					continue
				if(istype(O, /obj/machinery/artifact))
					var/obj/machinery/artifact/A = O
					if(A.being_used)
						artifact_in_use = 1
					else
						A.anchored = 1
						A.being_used = 1

				if(artifact_in_use)
					src.visible_message("<b>[name]</b> states, \"No se puede escanear. Demasiada interferencia.\"")
				else
					scanned_object = O
					scan_in_progress = 1
					scan_completion_time = world.time + scan_duration
					src.visible_message("<b>[name]</b> states, \"Escaneo comenzado.\"")
				break
			if(!scanned_object)
				src.visible_message("<b>[name]</b> states, \"No se puede aislar el objetivo de escaneo.\"")
		. = TOPIC_REFRESH
	else if(href_list["halt_scan"])
		scan_in_progress = 0
		src.visible_message("<b>[name]</b> states, \"Escaneo detenido.\"")
		. = TOPIC_REFRESH

	else if(href_list["close"])
		close_browser(user, "window=artanalyser")
		return TOPIC_HANDLED

	if(. == TOPIC_REFRESH)
		interact(user)

//hardcoded responses, oh well
/obj/machinery/artifact_analyser/proc/get_scan_info(var/obj/scanned_obj)
	switch(scanned_obj.type)
		if(/obj/machinery/auto_cloner)
			return "Capsula de clonacion automatizada - parece depender de un ecosistema artificial formado por nanomaquinas semi-organicas y el liquido contenido. El liquido se asemeja a un residuo protoplasmatico que apoya las condiciones de desarrollo del organismo unicelular.<br>La estructura esta compuesta de una aleacion de titanio."
		if(/obj/machinery/power/supermatter)
			return "Agrupamiento de phoron superdenso - parece haber sido formado o tallado, la estructura esta compuesta de materia aproximadamente 20 veces más densa que el phoron refinado ordinario."
		if(/obj/structure/constructshell)
			return "Idolo tribal - el sujeto se asemeja a estatuas / emblemas construidos por civilizaciones supersticiosas anteriores a la urdimbre para honrar a sus dioses. El material parece ser un compuesto de roca / plastcreto."
		if(/obj/machinery/giga_drill)
			return "Taladro de mineria automatizado - estructura compuesta de aleacion de carburo de titanio, con punta y lineas de perforacion bordeadas en una aleacion de diamante y phoron."
		if(/obj/structure/cult/pylon)
			return "Pilon tribal - el sujeto se asemeja a estatuas / emblemas construidos por civilizaciones de culto de carga para honrar los sistemas de energia de las civilizaciones posteriores a la deformacion."
		if(/obj/machinery/replicator)
			return "Unidad de construccion automatizada - el sujeto parece ser capaz de sintetizar varios objetos dados un material, algunos con circuitos internos simples. Metodo desconocido."
		if(/obj/structure/crystal)
			return "Formacion de cristales - matriz cristalina pseudo-organica, poco probable que se haya formado naturalmente. No existe tecnologia conocida para sintetizar esta composicion exacta."
		if(/obj/machinery/artifact)
			var/obj/machinery/artifact/A = scanned_obj
			var/out = "Dispositivo alienigena anomalo - compuesto de una aleacion desconocida.<br><br>"

			if(A.my_effect)
				out += A.my_effect.getDescription()

			if(A.secondary_effect && A.secondary_effect.activated)
				out += "<br><br>Los escaneos internos indican una actividad secundaria en curso que opera independientemente de los sistemas primarios.<br><br>"
				out += A.secondary_effect.getDescription()

			return out
		else
			return "[scanned_obj.name] - mundane application."
