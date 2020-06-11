//Other cultifies.
/obj/proc/cultify()
	return

/obj/structure/window/cultify()
	new /obj/structure/window/cult(get_turf(src), dir)
	qdel(src)

/obj/structure/window/reinforced/cultify()
	new /obj/structure/window/cult/reinforced(get_turf(src), dir)
	qdel(src)

/obj/structure/grille/cultify()
	new /obj/structure/grille/cult(get_turf(src))
	qdel(src)

/obj/structure/wall_frame/cultify()
	new /obj/structure/wall_frame(get_turf(src), MATERIAL_CULT)
	qdel(src)