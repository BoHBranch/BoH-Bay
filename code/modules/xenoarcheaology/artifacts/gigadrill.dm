/obj/machinery/giga_drill
	name = "taladro alienigena"
	desc = "Un taladro alienigena gigante montado en largas huellas."
	icon = 'icons/obj/mining.dmi'
	icon_state = "gigadrill"
	var/active = 0
	var/drill_time = 10
	var/turf/drilling_turf
	density = 1
	layer = ABOVE_OBJ_LAYER		//to go over ores

/obj/machinery/giga_drill/physical_attack_hand(mob/user)
	if(active)
		active = 0
		icon_state = "gigadrill"
		to_chat(user, "<span class='notice'>Presionas un boton y \ el [src] gira lentamente.</span>")
	else
		active = 1
		icon_state = "gigadrill_mov"
		to_chat(user, "<span class='notice'>Presionas un boton y \ el [src] se estremese a la vida.</span>")
	return TRUE

/obj/machinery/giga_drill/Bump(atom/A)
	if(active && !drilling_turf)
		if(istype(A,/turf/simulated/mineral))
			var/turf/simulated/mineral/M = A
			drilling_turf = get_turf(src)
			src.visible_message("<span class='notice'>\ El [src] comienza a perforar \ el [M].</span>")
			anchored = 1
			spawn(drill_time)
				if(get_turf(src) == drilling_turf && active)
					M.GetDrilled()
					forceMove(M)
				drilling_turf = null
				anchored = 0
