//Same as default but with but with floor boards (get it?)
/decl/machine_construction/default/panel_closed/floor
	down_state = /decl/machine_construction/default/panel_open/floor
	needs_board = "floor"

/decl/machine_construction/default/panel_closed/floor/no_deconstruct/attackby(obj/item/I, mob/user, obj/machinery/machine)
	return FALSE

/decl/machine_construction/default/panel_open/floor
	up_state = /decl/machine_construction/default/panel_closed/floor
	needs_board = "floor"