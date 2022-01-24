/////////
// Morgue
/////////
/obj/structure/morgue/ascent
	name = "meat storage"
	desc = "Used to keep bodies cool until someone fetches them."
	color = "#a33fbf"
/////////
// OFD
/////////

/decl/machine_construction/default/panel_closed/no_deconstruct/attackby(obj/item/I, mob/user, obj/machinery/machine)
	return FALSE

/obj/machinery/disperser/front/ascent
	name = "odd cannon barrel"
	desc = "Something about this looks dangerous. Best to keep away."
	color = "#a33fbf"
	dir = 8
	construct_state = /decl/machine_construction/default/panel_closed/no_deconstruct

/obj/machinery/disperser/middle/ascent
	name = "odd cannon breach"
	desc = "Something about this looks dangerous. Best to keep away."
	color = "#a33fbf"
	dir = 8
	construct_state = /decl/machine_construction/default/panel_closed/no_deconstruct

/obj/machinery/disperser/back/ascent
	name = "odd cannon loading platform"
	desc = "Something about this looks dangerous. Best to keep off."
	color = "#a33fbf"
	dir = 8
	construct_state = /decl/machine_construction/default/panel_closed/no_deconstruct